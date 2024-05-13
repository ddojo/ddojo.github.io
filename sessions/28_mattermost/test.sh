# test api request
curl -i -H "Authorization: Bearer $(cat .token)" https://cctb-intern.biologie.uni-wuerzburg.de/api/v4/users/me
