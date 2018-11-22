class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def transactions
    parameters = request.params
    papa = Member.find_by name: 'Papa'
    member = Member.find_by name: parameters[:member]
    amount = parameters[:amount].to_i
    member.balance = member.balance + amount
    member.save
    papa.balance = papa.balance - amount
    papa.save
    msg = {:balance => member.balance}
    render :json => msg
  end
  
end