#Prefer Instance Methods to Instance Variables
class BankAccout
  def initialize
    @amount = 5000
  end

  def status
    "Your banck account has total of #{amount} dollars"
  end

  private
  def amount
    @amount / 100
  end

end

ba = BankAccout.new
p ba.status
