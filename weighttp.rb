require 'formula'

class Weighttp < Formula
  homepage 'http://redmine.lighttpd.net/projects/weighttp/wiki'
  url 'git://git.lighttpd.net/weighttp'
  version '0.3'

  depends_on 'libev' => :build

  def install
    system "./waf","configure", "--prefix=#{prefix}"
    system "./waf", "build"
    system "./waf", "install"    
  end

  def test
    File.exists? "#{bin}/weighttp"
  end
end
