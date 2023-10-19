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
SELECT * FROM tb_usuario;


