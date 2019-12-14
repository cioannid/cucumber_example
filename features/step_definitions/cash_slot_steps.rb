Then("${int} should be dispensed") do |amount|
  expect(cash_slot.content).to eq(amount)
end

Then("nothing should be dispensed") do
  expect(cash_slot.content).to be_nil
end
