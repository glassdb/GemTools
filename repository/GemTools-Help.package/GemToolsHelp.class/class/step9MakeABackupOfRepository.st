installation chapter
step9MakeABackupOfRepository
	^HelpTopic 
		title: 'Step 10 - Backup/Restore repository'
		contents:	
'It is always a good idea to make a backup of your repository before doing an update. You never know what might happen during the upgrade process so it is prudent to make a backup.

To make a backup click on the ''Admin...'' button and select the ''Repository>>Backup'' menu item. You will be prompted for a backup file name. I usually use the version name as the name of my backup (i.e., ''0.231.dbf'').

You can control where the backup directory is located by setting the #backupDirectory: in your session description. By default, the backups are stored in $GEMSTONE/seaside/data/backups.

If you do need to restore from a backup click on the ''Admin...'' button and select the ''Repository>>Restore w/o tranlogs'' menu item. You will be given a list of backup file names to choose from.
'