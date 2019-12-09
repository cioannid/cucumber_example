When("I withdraw ${int}") do |amount|
  teller.withdraw_from(my_account, amount)
end
