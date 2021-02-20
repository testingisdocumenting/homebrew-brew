class Webtau < Formula
  desc "webtau - web test automation. command line tool to test across REST-API/Graph QL/Browser/Database/CLI"
  homepage "https://github.com/testingisdocumenting/webtau"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/webtau/webtau-dist/1.38/webtau-dist-1.38-webtau.zip"
  sha256 "d1859450902eb19bbee03919b6f6d7f6fd65e064b214962ee4b154cb784387e6"
  version "1.38.0"

  depends_on "java"

  bottle :unneeded

  def install
    inreplace ["webtau"] do |s|
      s.gsub! /\$CWD\/lib\/\*/,"#{libexec}/lib/*"
    end

    bin.install "webtau"
    libexec.install Dir["*"]
  end
end