class CreateTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :types do |t|
      t.string :name
      t.has_one :type
      t.timestamps
    end

    create_table :resources do |t|
      t.string :name
      t.has_one :type
      t.timestamps
    end
  end
end
