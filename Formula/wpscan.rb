class Wpscan < Formula
  desc "WordPress security scanner"
  homepage "https://wpscan.com"
  url "https://github.com/wpscanteam/wpscan/archive/refs/tags/v3.8.25.tar.gz"
  sha256 "25f14d254279d3944f35f8f4638f0fcdc89dc60e28179d0d7fb64b9366e86fd8"
  license :cannot_represent # Source is public, commercial use requires a paid license
  revision 1
  head "https://github.com/wpscanteam/wpscan.git", branch: "master"

  bottle do
    root_url "https://github.com/Neved4/homebrew-tap/releases/download/wpscan-3.8.25_1"
    rebuild 2
    sha256 cellar: :any,                 arm64_sonoma: "9f9bc3921c9754785b8f5ce7e8f9449f111132f1cbac02004d835c93c25f7b9f"
    sha256 cellar: :any,                 ventura:      "729cd5dfed29472d79ef8e04ff4c37451cbe198959784d5b3759547bade1649b"
    sha256 cellar: :any,                 monterey:     "87a513021036e1ea9e25a116e679dc86bf6c84a79eef3dc1133b740feb553b06"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5592a1fe3a2b6fae8f025aa7980144ee727920037a9c0ec47668ef6d9473aa94"
  end

  depends_on "ruby" # Some gems require >= ruby 2.7
  depends_on "xz" # for liblzma

  on_linux do
    depends_on "libffi"
    depends_on "zlib"
  end

  # Runtime dependencies of wpscan
  # List with `gem install --explain wpscan`

  resource "yajl-ruby" do
    url "https://rubygems.org/downloads/yajl-ruby-1.4.3.gem"
    sha256 "8c974d9c11ae07b0a3b6d26efea8407269b02e4138118fbe3ef0d2ec9724d1d2"
  end

  resource "webrick" do
    url "https://rubygems.org/downloads/webrick-1.8.1.gem"
    sha256 "19411ec6912911fd3df13559110127ea2badd0c035f7762873f58afc803e158f"
  end

  resource "xmlrpc" do
    url "https://rubygems.org/downloads/xmlrpc-0.3.3.gem"
    sha256 "ec3d46bc63a44920ac2d67c49399fd493295ff98cb96adf25e59eaa718b38e3b"
  end

  resource "ffi" do
    url "https://rubygems.org/gems/ffi-1.16.2.gem"
    sha256 "8ef2ae82bb0c332d2ce3e92d9446b2ba2bc7c40a53d785a8556640afad995d39"
  end

  resource "ethon" do
    url "https://rubygems.org/downloads/ethon-0.16.0.gem"
    sha256 "bba0da1cea8ac3e1f5cdd7cb1cb5fc78d7ac562c33736f18f0c3eb2b63053d9e"
  end

  resource "typhoeus" do
    url "https://rubygems.org/downloads/typhoeus-1.4.0.gem"
    sha256 "fff9880d5dc35950e7706cf132fd297f377c049101794be1cf01c95567f642d4"
  end

  resource "sys-proctable" do
    url "https://rubygems.org/downloads/sys-proctable-1.3.0.gem"
    sha256 "31f61ad79aa0d4412155132beadf2b7ca706a6badce4ad2dfeda5d1ca4916e54"
  end

  resource "ruby-progressbar" do
    url "https://rubygems.org/downloads/ruby-progressbar-1.13.0.gem"
    sha256 "80fc9c47a9b640d6834e0dc7b3c94c9df37f08cb072b7761e4a71e22cff29b33"
  end

  resource "public_suffix-5.0.3" do
    url "https://rubygems.org/downloads/public_suffix-5.0.3.gem"
    sha256 "337d475da2bd2ea1de0446751cb972ad43243b4b00aa8cf91cb904fa593d3259"
  end

  resource "addressable" do
    url "https://rubygems.org/downloads/addressable-2.8.5.gem"
    sha256 "63f0fbcde42edf116d6da98a9437f19dd1692152f1efa3fcc4741e443c772117"
  end

  resource "zeitwerk" do
    url "https://rubygems.org/downloads/zeitwerk-2.6.12.gem"
    sha256 "561e12975d0332fd3b62cc859aff3bab432e5f320689c8a10cd4674b5c0439be"
  end

  resource "concurrent-ruby" do
    url "https://rubygems.org/downloads/concurrent-ruby-1.2.2.gem"
    sha256 "3879119b8b75e3b62616acc256c64a134d0b0a7a9a3fcba5a233025bcde22c4f"
  end

  resource "tzinfo" do
    url "https://rubygems.org/downloads/tzinfo-2.0.6.gem"
    sha256 "8daf828cc77bcf7d63b0e3bdb6caa47e2272dcfaf4fbfe46f8c3a9df087a829b"
  end

  resource "minitest" do
    url "https://rubygems.org/downloads/minitest-5.16.3.gem"
    sha256 "60f81ad96ca5518e1457bd29eb826db60f86fbbdf8c05eac63b4824ef1f52614"
  end

  resource "i18n" do
    url "https://rubygems.org/downloads/i18n-1.14.1.gem"
    sha256 "9d03698903547c060928e70a9bc8b6b87fda674453cda918fc7ab80235ae4a61"
  end

  resource "activesupport" do
    url "https://rubygems.org/downloads/activesupport-6.1.7.6.gem"
    sha256 "b3b7a04426d32cad7aa2ee15fa877030c87afd82d89e6e348886cc0c606c19da"
  end

  resource "opt_parse_validator" do
    url "https://rubygems.org/downloads/opt_parse_validator-1.9.5.gem"
    sha256 "2c69ece2110436148ecb78f1a5f768a7e3fd3d81db3517a484eb649de0b0f5cb"
  end

  resource "racc" do
    url "https://rubygems.org/downloads/racc-1.6.2.gem"
    sha256 "58d26b3666382396fea84d33dc0639b7ee8d704156a52f8f22681f07b2f94f26"
  end

  # Not listed by `gem install --explain` but required for `nokogiri`
  resource "mini_portile2" do
    url "https://rubygems.org/gems/mini_portile2-2.8.2.gem"
    sha256 "46b2d244cc6ff01a89bf61274690c09fdbdca47a84ae9eac39039e81231aee7c"
  end

  resource "nokogiri" do
    url "https://rubygems.org/downloads/nokogiri-1.15.4.gem"
    sha256 "e4a801e5ef643cc0036f0a7e93433d18818b31d48c9c287596b68e92c0173c4d"
  end

  resource "get_process_mem" do
    url "https://rubygems.org/downloads/get_process_mem-0.2.7.gem"
    sha256 "4afd3c3641dd6a817c09806c7d6d509d8a9984512ac38dea8b917426bbf77eba"
  end

  resource "cms_scanner" do
    url "https://rubygems.org/downloads/cms_scanner-0.13.9.gem"
    sha256 "be79a61c6fc69fa0cb5c2c9ec3237401d30e1001bbfc014a0b2313d0e66c7b5c"
  end

  def install
    ENV["GEM_HOME"] = libexec
    resources.each do |r|
      args = ["--ignore-dependencies", "--no-document", "--install-dir", libexec]
      # Fix segmentation fault on Apple Silicon
      # Ref: https://github.com/ffi/ffi/issues/864#issuecomment-875242776
      args += ["--", "--enable-libffi-alloc"] if r.name == "ffi" && OS.mac? && Hardware::CPU.arm?
      system "gem", "install", r.cached_download, *args
    end

    system "gem", "build", "wpscan.gemspec"
    system "gem", "install", "wpscan-#{version}.gem"
    bin.install libexec/"bin/wpscan"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])

    # Avoid references to the Homebrew shims directory
    if OS.mac?
      shims_references = Dir[libexec/"extensions/**/ffi-*/mkmf.log"].select { |f| File.file? f }
      inreplace shims_references, Superenv.shims_path.to_s, "<**Reference to the Homebrew shims directory**>", false
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wpscan --version")

    assert_match "Update completed", shell_output("#{bin}/wpscan --update")
  end
end
