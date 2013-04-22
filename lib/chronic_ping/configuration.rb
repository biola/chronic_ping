module ChronicPing
  class Configuration
    attr_accessor :datetime_format

    def initialize
      @datetime_format = '%B %d, %Y at %I:%M%p'
    end

    def relative_root_url=(relative_url_root)
      warn "[DEPRECATION] `ChronicPing.config.relative_url_root=` is deprecated. ENV['RAILS_RELATIVE_URL_ROOT'] will be used during asset:precompile instead."
    end
  end
end