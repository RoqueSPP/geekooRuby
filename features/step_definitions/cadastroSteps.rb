Dado('que acesso a página de cadastro') do
    visit "http://advantageonlineshopping.com/#/"

    sleep 5
  end
  
  Quando('submeto o meu cadastro completo') do
    find("#menuUser").click
    sleep 1
    find(:xpath,"//a[text()='CREATE NEW ACCOUNT']").click
    find(:xpath,"//input[@name=\"usernameRegisterPage\"]").set Faker::Internet.username
    find(:xpath,"//input[@name=\"emailRegisterPage\"]").set Faker::Internet.free_email
    find(:xpath,"//input[@name='passwordRegisterPage']").set "Pplmn1234"
    find(:xpath,"//input[@name=\"confirm_passwordRegisterPage\"]").set "Pplmn1234"
    sleep 1
    find(:xpath,"//input[@name=\"first_nameRegisterPage\"]").set "Mauro"
    find(:xpath,"//input[@name=\"last_nameRegisterPage\"]").set "qa tester"
    find(:xpath,"//input[@name=\"phone_numberRegisterPage\"]").set "46119999"
    select('Brazil').find(:xpath,"//select[@name=\"countryListboxRegisterPage\"]").select_option
    find(:xpath,"//input[@name=\"cityRegisterPage\"]").set "Cotia"
    find(:xpath,"//input[@name=\"addressRegisterPage\"]").set "rua do teste qa, 100"
    find(:xpath,"//input[@name=\"state_/_province_/_regionRegisterPage\"]").set "São Paulo"
    find(:xpath,"//input[@name=\"postal_codeRegisterPage\"]").set "067200-000"
    find(:xpath,"//input[@name='i_agree']").click
    sleep 1
    find(:xpath,"//button[@id=\'register_btnundefined\']").click

    sleep 2
  
  end