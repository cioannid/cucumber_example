Given("I have deposited ${int} in my account") do |amount|
  my_account.deposit(amount)
  expect(my_account.balance).to eq(amount)
end
