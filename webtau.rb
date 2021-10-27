class Webtau < Formula
  desc "webtau - web test automation. command line tool to test across REST-API/Graph QL/Browser/Database/CLI"
  homepage "https://github.com/testingisdocumenting/webtau"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/webtau/webtau-dist/1.44.1/webtau-dist-1.44.1-webtau.zip"
  sha256 "3c4d3fdede6f84e49816aeb95fa9dee87c066cb4792c4851b699afe4e309b406"
  version "1.44.1"

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