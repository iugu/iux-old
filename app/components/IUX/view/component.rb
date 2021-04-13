module IUX
  module View
    class Component < ViewComponent::Base
      attr_reader :align, :fill, :custom_css, :role_tag, :id

      def initialize(
        role: '',
        id: '', 
        fill: 'full',
        align: 'center',
        width: '',
        height: ''
      )
        @fill = fill_to_css(fill)
        @align = align_to_css(align)
        @role_tag = "role=\"#{role}\"".html_safe unless role.blank?
        @id = "id=\"#{id}\"".html_safe unless id.blank?

        width_css = 'width:auto' if fill == 'vertical'
        width_css = "width:#{width}" if width

        height_css = 'height:auto' if fill == 'horizontal'
        height_css = "height:#{height}" if height

        @custom_css = [width_css, height_css].map(&:presence).compact.join(';')
      end

      def direction_to_css(direction)
        direction == 'horizontal' ? 'split-view-horizontal' : 'split-view-vertical'
      end

      def align_to_css(align)
        case align
        when 'end' then 'align-children-on-end'
        when 'start' then 'align-children-on-start'
        when 'center' then 'align-children-on-center'
        else ''
        end
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
