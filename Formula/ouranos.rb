VERSION="1.0.0"
class Ouranos < Formula
desc "URL shortener via bit.ly, etc."
homepage "https://github.com/g1954327/ouranos"
url "https://github.com/g1954327/ouranos/releases/download/v#{VERSION}/ouranos-#{VERSION}_darwin_amd64.tar.gz" version VERSION
sha256 "974987017405126eba0e35e5048dc544f16af7e0a7d3f5d090819645a6d89218"
license ”MIT"
option "without-completions", "Disable bash completions"
depends_on "bash-completion@2" => :optional
def install
    bin.install ”ouranos"
bash_completion.install "completions/bash/ouranos" if build.with? "completions" end
  test do
    system bin/”ouranos", "--version"
end end
