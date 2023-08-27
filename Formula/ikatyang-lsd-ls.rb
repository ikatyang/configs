require_relative "../FormulaUtils/zshrc"

class IkatyangLsdLs < Formula
  desc "lsd as ls"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/lsd-ls-1.0.0/config.sh', __dir__)}"
  version "1.0.0"
  sha256 "7ade3b2f0ea8cbf140c380fa36227387883953ff72be29694283e3aec3c660dd"

  depends_on "lsd"

  def install
    prefix.install "config.sh" => "config"
    Zshrc::install self, "#{opt_prefix}/config"
  end

  def caveats
    Zshrc::caveats self
  end
end
