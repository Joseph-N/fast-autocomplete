class CreateVerbs < ActiveRecord::Migration
  def change
    create_table :verbs do |t|
      t.string :name

      t.timestamps
    end
  end
end
