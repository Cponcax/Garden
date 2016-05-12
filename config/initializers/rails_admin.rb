RailsAdmin.config do |config|

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.excluded_models << "ZoneFamily"
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
#config.included_models = ["Zone"]

  # config.model 'Category' do
  #   parent Tip
  #   label "Categoria"
  #   label_plural "Categorias"
  # end

  # config.model 'TipImage' do
  #   parent Tip
  # end

  # config.model 'FamilyImage' do
  #   parent Family
  # end

  # config.model 'Tip' do
  #   navigation_label 'Tips'
  # end

  # config.model 'Family' do
  #   parent Zone
  # end

  # config.model 'Zone' do

  # end




  config.actions do
    dashboard  do 
      Category
      Tip
    end                  # mandatory
    index                         # mandatory
    new do
      except ['User']
    end
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
