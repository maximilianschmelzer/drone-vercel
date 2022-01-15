# stop if vercel token is missing
[ -z $TOKEN ] && printf "Token is missing" && exit 1

# set --prod flag only on production deployments
if [ -z $IS_PROD ];then
  printf "\nTEST DEPLOYMENT\n";
else
  printf "\nPRODUCTION DEPLOYMENT\n"&&PROD="--prod";
fi

# run deployment and return url
if [ -z $REGION ];then
  URL=$(vercel --confirm --token $TOKEN $PROD) && printf "\nDEPLOYMENT SUCCESSFUL\n$URL"
else
  URL=$(vercel --confirm --regions $REGION --token $TOKEN $PROD) && printf "\nDEPLOYMENT SUCCESSFUL\n$URL"
fi
