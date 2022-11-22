from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

DATABASE_URI = 'postgresql://postgress:2093ramos.@localhost:5432/diary'

def conectar():
    engine = create_engine(DATABASE_URI)
    Session = sessionmaker(bind=engine)
    s = Session()

    if s != None:
        print("Conexión a la base de datos OK")
    else:
        print("Error en la conexión")

    return s 
