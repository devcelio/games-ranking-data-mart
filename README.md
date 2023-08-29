## Ranking de Games <Data Mart>
# Os principais lançamentos entre 1972 e 2020
### Autor: Célio Júnior (celiojr.dev@gmail.com)
### Profª. Ellen Souza | Sistemas de Apoio à Decisão | UFRPE - UAST | 2023

## Contexto
Durante o período entre 1972 e 2020, a indústria de jogos eletrônicos passou por um incrível desenvolvimento. O início modesto nos arcades e nos consoles domésticos evoluiu para um mercado global multi-bilionário, abrangendo diversos gêneros, plataformas e públicos. Avanços tecnológicos significativos, como gráficos 3D, jogos online e dispositivos móveis, moldaram essa evolução. A indústria deixou de ser um nicho para se tornar uma parte intrínseca da cultura popular, impactando a forma como nos entretemos e interagimos.

## Objetivo
Para compreender as principais tendências desse período dinâmico, o uso de um Data Mart é essencial. Ao coletar e organizar dados detalhados sobre gêneros, datas de lançamento, plataformas e vendas, o Data Mart permite uma análise aprofundada. Podemos identificar quais gêneros foram mais populares em diferentes décadas, como as preferências mudaram com o tempo e quais plataformas tiveram maior impacto. Essa análise não só ajuda a entender o passado, mas também orienta estratégias futuras na indústria de jogos, adaptando-se às preferências em constante evolução.

## Como Utilizar
Esse Data Mart foi desenvolvido utilizando a versão open-source do metabase, por limitação da versão, não é possível exportar um arquivo serializado da dashboard para importar em outra instância funcional do metabase.

## Para que seja possível executar o projeto, alguns requisitos devem ser atendidos (Serão explicados nas seções posteriores): 
- O banco de dados a ser criado deve ter a mesma estrutura do banco de dados criado no metabase (Sugiro usar PostgreSQL).
- É provável que seja necessário sobrescrever as configurações de conexões armazenadas no metabase, uma vez que o usuário e senha do banco podem ser diferentes.

## Configurando o banco
O arquivo de dump é um backup de toda a estrutura do banco de dados, 
1. Importar o arquivo de dump "sad_project_dump.sql" que está presente em "./dados/transformados/".
2. O dump foi criado sem especificar um owner, então utilize os seguintes comandos para adicionar um ao database e dar todas as permissões para ele:
    - ```ALTER DATABASE nome_do_database OWNER TO nome_do_usuario;```;
    - ```GRANT ALL PRIVILEGES ON DATABASE nome_do_database to nome_do_usuario;```.

## Configurando o Metabase
1. Baixe o Metabase open-source (https://www.metabase.com/start/oss/) e coloque na pasta "./metabase" na raíz do repositório.
2. Inicialize o Metabase utilizando java (versão testada: java 20.0.2 2023-07-18) com os seguintes comandos:
    - Navegue para Metabase, utilizando ```cd ./metabase```;
    - Inicie o servidor, utilizando: ```java -jar ./metabase.jar```;
3. O Metabase por padrão roda em http://localhost:3000, abra esse link no navegador.
4. Você será redirecionado para a tela de login, as credenciais de acesso são:
    - usuário: "visitante@metabase.com" (sem as aspas)
    - senha: "senha321" (sem as aspas)
5. Ao acessar a tela inicial, talvez não seja possível visualizar a dashboard, pois a conexão com o banco provavelmente possui outras credenciais. Para alterar, faça  seguinte:
    - Clique na engrenagem (Canto superior direito), vai abrir um submenu contendo algumas opções;
    - Clique em "Admin settings";
    - Na aba Database, clique no banco "SAD Project";
    - Altere as configurações de conexão do banco para atender às suas necessidades e depois em "Save";
    - Clique no botão "Sync database scheme now" para atualizar o esquema do database;
    - Clique no botão "Re-scan field values now" para atualizar os campos do database;
    - Ao voltar para a tela principal, clicando em "Exit Admin" (Canto supeiror direito), navegue até "Your personal collection"
    - Clique na Dashboard "Ranking de Games <Data Mart>" e aproveite.
