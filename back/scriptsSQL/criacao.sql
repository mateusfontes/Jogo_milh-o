CREATE DATABASE show_milhao;

USE show_milhao;

CREATE TABLE perguntas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    questao TEXT NOT NULL,
    correta TEXT NOT NULL,
    falsa1 TEXT NOT NULL,
    falsa2 TEXT NOT NULL,
    falsa3 TEXT NOT NULL,
    dificuldade ENUM('FACIL','MEDIA','DIFICIL'),
    categoria VARCHAR(250) NOT NULL
)