dirpath=$(pwd);
cp -R $dirpath/useful_scripts/.full_scripts/ ~/.full_scripts/
alias up >/dev/null 2>&1 && echo "Alias <up> already exists" || echo "alias up='sudo apt update && sudo apt full-upgrade -y'" >> ~/.bash_aliases
alias git-pub >/dev/null 2>&1 && echo "Alias <git-pub> already exists" || echo "alias git-pub='~/.full_scripts/github_publish.sh'" >> ~/.bash_aliases
