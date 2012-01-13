class CreateRolloutTable < ActiveRecord::Migration
  def up
    create_table :rollouts do |t|
      t.string :name
      t.string :group
      t.integer :user_id
      t.integer :percentage
      t.integer :failure_count
    end
  end

  def down
    drop_table :rollouts
  end
end
