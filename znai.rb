class Znai < Formula
  desc "Build functional, maintainable, beautiful User Guides with Znai. Instant pages navigation. Local search. Multiple integrations to work with Python, Java, OpenAPI, etc. Transform \"getting started\" sections into slideshow for your workshops. Enterprise Docs Hub."
  homepage "https://github.com/testingisdocumenting/znai"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/znai/znai-dist/1.54/znai-dist-1.54-znai.zip"
  sha256 "d782e88eee71910bbb652d7d49cb018a077ba8e65501655b7ecb36c4ea57b300"
  version "1.54.0"

  depends_on "java"

  bottle :unneeded

  def install
    inreplace ["znai"] do |s|
      s.gsub! /\$CWD\/lib\/\*/,"#{libexec}/lib/*"
    end

    bin.install "znai"
    libexec.install Dir["*"]
  end
end