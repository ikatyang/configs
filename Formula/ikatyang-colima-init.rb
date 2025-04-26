class IkatyangColimaInit < Formula
  desc "Initialize Colima Machine"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/colima-init-1.0.0/bin.sh', __dir__)}"
  version "1.0.0"
  sha256 "5cf4e75ed80cf6faa66fe794d85e08a3b98957fac33c5a238c0be176d172af90"

  depends_on "colima"

  def install
    bin.install "bin.sh" => "colima-init"
  end
end
