module IUX
  class DateComponent < IUX::Component
    attr_reader :value, :caption

    def initialize(value: '01-01-1970', caption: nil)
      @value = value.present? ? value.to_datetime.strftime('%d/%m/%Y') : '-'
      @caption = caption
    end
    
  end
end

