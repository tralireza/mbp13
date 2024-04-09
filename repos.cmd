#!/bin/bash
(while read r; do cd ~/$r && echo -n "> $r: " && git pull; done) < repos.txt
