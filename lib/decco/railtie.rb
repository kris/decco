module Decco
  class Railtie < Rails::Railtie
    initializer 'decco.view_helpers' do
      ActionView::Base.send :include, Helpers
    end
  end
end