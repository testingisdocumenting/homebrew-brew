class Znai < Formula
  desc "Build functional, maintainable, beautiful User Guides with Znai. Instant pages navigation. Local search. Multiple integrations to work with Python, Java, OpenAPI, etc. Transform \"getting started\" sections into slideshow for your workshops. Enterprise Docs Hub."
  homepage "https://github.com/testingisdocumenting/znai"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/znai/znai-dist/1.55/znai-dist-1.55-znai.zip"
  sha256 "271918f859b0f12650342b9c97f71b864ccb808a3f3066d88e755e943c93fb66"
  version "1.55.0"

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