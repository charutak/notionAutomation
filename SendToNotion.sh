#!/usr/bin/env bash
source LoadEnvironmentVariables.sh

toGoogle="\""$1"\""
curl -X PATCH 'https://api.notion.com/v1/blocks/'$BLOCK_ID'/children'  -H 'Authorization: Bearer '"$NOTION_API_KEY"''   -H "Content-Type: application/json"   -H "Notion-Version: 2021-08-16"   --data '{                                                                      "children": [
{
  "object": "block",
  "type": "to_do",
  "to_do": {
  "text": [{ "type": "text", "text": { "content": '"$toGoogle"' } }]
  }
 }
 ]
}'

