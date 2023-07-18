module Jekyll
  class IncomingPacket < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text.strip!
    end

    def render(context)
      ShaiyaUtil.render_link(:incoming, @text)
    end
  end
  class OutgoingPacket < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text.strip!
    end

    def render(context)
      ShaiyaUtil.render_link(:outgoing, @text)
    end
  end
end

module ShaiyaUtil
  def render_link(type, name)
    "<a href='/docs/packets/#{type}/#{name}.html'>#{name.split('_').map(&:capitalize).join('')}</a>"
  end
  module_function :render_link
end

Liquid::Template.register_tag('pinc', Jekyll::IncomingPacket)
Liquid::Template.register_tag('pout', Jekyll::OutgoingPacket)