class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :title
      t.string :body
      t.string :state
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
