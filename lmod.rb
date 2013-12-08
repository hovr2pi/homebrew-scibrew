require 'formula'

class Lmod < Formula
  homepage ''
  url 'http://downloads.sourceforge.net/project/lmod/Lmod-5.2.tar.bz2'
  sha1 '9aed7437578021cf6dea39f3b9cbc89fa6e635d9'

  depends_on 'lua' 

  def install

    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
			  "--with-module-root-path=/usr/local/modulefiles",
			  "--with-spiderCacheDir=/usr/opt/moduleData/cacheDir",
			  "--with-updateSystemfile=/usr/opt/moduleData/system.txt",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  test do
    system "false"
  end
end
