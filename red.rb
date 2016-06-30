class Red < Formula
  desc "New programming language, strongly inspired by REBOL."
  homepage "http://www.red-lang.org"
  url "http://static.red-lang.org/dl/mac/red-061"
  sha256 "afefaa392e5dbc1ec6d8805376ecffe86a1f6d1ce46d426800556f3c4f698693"

  bottle :unneeded

  depends_on :arch => :intel

  def install
    chmod "u+x", "red-061"
    mv "red-061", "red"
    bin.install "red"
  end

  def caveats; <<-EOS.undent
    Though red can be compiled, it can only be
    compiled from red, therefore, its precompiled
    binaries are installed instead of its source
    being compiled.
    EOS
  end

  test do
    system "#{bin}/red", "--help"
  end
end
