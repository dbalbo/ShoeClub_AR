class CreateTables < ActiveRecord::Migration
  def change

  	create_table(:shoes) do |t|
  		t.column(:style, :string)
  		t.timestamps()
  	end

  	create_table(:brands) do |t|
  		t.column(:name, :string)
  		t.timestamps()
  	end

  	create_table(:brands_shoes) do |t|
  		t.column(:brand_id, :integer)
  		t.column(:shoe_id, :integer)
  	end
  end
end
