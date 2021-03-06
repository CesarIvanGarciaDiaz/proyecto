class CreateMovements < ActiveRecord::Migration[5.0]
  def change
    create_table :movements do |t|
      t.belongs_to :account, index: true
      t.string :concepto_de_pago
      t.string :reference
      t.date :date
      t.string :detail
      t.belongs_to :category, index: true
    end
  end
end
