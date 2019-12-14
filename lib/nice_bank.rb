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

require 'sinatra'

get '/' do
  %{
  <html>
    <body>
      <form action="/withdraw" method="post">
        <button type="submit" name="amount" value="20">$20</button>
        <button type="submit" name="amount" value="40">$40</button>
        <button type="submit" name="amount" value="60">$60</button>
      </form>
    </body>
  </html>
  }
end

set :cash_slot, CashSlot.new
set :account do
  raise 'account has not been set'
end
post '/withdraw' do
  teller = Teller.new(settings.cash_slot)
  teller.withdraw_from(settings.account, params[:amount].to_i)
end
