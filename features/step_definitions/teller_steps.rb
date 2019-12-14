When("I withdraw ${int}") do |amount|
  teller.withdraw_from(my_account, amount)
end

Then('I should be told that I have insufficient funds in my account') do
  expect(teller.response).to eq('Insufficient balance')
end
