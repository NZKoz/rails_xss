# RailsXss
module RailsXss
  class Erubis
    def add_preamble(src)
      src << "@output_buffer = _buf = ActionView::SafeBuffer.new;"
    end

    def add_text(src, text)
      src << "@output_buffer.concat('" << escape_text(text) << "'.html_safe!);"
    end
  end
end