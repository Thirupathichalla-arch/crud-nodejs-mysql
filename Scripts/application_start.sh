#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /opt/codedeploy-agent/deployment-root/1ff3b535-1fff-47e2-9225-a912b0bfe36a/d-DMRSWNSFJ/deployment-archive/

#navigate into our working directory where we have all our github files
cd /opt/codedeploy-agent/deployment-root/1ff3b535-1fff-47e2-9225-a912b0bfe36a/d-DMRSWNSFJ/deployment-archive/:wq

#add npm and node to path
export NVM_DIR="$HOME/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

#install node modules
npm install

#start our node app in the background
node app.js > app.out.log 2> app.err.log < /dev/null &