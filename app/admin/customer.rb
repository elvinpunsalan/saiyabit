ActiveAdmin.register Customer do
  permit_params :name, :address, :city, :postal_code, :phone, :email,
                 :password, :password_confirmation, :password_digest,
                 :province_id
end
