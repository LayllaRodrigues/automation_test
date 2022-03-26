  
  Quando('submeto minhas credenciais {string} e {string}') do |email,senha|
    find('#email').set email
    click_button 'próximo passo'

    find('#user_password').set senha
    click_button 'entrar'
  end
  
  Então('sou direcionada para a home do cliente') do
    expect(page).to have_css ".account-header"
  end

