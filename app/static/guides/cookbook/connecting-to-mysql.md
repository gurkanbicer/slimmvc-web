All of the operations related to MySQL is performs with illuminate/database package. We did create a core file for multiple database connections. In addition, we added a facade for that core file.
 
Keeping operations related to MySQL on the model files is important for project entirety.
 
##### Editing database configuration
 
The MySQL database configurations are located in the app/config/database.php file. You can edit the default database configuration on this file or you can add multiple database configuration into this file.
 
##### Connecting to MySQL
 
Firstly, you should add the following code to the top of the model file.
 
```php
use SlimFacades\Database;
```
 
After then, you can set the database that which will connect like the following. If you will use the database more than 1 function, you can define on the __construct() function.
 
```php
Database::connectTo('default');
```
 
##### Getting data from the MySQL Database
 
The following example assumes that there is a table named users and select the data that id value is equal to 5.
 
```php
$results = Database::table('users')->where('id', '=', 5)->first(); 
```

##### Connecting to multiple MySQL Databases

You can connect multiple database in your project. Firstly, you should define the configurations on app/config/database.php file. Then, you can choose which database will be connected. See the example in the below;

```
Database::connectTo('default');
$results = Database::table('users')->where('id', '=', 5)->first(); 

Database::connectTo('secondary', 'secondaryDB');
$results = Database::connection('secondaryDB')->table('users')->where('id', '=', 5)->first(); 
``` 

The first parameter is the configuration key, the secondary parameter is the connection name. If it wasn't defined, you can't connect to another database. Also, you should use connection() function before the table() function.


##### quickConnect() function

If you will write the database configuration on the controller/model or you will get it from the form variables, you can use quickConnect() function. See the example in the below.

```php
Database::quickConnect([
    'driver' => 'mysql',
    'host' => 'MYSQLHOSTNAME',
    'database' => 'MYSQLDATABASE',
    'username' => 'MYSQLUSERNAME',
    'password' => 'MYSQLPASSWORD',
    'charset' => 'utf8',
    'collation' => 'utf8_unicode_ci',
    'prefix' => '',
], 'anotherDB');

$results = Database::connection('anotherDB')->table('users')->get();
```