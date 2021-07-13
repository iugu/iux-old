module IUX
  class PaginationComponent < IUX::Component
    attr_reader :mode

    def initialize(
      mode: 'full'
    )
      @mode = mode
    end

  end
end
