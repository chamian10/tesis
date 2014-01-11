ActiveAdmin.register AdminUser do

  permit_params :email, :password, :password_confirmation


  index do
    column "correo electronico", :email
    column "Primera Conexion",:current_sign_in_at
    column "Ultima Conexion",:last_sign_in_at
    column "Cant. de Conexiones", :sign_in_count

    column "Editar" do |element|
      link_to image_tag("/assets/img_active_admin/edit.png", :style => "height: 20px; width: 20px;"), edit_admin_admin_user_path(element)
    end

    column("Eliminar") do |element|
      link_to image_tag("/assets/img_active_admin/delete.png", :style => "height: 20px; width: 20px;"), admin_admin_user_path(element), :method => :delete
    end

    column("Ver") do |element|
      link_to image_tag("/assets/img_active_admin/lupa.png", :style => "height: 20px; width: 20px;"), admin_admin_user_path(element)
    end

  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
