


# REPO_URL https://github.com/Chrisbkyle/blackbird



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
# create branch update-logo on local system
git branch update-logo
git checkout update-logo
# push changes and create new github branch
git add --all
git commit -m'update logo'
git push --set-upstream upstream update-logo
# create PR to main
gh pr create -B master
# accept PR
git checkout master
gh pr list
gh pr checkout 1
gh pr merge