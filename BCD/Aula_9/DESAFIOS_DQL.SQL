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
-- 10. Mostre os pedidos FINALIZADOS com valor acima de R$ 20,00, do maior para o menor valor.


-- PARTE C - CÁLCULOS E AGRUPAMENTOS

-- 11. Informe quantos produtos estão cadastrados.

-- 12. Mostre menor preço, maior preço e preço médio dos produtos.

-- 13. Informe quantos clientes existem em cada cidade.

-- 14. Mostre somente as cidades que possuem dois ou mais clientes.

-- 15. Calcule o faturamento total considerando apenas pedidos FINALIZADOS.

-- INSERT INTO CLIENTE (NOME, EMAIL, TELEFONE, CIDADE, ATIVO) VALUES
-- ('THIAGO SILVA', 'THIAGUETES@GMAIL.COM', '199998884567', 'LIEMIRA', TRUE);

-- SELECT NOME, CIDADE FROM EMAIL;



-- PARTE D - RELACIONAMENTOS

-- 16. Liste cada pedido exibindo id, data, nome do cliente, status e valor total.
SELECT P.ID_PEDIDO, DATE_FORMAT(P.DATA_PEDIDO, '%d %m %Y %H: %i') AS DATA,
C.NOME AS CLIENTE, PR.NOME AS PRODUTO, IP.QUANTIDADE, IP.PRECO_UNITARIO, IP.QUANTIDADE * IP.PRECO_UNITARIO AS SUBTOTAL
FROM PEDIDO AS P 
INNER JOIN CLIENTE AS C 
ON IP.PEDIDO = P.ID_PEDIDO
INNER JOIN PRODUTO AS PR 
ON PR.ID_PRODUTO = IP.ID_PRODUTO
ORDER BY P.ID_PEDIDO, PR.NOME;

-- 17. Liste cada produto acompanhado do nome de sua categoria.
SELECT CA.NOME AS CATEGORIA, COUNT(PR.ID_PRODUTO) AS QTDE_PRODUTOS
FROM CATEGORIA AS CA 
LEFT JOIN PRODUTO AS PR 
ON PR.ID_CATEGORIA = CA.ID_CATEGORIA
GROUP BY CA.ID_CATEGORIA, CA.NOME
ORDER BY QTDE_PRODUTOS DESC;

-- 18. Gere um relatório dos itens vendidos: pedido, produto, quantidade,
--     preço unitário e subtotal.
SELECT P.ID_PEDIDO, DATE_FORMAT(P.DATA_PEDIDO, '%d %m %Y %H: %i') AS DATA,
C.NOME AS CLIENTE, PR.NOME AS PRODUTO, IP.QUANTIDADE, IP.PRECO_UNITARIO, IP.QUANTIDADE * IP.PRECO_UNITARIO AS SUBTOTAL
FROM PEDIDO AS P 
INNER JOIN CLIENTE AS C 
ON IP.PEDIDO = P.ID_PEDIDO
INNER JOIN PRODUTO AS PR 
ON PR.ID_PRODUTO = IP.ID_PRODUTO
ORDER BY P.ID_PEDIDO, PR.NOME;

-- 19. Mostre todos os clientes, inclusive aqueles que nunca fizeram pedidos.
SELECT C.ID_CLIENTE, C.NOME 
FROM CLIENTE AS C 
LEFT JOIN PEDIDO AS P

-- 20. Liste apenas os clientes que nunca fizeram pedidos.
SELECT C.ID_CLIENTE, C.NOME 
FROM CLIENTE AS C 
LEFT JOIN PEDIDO AS P 
ON P.ID_CLIENTE = C.ID_CLIENTE
WHERE P.ID_PEDIDO IS NULL;

-- PARTE E - DESAFIO GERENCIAL

-- 21. Informe quantos pedidos FINALIZADOS cada cliente realizou e quanto cada cliente gastou. Ordene do maior gasto para o menor.




-- 22. Mostre a quantidade de produtos e o preço médio de cada categoria.


-- 23. Descubra quais produtos possuem preço superior ao preço médio geral.


-- 24. Classifique os produtos como Econômico, Intermediário ou Premium.
--     Defina e informe suas faixas de preço.


-- 25. CONSULTA AUTORAL
-- Pergunta de negócio:
--
-- Por que essa informação é útil?
--
-- Consulta: