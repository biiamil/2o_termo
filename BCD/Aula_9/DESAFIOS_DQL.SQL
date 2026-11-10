-- Active: 1788351673791@@127.0.0.1@3306@smartcoffee_dml_gabriela
-- ============================================================
-- AULA 09 - ATIVIDADE PRÁTICA DE DQL
-- Nome: GABRIEILA DE SOUZA LIMA DE OLIVEIRA
-- Turma:DEVIE - CASTELLO Data: 07/10/2026
-- Base: smartcoffee_dql
-- ============================================================

USE smartcoffee_dql;
-- PARTE A - AQUECIMENTO

-- 1. Liste todos os clientes cadastrados.
SELECT * FROM CLIENTE;
-- 2. Exiba apenas nome, cidade e e-mail dos clientes.
SELECT NOME, CIDADE FROM EMAIL;
-- 3. Liste os nomes das cidades sem repetir valores.
SELECT DISTINCT CIDADE FROM CLIENTE;
-- 4. Liste todos os produtos em ordem crescente de preço.
SELECT NOME, PRECO 
FROM PRODUTO 
ORDER BY PRECO ASC;
-- 5. Mostre apenas os 5 produtos mais caros.
-- SELECT NOME, PRECO 
-- FROM PRODUTO 
-- ORDER BY PRECO DESC 
-- LIMIT 7;

-- SELECT NOME, PRECO 
-- FROM PRODUTO 
-- ORDER BY NOME 
-- LIMIT 5 OFFSET 5;

-- PARTE B - FILTROS

-- 6. Liste os produtos com preço entre R$ 8,00 e R$ 15,00.
SELECT NOME, PRECO 
FROM produto
WHERE PRECO >= 8.00 AND PRECO <= 15.00;
-- 7. Liste os clientes das cidades Limeira ou Americana.
SELECT NOME, CIDADE 
FROM CLIENTE 
WHERE CIDADE = 'LIMEIRA' OR CIDADE = 'AMERICANA';
-- 8. Localize os produtos cujo nome contém a palavra “Café”.
SELECT nome 
FROM produto
WHERE nome LIKE 'Café%';
-- 9. Liste os clientes que não informaram telefone.
SELECT NOME, COALESCE(TELEFONE, 'NÃO INFORMADO') AS CONTATO 
FROM CLIENTE;
-- 10. Mostre os pedidos FINALIZADOS com valor acima de R$ 20,00,
--     do maior para o menor valor.


-- PARTE C - CÁLCULOS E AGRUPAMENTOS

-- 11. Informe quantos produtos estão cadastrados.
-- 12. Mostre menor preço, maior preço e preço médio dos produtos.
-- 13. Informe quantos clientes existem em cada cidade.
-- 14. Mostre somente as cidades que possuem dois ou mais clientes.
-- 15. Calcule o faturamento total considerando apenas pedidos FINALIZADOS.



-- INSERT INTO CLIENTE (NOME, EMAIL, TELEFONE, CIDADE, ATIVO) VALUES
-- ('THIAGO SILVA', 'THIAGUETES@GMAIL.COM', '199998884567', 'LIEMIRA', TRUE);

-- SELECT NOME, CIDADE FROM EMAIL;












