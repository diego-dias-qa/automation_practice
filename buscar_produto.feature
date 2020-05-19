# language: pt

@buscar_produto
Funcionalidade: Buscar produto
  Para que eu possa comprar um produto
  Sendo um cliente que acessou a plataforma online
  Posso realizar uma busca

  Cenário: Buscar
	Dado que "blouse" é um produto disponível
	Quando eu realizo a busca
	Então devo ver produtos que contenha "Blouse" no resultado
  