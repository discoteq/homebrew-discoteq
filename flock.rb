require 'formula'

class Flock < Formula
  homepage 'https://github.com/discoteq/flock'
  version '0.3.0'
  url "https://github.com/discoteq/flock/releases/download/v#{version}/flock-#{version}.tar.xz"
  sha256 '5f2298dbaf39bc3708e54f32705addc3d70f9aa16202d46fc08316f1237892c6'

  def install
    system './configure', '--disable-debug',
                          '--disable-dependency-tracking',
                          '--disable-silent-rules',
                          "--prefix=#{prefix}"
    system 'make', 'install'
  end

  test do
    system "#{bin}/flock", 'tmpfile', 'true'
  end
end
