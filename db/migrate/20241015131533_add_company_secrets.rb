class AddCompanySecrets < ActiveRecord::Migration[7.2]
  def up
    database = CompanySecrets::Database.get
    database.create_default_schema
  end

  def down
    drop_table :company_secrets
  end
end
