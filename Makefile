
default: brew-install brew-packages brew-casks brew-mas

brew-install:
	./brew/install.sh

brew-packages: brew-install
	./brew/packages.sh

brew-casks: brew-install
	./brew/casks.sh

brew-mas: brew-install
	./brew/mas.sh
