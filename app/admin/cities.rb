ActiveAdmin.register City do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :city_name, :state_id

  #
  # or
  #
  form do |f|
    f.inputs do
      f.input :city_name
      f.input :state_id, :as => :select, :collection => State.all.collect {|city| [city.state_name,city.id] }
      f.actions
    end
  end
#
#

  index do
    selectable_column
    column :city_name
    column "State" do |s|
      s.state.state_name
    end
    actions
  end


  show do
      attributes_table do
        row :city_name
        row :state do |city|
          city.state.state_name
        end
      end
  end      



  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
