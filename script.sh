# stop if vercel token is missing
[ -z $TOKEN ]&&printf "Token is missing"&&exit 1

# set --prod flag only on production deployments
if [ -z $IS_PROD ];then printf "\nTEST DEPLOYMENT\n";else printf "\nPRODUCTION DEPLOYMENT\n"&&PROD="--prod";fi

# run deployment and return url
URL=$(vercel --confirm --token $TOKEN $PROD)&&printf "\nDEPLOYMENT SUCCESSFUL\n$URL"
