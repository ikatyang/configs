class IkatyangTerminalOneDarkPro < Formula
  desc "One Dark Pro theme for Terminal"
  homepage "https://github.com/ikatyang/configs"
  url "file://#{File.expand_path('../artifacts/terminal-one-dark-pro-1.0.0/theme.terminal', __dir__)}"
  version "1.0.0"
  sha256 "3631945fd98f4c9819fa2c80f7f81a547cd690732366ff023ebf7347bcf7aa14"

  def install
    prefix.install "theme.terminal" => "one-dark-pro.terminal"
  end

  def caveats
    <<~EOS
      To activate this theme, execute the following command in Terminal:
        open "#{prefix}/one-dark-pro.terminal"
    EOS
  end
end
