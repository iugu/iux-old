module IUX
  class BlockComponent < IUX::Component
    attr_reader :id, :width, :height, :order, :glow, :shrink, :align, :helpers_arguments

    def initialize(
      width: 'auto',
      height: 'auto',
      order: '0',
      glow: '0',
      shrink: '1',
      align: 'auto',
      helpers_arguments: ''
    )
      @id = id
      @width = width
      @height = height
      @order = order
      @glow = glow
      @shrink = shrink
      @align = align_self_class_name(align)
      @helpers_arguments = helpers_arguments
    end

    def align_self_class_name(align)
      case align
      when 'start' then 'align-self-flex-start'
      when 'end' then 'align-self-flex-end'
      when 'center' then 'align-self-flex-center'
      when 'stretch' then 'align-self-flex-stretch'
      when 'baseline' then 'align-self-flex-baseline'
      else 'auto'
      end
    end
    
  end
end
