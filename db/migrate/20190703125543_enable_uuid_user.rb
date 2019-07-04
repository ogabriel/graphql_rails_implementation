class EnableUuidUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :uuid, :uuid, default: "gen_random_uuid()", null: false

    change_table :quotes do |q|
      q.remove :user_id
    end

    change_table :users do |u|
      u.remove :id
      u.rename :uuid, :id
    end
    execute "ALTER TABLE users ADD PRIMARY KEY (id);"

    change_table :quotes do |q|
      q.references :user, type: :uuid
    end

    # add_reference :quotes, :user, foreign_key: true
    # add_column :quotes, :users, :uuid, foreign_key: true, index: true
  end
end
