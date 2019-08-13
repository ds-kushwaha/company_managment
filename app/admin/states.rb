ActiveAdmin.register State do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :state_name, :country_id
  #
  form do |f|
    f.inputs do
      f.input :state_name
      f.input :country_id, :as => :select, :collection => Country.all.collect {|c| [  c.country_name,c.id] }
    end
    f.actions
  end

  # index as: ActiveAdmin::Views::state.country_name do
  #   column :country_name
  #   actions
  # end
  # index do
  #   id_column
  #   column :state_name, :state_state_name,:country_name, :state_country_name
  #   actions
  # end

  # index as: :grid do |p|
  #   link_to image_tag(p.image_path), admin_product_path(p)
  # end

index do
  selectable_column
  column :state_name
  column "Country" do |s|
    s.country.country_name
  end
  actions
end


show do
    attributes_table do
      row :state_name
      row :country do |state|
        state.country.country_name
      end
    end
    
  end

  # f.input :country_id, :as => :select, :collection => Country.select(:country_code)  
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
