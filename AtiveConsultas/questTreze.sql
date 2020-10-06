select p.Descricao, p.DataInicio, p.Datafim, a.Descricao, ap.DataInicio, ap.Datafim
from Projeto p , Atividade a, AtividadeProjeto ap
where ap.CodProjeto = p.Codigo and ap.CodAtividade= a.Codigo and (p.DataInicio > ap.DataInicio or p.Datafim < ap.Datafim);