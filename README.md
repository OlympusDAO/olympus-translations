# Olympus translations

## Translators
### How to become a translator

Join us on the Olympus DAO discord server and introduce yourself in the #app-translations channel

Someone will set you up.

### How to translate

#### Create a pull request
- You can open the .po file of the language of your choice directly in github
- Look at the text in each `msgid` line and translate it in the `msgstr`line just below
You can check the live site to have some context about the texts to be translated. If in doubt, do not hesitate to leave a message on the #app-translations channel
- Select Create a new branch for this commit and start a pull request.
- Click Commit changes
- Wait for the PR to be deployed
- Check your changes using the netlify preview (click on details on the line containing of "Deploy Preview ready!" under the "All checks have passed" section)

#### Update your pull request

You can correct your PR directly through the github interface
- When reviewing your PR, create on the Files changed tab
- Click the three dots on the right-hand side of the window next to the name of the file
- Make your changes
- Select "Commit directly to the "xxx-patch-x" branch
- Click Commit changes

## Developers

### How to update the translations develop branch

```
# Clone the Olympus frontend repository
git clone https://github.com/OlympusDAO/olympus-frontend.git`
cd olympus-frontend

# Switch to the translations 'translators' branch
yarn lingui:branch:translators

# Install the application dependencies
yarn install 

# At this point your filesystem contains the latest olympus-frontend develop branch with the latest olympus-translations develop branch as a submodule in src/locales/translations
# Extract the new translations
yarn lingui:extract

# Commit the updated translation files
cd src/locales/translations
git add .
git commit
git push origin translations
```

### Clean up po files

From time to time you may want to clean up po files from obsolete translations.

Run: `npx lingui extract --clean`

You should not do that to often because when translators have to translate a slightly modified version of an item, it helps to rely on the previously translated version.
