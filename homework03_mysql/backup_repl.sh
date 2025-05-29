#!/bin/bash

# Description: Script performs per-table backups of all non-system MySQL databases from
# a GTID-based replica using mysqldump.


#Backup path
DATE=$(date +%F)
TIME=$(date +$H-%M-%S)
BACKUP_PATH="/home/amoshkov/backups/mysql/${DATE}_${TIME}"

#Utils path
MYSQLDUMP=$(which mysqldump)
MYSQL=$(which mysql)

#System DBs for exclude
EXCLUDED_DBS=("information_schema" "performance_schema" "mysql" "sys")

#Create dir for backup
echo -e " \nCreating folder for backup..\n "
mkdir -p "$BACKUP_PATH"

#Getting the list of databases (exclude system DBs)
dbs=$($MYSQL -N -e "SHOW DATABASES;")

#Backup loop
echo -e " \nBackup process has started..\n "

for db in $dbs; do
        is_excluded=false

        for excluded_db in "${EXCLUDED_DBS[@]}"; do
                if [ "$db" == "$excluded_db" ]; then
                        is_excluded=true
                        break
                fi
        done

        if [ "$is_excluded" = false ]; then
                echo "Backup for $db database"
                DB_PATH="${BACKUP_PATH}/${db}"
                mkdir -p "$DB_PATH"

                tables=$($MYSQL -N -e "SHOW TABLES;" "$db")

                if [ -n "$tables" ]; then
                        for table in $tables; do
                                echo " Table: $table"
                                $MYSQLDUMP --add-drop-table --add-locks --create-options --disable-keys --extended-insert--single-transaction \
                                 --quick --set-charset --events --routines --triggers "$db" "$table" > "${DB_PATH}/${tables}.sql"
                        done
                else
                        echo " Database $db is empty. No tables for backup"
                fi
        fi
done


echo "Backup complete: $BACKUP_PATH"
