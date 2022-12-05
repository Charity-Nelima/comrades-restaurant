class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.string :food_id
      t.string :user_id

      t.timestamps
    end
  end
end
