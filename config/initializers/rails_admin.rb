RailsAdmin.config do |config|

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)
  


  
  config.excluded_models = ["ZoneFamily"]
  #config.main_app_name = ["Jardin", "Botanico"]

  
  config.actions do
   
    dashboard 

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
