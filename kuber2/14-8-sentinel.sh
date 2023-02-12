#!/bin/bash
while ! ping -c 1 redis-0.redis; do
    echo 'Oczekiwanie na serwer'
    sleep 1
done

redis-sentinel /redis-config/sentinel.conf

