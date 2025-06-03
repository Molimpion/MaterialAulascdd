-- TABELA: clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    cidade VARCHAR(100)
);

INSERT INTO clientes (nome, email, cidade) VALUES
('João Silva', 'joao@email.com', 'São Paulo'),
('Maria Souza', 'maria@email.com', 'Rio de Janeiro'),
('Carlos Lima', 'carlos@email.com', 'São Paulo'),
('Ana Costa', 'ana@email.com', 'Belo Horizonte');

-- TABELA: produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2),
    ativo BOOLEAN
);

INSERT INTO produtos (nome, preco, ativo) VALUES
('Notebook', 3500.00, true),
('Teclado', 150.00, true),
('Mouse', 80.00, false),
('Monitor', 899.90, true),
('Cadeira Gamer', 1200.00, true);

-- TABELA: funcionarios
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    salario DECIMAL(10,2)
);

INSERT INTO funcionarios (nome, salario) VALUES
('Fernanda Lopes', 4500.00),
('Rafael Dias', 6000.00),
('Claudia Melo', 5200.00),
('Bruno Rocha', 3000.00),
('Tatiane Silva', 8000.00),
('Igor Lima', 7000.00);

-- TABELA: pedidos
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO pedidos (cliente_id, data) VALUES
(1, '2024-01-10'),
(1, '2024-01-15'),
(1, '2024-02-20'),
(1, '2024-04-01'),
(2, '2023-12-25'),
(2, '2024-02-05'),
(3, '2024-01-30'),
(4, '2024-03-01');

-- TABELA: usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    criado_em DATE DEFAULT CURRENT_DATE
);

INSERT INTO usuarios (nome, email) VALUES
('Lucas Braga', 'lucas@email.com'),
('Patrícia Gomes', 'patricia@email.com'),
('Eduardo Tavares', 'edu@email.com');
