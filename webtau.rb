class Webtau < Formula
  desc "webtau - web test automation. command line tool to test across REST-API/Graph QL/Browser/Database/CLI"
  homepage "https://github.com/testingisdocumenting/webtau"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/webtau/webtau-dist/1.43.1/webtau-dist-1.43.1-webtau.zip"
  sha256 "8f1fef85943f5ba168baa6848f5ca58d3f18fb73c8dbe1e8305bafcff54d6025"
  version "1.43.1"

  depends_on "java"

  bottle :unneeded

  def install
    inreplace ["webtau"] do |s|
      s.gsub! /\$WEBTAU_SCRIPT_DIR\/lib\/\*/,"#{libexec}/lib/*"
    end

    bin.install "webtau"
    libexec.install Dir["*"]
  end
end