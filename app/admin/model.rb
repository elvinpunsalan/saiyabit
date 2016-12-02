ActiveAdmin.register Model do
  permit_params :name, :brand, :notes, :device_id
end
