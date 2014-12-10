#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-
puts `ps aux | wc -l`.to_i - 1

