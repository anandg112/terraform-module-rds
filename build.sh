# build.sh 

if [[ $TRAVIS_BRANCH == 'master' ]]
then
    terraform fmt
    terraform init
    terraform validate
    terraform plan
fi