class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.date :Date
      t.integer :good_day_bad_day
      t.text :safety
      t.text :sustain
      t.text :shine
      t.text :sort
      t.text :standardize
      t.text :misc
      t.integer :worked
      t.integer :printed
      t.integer :cut
      t.integer :version

      t.timestamps
    end
  end
end
