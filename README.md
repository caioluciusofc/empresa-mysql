Banco de Dados de uma Empresa MySQL

Projeto acadêmico de banco de dados relacional para cadastrar empregados e cargos. O script usa dados fictícios para demonstrar filtros, contagens por cidade e consultas com `JOIN`.

Estrutura do banco

Tabela Finalidade

`tb_cargo` Armazena o código e a descrição de cada cargo.
`tb_empregado` Armazena os dados dos empregados e permite associar cada um a um cargo.

A coluna `cod_cargo` em `tb_empregado` é uma chave estrangeira que referencia `tb_cargo`. Ela aceita `NULL` para representar um empregado sem cargo atribuído.

Resultados esperados

Consulta Resultado

`COUNT(*)` 7 empregados
`GROUP BY cidade` Belém: 1, Brasília: 4, Unaí: 2 
`INNER JOIN` 6 empregados com cargo atribuído 
`LEFT JOIN` 7 empregados, incluindo Bruno com cargo `NULL` 

Como executar

1. Conecte-se a um servidor MySQL pelo MySQL Workbench.
2. Abra e execute o arquivo [`empresa.sql`](empresa.sql) para criar o banco `db_empresa_Caio`, carregar os dados fictícios e rodar as consultas.
3. Compare os resultados do `INNER JOIN` e do `LEFT JOIN` nas abas de resultados.

Se `db_empresa_Caio` já existir, use outro nome nas instruções `CREATE DATABASE` e `USE` antes de executar o script.
