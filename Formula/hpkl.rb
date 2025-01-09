class Hpkl < Formula
    desc "Enhanced "
    homepage "https://github.com/hpklio>/hpkl"
    version "0.8.0"

    depends_on "pkl" => "0.27.1"

    on_macos do
        if Hardware::CPU.intel?
          url "https://github.com/hpklio/hpkl/releases/download/v0.8.0/hpkl_Darwin_x86_64.tar.gz"  
          sha256 "7c35dd270f772b4aa91f1bbddb26cc6be94cf125ff82ab7960ed915f2d9d790b"
        elsif Hardware::CPU.arm?
          url "https://github.com/hpklio/hpkl/releases/download/v0.8.0/hpkl_Darwin_arm64.tar.gz"
          sha256 "f78ca9dd3bcdad9b679b81c2274ceb15d832cd4d446292829dbc3d19bf562534"
        end
      end    
  
    def install
      bin.install "hpkl" # Replace "mytool" with the name of your binary
    end
  
    test do
      system "#{bin}/hpkl", "--version" # Test your binary here
    end
  end
  