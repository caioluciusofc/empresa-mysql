CREATE DATABASE db_empresa_Caio;
USE db_empresa_Caio;

CREATE TABLE tb_cargo (
    cod_cargo INT PRIMARY KEY,
    descricao VARCHAR(50)
);

CREATE TABLE tb_empregado (
    cod_emp INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ano_n INT,
    salario DECIMAL(8,2),
    cidade VARCHAR(50),
    sexo CHAR(1) CHECK (sexo IN ('F', 'M')),
    cod_cargo INT,
    FOREIGN KEY (cod_cargo) REFERENCES tb_cargo (cod_cargo)
);

INSERT INTO tb_cargo (cod_cargo, descricao) VALUES
    (1, 'DBA'),
    (2, 'ANALISTA'),
    (3, 'ENG SW'),
    (4, 'RH');

INSERT INTO tb_empregado
    (cod_emp, nome, ano_n, salario, cidade, sexo, cod_cargo)
VALUES
    (1010, 'Carlos', 1991, 7500.00, 'Brasília', 'M', 3),
    (1011, 'Beatriz', 1995, 7100.00, 'Unaí', 'F', 3),
    (1012, 'Helena', 2000, 4900.00, 'Brasília', 'F', 2),
    (1013, 'Rafael', 2002, 6200.00, 'Brasília', 'M', 1),
    (1014, 'Mariana', 2001, 6500.00, 'Brasília', 'F', 1),
    (1015, 'Felipe', 1989, 7900.00, 'Belém', 'M', 3),
    (1016, 'Bruno', 1994, 2800.00, 'Unaí', 'M', NULL);

SELECT *
FROM tb_empregado;

SELECT nome
FROM tb_empregado
WHERE sexo = 'F'
ORDER BY nome ASC;

SELECT COUNT(*) AS total_empregados
FROM tb_empregado;

SELECT cidade, COUNT(*) AS total_empregados
FROM tb_empregado
GROUP BY cidade
ORDER BY cidade;

SELECT e.nome, c.descricao AS cargo
FROM tb_empregado AS e
INNER JOIN tb_cargo AS c
    ON e.cod_cargo = c.cod_cargo
ORDER BY e.cod_emp;

SELECT e.nome, c.descricao AS cargo
FROM tb_empregado AS e
LEFT JOIN tb_cargo AS c
    ON e.cod_cargo = c.cod_cargo
ORDER BY e.cod_emp;

SELECT nome
FROM tb_empregado
WHERE ano_n BETWEEN 1987 AND 1999;

SELECT nome
FROM tb_empregado
WHERE nome LIKE 'C%';
