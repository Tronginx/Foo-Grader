class CreatePresentations < ActiveRecord::Migration[6.1]
  def change
    create_table :presentations do |t|
      t.string :title
      t.string :author
      t.string :grade
      t.string :comment
      t.string :time

      t.timestamps
    end
  end
end
