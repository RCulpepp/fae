class CreateFaePages < ActiveRecord::Migration
  def change
    create_table :fae_static_pages do |t|
      t.string :title
      t.string :class_name
      t.integer :position, default: 0
      t.boolean :on_stage, default: true
      t.boolean :on_prod, default: false
      t.boolean :active, default: false
      t.string :slug, index: true

      t.timestamps
    end
  end
end
