# frozen_string_literal: true

# Uso de lambda (@page1) ao inves de instanciamento de classes

Dado('que {string} é um produto disponível') do |produto|
  @page1.call(HomePage).preencher_campo_busca(produto)
end

Quando('eu realizo a busca') do
  @page1.call(HomePage).clicar_botao_pesquisa
end

Então('devo ver produtos que contenha {string} no resultado') do |produto|
  begin
    expect(@page1.call(SearchResultPage).validar_resultado_busca).to have_content(produto)
  rescue StandardError
    raise 'Produto não existe mais'
    # raise StandardError.new 'Produto nao existe mais'
    # raise Exception.new 'Produto nao existe mais'
  end
end
