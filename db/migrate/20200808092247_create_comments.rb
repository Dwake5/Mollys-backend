class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :review
      t.text :name
      t.text :area
      t.text :service
      t.boolean :display

      t.timestamps
    end
  end
end
