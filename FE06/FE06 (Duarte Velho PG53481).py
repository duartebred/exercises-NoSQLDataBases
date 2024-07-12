import oracledb
from neo4j import GraphDatabase 


# connecting to oracle db
connection_oracle = oracledb.connect(user="music", password='music2020', dsn="localhost:1521/xe")
print('Successfully connected to Oracle DB')


# connecting to neo4j db
neo4j_uri = "bolt://localhost:7687"
neo4j_username, neo4j_password = 'neo4j', 'music2020'
neo4j_driver = GraphDatabase.driver(neo4j_uri, auth=(neo4j_username, neo4j_password))
neo4j_session = neo4j_driver.session()
print('Successfully connected to neo4j DB')


# open the cursor in the music database on oracle db
oracle_cursor = connection_oracle.cursor()


# extracting data of the table EDITORA
oracle_cursor.execute("SELECT * FROM EDITORA")
editora = oracle_cursor.fetchall()
for row in editora:
    query = (
        "MERGE (e:Editora {id: $id, nome: $nome})"
    )
    neo4j_session.run(query, id=row[0], nome=row[1])
print('Data from table EDITORA successfully transfered to neo4j')


# extracting data of the table SUPORTE
oracle_cursor.execute("SELECT * FROM SUPORTE,TITULO")
suporte = oracle_cursor.fetchall()
for row in suporte:
    query = (
        "MERGE (s:Suporte {id: $id, nome: $nome})"
    )
    neo4j_session.run(query, id=row[0], nome=row[1])
print('Data from table SUPORTE successfully transfered to neo4j')


# extracting data of the table AUTOR
oracle_cursor.execute("SELECT * FROM AUTOR")
autor = oracle_cursor.fetchall()
for row in autor:
    query = (
        "MERGE (a:Autor {id: $id_autor, nome: $nome_autor})")
    neo4j_session.run(query, id_autor=row[0], nome_autor=row[1])
print('Data from table AUTOR successfully transfered to neo4j')


# extracting data of the table GENERO
oracle_cursor.execute("SELECT * FROM GENERO")
genero = oracle_cursor.fetchall()
for row in genero:
    query = (
        "MERGE (g:Genero {id: $id, nome: $nome})")
    neo4j_session.run(query, id=row[0], nome=row[1])
print('Data from table GENERO successfully transfered to neo4j')


# extracting the information of the talbe TITULO
oracle_cursor.execute("SELECT * FROM TITULO")
titulo = oracle_cursor.fetchall()
for row in titulo:
    query = (
        "MATCH (e:Editora {id:$id_editora})"
        "MATCH (s:Suporte {id:$id_suporte})"
        "MATCH (g:Genero {id:$id_genero})"
        "MATCH (a:Autor {id:$id_autor})"
        "MERGE (t:Titulo {id: $id_titulo, titulo: $nome_titulo, preco: $preco, data_compra: $data_compra})"
        "MERGE (e)-[:OWNS]->(t)"
        "MERGE (s)<-[:AVAILABLE_IN]-(t)"
        "MERGE (a)-[:WROTE]->(t)"
        "MERGE (g)-[:TYPE]->(t)")
    neo4j_session.run(query, id_titulo=row[0], nome_titulo=row[1], preco=row[2], data_compra=row[3], id_editora=row[4], id_suporte=row[5], id_genero=row[6], id_autor=row[7])
print('Data from table TITULO successfully transfered to neo4j')


# extracting data of the table MUSICA
oracle_cursor.execute("SELECT * FROM MUSICA")
musica = oracle_cursor.fetchall()
for row in musica:
    query = (
        "MATCH (t:Titulo {id: $titulo_id}) "
        "MATCH (a:Autor {id: $autor_id}) "
        "MERGE (m:Musica {id: $id, nome: $nome}) "
        "MERGE (a)-[:COMPOSED]->(m) "
        "MERGE (m)-[:FROM]->(t)"
    )
    neo4j_session.run(query, id=row[0], nome=row[1], titulo_id=row[3], autor_id=row[2])
print('Data from table MUSICA successfully transfered to neo4j')


# extracting data of the table REVIEW
oracle_cursor.execute("SELECT * FROM REVIEW")
review = oracle_cursor.fetchall()
for row in review:
    query = (
        "MATCH (t:Titulo {id: $titulo_id}) "
        "CREATE (r:Review {id: $id, data_review: $data_review, conteudo: $conteudo}) "
        "MERGE (t)-[:HAS_REVIEW]->(r)"
    )
    neo4j_session.run(query, id=row[0], titulo_id= row[1], data_review=row[2], conteudo=row[3])
print('Data from table REVIEW successfully transfered to neo4j')


# close connections
oracle_cursor.close()
connection_oracle.close()
neo4j_driver.close()
neo4j_session.close()
print('All conections are closed')