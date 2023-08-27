class IkatyangPodmanMachineAllowPrivilegedPort < Formula
  desc "Allow Privileged Port in Podman Machine"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/podman-machine-allow-privileged-port-1.0.0/bin.sh', __dir__)}"
  version "1.0.0"
  sha256 "90f981af5dc2e4678944ca62cebf4b6bc3e40fbfae9e3b4ad9ceba0271cd8021"

  depends_on "podman"

  def install
    bin.install "bin.sh" => "podman-machine-allow-privileged-port"
  end
end
