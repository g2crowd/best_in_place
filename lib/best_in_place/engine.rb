module BestInPlace
  class Engine < Rails::Engine
    initializer 'best_in_place' do
      ActiveSupport.on_load(:action_view) do
        include BestInPlace::Helper
      end

      ActiveSupport.on_load(:action_controller) do
        include BestInPlace::ControllerExtensions
      end
    end
  end
end
