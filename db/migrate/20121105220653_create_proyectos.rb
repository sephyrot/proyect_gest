class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.string :cod
      t.integer :id_contrato

      t.timestamps
    end
  end
end
