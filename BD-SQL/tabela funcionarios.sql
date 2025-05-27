-- Criação da tabela funcionarios
CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    departamento INT,
    cpf_supervisor VARCHAR(11),
    salario DECIMAL(10, 2)
);

-- Inserção dos dados
INSERT INTO funcionarios (id_funcionario, nome, cpf, departamento, cpf_supervisor, salario) VALUES
(1, 'Mario Jose', '10203040231', 3, '98765432198', 3500.20),
(2, 'Maria Clara', '32123123424', 2, '87654321908', 3423.45),
(3, 'João Pedro', '23124543234', 3, '76543210987', 7004.00),
(4, 'Vinicius Morais', '56474567865', 5, '45678902134', 34234.00),
(5, 'Wellington Oliveira', '45345367876', 1, '21345365476', 16045.00),
(6, 'Clarisse Santos', '12345678904', 5, '12345434567', 7856.00),
(7, 'Vilma Mairia', '36840793333', 4, '87656787654', 4354.00),
(8, 'José Pereira', '31285598333', 3, '23454321234', 76545.00),
(9, 'Claudemir Silva', '50202573040', 2, '32432543678', 9876.00);