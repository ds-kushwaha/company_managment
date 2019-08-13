ActiveAdmin.register Company do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :company_name, :city_id
  #

    form do |f|
      f.inputs do
        f.input :company_name
        f.input :city_id, :as => :select, :collection => City.all.collect {|c| [c.city_name,c.id] }
        f.actions
      end
    end
  #
  #

    index do
      selectable_column
      column :company_name
      column "City" do |s|
        s.city.city_name
      end
      actions
    end


    show do
        attributes_table do
          row :company_name
          row :city do |city|
            city.city.city_name
          end
        end
    end
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
