module IUX
  class Pagination < IUX::Component
    attr_reader :mode

    def initialize(
      mode: 'full',
    )
      @mode = mode
    end

  end
end
