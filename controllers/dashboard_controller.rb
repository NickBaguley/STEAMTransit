class DashboardController < ApplicationController
  def index
    @balance = Transaction.total_token_balance(current_user.id)
    @received = Transaction.where(receiver_id: current_user.id).order('created_at').limit(5)
    @sent = Transaction.where(user_id: current_user.id).order('created_at').limit(5)
  end
  def awareness
  end
end
