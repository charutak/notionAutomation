#!/usr/bin/env bash
source LoadEnvironmentVariables.sh

CHILD_BLOCK=$(curl 'https://api.notion.com/v1/blocks/'$BLOCK_ID'/children?page_size=1' -H 'Authorization: Bearer '"$NOTION_API_KEY"'' -H 'Notion-Version: 2021-08-16')

CHILD_BLOCK_ID=$(echo $CHILD_BLOCK | jq -r '..|.id? |select(.)')
CHILD_BLOCK_TEXT=$(echo $CHILD_BLOCK | jq -r '..|.plain_text? |select(.)')

curl 'https://api.notion.com/v1/blocks/'$CHILD_BLOCK_ID -H 'Authorization: Bearer '"$NOTION_API_KEY"'' -H 'Notion-Version: 2021-08-16' -X DELETE

echo $CHILD_BLOCK_TEXT | clip.exe
