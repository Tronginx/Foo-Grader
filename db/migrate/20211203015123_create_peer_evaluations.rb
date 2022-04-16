class CreatePeerEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :peer_evaluations do |t|
      t.string :title
      t.string :grade
      t.string :comment
      t.string :commenter

      t.timestamps
    end
  end
end
