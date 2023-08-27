class IkatyangPodmanDocker < Formula
  desc "Podman as Docker"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/podman-docker-1.0.0/bin.sh', __dir__)}"
  version "1.0.0"
  sha256 "ec846792e12a53643afa769e7fb5b12ffbcfdf4accec5b92a54c88623d0f613e"

  depends_on "podman"

  def install
    bin.install "bin.sh" => "docker"
  end
end
