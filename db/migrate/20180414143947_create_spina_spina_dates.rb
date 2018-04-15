# Creates the table for storing dates and datetimes. Note that we ignore the 
# translation option for this content type, as date formatting is not the same
# as text translation even though it is dependent on the locale; we're always
# using a variant of SI formatting for storage. 
class CreateSpinaSpinaDates < ActiveRecord::Migration[5.1]
  def change
    create_table :spina_dates do |t|
      t.datetime :content

      t.timestamps
    end
  end
end
