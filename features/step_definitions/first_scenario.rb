Given('I am at main page') do
  visit 'https://www.google.com'
  expect(page).to have_current_path('https://www.google.com', url: true)
end
  
When('I try to find element Google Logo') do
  find(:xpath , '/html/body/div[1]/div[2]/div/img')
end
