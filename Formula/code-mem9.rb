class CodeMem9 < Formula
  desc "Sync and watch Codex memories into Mem9 with redaction"
  homepage "https://github.com/dmego/code-mem9"
  url "https://github.com/dmego/codex-mem9/releases/download/v0.1.0/code-mem9-v0.1.0.tar.gz"
  sha256 "57b8fb8f65eb84dd8bca879f56e2df51383158806e209810141e2aec21de466b"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  service do
    run [opt_bin/"code-mem9", "watch"]
    keep_alive true
    log_path var/"log/code-mem9.log"
    error_log_path var/"log/code-mem9.err.log"
  end

  test do
    assert_match "sync", shell_output("#{bin}/code-mem9 --help")
  end
end
