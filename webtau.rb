class Webtau < Formula
  desc "webtau - web test automation. command line tool to test across REST-API/Graph QL/Browser/Database/CLI"
  homepage "https://github.com/testingisdocumenting/webtau"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/webtau/webtau-dist/1.49/webtau-dist-1.49-webtau.zip"
  sha256 "514e106583ba5430242e59b6fc182b41309f8cbe2fb7e59bda69bd99097fcbf9"
  version "1.49"

  depends_on "java"

  def install
    inreplace ["webtau"] do |s|
      s.gsub! /\$WEBTAU_SCRIPT_DIR\/lib\/\*/,"#{libexec}/lib/*"
    end

    bin.install "webtau"
    libexec.install Dir["*"]
  end
end