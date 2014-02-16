class CreateBootstrapWebsiteServices < ActiveRecord::Migration
  def change
    create_table :bootstrap_website_services do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
