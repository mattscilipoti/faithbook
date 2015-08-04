class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.string :birth_date
      t.string :education
      t.string :about_me
      t.string :photo_url
    end
  end
end
