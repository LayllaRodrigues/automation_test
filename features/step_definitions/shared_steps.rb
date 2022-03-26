Dado('que acesso a página principal') do
    visit "/users/email_verifications/new"
end

Então('vejo a mensagem de alerta: {string}') do |expect_alert|
    alert = find(".form__error-messages")
    expect(alert.text).to eql expect_alert
end

Então('vejo o alerta: {string}') do |expect_alert|
    alert = find(".flash-message__text")
    expect(alert.text).to eql expect_alert
  end