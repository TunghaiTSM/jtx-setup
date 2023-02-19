build:
	cp .env ~/.env
	sudo bash setup.sh
	git clone https://$(USERNAME):$(TOKEN)@github.com/$(USERNAME)/JTX.git
	mysql -u root --host=127.0.0.1 -P 3306 -proot -e "CREATE DATABASE jtx"
	cd JTX && cp ~/.env ./.env \
		&& npm install && composer install \
		&& php artisan key:generate \
		&& php artisan storage:link \
		&& php artisan migrate:refresh --seed \
		&& phpstorm .

