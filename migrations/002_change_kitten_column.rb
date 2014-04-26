Sequel.migration do
  up do
    alter_table(:cats) do
      drop_column :kittens
    end
  end

  down do
    drop_table(:cats)
  end
end