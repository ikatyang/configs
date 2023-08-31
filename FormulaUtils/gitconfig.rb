require_relative "config"

class Gitconfig
  BASENAME = ".gitconfig"
  FILENAME = "#{Config::DIRNAME}/#{BASENAME}"

  def self.install(formula, config_file)
    Config::install formula, BASENAME, "[include] path = \"#{config_file}\""
  end

  def self.caveats(formula)
    <<~EOS
      Make sure #{formula.name} is loaded from your #{BASENAME}:
        [include] path = "#{FILENAME.sub("/Users/#{ENV["USER"]}", "~")}"
    EOS
  end
end
