ActiveAdmin.register Turn do

  permit_params :date, :patient_id


  config.per_page = 10

  index :download_links => false do

    column :id
    column :patient
    column :date
    column :name


    column "Editar" do |element|
      link_to image_tag("/assets/img_active_admin/edit.png", :style => "height: 20px; width: 20px;"), edit_admin_turn_path(element)
    end

    column("Eliminar") do |element|
      link_to image_tag("/assets/img_active_admin/delete.png", :style => "height: 20px; width: 20px;"), admin_turn_path(element), :method => :delete
    end

    column("Ver") do |element|
      link_to image_tag("/assets/img_active_admin/lupa.png", :style => "height: 20px; width: 20px;"), admin_turn_path(element)
    end

  end

  filter :date
  filter :patient

  form :partial => "form"

  show do |f|
    attributes_table do
      row :id
      row :patient
      row :date
      row :name
    end

  end

  controller do
    def create
      super

    end

    def update

      super
    end

  end

end
