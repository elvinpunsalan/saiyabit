ActiveAdmin.register Design do
  permit_params :name, :description, :image, device_ids: []

  form :multipart => true do |f| #:html => { :enctype => "multipart/form-data" } 
    inputs 'Details' do
      input :name
      input :description
      input :image, hint: f.design.image? ? image_tag(f.design.image.url(:thumb)) : content_tag(:span, "Upload JPG/PNG/GIF image")
      input :device_ids, as: :check_boxes, collection: Device.all
    end
    f.actions
  end

  show do |ad|
    attributes_table do
      row :name
      row :description
      row :image do
        image_tag(ad.image.url(:thumb))
      end
      row :device_ids do
        ad.devices.map(&:name).join(', ').html_safe
      end
    end
    active_admin_comments
  end

  # index do
  #   id_column
  #   column :name
  #   column :description
  #   column :image
  #   column :created_at
  #   column :updated_at
  #   actions
  # end

  # index as: :grid do |design|
  #   link_to image_tag('designs/' + design.image), admin_design_path(design)
  # end

end
