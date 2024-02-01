#!/usr/bin/env bash

POSTGRES_DB_URL=$1
NATS_URL=$2

if [[ -z "$POSTGRES_DB_URL" ]]; then
    echo "Postgres DB url not defined";
    exit 1;
fi

if [[ -z "$NATS_URL" ]]; then
    echo "Postgres DB url not defined";
    exit 1;
fi

echo "POSTGRES DB URL: $POSTGRES_DB_URL";
echo "NATS URL: $NATS_URL";

app --database "$POSTGRES_DB_URL" --nats "$NATS_URL" --disable-check-origin --insecure --base-path /api