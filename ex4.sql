SELECT medicos.nome, medicos.cpf from medicos join pacientes on pacientes.cpf = medicos.cpf;
select funcionarios.nome as funcionarios, medicos.nome as medicos from medicos join funcionarios on medicos.cidade = funcionarios.cidade;
select DISTINCT medicos.nome, medicos.idade from medicos join consultas on medicos.codm = consultas.codm join pacientes on consultas.codp = pacientes.codp where pacientes.nome = 'Ana';
select ambulatorios.nroa from ambulatorios join ambulatorios as amb5 on ambulatorios.andar = amb5.andar where amb5.nroa = 5 and ambulatorios.nroa != 5;

select DISTINCT codp, nome from pacientes natural join consultas where hora > '14:00:00';
select DISTINCT nroa, andar from ambulatorios natural join consultas natural join medicos where data = '2020-10-12';

select ambulatorios.*, nome, codm from ambulatorios left join medicos on ambulatorios.nroa = medicos.nroa;
select medicos.cpf, medicos.nome, pacientes.nome, data from medicos left join consultas on medicos.codm = consultas.codm join pacientes on consultas.codp = pacientes.codp;