class CreateBootstrapWebsiteBlogs < ActiveRecord::Migration
  def change
    create_table :bootstrap_website_blogs do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
