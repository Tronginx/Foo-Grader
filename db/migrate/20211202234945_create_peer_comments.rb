class CreatePeerComments < ActiveRecord::Migration[6.1]
  def change
    create_table :peer_comments do |t|
      t.string :title
      t.string :comment
      t.string :commenter

      t.timestamps
    end
  end
end
