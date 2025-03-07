#!/usr/bin/env bash

mkdir microservices
cd microservices

spring init \
--boot-version=3.4.3 \
--type=gradle-project \
--java-version=17 \
--packaging=jar \
--name=product-service \
--package-name=org.danielesteban.microservices.core.product \
--groupId=org.danielesteban.microservices.core.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-service

spring init \
--boot-version=3.4.3 \
--type=gradle-project \
--java-version=17 \
--packaging=jar \
--name=review-service \
--package-name=org.danielesteban.microservices.core.review \
--groupId=org.danielesteban.microservices.core.review \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
review-service

spring init \
--boot-version=3.4.3 \
--type=gradle-project \
--java-version=17 \
--packaging=jar \
--name=recommendation-service \
--package-name=org.danielesteban.microservices.core.recommendation \
--groupId=org.danielesteban.microservices.core.recommendation \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
recommendation-service

spring init \
--boot-version=3.4.3 \
--type=gradle-project \
--java-version=17 \
--packaging=jar \
--name=product-composite-service \
--package-name=org.danielesteban.microservices.composite.product \
--groupId=org.danielesteban.microservices.composite.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-composite-service

cd ..