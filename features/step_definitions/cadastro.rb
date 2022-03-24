Dado('que acesso a página de cadastro') do
    visit "/users/email_verifications/new"
end
  
  Quando('submeto o seguinte formulário de cadastro:') do |table|
    sleep 2

    find("a[class='button button--secondary']", match: :first).click

    log table.hashes
    user = table.hashes.first
    log user

    find("#user_name").set user[:nome]
    find("#user_email").set user[:email]
    find("#user_password").set user[:senha]
    find("#user_password_confirmation").set user[:senha]

    click_button    "enviar cadastro"
  end
  
  Então('sou direcionado para a home do usuário') do
    expect(current_url).to eq("https://qa.youse.io/account")

  end