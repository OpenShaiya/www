module Jekyll
  class IncomingPacket < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text.strip!
    end

    def render(context)
      "<a href='/docs/packets/incoming/#{@text}.html'>#{@text.split('_').map(&:capitalize).join('')}</a>"
    end
  end
  class OutgoingPacket < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text.strip!
    end

    def render(context)
      "<a href='/docs/packets/outgoing/#{@text}.html'>#{@text.split('_').map(&:capitalize).join('')}</a>"
    end
  end
end

Liquid::Template.register_tag('pinc', Jekyll::IncomingPacket)
Liquid::Template.register_tag('pout', Jekyll::OutgoingPacket)