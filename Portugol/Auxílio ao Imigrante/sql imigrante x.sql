use projetoimigrante;

CREATE TABLE imigrante (
    id_imigrante INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE documento (
    id_documento INT AUTO_INCREMENT PRIMARY KEY,
    id_imigrante INT NOT NULL,
    tipo_documento VARCHAR(50) NOT NULL,
    numero_documento VARCHAR(50) NOT NULL,
    data_emissao DATE,
    data_validade DATE,
    pais_emissor VARCHAR(50),
    FOREIGN KEY (id_imigrante) REFERENCES imigrante(id_imigrante)
);

CREATE TABLE escolaridade (
    id_escolaridade INT AUTO_INCREMENT PRIMARY KEY,
    id_imigrante INT NOT NULL,
    nivel_escolaridade VARCHAR(50) NOT NULL,
    instituicao VARCHAR(100),
    pais VARCHAR(50) NOT NULL,
    ano_conclusao INT,
    FOREIGN KEY (id_imigrante) REFERENCES imigrante(id_imigrante)
);

CREATE TABLE formacao_profissional (
    id_formacao INT AUTO_INCREMENT PRIMARY KEY,
    id_imigrante INT NOT NULL,
    curso_profissao VARCHAR(100) NOT NULL,
    instituicao VARCHAR(100),
    pais VARCHAR(50),
    ano_conclusao INT,
    FOREIGN KEY (id_imigrante) REFERENCES imigrante(id_imigrante));
    
CREATE TABLE emprego (
    id_emprego INT AUTO_INCREMENT PRIMARY KEY,
    id_imigrante INT NOT NULL,
    empresa VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    data_inicio DATE,
    data_termino DATE,
    descricao TEXT,
    FOREIGN KEY (id_imigrante) REFERENCES imigrante(id_imigrante)
);

CREATE TABLE local_de_apoio (
    id_local INT AUTO_INCREMENT PRIMARY KEY,
    tipo_local VARCHAR(50) NOT NULL, -- ONG, Centro de Acolhimento, etc.
    nome_local VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    cidade VARCHAR(50) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    servicos_oftalecidos TEXT,
    horario_funcionamento VARCHAR(100)
);

CREATE TABLE imigrante_local (
    id_registro INT AUTO_INCREMENT PRIMARY KEY,
    id_imigrante INT NOT NULL,
    id_local INT NOT NULL,
    data_acesso DATE,
    servico_utilizado VARCHAR(100),
    observacoes TEXT,
    FOREIGN KEY (id_imigrante) REFERENCES imigrante(id_imigrante),
    FOREIGN KEY (id_local) REFERENCES local_de_apoio(id_local)
);
