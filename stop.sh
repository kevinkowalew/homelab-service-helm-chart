helm ls -n prod | awk '{print($1)}' | grep -v NAME | xargs helm delete
