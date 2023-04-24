# Set variables for the backup file path and the target PG version
$backupFilePath = "C:\temp\pgbackup\wsl14cumulus.sql"
$targetPGVersion = "15"

# Backup all databases on the local PostgreSQL instance
psql -h localhost -p 5432 -U postgres -c "SELECT datname FROM pg_database WHERE datistemplate = false;" -t | % { psql -h localhost -p 5432 -U postgres -d cumulus -c "ALTER DATABASE cumulus SET synchronous_commit = off;"; C:\"Program Files"\PostgreSQL\14\bin\pg_dump.exe -h localhost -p 5432 -U postgres -F c -b -v -f "$backupFilePath" "cumulus"; psql -h localhost -p 5432 -U postgres -d cumulus -c "ALTER DATABASE cumulus SET synchronous_commit = on;" }





# Deploy all databases to a new PostgreSQL instance with version $targetPGVersion
psql -h localhost -p 5432 -U postgres -c "SELECT datname FROM pg_database WHERE datistemplate = false;" -t | % { createdb.exe -h localhost -p 5432 -U postgres -T template0 -E UTF8 -e "cumulus"; pg_restore.exe -h localhost -p 5432 -U postgres -d "cumulus" -c -F c "$backupFilePath"; }
