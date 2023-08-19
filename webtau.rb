class Webtau < Formula
  desc "WebUau - web test automation. Test across REST-API/Graph QL/WebSocket/Browser/Database/CLI"
  homepage "https://github.com/testingisdocumenting/webtau"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/webtau/webtau-dist/2.1/webtau-dist-2.1-webtau.zip"
  sha256 "f098e99f8c641e59f4519910349a091ccbcac70eda157ba474f7857e73b12997"
  version "2.1"

  depends_on "java"

  def install
    inreplace ["webtau"] do |s|
      s.gsub! /\$WEBTAU_SCRIPT_DIR\/lib\/\*/,"#{libexec}/lib/*"
    end

    bin.install "webtau"
    libexec.install Dir["*"]
  end
end