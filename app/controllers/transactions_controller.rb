class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def transactions
    member = Member.find_by name: params[:member]
    amount = params[:amount]
    member.balance = member.balance - amount
    member.save
    head :no_content
  end
end