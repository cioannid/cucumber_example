Then("${int} should be dispensed") do |amount|
  expect(cash_slot.content).to eq(amount)
end
