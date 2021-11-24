Given('I am at home page') do
    visit 'https://www.saucedemo.com/'
    expect(page).to have_current_path('https://www.saucedemo.com/', url: true)   
  end
  
  When('I login into the site') do
    find(:id, 'user-name').send_keys('standard_user')
    find(:id, 'password').send_keys('secret_sauce')
    find(:id, 'login-button').click()    
  end
  
  Then('I am logged at Products page') do
    element = find(:xpath, '/html/body/div[1]/div/div/div[1]/div[2]/span')
    expect(element).to have_text('PRODUCTS')  
  end
  
  Then('I click on Sauce Labs Backpack') do
    find(:xpath, '/html/body/div[1]/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div').click()
  end
  
  Then('I add the item to the shopping cart') do
    find(:id, 'add-to-cart-sauce-labs-backpack').click()
  end
  
  Then('I click on the cart button') do
    find(:xpath, '//*[@id="shopping_cart_container"]/a').click()
  end
  
  Then('I proceed to checkout the product') do
    find(:id, 'checkout').click()
  end
  
  Then('I fill in the Personal Information') do
    find(:id, 'first-name').send_keys('Leonardo')
    find(:id, 'last-name').send_keys('Souza')
    find(:id, 'postal-code').send_keys('333333')
    find(:id, 'continue').click()  
  end
  
  Then('I should see the overview page') do
    element2 = find(:xpath, '/html/body/div[1]/div/div/div[1]/div[2]/span')
    expect(element2).to have_text('CHECKOUT: OVERVIEW') 
  end
  
  Then('I click on the finish button') do
    find(:id, 'finish').click()  
  end
  
  Then('I  should see the order has been completed') do
    element3 = find(:xpath, '/html/body/div[1]/div/div/div[2]/div')
    expect(element3).to have_text('Your order has been dispatched, and will arrive just as fast as the pony can get there!') 
  end