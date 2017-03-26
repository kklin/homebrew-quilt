class Quilt < Formula
  desc "Deploy and manage microservices with JavaScript."
  homepage "http://quilt.io"
  url "https://github.com/quilt/quilt/archive/REPLACE_ME.tar.gz"
  sha256 "REPLACE_ME"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/quilt/quilt").install buildpath.children
    cd "src/github.com/quilt/quilt" do
      system "go", "build", "-o", "quilt"
      bin.install "quilt"
    end
  end

  test do
    system "#{bin}/quilt", "version"
  end
end
