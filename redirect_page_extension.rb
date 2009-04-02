# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class RedirectPageExtension < Radiant::Extension
  version "0.1"
  description "A redirect page will redirect to the url defined in the body part"
  url "http://github.com/p8/radiant-redirect-page-extension"
  
  def activate
    SiteController.send :include, PageRedirect::ControllerExtensions    
  end
  
  def deactivate
  end
  
end
