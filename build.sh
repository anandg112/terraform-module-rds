# build.sh 

if [[ $TRAVIS_BRANCH == 'master' ]]
then
    ./terraform-linux fmt
    ./terraform-linux init
    ./terraform-linux validate
    ./terraform-linux plan
fi