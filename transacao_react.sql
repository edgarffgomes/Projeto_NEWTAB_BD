CREATE DATABASE bd_transacao;
USE bd_transacao;
CREATE TABLE usuario (id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, nome VARCHAR(70) NOT NULL, imagem VARCHAR(120) NOT NULL, nome_usuario VARCHAR(15) NOT NULL, dt_cadastro DATE NOT NULL);
CREATE TABLE cartao(id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, numero VARCHAR(16) NOT NULL, CVV VARCHAR(3) NOT NULL, dt_expiracao DATE NOT NULL, valido BOOLEAN NOT NULL, dt_cadastro DATE NOT NULL);
CREATE TABLE transacao (id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, id_usuario INT NOT NULL, id_cartao INT NOT NULL, VALOR FLOAT NOT NULL, dt_cadastro DATE NOT NULL, FOREIGN KEY (id_usuario) REFERENCES usuario (id), FOREIGN KEY (id_cartao) REFERENCES cartao (id));
INSERT INTO usuario VALUES (1,"Jessica Medeiros", "https://profile.com/img/36", "JessMed", '2015-09-03');
INSERT INTO usuario (nome, imagem, nome_usuario, dt_cadastro) VALUES ("Marta Gomes", "https://profile.com/img/399", "MGomes", '2018-01-15');
INSERT INTO usuario (nome, imagem, nome_usuario, dt_cadastro) VALUES ("Bruno Barcelos", "https://profile.com/img/212", "BBarcelos", '2013-08-28');
SELECT * FROM usuario ORDER BY nome ASC;
INSERT INTO cartao (numero, CVV, dt_expiracao, valido, dt_cadastro) VALUES ("1111111111111111", "789", '2025-01-18', true, '2020-10-13'), ("4111111111111234", "123", "2022-01-20", false, "2017-05-08");
SELECT * FROM cartao WHERE valido = TRUE ORDER BY dt_cadastro ASC;
INSERT INTO transacao (id_usuario, id_cartao, valor, dt_cadastro) VALUES (2, 1, 79.90, '2022-04-13'), (3, 2,300.15, "2022-04-07"), (1, 1, 80.30, "2022-04-09");
SELECT * FROM transacao RIGHT JOIN usuario ON transacao.id_usuario = usuario.id ORDER BY transacao.dt_cadastro; 