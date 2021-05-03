module IUX
  class ContainerComponent < IUX::Component
    attr_reader :width, :height

    def initialize(
      width: '100vw',
      height: '100vh'
    )
      @width = width
      @height = height
    end

  end
end
