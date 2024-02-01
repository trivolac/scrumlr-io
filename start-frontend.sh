#!/usr/bin/env bash

sed -i 's|@SCRUMLR_LISTEN_PORT@|'"$SCRUMLR_LISTEN_PORT"'|g' /etc/nginx/conf.d/default.conf;
sed -i 's|@SCRUMLR_SERVER_URL@|'"$SCRUMLR_SERVER_URL"'|g' /etc/nginx/conf.d/default.conf;
sed -i 's|@SCRUMLR_WEBSOCKET_URL@|'"$SCRUMLR_WEBSOCKET_URL"'|g' /etc/nginx/conf.d/default.conf;
sed -i 's|@SCRUMLR_SHOW_LEGAL_DOCUMENTS@|'"$SCRUMLR_SHOW_LEGAL_DOCUMENTS"'|g' /etc/nginx/conf.d/default.conf;
sed -i 's|@SCRUMLR_ANALYTICS_DATA_DOMAIN@|'"$SCRUMLR_ANALYTICS_DATA_DOMAIN"'|g' /etc/nginx/conf.d/default.conf;
sed -i 's|@SCRUMLR_ANALYTICS_SRC@|'"$SCRUMLR_ANALYTICS_SRC"'|g' /etc/nginx/conf.d/default.conf;

echo "===========================";
echo "Starting nginx server";
echo "===========================";

nginx -g "daemon off;"