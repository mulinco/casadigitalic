Rio de Janeiro, 20 de setembro de 2025
IBMEC, Instituto Consuelo, Casa Digital

> PostgreeSQL (db que vamos usar)  

**Estrutura Fundamental:**   
  Tabela: conjunt de dados (ex: planilha)  
    Registro/linha: linha com os respectivos dados  
  Campo/Coluna: categoria de informação  
    Caso de uso: ERPs, bancos, e-commerces...  

***CHAVE PRIMÁRIA:*** identificador ÚNICO  
***CHAVE ESTRANGEIRA:*** é a que faz a ligação ENTRE tabelas (uma chave estranheira é a chave primária de outra tabela)  

****UML**** (pesquisar sobre)  

**ÍNDICES**  
  - Estruturas auxiliares que tornam as nossas buscas mais rápidas  
  - Funciona como os índices de um livro físico, de certa forma (catalogando???)  

**Tipos de dados essenciais**  
  - VARCHAR(n): texto com limite de caracteres (ex: estabelecer um limite de caracteres para algum tipo de informação)  
  - INTEGER: números inteiros  
  - DATE: datas :)  
  - BOOLEAN: verdadeiro/falso (true/false)  
  - SERIAL: números sequenciais automáticos (o computador tranforma letras em números, usar apenas números acaba sendo ganho em performance)  
  [Noção em orientação a objetos] exemplo petshop  

  **Restrições(Constraints)**  
     - NOT NULL:   
     - UNIQUE: valor unico  
     - CHECK: validação personalizada  
     - PRIMARY KEY:  
     - FOREIGN KEY:  

  
***Estrutura básica de uma query***  
    > SELECT colunas  
    > FROM tabela   
    > WHERE condição  
    > ORDER BY coluna;   

-- Exemplo bem formatado aplicando boas práticas  
SELECT cliente_nome,  
       cliente_email,  
       data_cadastro  
FROM clientes  
WHERE ativo = true  
ORDER BY cliente_nome;  

"E como eu defino um Banco de Dados?"
O SQL tem um conjunto de 3 grupos de comandos.
DDL: 
Criando uma tabela...
CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INTEGER CHECK (idade >= 0),
    email VARCHAR(150) UNIQUE, 
    data_cadastro DATE DEFAULT CURRENT_DATE
    );

Clareza no código!

-- Modificando tabela
ALTER TABLE alunos ADD COLUMN telefone VARCHAR(15)

-- Removendo tabela
DROP TABLE alunos;

"E se eu quiser alterar dados, qual é o caminho?"
Data Manipulate Language = DML

Inserindo dados  
INSERT INTO alunos (nome, idade, email)  
VALUES ('João Silva', 20, 'joao@email.com'; POST  

Consultando dados (GET   
SELECT * FROM alunos; 

Atualizando dados (PUT/PATCH)  PUT (att tudo) PATCH (att singular)  
UPDATE alunos  
SET idade = 21  
WHERE nome = 'João Silva'   

Removendo dados  (DELETE)  
DELETE FROM alunos  
WHERE idade < 18;   


                      
                    

                    


                    
  
  
  
  

