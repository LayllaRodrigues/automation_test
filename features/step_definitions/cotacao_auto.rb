Capybara.default_max_wait_time = 10


Dado('que acesso a página de ofertas e seleciono o produto auto') do
    visit "/seguro-auto/"
    click_button  "Cote Grátis"
  end
  
  Quando('preencho meus dados cadastrais') do
    find("#auto_order_flow_lead_person_data_lead_person_attributes_name").set   Faker::Name.name
    find("#auto_order_flow_lead_person_data_lead_person_attributes_email").set  Faker::Internet.free_email
    find("#auto_order_flow_lead_person_data_lead_person_attributes_phone").set  Faker::PhoneNumber.cell_phone
    click_button "Continuar"
        
  end
  
  Quando('seleciono meu plano') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('realizo o pagamento') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('minha apólice é emitida') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  