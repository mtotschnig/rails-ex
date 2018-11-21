class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def transactions
    parameters = params[:parameters]
    member = Member.find_by name: parameters[:member]
    amount = parameters[:amount]
    member.balance = member.balance - amount
    member.save
    head :no_content
  end
end