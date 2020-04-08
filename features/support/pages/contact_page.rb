# frozen_string_literal: true

# pagina no qual preenche campo para enviar email
class ContactPage < BasePage
  def preencher_email_para_envio
    find('#uniform-id_contact').click
    select('Webmaster').click
    # find(:xpath, '//option[contains(text(), "Webmaster")]').select_option
    find('#email').set 'teste@teste.com'
    find('#message').set 'Mensagem para teste.'
    find('#submitMessage').click
  end

  def confirmacao_envio
    find('.alert.alert-success').text
  end
end
