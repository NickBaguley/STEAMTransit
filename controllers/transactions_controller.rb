class TransactionsController < ApplicationController
  def index
  end

  def show
  end

  def tokens
    @received = Transaction.tokens.where(receiver_id: current_user.id).order('created_at DESC').limit(5)
    @sent = Transaction.tokens.where(user_id: current_user.id).order('created_at').limit(5)
  end

  def sent_tokens
    @sent = Transaction.where(user_id: current_user.id).order('created_at')
  end

  def received_tokens
    @received = Transaction.where(receiver_id: current_user.id).order('created_at')
  end

  def coins
    @received = Transaction.coins.where(receiver_id: current_user.id).order('created_at DESC').limit(9999)
    @sent = Transaction.coins.where(user_id: current_user.id).order('created_at').limit(9999)
  end

  def sent_coins
    @sent = Transaction.where(user_id: current_user.id).order('created_at')
  end

  def received_coins
    @received = Transaction.where(receiver_id: current_user.id).order('created_at')
  end
end
