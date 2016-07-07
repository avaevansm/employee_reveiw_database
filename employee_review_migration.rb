class EmployeeReviewsMigration < ActiveRecord::Migration
  def change
    create_table(:departments) do |t|
      t.column :name, :string
      t.column :emal, :string
      t.column :phone, :string
      t.column :salary, :string
    end

    create_table(:employees) do |t|
      t.column :name, :string
      t.column :staff, :string
      t.column :review, :string

    end
  end
end
