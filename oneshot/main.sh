#!/bin/sh

APP_STATUS="${APP_STATUS:-0}"
APP_SLEEP_SECONDS="${APP_SLEEP_SECONDS:-30}"
APP_SLEEP_COUNT="${APP_SLEEP_COUNT:-5}"
APP_SLEEP_MESSAGE="${APP_SLEEP_MESSAGE:-Sleep... (%d/%d)\n}"
APP_EXIT_MESSAGE="${APP_EXIT_MESSAGE:-Exit the script with status %d\n}"

if [ "${APP_SLEEP_COUNT}" -ge 0 ]
then
    for i in $(seq "${APP_SLEEP_COUNT}")
    do
        printf "${APP_SLEEP_MESSAGE}" ${i} ${APP_SLEEP_COUNT}
        sleep ${APP_SLEEP_SECONDS}
    done
else
    i=0
    while :
    do
        i=$(( ${i} + 1 ))
        printf "${APP_SLEEP_MESSAGE}" ${i} ${APP_SLEEP_COUNT}
        sleep ${APP_SLEEP_SECONDS}
    done
fi

printf "${APP_EXIT_MESSAGE}" ${APP_STATUS}
exit ${APP_STATUS}
