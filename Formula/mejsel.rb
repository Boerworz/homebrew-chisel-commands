require "formula"

class Mejsel < Formula
	depends_on "chisel"

	homepage "https://github.com/boerworz/mejsel"
	url "https://github.com/Boerworz/mejsel/archive/v0.1.tar.gz"
	sha1 "99890d32ca7237d4fb3e90142600b87f4fa1d408"

	def install
		libexec.install Dir["*.py"]
	end

	def caveats; <<-EOS.undent
		Add the following line to ~/.lldbinit to load mejsel when Xcode launches:
		  script fblldb.loadCommandsInDirectory("#{opt_libexec}")
		
		Make sure that line occurs after the line that imports Chisel:
		  command script import #{opt_libexec}/fblldb.py
		EOS
	end
end
