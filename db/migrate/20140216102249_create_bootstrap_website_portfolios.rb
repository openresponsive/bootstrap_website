class CreateBootstrapWebsitePortfolios < ActiveRecord::Migration
  def change
    create_table :bootstrap_website_portfolios do |t|
      t.string :project_name
      t.string :description
      t.string :project_website

      t.timestamps
    end
  end
end
