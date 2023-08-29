require_relative "../FormulaUtils/zshrc"

class IkatyangPure < Formula
  desc "pure"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/pure-1.0.0/config.sh', __dir__)}"
  version "1.0.0"
  sha256 "9df27e654dc8cc7224e55e624fa1d69c61ddaa4f0aa159b586e1b1022db23578"

  depends_on "pure"

  def install
    prefix.install "config.sh" => "config"
    Zshrc::install self, "#{opt_prefix}/config"
  end

  def caveats
    Zshrc::caveats self
  end
end
