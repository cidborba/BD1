select * from medicos where idade < 40 or especialidade != 'traumatologia';

SELECT nome, idade from pacientes where cidade != 'Florianopolis';

select nome, idade * 12 from pacientes;

select max(hora) from consultas where data = '2020-10-13';

select avg(idade), count(DISTINCT nroa) from medicos;

select codf, nome, salario - (salario * 0.2) as liquido from funcionarios;

select nome from funcionarios where nome like '%a';

select nome, especialidade from medicos where nome like '_o%o';

SELECT codp, nome from pacientes where idade > 25 and doenca in ('tendinite', 'fratura', 'gripe', 'sarampo');

SELECT cpf, nome, idade, cidade from medicos where cidade = 'Florianopolis' union
select cpf, nome, idade, cidade from pacientes where cidade = 'Florianopolis' UNION
select cpf, nome, idade, cidade from funcionarios where cidade = 'Florianopolis';