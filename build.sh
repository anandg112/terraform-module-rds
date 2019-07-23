# build.sh 

if [[ $TRAVIS_BRANCH == 'master' ]]
then
    ./terraform-linux fmt
    ./terraform-linux init
    ./terraform-linux validate -var-file=terraform.tfvars
    ./terraform-linux plan
fi