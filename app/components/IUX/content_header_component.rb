module IUX
  class ContentHeaderComponent < IUX::Component
    attr_reader :title

    def initialize(
      title: nil
    )
      @title = title
    end
  end
end
