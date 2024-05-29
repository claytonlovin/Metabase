
-- Tabela CLIENTES
CREATE TABLE CLIENTES (
    ID_CLIENTE INT PRIMARY KEY IDENTITY(1,1),
    NOME_EMPRESA NVARCHAR(100) NOT NULL,
    REPRESENTANTE NVARCHAR(100) NOT NULL,
    CONTATO NVARCHAR(50),
    CNPJ NVARCHAR(20) NOT NULL,
    EMAIL NVARCHAR(100)
);
GO

-- Tabela IMPLANTADOR
CREATE TABLE IMPLANTADOR (
    ID_IMPLANTADOR INT PRIMARY KEY IDENTITY(1,1),
    NOME_IMPLANTADOR NVARCHAR(100) NOT NULL,
    CARGO NVARCHAR(50)
);
GO

-- Tabela CONSULTOR_VENDEDOR
CREATE TABLE CONSULTOR_VENDEDOR (
    ID_VENDEDOR INT PRIMARY KEY IDENTITY(1,1),
    NOME_VENDEDOR NVARCHAR(100) NOT NULL
);
GO

-- Tabela SISTEMA
CREATE TABLE SISTEMA (
    ID_SISTEMA INT PRIMARY KEY IDENTITY(1,1),
    NOME_SISTEMA NVARCHAR(100) NOT NULL
);
GO

-- Tabela ETAPA
CREATE TABLE ETAPA (
    ID_ETAPA INT PRIMARY KEY IDENTITY(1,1),
    NOME_ETAPA NVARCHAR(100) NOT NULL,
    ORDEM INT
);
GO

-- Tabela STATUS
CREATE TABLE STATUS (
    ID_STATUS INT PRIMARY KEY IDENTITY(1,1),
    NOME_STATUS NVARCHAR(100) NOT NULL
);
GO

-- Tabela FASE_IMPLANTACAO
CREATE TABLE FASE_IMPLANTACAO (
    ID_IMPLANTACAO INT PRIMARY KEY IDENTITY(1,1),
    ID_CLIENTE INT NOT NULL,
    ID_IMPLANTADOR INT NOT NULL,
    ID_VENDEDOR INT NOT NULL,
    ID_SISTEMA INT NOT NULL,
    ID_STATUS INT NOT NULL,
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(ID_CLIENTE),
    FOREIGN KEY (ID_IMPLANTADOR) REFERENCES IMPLANTADOR(ID_IMPLANTADOR),
    FOREIGN KEY (ID_VENDEDOR) REFERENCES CONSULTOR_VENDEDOR(ID_VENDEDOR),
    FOREIGN KEY (ID_SISTEMA) REFERENCES SISTEMA(ID_SISTEMA),
    FOREIGN KEY (ID_STATUS) REFERENCES STATUS(ID_STATUS)
);
GO
