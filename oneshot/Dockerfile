FROM busybox

ARG APP_STATUS
ARG APP_SLEEP_SECONDS
ARG APP_SLEEP_COUNT
ARG APP_SLEEP_MESSAGE

ENV APP_STATUS=${APP_STATUS}
ENV APP_SLEEP_SECONDS=${APP_SLEEP_SECONDS}
ENV APP_SLEEP_COUNT=${APP_SLEEP_COUNT}
ENV APP_SLEEP_MESSAGE=${APP_SLEEP_MESSAGE}

CMD ["sh", "-c", "exit ${APP_STATUS}"]
