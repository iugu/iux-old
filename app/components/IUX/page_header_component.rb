module IUX
  class PageHeaderComponent < IUX::Component
    attr_reader :title

    def initialize(
      title: nil
    )
      @title = title
    end
  end
end
