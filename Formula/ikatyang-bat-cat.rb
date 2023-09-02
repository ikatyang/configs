require_relative "../FormulaUtils/zshrc"

class IkatyangBatCat < Formula
  desc "bat as cat"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/bat-cat-1.0.0/config.sh', __dir__)}"
  version "1.0.0"
  sha256 "1d4b5ee4c90557aa5849bb23e5e78e673b0c282e873ed37831933e9f45e712a8"

  depends_on "bat"

  def install
    prefix.install "config.sh" => "config"
    Zshrc::install self, "#{opt_prefix}/config"
  end

  def caveats
    Zshrc::caveats self
  end
end
