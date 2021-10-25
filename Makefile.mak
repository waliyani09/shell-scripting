help:			##Welcome to the help menu
		@fgrep -h "##" $(MAKEFILE_LIST) | grep -v fgrep
catalogue:		##Install catalogue
		@bash components/catalogue.sh
mongodb:		##Install MongoDB
		@bash components/mongodb.sh
redis:			##Install Redis
		@bash components/redis.sh
user:			##Install user
		@bash components/user.sh
cart:			##Install cart
		@bash components/cart.sh
mysql:			##Install MySQL
		@bash components/mysql.sh
shipping:		##Install shipping
		@bash components/shipping.sh
rabbitmq:		##Install rabbitMQ
		@bash components/rabbitmq.sh
payment:		##Install payment
		@bash components/payment.sh
frontend:		##Install payment
		@bash components/frontend.sh