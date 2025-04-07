import os

class Config:
    """Clase de configuración para la conexión a la base de datos MySQL."""

    # Variables ENV
    DATABASE_URL = os.getenv(
        "DATABASE_URL", 
        "mysql+pymysql://root:Raynier1205*@152.53.53.245:3306/DLX_HM_DB"
    )