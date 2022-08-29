#!/bin/sh

git add -u
git commit -m "Backup at $(date)"
git push origin main
