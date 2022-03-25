Então('vejo a mensagem de alerta: {string}') do |expect_alert|
    alert = find(".form__error-messages")
    expect(alert.text).to eql expect_alert
end