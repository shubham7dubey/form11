class CreateNotices < ActiveRecord::Migration[6.0]
  def change
    create_table :notices do |t|
      t.string :Circular_Title
      t.string :Select_File
      t.string :role

      t.timestamps
    end
  end
end
