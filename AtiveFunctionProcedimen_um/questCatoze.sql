/*
Explique o funcionamento de um índice e como ele é implementado no SGBD.

Um índice seria uma estrutura de dados que referencia cada item da coluna de uma tabela,
sendo ordenado de forma que possa ser utilizada uma estratégia como a "binary tree" para acelerar pesquisas
no banco de dados.
Ele pode ser implementado pelo SGBD como uma nova coluna na tabela de um banco de dados (recebendo o nome de Clustered
Index) como também pode ser implementado como uma estrutura de dados separada do banco de dados tendo referências para
cada elemento da tabela (recebendo o nome de "Non-clustered Index")
*/