#!/bin/bash

ps -ef | grep "nginx" >> ps-$(date +%H-%M-%S)
