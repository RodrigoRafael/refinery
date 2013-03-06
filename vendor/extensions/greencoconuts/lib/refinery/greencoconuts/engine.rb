module Refinery
  module Greencoconuts
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Greencoconuts

      engine_name :refinery_greencoconuts

      initializer "register refinerycms_greencoconuts plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "greencoconuts"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.greencoconuts_admin_greencoconuts_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/greencoconuts/greencoconut',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Greencoconuts)
      end
    end
  end
end
