module IUX
  module Splitter
    class Component < ViewComponent::Base
      attr_reader :direction, :fill

      def initialize(
        direction: 'horizontal',
        fill: 'full'
      )
        @direction = direction_to_css(direction)
        @fill = fill_to_css(fill)
      end

      def direction_to_css(direction)
        direction == 'horizontal' ? 'split-view-horizontal' : 'split-view-vertical'
      end

      def fill_to_css(fill_type)
        case fill_type
        when 'full' then 'fill-space'
        when 'vertical' then 'fill-height'
        when 'horizontal' then 'fill-width'
        else ''
        end
      end
    end
  end
end
