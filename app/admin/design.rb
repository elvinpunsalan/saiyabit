ActiveAdmin.register Design do
  permit_params :name, :description, :image, device_ids: []

  form multipart: true do |f|
    inputs 'Details' do
      input :name
      input :description
      input :image, hint: f.design.image? ? image_tag(f.design.image.url(:thumb)) : content_tag(:span, "Upload JPG/PNG/GIF image")
      input :remove_image, as: :boolean, required: false, label: "Remove image"
      input :device_ids, as: :check_boxes, collection: Device.all, label: "Devices"
    end
    f.actions
  end

  show do |design|
    attributes_table do
      row :name
      row :description
      row :image do
        image_tag(design.image.url(:medium))
      end
      row 'Devices', :device_ids do
        design.devices.map(&:name).join(', ').html_safe
      end
    end
    active_admin_comments
  end

  index do
    id_column
    column :name
    column :description
    column :device_ids
    column :image_file_name
    column :image_file_size
    column :image_updated_at
    column :created_at
    column :updated_at
    actions
  end

  index as: :grid do |design|
    link_to image_tag(design.image.url(:thumb)), admin_design_path(design)
  end

end
