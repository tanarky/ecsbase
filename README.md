# ecsbase

```
/Users/satoshi/git/ecsbase% docker run --link ecsbase_db_1:db --net ecsbase_default --rm --volume $(pwd)/mysql:/etc/mysql/conf.d -it mysql bash
root@7715a1859ce8:/# mysql -h db -p
Enter password:

mysql> show variables like '%char%';
+--------------------------+----------------------------+
| Variable_name            | Value                      |
+--------------------------+----------------------------+
| character_set_client     | utf8                       |
| character_set_connection | utf8                       |
| character_set_database   | utf8                       |
| character_set_filesystem | binary                     |
| character_set_results    | utf8                       |
| character_set_server     | utf8                       |
| character_set_system     | utf8                       |
| character_sets_dir       | /usr/share/mysql/charsets/ |
+--------------------------+----------------------------+
8 rows in set (0.01 sec)
```

