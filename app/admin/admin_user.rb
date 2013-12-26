ActiveAdmin.register AdminUser do

  permit_params :email, :password, :password_confirmation


  index do
    column "correo electronico", :email
    column "Primera Conexion",:current_sign_in_at
    column "Ultima Conexion",:last_sign_in_at
    column "Cant. de Conexiones", :sign_in_count
    default_actions
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
