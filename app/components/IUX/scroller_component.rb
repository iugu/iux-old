module IUX
  class ScrollerComponent < IUX::Component
    attr_reader :direction, :width, :height

    def initialize(
      direction: 'vertical',
      width: 'auto',
      height: 'auto'
    )
      @direction = direction_to_css(direction)
      @width = width
      @height = height
    end

    def direction_to_css(direction)
      direction == 'horizontal' ? 'scroller-horizontal' : 'scroller-vertical'
    end
    
  end
end
