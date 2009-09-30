module AvPatch
  # Rails version of with_output_buffer uses '' as the default buf
  def with_output_buffer(buf = ActionView::SafeBuffer.new) #:nodoc:
    super(buf)
  end
end

ActionView::Base.send :include, AvPatch
