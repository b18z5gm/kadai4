#!/bin/bash

ans="/tmp/$$-ans"
result="/tmp/$$-result"
err="/tmp/$$-error"

echo 2 > ${ans}
./GCD.sh 2 4 > ${result}
diff ${ans} ${result} || echo "error in 1-1" >> ${err}

echo 2 > ${ans}
./GCD.sh 4 2 > ${result}
diff ${ans} ${result} || echo "error in 1-1" >> ${err}

echo 1 > ${ans}
./GCD.sh a > ${result}
diff ${ans} ${result} || echo "error in 1-1" >> ${err}

echo 1 > ${ans}
./GCD.sh 2 > ${result}
diff ${ans} ${result} || echo "error in 1-1" >> ${err}


if [ -f ${err} ]; then
    cat ${err}
    rm /tmp/$$-*
    exit 1
fi
