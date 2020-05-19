# frozen_string_literal: true

# pagina inicial
class HomePage < SitePrism::Page
  include RSpec::Matchers

  element :campo_de_busca, '#search_query_top'
  element :botao_pesquisa, '.btn.btn-default.button-search'

  def preencher_campo_busca(produto)
    campo_de_busca.set(produto)
  end

  def clicar_botao_pesquisa
    botao_pesquisa.click
  end

  def contactar
    find('#contact-link').click
  end
end
