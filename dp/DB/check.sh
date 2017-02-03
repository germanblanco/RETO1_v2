#!/bin/sh
sudo docker run -it --network=vnet --rm mysql/mysql-server:latest sh -c 'exec mysql -h"reto1db" -P"3306" -uroot -p"passwd"'
