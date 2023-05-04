class Webtau < Formula
  desc "WebUau - web test automation. Test across REST-API/Graph QL/WebSocket/Browser/Database/CLI"
  homepage "https://github.com/testingisdocumenting/webtau"
  url "https://repo.maven.apache.org/maven2/org/testingisdocumenting/webtau/webtau-dist/1.53/webtau-dist-1.53-webtau.zip"
  sha256 "8dc49e6919e94bcd9b40e54dfb1eb6a0f3c6fafc5461142666d8fa66590fe28f"
  version "1.53"

  depends_on "java"

  def install
    inreplace ["webtau"] do |s|
      s.gsub! /\$WEBTAU_SCRIPT_DIR\/lib\/\*/,"#{libexec}/lib/*"
    end

    bin.install "webtau"
    libexec.install Dir["*"]
  end
end