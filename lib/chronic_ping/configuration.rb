module ChronicPing
  class Configuration
    attr_accessor :datetime_format
    attr_accessor :relative_root_url

    def initialize
      @datetime_format = '%B %d, %Y at %I:%M%p'
      @relative_root_url = ""
    end
  end
end