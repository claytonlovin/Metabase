
INSERT INTO STATUS(NOME_STATUS) VALUES
('Iniciado'),
('Parado'),
('Concluido'),
('Aguardando Cliente'),
('Aguardando Consultor'),
('Cancelado')

INSERT INTO IMPLANTADOR(NOME_IMPLANTADOR, CARGO) VALUES
('Fábio Nome Fake', 'Analista OSL'),
('Jayme Nome Fake', 'Técnico lMA'),
('Laura Nome Fake', 'Especialista OSL'),
('Cesár Nome Fake', 'Consultor OSL'),
('Marcos Nome Fake', 'Consultor OSL'),
('André Nome Fake', 'Diretor OSL'),
('Maria Nome Fake', 'Estagiário OSL'),
('Ana Nome Fake', 'Ténico OSL')

INSERT INTO CONSULTOR_VENDEDOR(NOME_VENDEDOR) VALUES
('Maria Carla'),
('JOÃO GUILHERME'),
('FERNANDO AMARAL'),
('Carla Maria'),
('Ana Souza'),
('Luiz Prado')


INSERT INTO SISTEMA(NOME_SISTEMA) VALUES
('Gestão OSL'),
('Sistema CS IMA'),
('Sistema NSE')


INSERT INTO ETAPA(NOME_ETAPA, ORDEM) VALUES
('Planejamento e Análise', 1),
('Design e Prototipagem', 2),
('Desenvolvimento', 3),
('Testes e Validação', 4),
('Implantação', 5),
('Lançamento', 6),
('Pós-implantação', 7)



INSERT INTO CLIENTES (NOME_EMPRESA, REPRESENTANTE, CONTATO, CNPJ, EMAIL)
VALUES 
('Empresa Alpha', 'João Silva', '555-1234', '12345678000101', 'joao.silva@alpha.com'),
('Beta Tech', 'Maria Santos', '555-5678', '12345678000102', 'maria.santos@betatech.com'),
('Gamma Solutions', 'Carlos Oliveira', '555-9101', '12345678000103', 'carlos.oliveira@gammasolutions.com'),
('Delta Consultoria', 'Ana Lima', '555-1122', '12345678000104', 'ana.lima@deltaconsultoria.com'),
('Epsilon Corp', 'Pedro Souza', '555-1314', '12345678000105', 'pedro.souza@epsiloncorp.com'),
('Zeta Enterprises', 'Lucia Fernandes', '555-1516', '12345678000106', 'lucia.fernandes@zetaenterprises.com'),
('Eta Systems', 'Roberto Costa', '555-1718', '12345678000107', 'roberto.costa@etasystems.com'),
('Theta Technologies', 'Patricia Almeida', '555-1920', '12345678000108', 'patricia.almeida@thetattechnologies.com'),
('Iota Innovations', 'Fernando Rodrigues', '555-2122', '12345678000109', 'fernando.rodrigues@iotainnovations.com'),
('Kappa Solutions', 'Juliana Pereira', '555-2324', '12345678000110', 'juliana.pereira@kappasolutions.com'),
('Lambda Services', 'Rafael Martins', '555-2526', '12345678000111', 'rafael.martins@lambdaservices.com'),
('Mu Enterprises', 'Beatriz Gonçalves', '555-2728', '12345678000112', 'beatriz.goncalves@muenterprises.com'),
('Nu Consulting', 'Gabriel Alves', '555-2930', '12345678000113', 'gabriel.alves@nuconsulting.com'),
('Xi Solutions', 'Amanda Ribeiro', '555-3132', '12345678000114', 'amanda.ribeiro@xisolutions.com'),
('Omicron Innovations', 'Lucas Lima', '555-3334', '12345678000115', 'lucas.lima@omicroninnovations.com'),
('Pi Technologies', 'Mariana Cardoso', '555-3536', '12345678000116', 'mariana.cardoso@pitechnologies.com'),
('Rho Systems', 'Gustavo Sousa', '555-3738', '12345678000117', 'gustavo.sousa@rhosystems.com'),
('Sigma Services', 'Isabela Silva', '555-3940', '12345678000118', 'isabela.silva@sigmaservices.com'),
('Tau Corp', 'Vinicius Ferreira', '555-4142', '12345678000119', 'vinicius.ferreira@taucop.com'),
('Upsilon Enterprises', 'Renata Lopes', '555-4344', '12345678000120', 'renata.lopes@upsilonenterprises.com');
GO


INSERT INTO FASE_IMPLANTACAO (ID_CLIENTE, ID_IMPLANTADOR, ID_VENDEDOR, ID_SISTEMA, ID_STATUS)
VALUES 
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 1, 4),
(5, 5, 5, 2, 5),
(6, 6, 6, 3, 6),
(7, 7, 1, 1, 1),
(8, 1, 2, 2, 2),
(9, 2, 3, 3, 3),
(10, 3, 4, 1, 4),
(11, 4, 5, 2, 5),
(12, 5, 6, 3, 6),
(13, 6, 1, 1, 1),
(14, 7, 2, 2, 2),
(15, 8, 3, 3, 3),
(16, 1, 4, 1, 4),
(17, 2, 5, 2, 5),
(18, 3, 6, 3, 6),
(19, 4, 1, 1, 1),
(20, 5, 2, 2, 2);
GO



-- 

SELECT 
CL.NOME_EMPRESA,
CL.REPRESENTANTE,
CV.NOME_VENDEDOR, 
IM.NOME_IMPLANTADOR,
IM.CARGO,
SI.NOME_SISTEMA,
ST.NOME_STATUS
FROM FASE_IMPLANTACAO FS
    JOIN CLIENTES CL
        ON CL.ID_CLIENTE =  FS.ID_CLIENTE
    JOIN CONSULTOR_VENDEDOR CV
        ON CV.ID_VENDEDOR =  FS.ID_VENDEDOR
    JOIN IMPLANTADOR IM
        ON IM.ID_IMPLANTADOR = FS.ID_IMPLANTADOR
    JOIN SISTEMA SI
        ON SI.ID_SISTEMA =  FS.ID_SISTEMA
    JOIN STATUS ST
        ON ST.ID_STATUS =  FS.ID_STATUS

---

SELECT 
CL.NOME_EMPRESA,
CL.REPRESENTANTE,
CV.NOME_VENDEDOR, 
IM.NOME_IMPLANTADOR,
IM.CARGO,
SI.NOME_SISTEMA,
ST.NOME_STATUS
FROM FASE_IMPLANTACAO FS
    JOIN CLIENTES CL
        ON CL.ID_CLIENTE =  FS.ID_CLIENTE
    JOIN CONSULTOR_VENDEDOR CV
        ON CV.ID_VENDEDOR =  FS.ID_VENDEDOR
    JOIN IMPLANTADOR IM
        ON IM.ID_IMPLANTADOR = FS.ID_IMPLANTADOR
    JOIN SISTEMA SI
        ON SI.ID_SISTEMA =  FS.ID_SISTEMA
    JOIN STATUS ST
        ON ST.ID_STATUS =  FS.ID_STATUS
WHERE ST.ID_STATUS =  3



select * from STATUS