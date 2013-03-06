# This migration comes from refinery_greencoconuts (originally 1)
class CreateGreencoconutsGreencoconuts < ActiveRecord::Migration

  def up
    create_table :refinery_greencoconuts do |t|
      t.string :name
      t.string :dimensions
      t.date :manufactured_on
      t.boolean :upright
      t.integer :photo_id
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-greencoconuts"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/greencoconuts/greencoconuts"})
    end

    drop_table :refinery_greencoconuts

  end

end
