class IkatyangGhCode < Formula
  desc "Clone and Open GitHub Repository"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/gh-code-1.0.0/bin.sh', __dir__)}"
  version "1.0.0"
  sha256 "90fbe6d5b2e133c82e80e4b2e28dae8ad1757e38ba5ddc960b02a9db907373cf"

  def install
    bin.install "bin.sh" => "gh-code"
  end
end
