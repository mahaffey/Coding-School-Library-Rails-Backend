class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :pic_url
      t.string :link_url
      t.string :description
      t.string :difficulty
      t.references :subtopic, foreign_key: true

      t.timestamps
    end
  end
end
