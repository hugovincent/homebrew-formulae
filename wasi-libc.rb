class WasiLibc < Formula
  desc "WASI libc implementation for WebAssembly"
  homepage "https://wasi.dev/"
  head "https://github.com/CraneStation/wasi-libc.git", :revision => "94d34a13ad223930dce354ac33d3dfc73e9b5122"
  depends_on "llvm" => :build
  keg_only "WASI-only headers clash with system headers"

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
