ActiveAdmin.register History do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :height, :current_weight, :customary_weight, :circumference, :activity, :degree_of_stress, :pathology,
                :observation, :nutrition_diagnosis, :patient_id


  config.per_page = 10

  index :download_links => false do

    column :id
    column :patient
    column :height
    column :current_weight
    column :customary_weight
    column :circumference
    column :activity
    #column :degree_of_stress
    column :pathology
    #column :observation
    #column :nutrition_diagnosis


    column "Editar" do |element|
      link_to image_tag("/assets/img_active_admin/edit.png", :style => "height: 20px; width: 20px;"), edit_admin_history_path(element)
    end

    column("Eliminar") do |element|
      link_to image_tag("/assets/img_active_admin/delete.png", :style => "height: 20px; width: 20px;"), admin_history_path(element), :method => :delete
    end

    column("Ver") do |element|
      link_to image_tag("/assets/img_active_admin/lupa.png", :style => "height: 20px; width: 20px;"), admin_history_path(element)
    end

  end

  filter :patient

  form :partial => "form"

  show do |f|
    attributes_table do
      row :id
      row :patient
      row :height
      row :current_weight
      row :customary_weight
      row :circumference
      row :activity
      row :degree_of_stress
      row :pathology
      row :observation
      row :nutrition_diagnosis
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
