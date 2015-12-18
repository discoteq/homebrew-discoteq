require 'formula'

class Flock < Formula
  homepage 'https://github.com/discoteq/flock'
  version '0.2.3'
  url "https://github.com/discoteq/flock/releases/download/v#{version}/flock-#{version}.tar.xz"
  sha1 'b57f2669a3d8e314507b853c7ac0ac7969cc4d70'

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
