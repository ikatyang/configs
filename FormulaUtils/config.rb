class Config
  # https://github.com/Homebrew/brew/blob/4.1.6/Library/Homebrew/formula_installer.rb#L927
  DIRNAME = "/Users/#{ENV["USER"]}/Library/Developer/Homebrew-ikatyang-configs"

  def self.install(formula, basename, config)
    filename = "#{DIRNAME}/#{basename}"
    formula.system "mkdir -p '#{DIRNAME}'"
    formula.system "touch '#{filename}'"
    formula.system "fgrep -x '#{config}' '#{filename}' || echo '#{config}' >> '#{filename}'"
  end
end
