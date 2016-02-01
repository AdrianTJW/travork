class AddOmniauthToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :provider, :string
    add_column :hosts, :uid, :string
  end
end
