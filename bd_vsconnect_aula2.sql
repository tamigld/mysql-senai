USE bd_vsconnect;

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Jessica",
    "jessica@email.com",
    "senai@134",
    "Rua Amadis, 50",
    "04221000",
    0
);

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Joao",
    "joao@email.com",
    "senai@134",
    "Rua Boa Vista, 520",
    "04331000",
    0
);

INSERT INTO tb_usuario VALUES (
	UUID_TO_BIN(UUID()),
    "Thamires",
    "thamires@email.com",
    "senai@134",
    "Rua São João, 60",
    "04441000",
    0
);

INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "html");
INSERT INTO tb_tech VALUES (UUID_TO_BIN(UUID()), "css");

-- o id do usuário está retornando como blob, então é preciso converter para exibir os números
-- conversão para o id (números)
SELECT BIN_TO_UUID(id), nome FROM tb_usuario;

-- selecionando a linha ao id correspondente
SELECT * FROM tb_usuario WHERE id = UUID_TO_BIN("d7984bc9-6ed0-11ee-9beb-b445067b7b53");

-- deletando a linha ao id correspondente
DELETE FROM tb_usuario WHERE id = UUID_TO_BIN("d7984bc9-6ed0-11ee-9beb-b445067b7b53");

-- verificando a exclusão
SELECT * FROM tb_usuario WHERE id = UUID_TO_BIN("d7984bc9-6ed0-11ee-9beb-b445067b7b53");

-- alterando tipo de usuário (base mesmo comando acima)
UPDATE tb_usuario SET tipo_usuario = 1 WHERE id = UUID_TO_BIN("d5920e80-6ed0-11ee-9beb-b445067b7b53");


SELECT * FROM tb_usuario;

INSERT INTO tb_servico VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("d98b5982-6ed0-11ee-9beb-b445067b7b53"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("d98b5982-6ed0-11ee-9beb-b445067b7b53"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("d98b5982-6ed0-11ee-9beb-b445067b7b53"), NULL);

SELECT * FROM tb_servico;

-- listar tabelas com o id e nome facilmente
SELECT BIN_TO_UUID(id), nome, tipo_usuario FROM tb_usuario;
SELECT BIN_TO_UUID(id), nome FROM tb_tech;
SELECT BIN_TO_UUID(id), titulo FROM tb_servico;

SELECT * FROM tb_tech_servico;

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("6f6fb2d7-6ed3-11ee-9beb-b445067b7b53"), UUID_TO_BIN("096bde78-6edf-11ee-9beb-b445067b7b53")
);

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("736d14d6-6ed3-11ee-9beb-b445067b7b53"), UUID_TO_BIN("096be37e-6edf-11ee-9beb-b445067b7b53")
);

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("6f6fb2d7-6ed3-11ee-9beb-b445067b7b53"), UUID_TO_BIN("096be45b-6edf-11ee-9beb-b445067b7b53")
);

SELECT * FROM tb_dev_tech;

INSERT INTO tb_dev_tech VALUES (
	UUID_TO_BIN("736d14d6-6ed3-11ee-9beb-b445067b7b53"), UUID_TO_BIN("d5920e80-6ed0-11ee-9beb-b445067b7b53")
);

SELECT * FROM tb_cotacao;

INSERT INTO tb_cotacao VALUES (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("d5920e80-6ed0-11ee-9beb-b445067b7b53"),
    UUID_TO_BIN("096bde78-6edf-11ee-9beb-b445067b7b53"),
    5000.00    
);

SELECT * FROM tb_cotacao;







