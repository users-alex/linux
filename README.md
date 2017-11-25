# google-cloud-shell
--------
## Highly opinionated disposable home for [20Min](./README-cloudshell.md) ephemeral google cloud [shell](https://console.cloud.google.com/cloudshell)

### purpose :
- This is a drop in home account for UBUNTU/DEBIAN nodejs and golang
  development.  A web VNC session is exposed through ngrok.

### usage :

- Generate a web access password
```
export VNC_PASSWORD=`date +%s | sha256sum | base64 | head -c 32`
echo "# web GUI password" >> ~/.secrets
echo "export VNC_PASSWORD=$VNC_PASSWORD" >> ~/.secrets
```
- Start the engines
```
git clone https://github.com/users-alex/google-cloud-shell.git /tmp
export HOME /tmp/google-cloud-shell
cd $HOME
source $HOME/.profile
$HOME/bin/setupServer
$HOME/bin/setupAccount

# to use the GUI console
$HOME/bin/startWebMedium
# to use vnc
$HOME/bin/ngrok tcp 5901
# to use the browser
$HOME/bin/ngrok http 6901

# develop in nodejs
nvm use default
npm i -g yarn
npm i -g firebase-tools

# develop in golang
gvm use latest

```



##### version : 0.0.5
