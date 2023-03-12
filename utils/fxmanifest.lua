fx_version 'adamant'
games { 'gta5' };

server_scripts({
    "srv.lua",
    '@oxmysql/lib/MySQL.lua',
});

client_scripts({
 "cl_core.lua",
 "cl_discord.lua",
 "cl_pmenu.lua",
 "teleport.lua",
  "map.lua",


 });

shared_script({
 '@es_extended/imports.lua',

});
       



  
    
 

  

