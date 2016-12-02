ActiveAdmin.register Design do
  permit_params :name, :description, :image, devices: []

  form do |f|
    inputs 'Details' do
      input :name
      input :description
      input :image
      input :devices, as: :check_boxes, collection: Device.all
    end
    f.actions
  end

  show do |design|
    attributes_table do
      row :name
      row :description
      row :image do
        image_tag 'designs/' + design.image
      end
      row :devices do
        design.devices.map(&:name).join(', ').html_safe
      end
    end
    active_admin_comments
  end

  index do
    id_column
    column :name
    column :description
    column :image
    column :created_at
    column :updated_at
    actions
  end

  index as: :grid do |design|
    link_to image_tag('designs/' + design.image), admin_design_path(design)
  end

end
