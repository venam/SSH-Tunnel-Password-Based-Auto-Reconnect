#SSH Tunnel Password Based Auto Reconnect

Solution to auto-reconnect multiple ssh tunnels (socks) when using password based authentication.


Tools:

* `nb_connections.sh`  List nb of current socks open
* `reconnect_ssh.sh` the reconnect script
```
usage: ./reconnect_ssh.sh "password" "port" "user" "ip"

```
* `start_good_ones.sh` start a bunch of proxies
```
usage: ./start_good_ones.sh serverslist limitofconnections startport

serverslist is in the format user:password:ip
```
* `stop_all.sh` stop all reconnections and kill all ssh


