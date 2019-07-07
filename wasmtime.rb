class Wasmtime < Formula
  desc "Standalone JIT-style runtime for WebAsssembly, using Cranelift"
  homepage "https://github.com/CraneStation/wasmtime"
  head "https://github.com/CraneStation/wasmtime.git"

  depends_on "rust" => :build
  depends_on "cmake" => :build

  def install
    system "git", "submodule", "update", "--init"
    system "cargo", "build", "--release"
    bin.install "target/release/wasmtime"
    bin.install "target/release/wasm2obj"
    bin.install "target/release/wast"
  end

  test do
    system "false"
  end
end
