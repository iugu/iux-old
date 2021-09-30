module IUX
  class FilterBarComponent < IUX::Component
    attr_reader :path

    def initialize(
      path: ''
    )
      @path = path
    end
  end
end
