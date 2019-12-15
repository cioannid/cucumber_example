When("I withdraw ${int}") do |amount|
  teller.withdraw_from(my_account, amount)
end

Then('I should be told that I have insufficient funds in my account') do
  expect(teller.response).to eq('Insufficient balance')
end

When("I check my balance") do
  teller.balance_of(my_account)
end

Then("I should see that my balance is ${int}") do |amount|
  expect(teller.response).to eq("Balance: $#{amount}")
end
