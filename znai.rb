class Znai < Formula
  desc "Build functional, maintainable, beautiful User Guides with Znai. Instant pages navigation. Local search. Multiple integrations to work with Python, Java, OpenAPI, etc. Transform \"getting started\" sections into slideshow for your workshops. Enterprise Docs Hub."
  homepage "https://github.com/testingisdocumenting/znai"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/znai/znai-dist/1.52/znai-dist-1.52-znai.zip"
  sha256 "684e77ac4ec5d1c92f203d51f7ab4d9ccad7a11c5378b9bbce7aac0d252082af"
  version "1.52.0"

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