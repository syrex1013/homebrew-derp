class Derp < Formula
  desc "Natural language grep for regex-challenged developers"
  homepage "https://github.com/syrex1013/derp"
  url "https://registry.npmjs.org/derpgrep/-/derpgrep-0.1.1.tgz"
  sha256 "f898b7196abdfdbf3fb74a5e16a0155f81da7a742d6f9ffa9d82166bbc021375"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"derp", "--version"
  end
end
