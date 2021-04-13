module IUX
  module Panel
    class Component < ViewComponent::Base
      attr_reader :width, :height

      def initialize(
        width: 'auto',
        height: 'auto'
      )
        @width = width
        @height = height
      end
      
    end
  end
end
