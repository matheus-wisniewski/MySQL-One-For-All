# 1. Normalize as tabelas da planilha [SpotifyClone](../SpotifyClone-Non-NormalizedTable.xlsx) para a 3° forma normal e as crie no banco de dados
## Resolução: 
[Requisito 1](./desafio1.sql).
<br><br>

# 2. Crie uma QUERY que exiba três colunas: 
<ol>
<li> A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".</li>
<li> A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".</li>
<li> A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".</li>
</ol>

## Resolução:
[Requisito 2](./desafio2.sql).
<br><br>

# 3. Crie uma QUERY que deverá ter apenas três colunas:
<ol>
<li> A primeira coluna deve possuir o alias "pessoa_usuaria" e exibir o nome da pessoa usuária.</li>
<li> A segunda coluna deve possuir o alias "musicas_ouvidas" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.</li>
<li> A terceira coluna deve possuir o alias "total_minutos" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.</li>
</ol>

[Requisito 3](./desafio3.sql).
<br><br>

# 4. Crie uma QUERY que deve mostrar as pessoas usuárias que estavam ativas a partir do ano de 2021, se baseando na data mais recente no histórico de reprodução.
## Resolução:
[Requisito 4](./desafio4.sql).
<br><br>

# 5. Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma QUERY que possua duas colunas:
<ol>
<li> A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.</li>
<li> A segunda coluna deve possuir o alias "reproducoes" e exibir a quantidade de pessoas que já escutaram a canção em questão.</li>
</ol>

## Resolução:
[Requisito 5](./desafio5.sql).
<br><br>

# 6. Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma QUERY que deve exibir quatro dados:
<ol>
<li> A primeira coluna deve ter o alias "faturamento_minimo" e exibir o menor valor de plano existente para uma pessoa usuária.</li>
<li> A segunda coluna deve ter o alias "faturamento_maximo" e exibir o maior valor de plano existente para uma pessoa usuária.</li>
<li> A terceira coluna deve ter o alias "faturamento_medio" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.</li>
<li> Por fim, a quarta coluna deve ter o alias "faturamento_total" e exibir o valor total obtido com os planos possuídos por pessoas usuárias.</li>
</ol>

## Resolução:
[Requisito 6](./desafio6.sql).
<br><br>

# 7. Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, ordenada pela quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma QUERY com as seguintes colunas:
<ol>
<li> A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".</li>
<li> A segunda coluna deve exibir o nome do álbum, com o alias "album".</li>
<li> A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "pessoas_seguidoras".</li>
</ol>

## Resolução:
[Requisito 7](./desafio7.sql).
<br><br>

# 8. Mostre uma relação dos álbuns produzidos por uma pessoa artista específica, neste caso "Elis Regina". Para isto crie uma QUERY que o retorno deve exibir as seguintes colunas:
## Resolução:
[Requisito 8](./desafio8.sql).
<br><br>

# 9. Crie uma QUERY que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico da usuária "Barbara Liskov" e a consulta deve retornar a seguinte coluna:

<ol>
<li> O valor da quantidade, com o alias "musicas_no_historico". </li>
</ol>

## Resolução: 
[Requisito 9](./desafio9.sql).
<br><br>

# 10. Normalize a tabela da planilha [SpotifyClone-fav-songs](../SpotifyClone-Non-NormalizedTable-fav-songs.xlsx)
<br><br>

# 11. Crie uma QUERY que exibe o top 3 de álbuns com as músicas que mais foram favoritadas. O resultado deve possuir duas colunas:

<ol>
<li> O nome do álbum.</li>
<li> Quantas vezes as músicas do álbum foram favoritadas.</li>
</ol>

## Resolução: 
[Requisito 11](./desafio11.sql)
<br><br>

# 12. Crie uma QUERY que exibe um ranking de artistas baseado na quantidade de favoritadas em suas músicas. O resultado deve possuir duas colunas:

<ol>
<li> O nome da pessoa artista.</li>
<li> Uma classificação definida pela quantidade de favoritadas as canções da pessoa artista receberam.</li>
</ol>

## Resolução: 
[Requisito 11](./desafio12.sql)
<br><br>

# 13. Crie uma QUERY que exibe uma relação da quantidade total de pessoas usuárias e favoritadas por faixa etária. O resultado deve possuir três colunas:

<ol>
<li> A faixa etária das pessoas usuárias.</li>
<li> O total de pessoas usuárias na respectiva faixa etária.</li>
<li> O total de favoritadas realizadas pelas pessoas usuárias da respectiva faixa etária.</li>
</ol>

## Resolução: 
[Requisito 13](./desafio13.sql)
<br><br>