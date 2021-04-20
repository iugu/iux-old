module IUX
  class ScrollerComponent < IUX::Component
    attr_reader :direction

    def initialize(direction: 'vertical')
      @direction = direction_to_css(direction)
    end

    def direction_to_css(direction)
      direction == 'horizontal' ? 'scroller-horizontal' : 'scroller-vertical'
    end
    
  end
end
