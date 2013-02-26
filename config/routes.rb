Rails.application.routes.draw do
  post "chronic_ping/parse", :defaults => { :format => 'json' }
end
