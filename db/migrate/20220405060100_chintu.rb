class CreateChintu < ActiveRecord::Migration[7.0]
  def change
    create_table :chintus do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
