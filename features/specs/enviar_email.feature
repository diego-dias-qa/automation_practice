# language: pt

@enviar_email
Funcionalidade: Enviar email
  Para entrar em contato com a YourLogo
  Sendo um cliente que acessou a plataforma online
  Posso enviar um email

  Cenário: Enviar
	Dado que o cliente esteja na plataforma online
	Quando escrever email
	Então devo ver a mensagem "Your message has been successfully sent to our team."
