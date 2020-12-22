#!/bin/bash
 
find ~/logs/pkg-update/*.log -mtime +4 -type f -print -delete # delete logs older than 4 days
