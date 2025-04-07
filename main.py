import logging
from fastapi import FastAPI
from sqlalchemy import create_engine, Table, MetaData
from sqlalchemy.orm import sessionmaker
from sqlalchemy.exc import SQLAlchemyError
from typing import List
from models import Pokemon  
from config import Config  

# Configuración de logging
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
    handlers=[
        logging.FileHandler("app.log"),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger(__name__)

# Configuracion de FastAPI
app = FastAPI(
    title="HM Backend",
    description="Una API para obtener información sobre Pokémon almacenada en MySQL.",
    version="1.0.0",
    contact={
        "name": "Reynier Gonzalez",
        "email": "reynierabdiel@icloud.com",
    },
)

# Configuracion de MySQL + SQLAlchemy
engine = create_engine(Config.DATABASE_URL)
metadata = MetaData()
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Tabla de Pokémon 
pokemons_table = Table("POKEMON", metadata, autoload_with=engine)

# GET /pokemon
@app.get("/pokemon/", response_model=List[Pokemon], summary="Obtener todos los Pokémon", description="Obtiene todos los Pokémon almacenados.")
async def get_pokemons():
    """
    Obtener todos los Pokémon.
    """
    try:
        logger.info("GET /pokemon | Iniciando.")
        
        # Crear una sesión de la base de datos
        session = SessionLocal()
        
        # Obtener todos los registros de Pokémon
        query = session.execute(pokemons_table.select())
        pokemons = query.fetchall()

        # Convertir los resultados en una lista de diccionarios
        pokemon_list = [
            Pokemon(id=pokemon[0], name=pokemon[1], height=pokemon[2], weight=pokemon[3], types=pokemon[4])
            for pokemon in pokemons
        ]
        
        logger.info(f"GET /pokemon | Consulta exitosa, se recuperaron {len(pokemon_list)} registros.")
        return pokemon_list

    except SQLAlchemyError as e:
        logger.error(f"GET /pokemon | Error al acceder a la base de datos: {e}")
        return {"error": "Hubo un problema al obtener los datos de la base de datos."}

    finally:
        session.close()
        logger.info("FastAPI | Sesión cerrada.")
