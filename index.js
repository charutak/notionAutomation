const { Client } = require('@notionhq/client');
const dotenv = require("dotenv")
dotenv.config()

const notion = new Client({ auth: process.env.NOTION_KEY });


(async () => {
  const response = await notion.blocks.children.list({
    block_id: process.env.BLOCK_ID,
  });
  console.log(response);
})();



module.exports.AddToDo = function(toAdd) {
};


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
                content: 'Thing to google',
              },
            },
          ],
        }
      },
    ],
  });
  console.log(response)
})();

