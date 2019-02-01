#!/bin/bash
[  -z "$REDIS_HOST" ] && REDIS_HOST=redis
/usr/bin/envsubst < /opt/uniqush/uniqush-push-source.conf > /opt/uniqush/uniqush-push.conf
uniqush-push -config /opt/uniqush/uniqush-push.conf
