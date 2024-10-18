class CompanySecretsController < ApplicationController
  def index
    if params[:query].present?
      database = CompanySecrets::Database.get
      results = database.ask(question: params[:query], k: 3)

      @answer = "Answer: #{results.chat_completion}"
    end
  end
end
