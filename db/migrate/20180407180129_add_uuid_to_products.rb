class AddUuidToProducts < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'uuid-ossp'
    add_column :products, :token, :uuid, default: "uuid_generate_v1()"
  end
end
