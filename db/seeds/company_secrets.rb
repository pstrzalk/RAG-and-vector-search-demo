database = CompanySecrets::Database.get
database.add_data(
  paths: [
    "/Users/pawel/projects/llm/rags/storage/knowledge.pdf",
    "/Users/pawel/projects/llm/rags/storage/phonebook.txt",
    "/Users/pawel/projects/llm/rags/storage/passwords.txt"
  ]
)
