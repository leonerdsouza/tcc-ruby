Given('I am at login page') do
    visit 'https://seubarriga.wcaquino.me/login'
    expect(page).to have_current_path('https://seubarriga.wcaquino.me/login', url: true)
  end
  
  When('I try to login') do
    find(:id, 'email').send_keys('leo2@leo.com')
    find(:id, 'senha').send_keys('aaaa')
    find(:xpath, '/html/body/div[2]/form/button').click()
  end
  
  Then('I am logged in') do
   element = find(:xpath, '/html/body/div[1]')
   expect(element).to have_text('Bem vindo, leonardo!')
  end


  