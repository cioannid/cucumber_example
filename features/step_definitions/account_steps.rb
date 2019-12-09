Given("my account has been credited with ${int}") do |amount|
  my_account.credit(amount)
end

Then("the balance of my account should be ${int}") do |amount|
  expect(my_account.balance).to eq(amount), "Expected the balance to be #{amount} but it was #{my_account.balance}"
end
