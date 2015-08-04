class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :full_name
      t.string :date_time
      t.string :content
      t.string :photo_url
      t.references :profile, index: true, foreign_key: true
    end
  end
end
