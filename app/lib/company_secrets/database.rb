module CompanySecrets
  class Database
    def self.get
      @database ||= Langchain::Vectorsearch::Pgvector.new(
        url: "postgres://pawel@localhost:5432/rags_development",
        index_name: "company_secrets",
        llm: Langchain::LLM::OpenAI.new(
          api_key: ENV["OPENAI_API_KEY"],
          default_options: {
            temperature: 0.2,
            chat_completion_model_name: "gpt-4o",
            embeddings_model_name: "text-embedding-3-large"
          }
        )
      )
    end
  end
end
