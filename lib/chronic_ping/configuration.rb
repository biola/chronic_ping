module ChronicPing
  class Configuration
    attr_accessor :formats

    def initialize
      @formats = {
        default:  '%B %d, %Y at %I:%M%p',
        datetime: '%B %d, %Y at %I:%M%p',
        date:     '%B %d, %Y'
      }
    end

    def formats
      @formats.with_indifferent_access
    end

    def datetime_format=(format)
      warn "[DEPRECATION] `ChronicPing.config.datetime_format=` is deprecated. Use ChronicPing.config.formats= instead."
    end

    def relative_root_url=(relative_url_root)
      warn "[DEPRECATION] `ChronicPing.config.relative_url_root=` is deprecated. ENV['RAILS_RELATIVE_URL_ROOT'] will be used during asset:precompile instead."
    end
  end
end