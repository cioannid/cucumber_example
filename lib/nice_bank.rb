class Account
  def credit(amount)
    @balance = amount
  end

  def balance
    @balance
  end

  def debit(amount)
    @balance -= amount
  end
end

class Teller
  attr_reader :cash_slot

  def initialize(cash_slot)
    @cash_slot = cash_slot
  end

  def withdraw_from(account, amount)
    account.debit(amount)
    cash_slot.dispense(amount)
  end
end

class CashSlot
  def content
    @content || raise('Emtpy')
  end

  def dispense(amount)
    @content = amount
  end
end
