require_relative "../FormulaUtils/config"
require_relative "../FormulaUtils/zshrc"

class IkatyangOhMyZsh < Formula
  DIRNAME = "#{Config::DIRNAME}/oh-my-zsh"

  desc "oh-my-zsh"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/on-my-zsh-1.0.0/config.sh', __dir__)}"
  version "1.0.0"
  sha256 "cb7841aae2e0b2a7ee84000f8bb8da7bbd20b7cca318a300e9f23fb1f1af638d"

  def install
    prefix.install "config.sh" => "config"
    Zshrc::install self, "#{opt_prefix}/config"
    system "[ -d '#{DIRNAME}' ] || git clone https://github.com/ohmyzsh/ohmyzsh '#{DIRNAME}'"
  end

  def caveats
    Zshrc::caveats self
  end
end
