# frozen_string_literal: true

# pagina no qual carrega os produtos apos realizar busca
class SearchResultPage < SitePrism::Page
  include RSpec::Matchers

  element :resultado_busca, '.product-container'

  def validar_resultado_busca
    resultado_busca.text
  end
end
