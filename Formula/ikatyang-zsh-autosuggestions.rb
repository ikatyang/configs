require_relative "../FormulaUtils/zshrc"

class IkatyangZshAutosuggestions < Formula
  desc "zsh-autosuggestions"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/zsh-autosuggestions-1.0.0/config.sh', __dir__)}"
  version "1.0.0"
  sha256 "1f0c3e4a5b036af8c889742769a2a4ebdb07e0170f0207fe4e809e8960e0e3e7"

  depends_on "zsh-autosuggestions"

  def install
    prefix.install "config.sh" => "config"
    Zshrc::install self, "#{opt_prefix}/config"
  end

  def caveats
    Zshrc::caveats self
  end
end
