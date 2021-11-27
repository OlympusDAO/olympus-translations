# Olympus-translations

## How to update the translations develop branch
```
# Clone the Olympus frontend repository
git clone https://github.com/OlympusDAO/olympus-frontend.git`
cd olympus-frontend

# Switch to the translations develop branch
yarn lingui:branch:develop

# Install the application dependencies
yarn install 

# At this point your filesystem cointains the latest olympus-frontend develop branch with the latest olympus-translations develop branch as a submodule in src/locales/translations
# Extract the new translations
yarn lingui:extract

# Commit the updated translation files
cd src/locales/translations
git add .
git commit
git push origin develop
```
