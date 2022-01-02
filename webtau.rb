class Webtau < Formula
  desc "webtau - web test automation. command line tool to test across REST-API/Graph QL/Browser/Database/CLI"
  homepage "https://github.com/testingisdocumenting/webtau"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/webtau/webtau-dist/1.45.1/webtau-dist-1.45.1-webtau.zip"
  sha256 "f34fa06013bd9a8b65c0425cc861902f749a2320d6ece352e71ad5ebd32654e8"
  version "1.45.1"

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