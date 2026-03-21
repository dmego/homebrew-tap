class CodexMem9 < Formula
  desc "Sync and watch Codex memories into Mem9 with redaction"
  homepage "https://github.com/dmego/codex-mem9"
  url "https://github.com/dmego/codex-mem9/releases/download/v0.1.0/codex-mem9-v0.1.0.tar.gz"
  sha256 "6e21b6e5f8290cfee949aa883dce9171e01be11d8df1e4c74389ee511737d86f"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  service do
    run [opt_bin/"codex-mem9", "watch"]
    keep_alive true
    log_path var/"log/codex-mem9.log"
    error_log_path var/"log/codex-mem9.err.log"
  end

  test do
    assert_match "sync", shell_output("#{bin}/codex-mem9 --help")
  end
end
