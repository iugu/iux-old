module IUX
  class FilterSelectComponent < IUX::Component
    attr_reader :dropdown, :behavior, :field

    def initialize(
      dropdown: '',
      behavior: '',
      field: ''
    )
      @dropdown = dropdown
      @behavior = behavior
      @field = field
    end
  end
end
