#!/bin/bash

ps -ef | grep "bash" >> ps-$(date +%H-%M-%S)
