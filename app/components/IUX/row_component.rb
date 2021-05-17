module IUX
  class RowComponent < IUX::Component
    attr_reader :id, :width, :height, :wrap, :v_align, :h_align, :helpers_arguments

    def initialize(
      id: '', 
      width: 'auto',
      height: 'auto',
      wrap: 'nowrap',
      v_align: 'start',
      h_align: 'start',
      helpers_arguments: ''
    )
      @id = id
      @width = width
      @height = height
      @wrap = wrap_class_name(wrap)
      @v_align = justify_class_name(v_align)
      @h_align = align_itens_class_name(h_align)
      @helpers_arguments = helpers_arguments

    end


    def wrap_class_name(wrap)
      case wrap
        when 'nowrap' then 'flex-no-wrap'
        when 'wrap' then 'flex-wrap'
        when 'wrap-reverse' then 'flex-wrap-reverse'
        else ''
      end
    end

    def justify_class_name(v_align)
      case v_align
        when 'start' then 'justify-flex-start'
        when 'end' then 'justify-flex-end'
        when 'center' then 'justify-flex-center'
        when 'space-between' then 'justify-flex-space-between'
        when 'space-around' then 'justify-flex-space-around'
        when 'space-evenly' then 'justify-flex-space-evenly'
        else ''
      end
    end

    def align_itens_class_name(h_align)
      case h_align
        when 'start' then 'align-itens-flex-start'
        when 'end' then 'align-itens-flex-end'
        when 'center' then 'align-itens-flex-center'
        when 'stretch' then 'align-itens-flex-stretch'
        when 'baseline' then 'align-itens-flex-baseline'
        else ''
      end
    end

  end
end
