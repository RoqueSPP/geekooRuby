
Given('que eu esteja no site {string}') do |site|
   visit site
  end
  
  When('preencho o nome e clicko em pesquisar') do
    find(:xpath,"/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input").set "Roque"
    find(:xpath,"/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input").send_keys(:enter)
    sleep 1
  
  end
  Then('valido o nome') do
    sleep 2
 expect(page).to have_text "Roque"

end

When('pesquisar {string}') do |nome2|
  find(:xpath,"/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input").set nome2
  find(:xpath,"/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input").send_keys(:enter)
    sleep 1

end

Then('valido o status {string}') do |status2|
  alert = find(:xpath,"//span[text()='Roque']")
  expect(alert.text).to eql status2
end

When('pesquisar') do |table|
  user = table.hashes.first
  find(:xpath,"/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input").set user[:nome01]
  find(:xpath,"/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input").send_keys(:enter)
end

Then('valido o status') do |table|
  statuss =table.hashes.first
  
  rock = find(:xpath,"/html/body/div[7]/div/div[8]/div[2]/div[1]/div/div[2]/div[1]/div/div[1]/div/div/div[2]/h2").text
  
  expect(rock).to have_text  statuss[:status01]

end