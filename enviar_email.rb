# frozen_string_literal: true

# Uso de SitePrism (@page2)

Dado('que o cliente esteja na plataforma online') do
  @page1.call(HomePage).contactar
end

Quando('escrever email') do
  @page2.contact.preencher_email_para_envio
end

Então('devo ver a mensagem {string}') do |mensagem|
  expect(@page2.contact.confirmacao_envio).to have_content(mensagem)
end
