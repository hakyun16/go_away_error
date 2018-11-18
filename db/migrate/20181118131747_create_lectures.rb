class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :major
      t.string :professor
      t.text :content

      t.timestamps null: false
    end
  end
end
