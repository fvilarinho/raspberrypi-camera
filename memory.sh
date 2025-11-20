#!/usr/bin/env bash

free | grep Mem: | awk {'print $3'}
