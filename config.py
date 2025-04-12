import os

class Config:
    """Clase de configuración para la conexión a la base de datos MySQL."""

    # Variables ENV
    DATABASE_URL = os.getenv(
        "DATABASE_URL", 
        "mysql+pymysql://hm_testing:rv1EknPdH5DYi2g@152.53.88.66:3306/DLX_HM_DB"
    )