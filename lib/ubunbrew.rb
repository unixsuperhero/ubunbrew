class Ubunbrew
  class << self
    def search(pattern, *args)
      $stderr.puts "WARNING: Unprocessed arguments: #{args.inspect}" if args.any?
      `apt-cache search "#{pattern}"`
    end

    def install(*args)
      args.map do |pkg|
        `apt-get install "#{pkg}"`
      end
    end

    def example_error_message(error_message=nil)
      unless error_message.nil?
        $stderr.puts "ERROR: #{error_message}"
        $stderr.puts ""
      end
      $stderr.puts "EXAMPLES:"
      $stderr.puts "  brew install <pkg_a> [[<pkg_b>] ...]"
      $stderr.puts "  brew search <search_pattern>"
    end
  end
end
