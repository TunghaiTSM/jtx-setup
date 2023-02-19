build:
	sudo ./setup.sh
	git clone https://$(USERNAME):$(TOKEN)@github.com/$(USERNAME)/JTX.git
	cd JTX
	phpstorm .

