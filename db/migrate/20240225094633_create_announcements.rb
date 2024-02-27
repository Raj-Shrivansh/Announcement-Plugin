class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :description
      t.date :announcement_date
    end
  end
end
