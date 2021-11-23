class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text       :text,          null: false
      t.integer    :brand_id,      null: false
      t.integer    :camera_id,     null: false
      t.integer    :sensor_id,     null: false
      t.integer    :resolution_id, null: false
      t.integer    :price,         null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
