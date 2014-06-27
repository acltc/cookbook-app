class ChangeRecipePrepTimeToInteger < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.remove :prep_time
      t.integer :prep_time
    end
  end
end
