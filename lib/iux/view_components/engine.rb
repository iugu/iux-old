# frozen_string_literal: true

require "rails/engine"

module IUX
  module ViewComponents
    # :nodoc:
    class Engine < ::Rails::Engine
      isolate_namespace IUX::ViewComponents
      config.autoload_once_paths = %W[
        #{root}/app/components
        #{root}/app/lib
      ]

      config.iux_view_components = ActiveSupport::OrderedOptions.new
      config.iux_view_components.force_functional_colors = true
      config.iux_view_components.silence_deprecations = false

      initializer "iux_view_components.assets" do |app|
        app.config.assets.precompile += %w[iux_view_components] if app.config.respond_to?(:assets)
      end
    end
  end
end
