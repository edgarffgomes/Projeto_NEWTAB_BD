CREATE DATABASE bd_formulario;
USE bd_formulario;
CREATE TABLE transacao (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, tipo VARCHAR(10) NOT NULL, nome VARCHAR(50) NOT NULL, valor FLOAT NOT NULL, dt_cadastro DATE NOT NULL);
INSERT INTO transacao (tipo, nome, valor, dt_cadastro) VALUES ("Venda", "Carro", 15000.00, '2022-03-18');
INSERT INTO transacao (tipo, nome, valor, dt_cadastro) VALUES ("Compra", "Moto", 10000.00, '2022-04-03');
INSERT INTO transacao (tipo, nome, valor, dt_cadastro) VALUES ("Compra", "Supermercado", 2000.00, '2022-04-01');
SELECT * FROM transacao ORDER BY dt_cadastro;
SELECT SUM(valor) FROM transacao ;
TRUNCATE TABLE transacao;