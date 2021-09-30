module IUX
  class DropdownComponent < IUX::Component
    attr_reader :target, :label

    def initialize(
      target: '',
      label: ''
    )
      @target = target
      @label = label
    end
  end
end
