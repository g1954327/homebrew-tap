VERSION="0.2.1"

class Ouranos < Formula
  desc "URL shortener via bit.ly, etc."
  homepage "https://github.com/g1954327/ouranos"
  url "https://github.com/g1954327/ouranos/releases/download/v#{VERSION}/ouranos-#{VERSION}_darwin_amd64.tar.gz" 
  version VERSION
  sha256 "6df860115d0e4e11d90151d0cc5b4a05dad344a484316b478c28426b016dd531"
  license "MIT"
  option "without-completions", "Disable bash completions"
  depends_on "bash-completion@2" => :optional

  def install
    bin.install "ouranos"
    zsh_completion.install "completions/zsh/ouranos" if build.with? "completions" 
  end
  test do
    system bin/"ouranos", "--version"
  end 
end

