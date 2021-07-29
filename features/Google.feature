#Author:rsppnet@hotmail.com
#language:en

Feature: pesquisa google
eu como usuario quero acessar o google para realizar uma pesquisa!

@busca01
Scenario: pesquisar meu nome
Given que eu esteja no site "https://google.com.br"
When preencho o nome e clicko em pesquisar
Then valido o nome

@busca02
Scenario Outline: pesquisar 02
Given que eu esteja no site "https://google.com.br"
When pesquisar "Roque"

Then valido o status "Roque"

@busca03
Scenario Outline: pesquisar 02
Given que eu esteja no site "https://google.com.br"
When pesquisar
|nome   |
|Roque  |
|Carlito|

Then valido o status
|status |
|Roque  |
|Carlito|


@busca04
Scenario Outline: pesquisar 02
Given que eu esteja no site "https://google.com.br"
When pesquisar
|nome |
|<nome> |
Then valido o status
|status |
|<status> |

Examples:
| nome              | status                               |
| roque             |roque - Pesquisa Google               |
| e2e treinamentos  |e2e treinamentos - Pesquisa Google    |