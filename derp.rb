class Derp < Formula
  desc "Natural language grep for regex-challenged developers"
  homepage "https://github.com/syrex1013/derp"
  url "https://registry.npmjs.org/derpgrep/-/derpgrep-0.1.2.tgz"
  sha256 "2eae1edaa893f834ec1b05b81b7611197d297856a17fed0c2d72e2acfb6d7101"
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
