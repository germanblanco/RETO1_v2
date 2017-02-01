#!/bin/sh
RATE=${RATE:-100}
HITS=${HITS:-100}
docker rm  reto1load
if [ -z ${THESERVER+x} ]; then 
  sudo docker run --link reto1server -e "RATE=$RATE" -e "HITS=$HITS" --name reto1load reto1load
else
  sudo docker run -e "THESERVER=$THESERVER" -e "RATE=$RATE" -e "HITS=$HITS" --name reto1load reto1load
fi
