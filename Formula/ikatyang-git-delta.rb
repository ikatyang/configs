require_relative "../FormulaUtils/gitconfig"

class IkatyangGitDelta < Formula
  desc "git-delta"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/git-delta-1.0.0/gitconfig', __dir__)}"
  version "1.0.0"
  sha256 "00076b32a1700702d9d4ae70de498115671b15e6cef140a26b357ddfb5aea15e"

  depends_on "git-delta"

  def install
    prefix.install "gitconfig"
    Gitconfig::install self, "#{opt_prefix}/gitconfig"
  end

  def caveats
    Gitconfig::caveats self
  end
end
