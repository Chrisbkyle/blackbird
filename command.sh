# create project folder and download React
npx create-react-app blackbird
cd blackbird
git init
# install Github CLI
scoop install gh
scoop update gh
# first commit and create Github repo
git add --all
git commit -m'first commit'
gh auth login
gh repo create my-newrepo --public --source=. --remote=upstream --push
# create branch update-logo
git branch update-logo
git checkout update-logo

