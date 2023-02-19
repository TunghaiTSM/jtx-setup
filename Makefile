build:
	cp .env ~/.env
	sudo bash setup.sh
	git clone https://$(USERNAME):$(TOKEN)@github.com/$(USERNAME)/JTX.git
	cd JTX && cp ~/.env ./.env \
		&& npm install && composer install \
		&& php artisan key:generate \
		&& php artisan storage:link \
		&& php artisan migrate:refresh --seed \
		&& phpstorm .

