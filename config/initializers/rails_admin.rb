RailsAdmin.config do |config|

  config.authorize_with do |controller|
    redirect_to main_app.root_path unless current_user && current_user.admin
  end

  config.main_app_name = "Pastelaria Bonjour"

  config.excluded_models = ["OrderOther", "DoughFilling", "DecorationCategory"]

  # Cake
  # ===========================
  config.model 'Cake' do
    include_fields :dough, :filling, :decoration, :message, :order, :price_cents, :age, :size
  end

  # User
  # ===========================
  config.model 'User' do
    include_fields :admin, :first_name, :last_name, :email, :orders
  end

  # Contact
  # ===========================
  config.model 'Contact' do
    include_fields :contact_first_name, :contact_last_name, :contact_email, :contact_telephone, :message
  end

  # Category
  # ===========================
  config.model 'Category' do
    include_fields :name, :description, :decorations
  end

  # CustomCake
  # ===========================
  config.model 'CustomCake' do
    include_fields :contact_first_name, :contact_last_name, :contact_email, :contact_telephone, :message
  end

  # Decoration
  # ===========================
  config.model 'Decoration' do
    include_fields :name, :description, :photo, :minimum_size, :price_cents, :categories
  end

  # Delivery
  # ===========================
  config.model 'Delivery' do
    include_fields :done, :nif, :zipcode, :payment, :cost_cents, :store_pickup, :address, :delivery_date, :delivery_slot, :contact_first_name, :contact_last_name, :contact_telephone, :contact_email, :user, :order
  end

  # Dough
  # ===========================
  config.model 'Dough' do
    include_fields :name, :description, :photo, :price_cents, :fillings
  end

  # FeaturedCake
  # ===========================
  config.model 'FeaturedCake' do
    include_fields :name, :photo
  end

  # Filling
  # ===========================
  config.model 'Filling' do
    include_fields :name, :description, :price_cents, :doughs
  end

  # Order
  # ===========================
  config.model 'Order' do
    include_fields :done, :user, :cakes, :others, :delivery
  end

  # Other
  # ===========================
  config.model 'Other' do
    include_fields :name, :photo, :price_cents
  end

  # Subscriber
  # ===========================
  config.model 'Subscriber' do
    include_fields :email
  end


  # Operation group
  # ===========================

  config.model 'Cake' do
    navigation_label 'Operações'
  end
  config.model 'Delivery' do
    navigation_label 'Operações'
  end
  config.model 'Order' do
    navigation_label 'Operações'
  end

  # Configuration group
  # ===========================

  config.model 'Dough' do
    navigation_label 'Configuração'
  end

  config.model 'Filling' do
    navigation_label 'Configuração'
  end

  config.model 'Decoration' do
    navigation_label 'Configuração'
  end

  config.model 'Category' do
    navigation_label 'Configuração'
  end

  config.model 'Other' do
    navigation_label 'Configuração'
  end

  # Marketing group
  # ===========================

  config.model 'User' do
    navigation_label 'Marketing'
  end

  config.model 'Subscriber' do
    navigation_label 'Marketing'
  end

  config.model 'Contact' do
    navigation_label 'Marketing'
  end

  config.model 'CustomCake' do
    navigation_label 'Marketing'
  end

  config.model 'FeaturedCake' do
    navigation_label 'Marketing'
  end

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
