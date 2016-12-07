class Transaction < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :amount

  def self.tokens
    where(category: 'token')
  end

  def self.total_token_balance(user_id)
    transactions = Transaction.where(receiver_id: user_id)
    total = 0
    transactions.each do |transaction|
      total += transaction.amount
    end
    total
  end

  def token_transaction_date
    self.created_at.strftime('%m/%d/%Y')
  end

  def self.coins
    where(category: 'coin')
  end

  def self.total_coin_balance(user_id)
    transactions = Transaction.where(receiver_id: user_id)
    total = 0
    transactions.each do |transaction|
      total += transaction.amount
    end
    total
  end

  def coin_transaction_date
    self.created_at.strftime('%m/%d/%Y')
  end
end
