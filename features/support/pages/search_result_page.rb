# frozen_string_literal: true

# pagina no qual carrega os produtos apos realizar busca
class SearchResultPage < BasePage
  attr_reader :resultado_busca

  def initialize
    @resultado_busca = EL['resultado_busca']
  end

  def validar_resultado_busca
    find(resultado_busca).text
  end
end
