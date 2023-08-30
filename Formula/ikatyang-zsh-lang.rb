require_relative "../FormulaUtils/zshrc"

class IkatyangZshLang < Formula
  desc "zsh lang"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/zsh-lang-1.0.0/config.sh', __dir__)}"
  version "1.0.0"
  sha256 "34f757c0d0a5585cdf07ab3515cea31a26591520be86a8c6b6805a0281f97332"

  def install
    prefix.install "config.sh" => "config"
    Zshrc::install self, "#{opt_prefix}/config"
  end

  def caveats
    Zshrc::caveats self
  end
end
