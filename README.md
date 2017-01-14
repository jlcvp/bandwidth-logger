# bandwidth-logger
Backend workers (bash + perl + mysql)


##Requirements
+ Mysql  
+ tcpdump  
+ Perl  

##Usage
###Setting up the Mysql
+ Create a new database (e.g. `CREATE DATABASE networklog`)  
+ Execute the script `schema.sql`  

###Setting up the files
Inside file **startLogging.sh** set the following attributes according to your system:

`INTERFACE=eth0          ` // Put your interface name here    
`TDFS=P                  ` //  tcpdump traffic direction filter switch (some distributions are P others are Q)  
`export DBNAME=networklog` // databse name  
`export DBUSER=mysql `   // database user    
`export DBPASS=0000 `    //  database password  

### Running
`sudo ./startLogging.sh`
