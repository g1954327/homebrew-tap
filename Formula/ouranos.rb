VERSION="0.1.16"

class Ouranos < Formula
desc "URL shortener via bit.ly, etc."
homepage "https://github.com/g1954327/ouranos"
url "https://github.com/g1954327/ouranos/releases/download/v#{VERSION}/ouranos-#{VERSION}_darwin_amd64.tar.gz" 
version VERSION
sha256 "392dd0ec2360706e486f84d8fbe34096fc1b15b2a95d2503473d5fdce6640de1"
license "MIT"
option "without-completions", "Disable bash completions"
depends_on "bash-completion@2" => :optional
def install
    bin.install "ouranos"
    bash_completion.install "https://github.com/g1954327/ouranos/blob/v0.1.16/cmd/ouranos/completions/bash/ouranos" if build.with? "completions" 
end
  test do
    system bin/"ouranos", "--version"
end end
