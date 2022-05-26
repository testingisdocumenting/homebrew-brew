class Webtau < Formula
  desc "webtau - web test automation. command line tool to test across REST-API/Graph QL/Browser/Database/CLI"
  homepage "https://github.com/testingisdocumenting/webtau"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/webtau/webtau-dist/1.48/webtau-dist-1.48-webtau.zip"
  sha256 "6270f36f9fd9c3b78340bcb556475acec12d1154d8c04ba47f31cea5fdc2b656"
  version "1.48"

  depends_on "java"

  def install
    inreplace ["webtau"] do |s|
      s.gsub! /\$WEBTAU_SCRIPT_DIR\/lib\/\*/,"#{libexec}/lib/*"
    end

    bin.install "webtau"
    libexec.install Dir["*"]
  end
end