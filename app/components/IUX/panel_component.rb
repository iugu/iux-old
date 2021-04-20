module IUX
  class PanelComponent < IUX::Component
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
