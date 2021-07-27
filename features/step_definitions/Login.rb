Dado('que acesso a página de login') do
    visit "http://advantageonlineshopping.com/#/"
    puts page.title
    sleep 2
  end
  
  Quando('preencho  os campos nome e senha') do
    find("#menuUser").click
    sleep 1
find(:xpath,"//input[@name='username']").set "test0101"
find(:xpath,"//input[@name='password']").set "Pplmn1234"

  end
  
  Quando('clico em login') do
    click_button "SIGN IN"
  end
  
  Então('valido a mensagem de usuario logado') do
    sleep 2
    user = find(:css,"#menuUserLink > span")
    expect(user.text).to eql "test0101"

    log " o usuario é " +user.text
  end