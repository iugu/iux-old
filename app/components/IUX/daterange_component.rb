module IUX
  class DaterangeComponent < IUX::Component
    attr_reader :startField, :endField

    def initialize(startField: 'start', endField: 'end')
      @startField = startField
      @endField = endField
    end

  end
end

