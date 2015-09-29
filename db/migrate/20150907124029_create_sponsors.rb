class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :title
      t.string :url
      t.text :description
      t.attachment :avatar
      t.boolean :retired, default: false
      t.boolean :slider_sponsor, default: false

      t.timestamps
    end
  end
end
