class TransactionsController < ApplicationController
  skip_before_action :verify_authenticity_token
    def transactions
    render plain: request.raw_post
  end
end