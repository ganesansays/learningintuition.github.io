set -e # Prevents script from running if there are any errors.
git stash save # Stashes everything away incase you didn't commit them
bundle exec jekyll build # Step 2, insert your build script here
REV=`git rev-parse HEAD` # Gets commit hash as message
git checkout master # Step 3
git rm -rf . # Step 4
git commit -a -m "removed all deployment"
git push
#git checkout development -- .gitignore # Step 5
mv _site/* . && rm -rf _site # Step 6
git add . # Step 7
git commit -m "deployed $REV" # Step 8
git push --all # Step 9
git checkout development # Step 10
git stash pop # Applies previously saved stash so you can continue working on changes. Once applied, removes stash

