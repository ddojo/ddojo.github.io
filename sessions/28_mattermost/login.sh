# login (create .token file)
echo Username:
read un
echo Password:
read -s pw
curl -i -d '{"login_id":"'$un'","password":"'$pw'"}' https://cctb-intern.biologie.uni-wuerzburg.de/api/v4/users/login | grep token | cut -f2 -d " " >.token
unset pw un
