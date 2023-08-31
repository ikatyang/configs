require_relative "../FormulaUtils/gitconfig"

class IkatyangGitEditorCode < Formula
  desc "git-editor-code"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/git-editor-code-1.0.0/gitconfig', __dir__)}"
  version "1.0.0"
  sha256 "a5fed647b264a325f03280930d2621271c41e378f4822bb6a698eb50b89bfd76"

  def install
    prefix.install "gitconfig"
    Gitconfig::install self, "#{opt_prefix}/gitconfig"
  end

  def caveats
    Gitconfig::caveats self
  end
end
