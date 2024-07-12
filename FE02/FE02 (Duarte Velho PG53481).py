import oracledb
import getpass
from pymongo import MongoClient
from pymongo.errors import ConnectionFailure

#Senha e conexão ao OracleDB
pw = getpass.getpass(prompt="Enter Oracle password: ")

connection = oracledb.connect(user = "music", password = pw, dsn = "localhost/xe")

hostname = 'localhost'  # host name in mongoDB
port = 27017  # port used in mongoDB

# Função para converter as linhas de título em JSON
def titulo_to_json(titulo_row):
    
    id_titulo = titulo_row[0]
    documento = {
        "ID_TITULO": titulo_row[0],
        "TITULO": titulo_row[1],
        "PRECO": titulo_row[2],
        "DTA_COMPRA": titulo_row[3],
        "EDITORA": {"ID_EDITORA": titulo_row[4], "NOME": titulo_row[5]},
        "SUPORTE": {"ID_SUPORTE": titulo_row[6], "NOME": titulo_row[7]},
        "GENERO": {"ID_GENERO": titulo_row[8], "NOME": titulo_row[9]},
        "AUTOR": {"ID_AUTOR": titulo_row[10], "NOME": titulo_row[11]},
        "MUSICAS": [],
        "REVIEWS": []
    }

    # Adicionar músicas
    cursor.execute("SELECT ID_MUSICA, NOME, ID_AUTOR FROM MUSICA WHERE ID_TITULO = :1", [id_titulo])
    for musica_row in cursor:
        documento["MUSICAS"].append({
            "ID_MUSICA": musica_row[0],
            "NOME": musica_row[1],
            "AUTOR": {"ID_AUTOR": musica_row[2]}
        })

    # Adicionar reviews
    cursor.execute("SELECT ID_REVIEW, DTA_REVIEW, CONTEUDO FROM REVIEW WHERE ID_TITULO = :1", [id_titulo])
    for review_row in cursor:
        documento["REVIEWS"].append({
            "ID_REVIEW": review_row[0],
            "DTA_REVIEW": review_row[1],
            "CONTEUDO": review_row[2]
        })

    return documento


# Criar um cursor
cursor = connection.cursor()

# Executar uma consulta de teste
try:
    # Vamos apenas selecionar a data e hora atual do banco de dados
    cursor.execute('SELECT SYSDATE FROM DUAL')
    result = cursor.fetchone()
    print("Data e hora atuais do banco de dados Oracle:", result[0])
    print("Conexão bem-sucedida!")

except oracledb.DatabaseError as e:
    error, = e.args
    print("Erro ao conectar ao banco de dados Oracle:", error.message)




try:
    # Tenta estabelecer uma conexão com o MongoDB
    client = MongoClient(hostname, port, serverSelectionTimeoutMS=1000)

    # Tenta buscar uma lista dos nomes dos bancos de dados para testar a conexão
    client.list_database_names()

    # Se nenhuma exceção for lançada, a conexão foi bem-sucedida
    print("Successfully connected to MongoDB")

    # Inserção e recuperação de um documento para testar a interação com o banco de dados
    db = client['music']
    collection = db['titulos']


    # main query to extract the information from the table titulos
    sql_query='''
                SELECT T.ID_TITULO, T.TITULO, T.PRECO, T.DTA_COMPRA, T.ID_EDITORA, E.NOME, T.ID_SUPORTE, S.NOME, T.ID_GENERO, G.NOME, T.ID_AUTOR, A.NOME 
    FROM TITULO T, EDITORA E, SUPORTE S, GENERO G, AUTOR A
    WHERE T.ID_EDITORA=E.ID_EDITORA AND T.ID_SUPORTE=S.ID_SUPORTE AND T.ID_GENERO=G.ID_GENERO AND T.ID_AUTOR=A.ID_AUTOR
                '''

    # Migração de dados
    result = cursor.execute(sql_query)
    rows = result.fetchall()
    print(rows)
    for titulo_row in rows:
        documento = titulo_to_json(titulo_row)
        result = collection.insert_one(documento)
        print("Inserted document id:", result.inserted_id)

except ConnectionFailure:
    print("Failed to connect to MongoDB")
finally: 
    connection.close()
