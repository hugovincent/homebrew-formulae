class WasiLibc < Formula
  desc "WASI libc implementation for WebAssembly"
  homepage "https://wasi.dev/"
  head "https://github.com/CraneStation/wasi-libc.git"
  depends_on "llvm" => :build

  def install
    system "make", "SYSROOT=#{prefix}",
                   "WASM_CC=/usr/local/opt/llvm/bin/clang",
                   "WASM_AR=/usr/local/opt/llvm/bin/llvm-ar",
                   "WASM_NM=/usr/local/opt/llvm/bin/llvm-nm"
  end

  test do
    system "false"
  end
end
