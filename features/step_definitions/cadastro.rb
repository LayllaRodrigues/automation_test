Dado('que acesso a página de cadastro') do
    visit "/users/email_verifications/new"
end
  
  Quando('submeto o seguinte formulário de cadastro:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('sou direcionado para a home do usuário') do
    pending # Write code here that turns the phrase above into concrete actions
  end