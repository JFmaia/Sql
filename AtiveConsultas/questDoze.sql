#Faça uma consulta que selecione o nome do projeto, data de início e fim do projeto, o nome da atividade do projeto, 
#data de início e fim da atividade.



select p.Descricao, p.DataInicio, p.Datafim, a.Descricao, ap.DataInicio, ap.Datafim
from Projeto p , Atividade a, AtividadeProjeto ap
where ap.CodProjeto = p.Codigo and ap.CodAtividade= a.Codigo;