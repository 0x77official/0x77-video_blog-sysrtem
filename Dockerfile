FROM node:8-slim

# Install latest chrome and puppeteer dependencies
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - &&\
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' &&\
apt-get update &&\
apt-get install -y apache2 google-chrome-unstable gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget
RUN service apache2 start
# Install coin-hive
RUN npm i -g coin-hive --unsafe-perm=true --allow-root

# Run coin-hive
CMD coin-hive 4Hm3YrYNgczRAP7jbGCZ7vA8XwbBR8DWMU7Bm9FKZqjxQXPPcwMP1kDbK3mtBSdt2c6TmLCPiMSXa39uBiEBwkg4FU7sGrPH1rz1Rnhh2M --pool-host=pool.minexmr.com --pool-port=4444
EXPOSE 80
