Select BulkColumn
 From openrowset (bulk 'D:\Examen\dataMay-10-2021.json', single_clob) as j;

 Select value
 From openrowset (bulk 'D:\Examen\dataMay-10-2021.json', single_clob) as j
 Cross apply openJson(BulkColumn)

 Select ContactType.ContactTypeID, ContactType.[Name], ContactType.ModifiedDate
 From openrowset (bulk 'D:\Examen\dataMay-10-2021.json', single_clob) as j
 Cross apply openJson(BulkColumn)
 With(ContactTypeID int, [Name] nvarchar(50), ModifiedDate date) as ContactType


 Select ContactType.ContactTypeID, ContactType.[Name], ContactType.ModifiedDate into ContactType
 From openrowset (bulk 'D:\Examen\dataMay-10-2021.json', single_clob) as j
 Cross apply openJson(BulkColumn)
 With(ContactTypeID int, [Name] nvarchar(50), ModifiedDate date) as ContactType