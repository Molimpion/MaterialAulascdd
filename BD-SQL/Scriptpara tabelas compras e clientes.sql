-- CRIAR TABELAS
DROP TABLE IF EXISTS compras;
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_nascimento DATE,
    saldo DECIMAL(10,2),
    cidade VARCHAR(50)
);

CREATE TABLE compras (
    id INT PRIMARY KEY,
    cliente_id INT,
    valor DECIMAL(10,2),
    data_compra DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- INSERIR CLIENTES
INSERT INTO clientes (id, nome, email, data_nascimento, saldo, cidade) VALUES
(1, 'Ana Silva', 'ana.silva@gmail.com', '1990-05-12', 1250.50, 'São Paulo'),
(2, 'Bruno Souza', 'bruno_souza@gmail.com', '1985-03-22', 850.75, 'Rio de Janeiro'),
(3, 'Carla Mendes', 'carla.mendes@gmail.com', '1992-11-08', 420.00, 'Belo Horizonte'),
(4, 'Daniel Rocha', 'daniel.rocha@gmail.com', '1980-07-30', 3000.00, 'Curitiba'),
(5, 'Eduardo Lima', 'edu.lima@gmail.com', '1978-01-15', 120.00, 'Fortaleza'),
(6, 'Fernanda Alves', 'fernanda.alves@gmail.com', '1995-10-10', 950.00, 'Salvador'),
(7, 'Gabriel Martins', 'gabriel.m@gmail.com', '2000-06-25', 700.30, 'Brasília'),
(8, 'Helena Costa', 'helena.costa@gmail.com', '1998-09-17', 1500.00, 'Porto Alegre'),
(9, 'Igor Fernandes', 'igor.f@gmail.com', '1991-04-01', 200.00, 'Recife'),
(10, 'Juliana Dias', 'juliana.dias@gmail.com', '1989-12-05', 0.00, 'Manaus');

-- INSERIR COMPRAS
INSERT INTO compras (id, cliente_id, valor, data_compra) VALUES
(1, 1, 250.00, '2024-01-10'),
(2, 1, 130.50, '2024-03-15'),
(3, 2, 300.00, '2024-02-20'),
(4, 2, 450.75, '2024-03-22'),
(5, 3, 120.00, '2024-04-05'),
(6, 4, 780.00, '2024-01-12'),
(7, 4, 950.00, '2024-02-10'),
(8, 4, 500.00, '2024-03-01'),
(9, 5, 80.00, '2024-05-05'),
(10, 6, 200.00, '2024-03-18'),
(11, 6, 300.00, '2024-04-10'),
(12, 7, 100.00, '2024-03-03'),
(13, 7, 250.30, '2024-04-01'),
(14, 8, 600.00, '2024-02-14'),
(15, 8, 400.00, '2024-03-25'),
(16, 9, 50.00, '2024-01-20'),
(17, 9, 70.00, '2024-02-05'),
(18, 2, 100.00, '2024-04-12'),
(19, 10, 0.00, '2024-05-01'),
(20, 1, 95.00, '2024-05-20');