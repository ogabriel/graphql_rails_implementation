class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes, id: :uuid do |t|
      t.string :message
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
