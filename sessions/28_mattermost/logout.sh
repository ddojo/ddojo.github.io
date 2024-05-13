# logout (expire and remove token)
curl -i -X POST -H "Authorization: Bearer $(cat .token)" https://cctb-intern.biologie.uni-wuerzburg.de/api/v4/users/logout
rm .token
