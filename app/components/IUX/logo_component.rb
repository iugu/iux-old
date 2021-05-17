module IUX
  class LogoComponent < IUX::Component
    attr_reader :fill

    def initialize(fill: 'black')
      @fill = fill
    end

  end
end

