ActiveAdmin.register Patient do

  permit_params :name, :lastname, :age, :gender, :dni, :patient, :photo

  config.per_page = 10

  index :download_links => false do

    column :id
    column :name
    column :lastname
    column :email
    column :photo
    column :age
    column :dni

    column "Editar" do |element|
      link_to image_tag("/assets/img_active_admin/edit.png", :style => "height: 20px; width: 20px;"), edit_admin_patient_path(element)
    end

    column("Eliminar") do |element|
      link_to image_tag("/assets/img_active_admin/delete.png", :style => "height: 20px; width: 20px;"), admin_patient_path(element), :method => :delete
    end

    column("Ver") do |element|
      link_to image_tag("/assets/img_active_admin/lupa.png", :style => "height: 20px; width: 20px;"), admin_patient_path(element)
    end

  end

  filter :email
  filter :name
  filter :lastname

  form :partial => "form"

  show do |f|
    attributes_table do
      row :id
      row :name
      row :lastname
      row :email
      row :photo
      row :age
      row :dni
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
