class CreateEngapps < ActiveRecord::Migration[5.2]
  def change
    create_table :eng_apps do |t|
      t.string :author
      t.string :title
      t.string :tag
      t.text :body

      t.timestamps
    end
  end
end
