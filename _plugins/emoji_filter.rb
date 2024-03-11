# _plugins/emoji_converter.rb

module Jekyll
    class EmojiConverter < Converter
        safe true
        priority :high

        def initialize(config)
            @emoji_mapping = {
                "🔗" => "world_link.png",
                "🎞️" => "film.png",
                "📖" => "book_open.png",
                "🏳️‍🌈" => "rainbow.png",
                "❤️" => "heart.png",
                "🙂" => "emoticon_smile.png",
                "😀" => "emoticon_smile.png",
                "😃" => "emoticon_happy.png",
                "😁" => "emoticon_grin.png",
                "☹️" => "emoticon_unhappy.png",
                "🙁" => "emoticon_unhappy.png",
                "😉" => "emoticon_wink.png",
                "😯" => "emoticon_surprised.png",
                "😛" => "emoticon_tongue.png",
                "☀️" => "weather_sun.png",
                "🌨️" => "weather_snow.png",
                "🌧️" => "weather_rain.png"
            }
            super(config)
        end

        def matches(ext)
            ext =~ /^\.html?$/i
        end

        def output_ext(ext)
            ".html"
        end

        def convert(content)
            @emoji_mapping.each do |emoji, png_file|
                content = content.gsub(emoji, "<img src='/assets/silk/#{png_file}' alt='#{emoji}'>")
            end
            content
        end
    end
end
