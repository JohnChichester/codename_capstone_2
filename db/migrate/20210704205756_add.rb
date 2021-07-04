class Add < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :set_in_order, :text
  end
end
