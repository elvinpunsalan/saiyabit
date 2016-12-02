ActiveAdmin.register Customer do
  permit_params :name, :address, :city, :postal_code, :phone, :email,
                 :password, :password_confirmation, :password_digest,
                 :province_id

  form do |f|
    f.inputs  'Details' do
      f.input :name
      f.input :address
      f.input :city
      f.input :province_id, as: :select, collection: Province.all.order(:name).all {|p| [p.name, p.id]}, label: 'Province'
      f.input :postal_code
      f.input :phone
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
