---
external help file: PSFirstResponderKit-help.xml
Module Name: PSFirstResponderKit
online version:
schema: 2.0.0
---

# Invoke-Blitz

## SYNOPSIS
Executes dbo.sp_Blitz and returns results.

## SYNTAX

### DatabaseName (Default)
```
Invoke-Blitz
	-ServerInstance <String>
	-DatabaseName <String>
	[-SkipCheckUserDatabaseObjects]
	[-CheckServerInfo]
	[-IgnorePrioritiesBelow <Int32>]
	[-IgnorePrioritiesAbove <Int32>]
	[-SummaryMode]
	[-BringThePain]
	[-UsualDBOwner <String>]
	[-BlockingChecks]
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_Version
```
Invoke-Blitz
	-ServerInstance <String>
	-DatabaseName <String>
	-VersionCheckMode
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_SkipChecks_LogToTable
```
Invoke-Blitz
	-ServerInstance <String>
	-DatabaseName <String>
	[-SkipCheckUserDatabaseObjects]
	[-CheckServerInfo]
	[-SkipChecksServer <String>]
	-SkipChecksDatabase <Object>
	-SkipChecksSchema <Object>
	-SkipChecksTable <Object>
	[-IgnorePrioritiesBelow <Int32>]
	[-IgnorePrioritiesAbove <Int32>]
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	-OutputTableName <String>
	[-SummaryMode]
	[-BringThePain]
	[-UsualDBOwner <String>]
	[-BlockingChecks]
	[-BlitzDebugLevel <Int32>]
	[-ProgressAction <ActionPreference>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_SkipChecks
```
Invoke-Blitz
	-ServerInstance <String>
	-DatabaseName <String>
	[-SkipChecksServer <String>]
	-SkipChecksDatabase <Object>
	-SkipChecksSchema <Object>
	-SkipChecksTable <Object>
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_ProcedureCache
```
Invoke-Blitz
	-ServerInstance <String>
	-DatabaseName <String>
	[-SkipCheckUserDatabaseObjects]
	-CheckProcedureCache
	[-OutputProcedureCache]
	[-CheckProcedureCacheFilter <BlitzProcedureCacheFilter>]
	[-CheckServerInfo]
	[-IgnorePrioritiesBelow <Int32>]
	[-IgnorePrioritiesAbove <Int32>]
	[-SummaryMode]
	[-BringThePain]
	[-UsualDBOwner <String>]
	[-BlockingChecks]
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_LogToTable
```
Invoke-Blitz
	-ServerInstance <String>
	-DatabaseName <String>
	[-SkipCheckUserDatabaseObjects]
	[-CheckServerInfo]
	[-IgnorePrioritiesBelow <Int32>]
	[-IgnorePrioritiesAbove <Int32>]
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	-OutputTableName <String>
	[-SummaryMode]
	[-BringThePain]
	[-UsualDBOwner <String>]
	[-BlockingChecks]
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_Help
```
Invoke-Blitz
	-ServerInstance <String>
	-DatabaseName <String>
	-BlitzHelp
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_Version
```
Invoke-Blitz
	-SqlConnection <SqlConnection>
	-VersionCheckMode
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_SkipChecks_LogToTable
```
Invoke-Blitz
	-SqlConnection <SqlConnection>
	[-SkipCheckUserDatabaseObjects]
	[-CheckServerInfo]
	[-SkipChecksServer <String>]
	-SkipChecksDatabase <Object>
	-SkipChecksSchema <Object>
	-SkipChecksTable <Object>
	[-IgnorePrioritiesBelow <Int32>]
	[-IgnorePrioritiesAbove <Int32>]
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	-OutputTableName <String>
	[-SummaryMode]
	[-BringThePain]
	[-UsualDBOwner <String>]
	[-BlockingChecks]
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_SkipChecks
```
Invoke-Blitz
	-SqlConnection <SqlConnection>
	[-SkipChecksServer <String>]
	-SkipChecksDatabase <Object>
	-SkipChecksSchema <Object>
	-SkipChecksTable <Object>
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_ProcedureCache
```
Invoke-Blitz
	-SqlConnection <SqlConnection>
	[-SkipCheckUserDatabaseObjects]
	-CheckProcedureCache
	[-OutputProcedureCache]
	[-CheckProcedureCacheFilter <BlitzProcedureCacheFilter>]
	[-CheckServerInfo]
	[-IgnorePrioritiesBelow <Int32>]
	[-IgnorePrioritiesAbove <Int32>]
	[-SummaryMode]
	[-BringThePain]
	[-UsualDBOwner <String>]
	[-BlockingChecks]
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_LogToTable
```
Invoke-Blitz
	-SqlConnection <SqlConnection>
	[-SkipCheckUserDatabaseObjects]
	[-CheckServerInfo]
	[-IgnorePrioritiesBelow <Int32>]
	[-IgnorePrioritiesAbove <Int32>]
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	-OutputTableName <String>
	[-SummaryMode]
	[-BringThePain]
	[-UsualDBOwner <String>]
	[-BlockingChecks]
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_Help
```
Invoke-Blitz
	-SqlConnection <SqlConnection>
	-BlitzHelp
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection
```
Invoke-Blitz
	-SqlConnection <SqlConnection>
	[-SkipCheckUserDatabaseObjects]
	[-CheckServerInfo]
	[-IgnorePrioritiesBelow <Int32>]
	[-IgnorePrioritiesAbove <Int32>]
	[-SummaryMode]
	[-BringThePain]
	[-UsualDBOwner <String>]
	[-BlockingChecks]
	[-BlitzDebugLevel <Int32>]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

