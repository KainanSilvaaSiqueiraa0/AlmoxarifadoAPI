Use dbAlmoxarifado
go
CREATE TABLE Produto(
	[id] [int] IDENTITY(1,1) NOT NULL primary key,
	[nome] [varchar](100) NOT NULL,
	[estoque] [int] NULL default(0),
	[photourl] [varchar](255) NULL,
)
go
Create table Requisicao(
  Codigo  int identity(1,1) primary key,
  DataRequisicao datetime null
)
go
Create table itensRequisicao(
   IteID int primary key identity(1,1),
   CodigoRequisicao int not null,
   CodigoProduto int not null,
   Preco float not null default(0),
   Quantidade int not null default(0),
   CONSTRAINT FK_itenRequisicao FOREIGN KEY (CodigoRequisicao)
    REFERENCES Requisicao(Codigo),
	CONSTRAINT FK_ItenProdutoReq FOREIGN KEY (CodigoProduto)
    REFERENCES Produto(id)
)

