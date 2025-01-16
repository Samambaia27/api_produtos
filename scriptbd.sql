-- criar o banco de Dados 
create database if not exists meu_banco_de_dados;

-- usar o banco de dados criado 
use meu_banco_de_dados;

-- criar a tabela usuarios

create table produtos (
	id int auto_increment primary key, -- identificador unico do produto
    nome varchar(255) not null, 	   -- nome do produto
    descricao text, 				   -- descriçao do produto(opcional)
    preco decimal(10, 2) not null,	   -- preco do produto com até 2 casas decimais
    estoque int not null, 			   -- quantidade disponivel em estoque
    criado_em timestamp default current_timestamp, -- data de criançao do registro
    atualizado_em timestamp default current_timestamp on update current_timestamp -- data deatulizaçao do registro
);
