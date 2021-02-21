#!/bin/bash
 
find ~/logs/pkg-update/*.log -mtime +3 -type f -print -delete # delete logs older than 3 days
