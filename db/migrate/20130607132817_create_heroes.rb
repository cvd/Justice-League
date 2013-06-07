class CreateHeroes < ActiveRecord::Migration
  def change
    create_table :heroes do |t|
      t.string :name
      t.string :secret_identity
      t.text :abilities

      t.timestamps
    end
  end
end
