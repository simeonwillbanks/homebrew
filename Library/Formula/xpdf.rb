require 'formula'

class Xpdf < Formula
  url 'ftp://ftp.foolabs.com/pub/xpdf/xpdf-3.03.tar.gz'
  homepage 'http://www.foolabs.com/xpdf/'
  md5 'af75f772bee0e5ae4a811ff9d03eac5a'

  def install
    system "./configure", "--with-freetype2-library=/usr/X11/lib/pkgconfig", 
                          "--with-freetype2-includes=/usr/X11/include/freetype2",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make"
    system "make install"
  end
end