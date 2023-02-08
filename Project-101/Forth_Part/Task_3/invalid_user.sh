#!/bin/bash
grep -Eio "invalid user .+" auth.log | awk '{print $3}' | sort | uniq -c > result.txt 
# grep -Eio "invalid user .+ [preauth]" auth.log | awk '{print $3}' | sort | uniq -c > result2.txt