class CreateSpinaSpinaDates < ActiveRecord::Migration[5.1]
  def change
    create_table :spina_dates do |t|
      t.datetime :content

      t.timestamps
    end
  end
end
