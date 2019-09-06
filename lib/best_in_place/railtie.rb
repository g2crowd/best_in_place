require 'rails/railtie'
require 'action_view/base'

module BestInPlace
  class Railtie < ::Rails::Railtie #:nodoc:
    config.after_initialize do
      BestInPlace::ViewHelpers = Rails::VERSION::MAJOR >= 6 ? ActionView::Base.empty : ActionView::Base.new
    end
  end
end
