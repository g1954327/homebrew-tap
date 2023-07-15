VERSION="0.2.1"

class Ouranos < Formula
  desc "URL shortener via bit.ly, etc."
  homepage "https://github.com/g1954327/ouranos"
  url "https://github.com/g1954327/ouranos/releases/download/v#{VERSION}/ouranos-#{VERSION}_darwin_amd64.tar.gz" 
  version VERSION
  sha256 "0cf5c970b446600a3448cd0128c5c1aa10360eb9dab458905bc3a9816919e88d"
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

