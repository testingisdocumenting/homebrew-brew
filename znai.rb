class Znai < Formula
  desc "Build functional, maintainable, beautiful User Guides with Znai. Instant pages navigation. Local search. Multiple integrations to work with Python, Java, OpenAPI, etc. Transform \"getting started\" sections into slideshow for your workshops. Enterprise Docs Hub."
  homepage "https://github.com/testingisdocumenting/znai"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/znai/znai-dist/1.57/znai-dist-1.57-znai.zip"
  sha256 "d9c3418e4dd0916a8f92bb29887c119b2fa8bf875b0668ef1999266136e5c81b"
  version "1.57.0"

  depends_on "java"

  def install
    inreplace ["znai"] do |s|
      s.gsub! /\$CWD\/lib\/\*/,"#{libexec}/lib/*"
    end

    bin.install "znai"
    libexec.install Dir["*"]
  end
end