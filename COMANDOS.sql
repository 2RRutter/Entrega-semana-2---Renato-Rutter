INSERT INTO brh.colaborador (matricula, nome, cpf, salario, departamento, cep, logradouro, complemento_endereco) VALUES ('F012', 'Fulano de Tal', '123.123.123-12', '48900', 'DIR', '12332-123', 'Avenida das Flores', '');

INSERT INTO brh.endereco (cep, uf, cidade, bairro) VALUES ('12332-123', 'SP', 'SAO PAULO', 'SAUDE');

INSERT INTO brh.telefone_colaborador (colaborador, numero, tipo) VALUES ('F012', '(61) 9 9999-9999;', 'M'); 

INSERT INTO brh.telefone_colaborador (colaborador, numero, tipo) VALUES ('F012', '(61) 3030-4040', 'R');

INSERT INTO brh.email_colaborador (colaborador, email, tipo) VALUES ('F012', 'fulano@email.com', 'P');

INSERT INTO brh.email_colaborador (colaborador, email, tipo) VALUES ('F012', 'fulano.tal@brh.com', 'T');

INSERT INTO brh.dependente (cpf, colaborador, nome, parentesco, data_nascimento) VALUES ('111.111.111-11', 'F012', 'Beltrana de Ta', 'Filho(a)', to_date('2000-04-03', 'yyyy-mm-dd'));

INSERT INTO brh.dependente (cpf, colaborador, nome, parentesco, data_nascimento) VALUES ('222.222.222-20', 'F012', 'Cicrana de Tal', 'Cônjuge', to_date('1975-06-30', 'yyyy-mm-dd'));

INSERT INTO brh.atribuicao (projeto, colaborador, papel) VALUES (1, 'B123', 2);

INSERT INTO brh.papel (id, nome) VALUES (8, 'Especialista de Neg�cios');

INSERT INTO brh.projeto (id, nome, responsavel, inicio, fim) VALUES (5, 'BI', 'D123', to_date('2022-03-18', 'yyyy-mm-dd'), to_date('2023-09-10', 'yyyy-mm-dd'));

SELECT * FROM brh.projeto;

SELECT * FROM brh.papel;

SELECT * FROM brh.atribuicao;

SELECT * FROM BRH.COLABORADOR;

SELECT * FROM BRH.ENDERECO;

SELECT * FROM brh.telefone_colaborador;

SELECT * FROM brh.email_colaborador;

DELETE FROM brh.email_colaborador WHERE EMAIL = 'fulano@email.com;';

SELECT * FROM brh.dependente;

UPDATE BRH.COLABORADOR SET NOME = 'Maria Mendon�a' WHERE NOME = 'Maria';

UPDATE brh.email_colaborador SET EMAIL = 'maria.mendonca@email.com;' WHERE EMAIL = 'maria@corporativo.com';

SELECT COLABORADOR, NOME, DATA_NASCIMENTO
FROM BRH.DEPENDENTE WHERE PARENTESCO = 'C�njuge';

SELECT COLABORADOR, NUMERO
FROM BRH.TELEFONE_COLABORADOR WHERE TIPO IN ('M','C') ORDER BY NUMERO;

SELECT * FROM brh.departamento;

SELECT * FROM BRH.COLABORADOR;

SELECT * FROM BRH.DEPENDENTE;

DELETE FROM BRH.DEPARTAMENTO WHERE SIGLA = 'SECAP';

SELECT * FROM brh.COLABORADOR WHERE DEPARTAMENTO = 'SECAP';

SELECT * FROM BRH.DEPENDENTE WHERE COLABORADOR IN ('H123', 'M123', 'R123', 'W123');

DELETE FROM BRH.DEPENDENTE WHERE COLABORADOR IN ('H123', 'M123', 'R123', 'W123');

DELETE FROM BRH.EMAIL_COLABORADOR WHERE COLABORADOR IN ('H123', 'M123', 'R123', 'W123');

DELETE FROM BRH.TELEFONE_COLABORADOR WHERE COLABORADOR IN ('H123', 'M123', 'R123', 'W123');

DELETE FROM BRH.COLABORADOR WHERE MATRICULA IN ('H123', 'M123', 'R123', 'W123');

SELECT departamento AS sigla, nome FROM BRH.COLABORADOR WHERE cep = '71777-700'
AND departamento IN ('SECAP', 'SESEG');