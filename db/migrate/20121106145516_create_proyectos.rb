class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :cod
      t.string :nombre
      t.integer :id_proyecto

      t.timestamps
    end
  end
end
