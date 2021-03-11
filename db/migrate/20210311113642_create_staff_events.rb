class CreateStaffEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_events do |t|

      t.timestamps
    end
  end
end
