#!/bin/bash
/usr/bin/envsubst < /opt/uniqush/uniqush-push-source.conf > /opt/uniqush/uniqush-push.conf
uniqush-push -config /opt/uniqush/uniqush-push.conf
