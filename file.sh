#!/bin/bash
echo Your container args are: "$@"
cd /root/udemy-dl && python3 udemy-dl.py -o /root/dlcourses $@
chmod a+rwx /root/dlcourses
bash