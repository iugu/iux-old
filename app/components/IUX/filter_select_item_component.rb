module IUX
  class FilterSelectItemComponent < IUX::Component
    attr_reader :value, :label

    def initialize(
      value: '',
      label: ''
    )
      @value = value
      @label = label
    end
  end
end
