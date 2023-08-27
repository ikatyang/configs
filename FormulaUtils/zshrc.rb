require_relative "config"

class Zshrc
  BASENAME = ".zshrc"
  FILENAME = "#{Config::DIRNAME}/#{BASENAME}"

  def self.install(formula, config_file)
    Config::install formula, BASENAME, "source \"#{config_file}\""
  end

  def self.caveats(formula)
    <<~EOS
      Make sure #{formula.name} is loaded from your #{BASENAME}:
        source "#{FILENAME.sub("/Users/#{ENV["USER"]}", "$HOME")}"
    EOS
  end
end
