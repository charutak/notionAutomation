const { Client } = require('@notionhq/client');
const dotenv = require("dotenv")
dotenv.config()

const notion = new Client({ auth: process.env.NOTION_KEY });
var toGoogle = process.argv[2];

console.log(toGoogle);

(async () => {
  const response = await notion.blocks.children.list({
    block_id: process.env.BLOCK_ID,
  });
  console.log(response);
})();


(async () => {
  const response = await notion.blocks.children.append({
    block_id: process.env.BLOCK_ID,
    children: [
      {
        object: 'block',
        type: 'to_do',
        to_do:  {
          text: [
            {
              type: 'text',
              text: {
                content:  toGoogle,
              },
            },
          ],
        }
      },
    ],
  });
  console.log(response)
})();
