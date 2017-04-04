RailsAdmin.config do |config|
  config.main_app_name = ["Quản lý thư viện HVKTQS", ""]
  #config.included_models = ["Book","Reader"]
  config.excluded_models = ["User","Role"]
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)
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
  # config.show_gravatar true
  # config.model 'Book' do
  #   list do
  #     field :isbn
  #     field :name
  #     #field :avartar
  #     field :author
  #     field :publisher
  #     field :year_published
  #   end
  # end


  config.model 'Read' do
    index do
      field :code_card do
        visible false
      end
      field :avartar do
        visible false
      end
    end

    exclude_fields :created_at
    exclude_fields :updated_at
  end

  # config.model 'Read' do
  #   list do
  #     field :code_card
  #     field :name
  #     field :avartar
  #     field :birthday
  #     #field :phone
  #     # field :unit
  #     # field :start_date
  #     # field :end_date
  #   end
  # end

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
