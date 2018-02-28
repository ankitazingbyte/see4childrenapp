class AddNotificationIdToReport < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :notification_id, :integer
  end
end
