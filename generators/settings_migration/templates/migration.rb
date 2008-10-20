class <%= class_name %> < ActiveRecord::Migration
  def self.up
    create_table :settings, :force => true do |t|
      t.string :var, :null => false
      t.text   :value, :null => true
      t.timestamps
    end
    
    add_index :settings, :var, :uniq => true
  end

  def self.down
    drop_table :settings
  end
end
