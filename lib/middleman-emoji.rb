require 'middleman-core'
require 'rack/emoji'
require 'middleman-emoji/version'

module Middleman
  module Emoji
    class EmojiExtension < Extension
      option :dir, 'images/emoji', 'path to the emoji directory'
      option :width, 20, 'width of emoji'
      option :height, 20, 'height of emoji'
      option :style, 'vertical-align:middle;', 'img tag style of emoji'

      def initialize(app, options_hash={}, &block)
        super

        dir = options.dir
        width = options.width
        height = options.height
        style = options.style

        app.ready do
          use ::Rack::Emoji, :dir => dir, :width => width, 
            :height => height, :style => style
          sprockets.append_path ::Emoji.images_path
        end
      end

    end
    ::Middleman::Extensions.register(:emoji, EmojiExtension)
  end
end

