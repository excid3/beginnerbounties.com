class CreateBounties < ActiveRecord::Migration[7.0]
  def change
    create_table :bounties do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.string :url
      t.integer :amount
      t.string :status, default: :open

      t.timestamps
    end
  end
end
