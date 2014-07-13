class CreateNouns < ActiveRecord::Migration
  def change
    create_table :nouns do |t|
      t.string :name

      t.timestamps
    end
  end
end
