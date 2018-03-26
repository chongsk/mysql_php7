#!/bin/bash

docker run -d --rm  \
    -v $(pwd):/usr/src/myapp \
	-w /usr/src/myapp \
	--env PHP_SCRIPTNAME=/usr/src/myapp/mysql.php \
	--env CONSUL_TEMPLATE_URL=/usr/src/myapp/conn.inc.ctmpl \
	--env CONSUL_HTTP_ADDR=10.0.2.15:9500 \
	--env VAULT_ADDR=http://10.0.2.15:9200 \
	--env VAULT_TOKEN=$VAULT_TOKEN \
	cits/php7-mysql-consul_template