## DESCRIPTION
Executes dbo.sp_Blitz and returns results.  Result returned will depend on the parameters provided.

## EXAMPLES

### Example 1
```powershell
PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin
```

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database.  This will return the default output of the stored procedure.

### Example 2
```powershell
PS C:\> Invoke-Blitz -SqlConnection $MyConnection
```

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection.  This will return the default output of stored procedure.

### Example 3
```powershell
PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -BlitzHelp
```

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database with the @Help parameter set to 1.  This will return the help information from stored procedure.

### Example 4
```powershell
PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -VersionCheckMode
```

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database with the @VersionCheckMode parameter set to 1.  This will return the version information from stored procedure.

### Example 5
```powershell
PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -SkipChecksDatabase Admin -SkipChecksSchema dbo -SkipChecksTable Blitz_SkipChecks
```

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database skipping steps matched in table Admin.dbo.Blitz_SkipChecks.

### Example 6
```powershell
PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -CheckProcedureCache -OutputProcedureCache
```

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database.  The output will include procedure cache information.

### Example 7
```powershell
PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName Blitz
```

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database and stores the results in dbo.Blitz table.

### Example 8
```powershell
PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -SkipChecksDatabase Admin -SkipChecksSchema dbo -SkipChecksTable Blitz_SkipChecks -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName Blitz
```

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database, skips checks in table dbo.,Blitz_SkipChecks and stores the results in dbo.Blitz table.

### Example 9
```powershell
PS C:\> Invoke-Blitz -SqlConnection $MyConnection -BlitzHelp
```

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection with the @Help parameter set to 1.  This will return the help information from stored procedure.

### Example 10
```powershell
PS C:\> Invoke-Blitz -SqlConnection $MyConnection -VersionCheckMode
```

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection with the @VersionCheckMode parameter set to 1.  This will return the version information from stored procedure.


### Example 11
```powershell
PS C:\> Invoke-Blitz -SqlConnection $MyConnection -SkipChecksDatabase Admin -SkipChecksSchema dbo -SkipChecksTable Blitz_SkipChecks
```

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection skipping steps matched in table Admin.dbo.Blitz_SkipChecks.

### Example 12
```powershell
PS C:\> Invoke-Blitz -SqlConnection $MyConnection -CheckProcedureCache -OutputProcedureCache
```

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection.  The output will include procedure cache information.

### Example 13
```powershell
PS C:\> Invoke-Blitz -SqlConnection $MyConnection -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName Blitz
```

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection and stores the results in dbo.Blitz table.

### Example 14
```powershell
PS C:\> Invoke-Blitz -SqlConnection $MyConnection -SkipChecksDatabase Admin -SkipChecksSchema dbo -SkipChecksTable Blitz_SkipChecks -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName Blitz
```

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection, skips checks in table dbo.,Blitz_SkipChecks and stores the results in dbo.Blitz table.

## PARAMETERS

### -BlitzDebugLevel
Specifies the debug level for stored procedure.  Level 1 returns 1 message per step.  Level 2 outputs dynamic queries.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BlitzHelp
Returns Blitz help information from stored procedure.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_Help, SqlConnection_Help
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BlockingChecks
Perform checks that may cause blocking.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_SkipChecks_LogToTable, DatabaseName_ProcedureCache, DatabaseName_LogToTable, SqlConnection_SkipChecks_LogToTable, SqlConnection_ProcedureCache, SqlConnection_LogToTable, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BringThePain
Specifies to check databases beyond the first 50.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_SkipChecks_LogToTable, DatabaseName_ProcedureCache, DatabaseName_LogToTable, SqlConnection_SkipChecks_LogToTable, SqlConnection_ProcedureCache, SqlConnection_LogToTable, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CheckProcedureCache
Returns the top 20-50 resource-intensive cache plans and analyze them for common performance issues.  It looks for missing indexes, implicit datatype conversions, user-defined functions, and more.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_ProcedureCache, SqlConnection_ProcedureCache
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CheckProcedureCacheFilter
Specifies the analysis to focus on.

