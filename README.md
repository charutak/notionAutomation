# Key bindings to a list on notion, for fast addition and retrieval.  (Windows Only)

## Simple tool to add to a list for googling later, to stop you from going down those rabbit holes. Plus,Fast retrieval for those random 5 minutes you get free. 

## Usage:

Select text and Press Alt + G for adding the text to the list. <br>
Press Alt + F to paste the top element for the list to the textbox in front of you. <br>
(It will be copied to your clipboard, in case there isn't a highlighted textbox)


## Installation Guide:

### Prerequisite: 

1. Windows OS.
2. [WSL](https://docs.microsoft.com/en-us/windows/wsl/install)
3. [AutohotKey](https://www.autohotkey.com/)

### Installation:
1. Clone the repository.
2. Create a notion integration following instructions written [here](https://developers.notion.com/docs/getting-started). (Save the Notion API key somewhere, you will need it later).
3. Share the page of notion you want to use for editing to the created integration. (Step 2 in the previous link) 
4. Create a To-Do list block on the Page, and get its [Block ID](https://stackoverflow.com/questions/67618449/how-to-get-the-block-id-in-notion-api).
5. Add the notion API key and the block id to the LoadEnvironmentVairableTemplate.sh, and save and rename that file to LoadEnvironmentVariables.sh.
6. [Add to path](https://www.baeldung.com/linux/path-variable) the github folder to your WSL bash. Or Replace the file path to the file name in [NotionKeymappings.ahk](NotionKeymappings.ahk) for [SendToNotion.sh](SendToNotion.sh) and [GetFromNotion.sh](GetFromNotion.sh). 
6. Double click the NotionKeymappings.ahk
7. Add the file to [startup](https://www.autohotkey.com/docs/FAQ.htm#Startup). 
 
This should be working!
