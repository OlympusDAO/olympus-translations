# olympus-translations

## How to become a translator

Join us on the Olympus DAO discord server and introduce yourself in the #app-translations channel

Someone will set you up.

## How to translate

- You can open the .po file of the language of your choice directly in github
- Look at the text in each `msgid` line and translate it in the `msgstr`line just below
- You can check the live site to have some context about the texts to be translated. If in doubt, do not hesitate to leave a message on the #app-translations channel
- Commit your changes


## Checking your translations

### On the staging area

We do not have an environment for you to check your translations immediately, you will have to wait for them to be published on the staging URL: https://staging.olympusdao.finance

If you really want to check your translations and you have a bit of knowledge with git and npm do the following

### Locally

```
git clone https://github.com/OlympusDAO/olympus-frontend.git
cd olympus-frontend
yarn lingui:branch:develop
yarn install
yarn start
```

Replace `yarn` with `yarn.cmd` if you are using windows

A browser showing you the site should start with the latest develop branch and your updated translations
