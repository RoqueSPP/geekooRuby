
Given('que eu esteja no site {string}') do |site|
   visit site
  end
  
  

Then('valido o status {string}') do |status2|
  alert = find(:xpath,"//div[@class='SPZz6b']/h2/span")
  expect(alert.text).to eql status2
end

When('pesquisar') do |table|
  user = table.hashes.first
  find(:xpath,"//input[@name='q']").set user[:nome]
  find(:xpath,"//input[@name='q']").send_keys(:enter)
  sleep 2
end

Then('valido o status') do |table|
  statuss =table.hashes.first
  
  rock = find(:xpath,"//div[@class='SPZz6b']/h2/span")  
  expect(rock.text).to have_text  statuss[:status]

end


When('pesquisar') do |table|
  user = table.hashes.first
  find(:xpath,"//input[@name='q']").set user[:nome01]
  find(:xpath,"//input[@name='q']").send_keys(:enter)
  sleep 2
end

Then('valido o status') do |table|
  statuss =table.hashes.first
  
  rock = find(:xpath,"//div[@class='SPZz6b']/h2/span")  
  expect(rock.text).to have_text  statuss[:status01]

end