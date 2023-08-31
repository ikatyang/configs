require_relative "../FormulaUtils/zshrc"

class IkatyangNodenv < Formula
  desc "nodenv"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/nodenv-1.0.0/config.sh', __dir__)}"
  version "1.0.0"
  sha256 "a85c552ca0da4ea97b0a03336becaeffee0d5a5e5da280529b91160a015c8564"

  depends_on "nodenv"

  def install
    prefix.install "config.sh" => "config"
    Zshrc::install self, "#{opt_prefix}/config"
  end

  def caveats
    Zshrc::caveats self
  end
end
