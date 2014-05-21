class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :service
      t.boolean :complete
      t.string :cms
      t.string :website

      t.timestamps
    end
  end
end
