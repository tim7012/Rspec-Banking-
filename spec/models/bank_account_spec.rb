require 'rails_helper'



RSpec.describe BankAccount, type: :model do
  it "可以存錢" do
    account = BankAccount.create(name:"kk", amount:100)
    account.存錢(100)
    account.存錢(10)
    expect(account.餘額).to be 210
  end

  it"不可以存負的錢" do
    account = BankAccount.create(name:"kk", amount:100)
    account.存錢(-10)
    expect(account.餘額).to be 100
  end

  it"可以領錢" do
    account = BankAccount.create(name:"kk", amount:100)
    account.領錢(10)
    account.領錢(30)
    expect(account.餘額).to be 60
  end

  it"不可以領負的錢" do
    account = BankAccount.create(name:"kk", amount:100)
    account.領錢(-10)
    expect(account.餘額).to be 100
  end
end