```yaml
Type: BlitzProcedureCacheFilter
Parameter Sets: DatabaseName_ProcedureCache, SqlConnection_ProcedureCache
Aliases:
Accepted values: CPU, Duration, ExecCount, Reads

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CheckServerInfo
Show server information like SQL Server version, CPUs, memory, virtualization, etc.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_SkipChecks_LogToTable, DatabaseName_ProcedureCache, DatabaseName_LogToTable, SqlConnection_SkipChecks_LogToTable, SqlConnection_ProcedureCache, SqlConnection_LogToTable, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseName
Specifies database where sp_Blitz is located.

```yaml
Type: String
Parameter Sets: DatabaseName, DatabaseName_Version, DatabaseName_SkipChecks_LogToTable, DatabaseName_SkipChecks, DatabaseName_ProcedureCache, DatabaseName_LogToTable, DatabaseName_Help
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnorePrioritiesAbove
Ignore priorities above specified value.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_SkipChecks_LogToTable, DatabaseName_ProcedureCache, DatabaseName_LogToTable, SqlConnection_SkipChecks_LogToTable, SqlConnection_ProcedureCache, SqlConnection_LogToTable, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnorePrioritiesBelow
Ignore priorities below specified value.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_SkipChecks_LogToTable, DatabaseName_ProcedureCache, DatabaseName_LogToTable, SqlConnection_SkipChecks_LogToTable, SqlConnection_ProcedureCache, SqlConnection_LogToTable, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputDatabaseName
Specifies the database that contains the tables to store Blitz information.

```yaml
Type: String
Parameter Sets: DatabaseName_SkipChecks_LogToTable, DatabaseName_LogToTable, SqlConnection_SkipChecks_LogToTable, SqlConnection_LogToTable
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputProcedureCache
Returns the top 20-50 resource-intensive plans even if they did not trigger an alarm.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_ProcedureCache, SqlConnection_ProcedureCache
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputSchemaName
Specifies the schema name where tables are to store Blitz information.

```yaml
Type: String
Parameter Sets: DatabaseName_SkipChecks_LogToTable, DatabaseName_LogToTable, SqlConnection_SkipChecks_LogToTable, SqlConnection_LogToTable
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableName
Specifies the table name to store Blitz information.

```yaml
Type: String
Parameter Sets: DatabaseName_SkipChecks_LogToTable, DatabaseName_LogToTable, SqlConnection_SkipChecks_LogToTable, SqlConnection_LogToTable
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerInstance
Specifies the SQL instance to execute sp_BlitzFirst stored procedure.

```yaml
Type: String
Parameter Sets: DatabaseName, DatabaseName_Version, DatabaseName_SkipChecks_LogToTable, DatabaseName_SkipChecks, DatabaseName_ProcedureCache, DatabaseName_LogToTable, DatabaseName_Help
Aliases: SqlServer

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipChecksDatabase
Specifies the database name that contains the table that contains checks to skip.

```yaml
Type: Object
Parameter Sets: DatabaseName_SkipChecks_LogToTable, DatabaseName_SkipChecks, SqlConnection_SkipChecks_LogToTable, SqlConnection_SkipChecks
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipChecksSchema
Specifies the schema name that contains the table that contains checks to skip.

```yaml
Type: Object
Parameter Sets: DatabaseName_SkipChecks_LogToTable, DatabaseName_SkipChecks, SqlConnection_SkipChecks_LogToTable, SqlConnection_SkipChecks
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipChecksServer
Specifies the server name that contains the database and table that contains checks to skip.

```yaml
Type: String
Parameter Sets: DatabaseName_SkipChecks_LogToTable, DatabaseName_SkipChecks, SqlConnection_SkipChecks_LogToTable, SqlConnection_SkipChecks
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipChecksTable
Specifies the table name that contains that contains checks to skip.

```yaml
Type: Object
Parameter Sets: DatabaseName_SkipChecks_LogToTable, DatabaseName_SkipChecks, SqlConnection_SkipChecks_LogToTable, SqlConnection_SkipChecks
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipCheckUserDatabaseObjects
Skips the review user databases for triggers, heaps, untrusted foreign keys, etc. Takes more time for more databases and objects.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_SkipChecks_LogToTable, DatabaseName_ProcedureCache, DatabaseName_LogToTable, SqlConnection_SkipChecks_LogToTable, SqlConnection_ProcedureCache, SqlConnection_LogToTable, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SqlConnection
Specifies the SqlConnection object.

```yaml
Type: SqlConnection
Parameter Sets: SqlConnection_Version, SqlConnection_SkipChecks_LogToTable, SqlConnection_SkipChecks, SqlConnection_ProcedureCache, SqlConnection_LogToTable, SqlConnection_Help, SqlConnection
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SummaryMode
Return one row per distinct FindingsGroup and Finding and Priority.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_SkipChecks_LogToTable, DatabaseName_ProcedureCache, DatabaseName_LogToTable, SqlConnection_SkipChecks_LogToTable, SqlConnection_ProcedureCache, SqlConnection_LogToTable, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UsualDBOwner
Specifies the user principal to check for database owner.

```yaml
Type: String
Parameter Sets: DatabaseName, DatabaseName_SkipChecks_LogToTable, DatabaseName_ProcedureCache, DatabaseName_LogToTable, SqlConnection_SkipChecks_LogToTable, SqlConnection_ProcedureCache, SqlConnection_LogToTable, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VersionCheckMode
Returns only version information of BlitzFirst stored procedure.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_Version, SqlConnection_Version
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### FirstResponderKit.Blitz

### FirstResponderKit.BlitzAdvanced

### FirstResponderKit.BlitzVersion

### System.Void

## NOTES

## RELATED LINKS
