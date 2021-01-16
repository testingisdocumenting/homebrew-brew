class Webtau < Formula
  desc "webtau - web test automation. command line tool to test across REST-API/Graph QL/Browser/Database/CLI"
  homepage "https://github.com/testingisdocumenting/webtau"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/webtau/webtau-dist/1.35/webtau-dist-1.35-webtau.zip"
  sha256 "36a74c65b9c00a268aa4b5abcf8b432a1ceba2b503de4749abd14289401f6ac0"
  version "1.35.0"

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