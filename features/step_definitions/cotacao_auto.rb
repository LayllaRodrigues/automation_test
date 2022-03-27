Faker::Config.locale = 'pt-BR'

Capybara.default_max_wait_time = 50

Dado('que acesso a página de ofertas e seleciono o produto auto') do
    visit "/seguro-auto/"
    click_button  "Cote Grátis"
  end
  
  Quando('preencho meus dados cadastrais') do
    find("#auto_order_flow_lead_person_data_lead_person_attributes_name").set   Faker::Name.name_with_middle
    find("#auto_order_flow_lead_person_data_lead_person_attributes_email").set  Faker::Internet.free_email
    find("#auto_order_flow_lead_person_data_lead_person_attributes_phone").set  Faker::PhoneNumber.cell_phone
    click_button "Continuar"
        
  end
  
  Quando('preencho os dados do veiculo') do
    placa = "You0000"
    cep = "04538-133"
    cpf = "123.456.751-28"
    number = Faker::Address.building_number

    find("#auto_order_flow_pricing_requirements_vehicle_attributes_license_plate_or_vin").set  placa
  
    click_button "Entendi"

    find(".usage-button", match: :first ).click
    find('label[class="radio-button__fake-radio"][for="bullet_proof_false"]', visible: false).click
    find('#auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode').set  cep
    find('#auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_number').set number
    find('#auto_order_flow_pricing_requirements_insured_person_attributes_cpf').set cpf
    find('label[class="radio-button__fake-radio"][for="has_insurance_false"]').click
    find('label[class="radio-button__fake-radio"][for="product_consent_true"]').click
    click_button 'Continuar'

    end

  Quando('seleciono meu plano') do
    find('a[href="#"][class="button button--purple-transparent button--bordless"]', visible: false).click
    find('div[id="preformatted-coverages-auto-plans-11"],button[comprar]').click
  end
  
  Quando('realizo o pagamento') do
    card = "4111111111111111"

    find('li[data-offer-refused-all]',visible: false).click

    find('.adyen-checkout__card__cardNumber__input > iframe').click
    find('input[id="encryptedCardNumber"]').set card

    sleep 10




  end
  
  Então('minha apólice é emitida') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  