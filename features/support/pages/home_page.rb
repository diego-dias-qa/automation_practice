# frozen_string_literal: true

# pagina inicial
class HomePage < BasePage
  attr_reader :campo_de_busca, :botao_pesquisa

  def initialize
    @campo_de_busca = EL['campo_de_busca']
    @botao_pesquisa = EL['botao_pesquisa']
  end

  def preencher_campo_busca(produto)
    find(campo_de_busca).set(produto)
  end

  def clicar_botao_pesquisa
    find(botao_pesquisa).click
  end

  def contactar
    find('#contact-link').click
  end
end
