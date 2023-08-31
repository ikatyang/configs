require_relative "../FormulaUtils/gitconfig"

class IkatyangGitUserIkatyang < Formula
  desc "git-user-ikatyang"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/git-user-ikatyang-1.0.0/gitconfig', __dir__)}"
  version "1.0.0"
  sha256 "7e66af507f96fea0fe8029f2d500b876d014c4ec1d74c5e294270142a3e86471"

  resource "gitconfig-gh" do
    url "file://#{File.expand_path('../artifacts/git-user-ikatyang-1.0.0/gitconfig-gh', __dir__)}"
    sha256 "f8259abd4b947f72f5a6e3b3dd91004740789241156d5476b64044e0819218de"
  end

  def install
    prefix.install "gitconfig"

    resource("gitconfig-gh").stage do
      prefix.install "gitconfig-gh"
    end

    Gitconfig::install self, "#{opt_prefix}/gitconfig"
  end

  def caveats
    Gitconfig::caveats self
  end
end
