Sequel.migration do
  up do
    alter_table(:cats) do
      add_column :kittens, Integer, default: 0
    end
  end

  down do
    drop_table(:cats)
  end
end