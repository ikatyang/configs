require_relative "../FormulaUtils/zshrc"

class IkatyangZshSyntaxHighlighting < Formula
  desc "zsh-syntax-highlighting"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/zsh-syntax-highlighting-1.0.0/config.sh', __dir__)}"
  version "1.0.0"
  sha256 "c54a46c56e7e3d49b8b84b7615d8c4267714b8ecc08c5dfb77566eb54cd6d7a8"

  depends_on "zsh-syntax-highlighting"

  def install
    prefix.install "config.sh" => "config"
    Zshrc::install self, "#{opt_prefix}/config"
  end

  def caveats
    Zshrc::caveats self
  end
end
