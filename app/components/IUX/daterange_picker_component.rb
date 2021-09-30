module IUX
  class DaterangePickerComponent < IUX::Component
    attr_reader :filterStart, :filterEnd, :behavior, :startDate, :endDate, :defaultValue, :parentToTrigger 

    def initialize(
      filterStart: '',
      filterEnd: '',
      behavior: '',
      startDate: '',
      endDate: '',
      defaultValue: '',
      parentToTrigger: ''
    )
      @filterStart =  filterStart
      @filterEnd = filterEnd
      @behavior = behavior
      @startDate = startDate
      @endDate = endDate
      @defaultValue = defaultValue
      @parentToTrigger = parentToTrigger
    end
  end
end
