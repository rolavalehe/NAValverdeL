Declare @BackupName varchar (100)
Set @BackupName = N'AdventureWorks – Full Backup ' + format (getdate(),'yyyyMMdd_hhmmss');

Backup database AdventureWorks
To AdventureWorksData
With noformat, noinit, name = @BackupName,
Skip, norewind, nounload,  stats = 10
Go

Restore headeronly from AdventureWorksData
Go