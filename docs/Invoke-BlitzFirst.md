---
external help file: PSFirstResponderKit-help.xml
Module Name: PSFirstResponderKit
online version:
schema: 2.0.0
---

# Invoke-BlitzFirst

## SYNOPSIS
Executes dbo.sp_BlitzFirst and returns results.

## SYNTAX

### DatabaseName (Default)
```
Invoke-BlitzFirst
	-ServerInstance <String>
	-DatabaseName <String>
	[-SkipCheckServerInfo]
	[-Seconds <Int32>]
	[-FileLatencyThresholdMS <Int32>]
	[-MemoryGrantThresholdPct <Decimal>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_Version
```
Invoke-BlitzFirst
	-ServerInstance <String>
	-DatabaseName <String>
	-VersionCheckMode
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_Top10
```
Invoke-BlitzFirst
	-ServerInstance <String>
	-DatabaseName <String>
	-BlitzFirstTop10
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_SinceStartup
```
Invoke-BlitzFirst
	-ServerInstance <String>
	-DatabaseName <String>
	-SinceStartup
	[-CheckProcedureCache]
	[-BlitzCacheAnalysis]
	[-FilterPlansByDatabase <String[]>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_Schema
```
Invoke-BlitzFirst
	-ServerInstance <String>
	-DatabaseName <String>
	-BlitzFirstSchema
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_LogToTable
```
Invoke-BlitzFirst
	-ServerInstance <String>
	-DatabaseName <String>
	[-SkipCheckServerInfo]
	[-Seconds <Int32>]
	[-FileLatencyThresholdMS <Int32>]
	[-MemoryGrantThresholdPct <Decimal>]
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	[-OutputTableName <String>]
	[-OutputTableNameFileStats <String>]
	[-OutputTableNamePerfmonStats <String>]
	[-OutputTableNameWaitStats <String>]
	[-OutputTableNameBlitzCache <String>]
	[-OutputTableNameBlitzWho <String>]
	[-OutputTableRetentionDays <Int32>]
	[-CheckProcedureCache]
	[-BlitzCacheAnalysis]
	[-FilterPlansByDatabase <String[]>]
	[-ShowSleepingSPIDs]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_LogMessage
```
Invoke-BlitzFirst
	-ServerInstance <String>
	-DatabaseName <String>
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	-OutputTableName <String>
	-LogMessage <String>
	[-LogMessageCheckID <Int32>]
	[-LogMessagePriority <Int32>]
	[-LogMessageFindingsGroup <String>]
	[-LogMessageFinding <String>]
	-LogMessageURL <String>
	[-LogMessageCheckDate <DateTimeOffset>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_Help
```
Invoke-BlitzFirst
	-ServerInstance <String>
	-DatabaseName <String>
	-BlitzHelp
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_ExpertMode
```
Invoke-BlitzFirst
	-ServerInstance <String>
	-DatabaseName <String>
	[-SkipCheckServerInfo]
	[-Seconds <Int32>]
	[-FileLatencyThresholdMS <Int32>]
	[-MemoryGrantThresholdPct <Decimal>]
	-ExpertMode
	[-OutputResultSets <BlitzFirstOutputResultSets[]>]
	[-CheckProcedureCache]
	[-BlitzCacheAnalysis]
	[-FilterPlansByDatabase <String[]>]
	[-ShowSleepingSPIDs]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### DatabaseName_AsOf
```
Invoke-BlitzFirst
	-ServerInstance <String>
	-DatabaseName <String>
	-AsOf <DateTimeOffset>
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	-OutputTableName <String>
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_Version
```
Invoke-BlitzFirst
	-SqlConnection <SqlConnection>
	-VersionCheckMode
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_Top10
```
Invoke-BlitzFirst
	-SqlConnection <SqlConnection>
	-BlitzFirstTop10
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_SinceStartup
```
Invoke-BlitzFirst
	-SqlConnection <SqlConnection>
	-SinceStartup
	[-CheckProcedureCache]
	[-BlitzCacheAnalysis]
	[-FilterPlansByDatabase <String[]>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_Schema
```
Invoke-BlitzFirst
	-SqlConnection <SqlConnection>
	-BlitzFirstSchema
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_LogToTable
```
Invoke-BlitzFirst
	-SqlConnection <SqlConnection>
	[-SkipCheckServerInfo]
	[-Seconds <Int32>]
	[-FileLatencyThresholdMS <Int32>]
	[-MemoryGrantThresholdPct <Decimal>]
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	[-OutputTableName <String>]
	[-OutputTableNameFileStats <String>]
	[-OutputTableNamePerfmonStats <String>]
	[-OutputTableNameWaitStats <String>]
	[-OutputTableNameBlitzCache <String>]
	[-OutputTableNameBlitzWho <String>]
	[-OutputTableRetentionDays <Int32>]
	[-CheckProcedureCache]
	[-BlitzCacheAnalysis]
	[-FilterPlansByDatabase <String[]>]
	[-ShowSleepingSPIDs]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_LogMessage
```
Invoke-BlitzFirst
	-SqlConnection <SqlConnection>
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	-OutputTableName <String>
	-LogMessage <String>
	[-LogMessageCheckID <Int32>]
	[-LogMessagePriority <Int32>]
	[-LogMessageFindingsGroup <String>]
	[-LogMessageFinding <String>]
	-LogMessageURL <String>
	[-LogMessageCheckDate <DateTimeOffset>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_Help
```
Invoke-BlitzFirst
	-SqlConnection <SqlConnection>
	-BlitzHelp
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_ExpertMode
```
Invoke-BlitzFirst
	-SqlConnection <SqlConnection>
	[-SkipCheckServerInfo]
	[-Seconds <Int32>]
	[-FileLatencyThresholdMS <Int32>]
	[-MemoryGrantThresholdPct <Decimal>]
	-ExpertMode
	[-OutputResultSets <BlitzFirstOutputResultSets[]>]
	[-CheckProcedureCache]
	[-BlitzCacheAnalysis]
	[-FilterPlansByDatabase <String[]>]
	[-ShowSleepingSPIDs]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection_AsOf
```
Invoke-BlitzFirst
	-SqlConnection <SqlConnection>
	-AsOf <DateTimeOffset>
	-OutputDatabaseName <String>
	-OutputSchemaName <String>
	-OutputTableName <String>
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

### SqlConnection
```
Invoke-BlitzFirst
	-SqlConnection <SqlConnection>
	[-SkipCheckServerInfo]
	[-Seconds <Int32>]
	[-FileLatencyThresholdMS <Int32>]
	[-MemoryGrantThresholdPct <Decimal>]
	[-BlitzDebug]
	[-WhatIf]
	[-Confirm]
	[<CommonParameters>]
```

## DESCRIPTION
Executes dbo.sp_BlitzFirst and returns results.  Result returned will depend on the parameters provided.

## EXAMPLES

### Example 1
```powershell
PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin
```

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database.  This will return the default output of the stored procedure.

### Example 2
```powershell
PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection
```

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection.  This will return the default output of stored procedure.

### Example 3
```powershell
PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -BlitzHelp
```

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @Help parameter set to 1.  This will return the help information from stored procedure.

### Example 4
```powershell
PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -VersionCheckMode
```

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @VersionCheckMode parameter set to 1.  This will return the version information from stored procedure.

### Example 5
```powershell
PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -BlitzFirstTop10
```

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @OutputType parameter set to Top10.  This will return the top 10 wait information.

### Example 6
```powershell
PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -BlitzFirstSchema
```

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @OutputType parameter set to Schema.  This will return the table schema information.

### Example 7
```powershell
PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -ExpertMode
```

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @ExpertMode parameter set to 1.  This will return extended Blitz first information, including session information, wait stats, file stats, and perfmon stats.

### Example 8
```powershell
PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -SinceStartup
```

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @SinceStartup parameter set to 1.  This will return wait stats, file stats, and perfmon stats.

### Example 9
```powershell
PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -OutputTableNameFileStats BlitzFirst_FileStats -OutputTableNamePerfmonStats BlitzFirst_PerfmonStats -OutputTableNameWaitStats BlitzFirst_WaitStats -OutputTableNameBlitzCache BlitzCache -OutputTableNameBlitzWho BlitzWho
```

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the various output parameters specifying the database and table names to store results from stored procedure.

### Example 10
```powershell
PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -AsOf '2024-07-08 16:57:02.6322342 -04:00' -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -OutputTableNameFileStats BlitzFirst_FileStats -OutputTableNamePerfmonStats BlitzFirst_PerfmonStats -OutputTableNameWaitStats BlitzFirst_WaitStats -OutputTableNameBlitzCache BlitzCache -OutputTableNameBlitzWho BlitzWho
```

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database to return the information previously stored from around the datetimeoffset provided.

### Example 11
```powershell
PS C:\> Invoke-BlitzFirst -ServerInstance . -DatabaseName Admin -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -LogMessageCheckID 69 -LogMessagePriority 1 -LogMessageFindingsGroup 'Log Message' -LogMessageFinding 'Message' -LogMessageURL http://www.domain.com -LogMessage 'Example Log Message Detail.' -LogMessageCheckDate $(Get-Date)
```

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database to store log message into BlitzFirst table.

### Example 12
```powershell
PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -BlitzHelp
```

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @Help parameter set to 1.  This will return the help information from stored procedure.

### Example 13
```powershell
PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -VersionCheckMode
```

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @VersionCheckMode parameter set to 1.  This will return the version information from stored procedure.


### Example 14
```powershell
PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -BlitzFirstTop10
```

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @OutputType parameter set to Top10.  This will return the top 10 wait information.

### Example 15
```powershell
PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -BlitzFirstSchema
```

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @OutputType parameter set to Schema.  This will return the table schema information.

### Example 16
```powershell
PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -ExpertMode
```

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @ExpertMode parameter set to 1.  This will return extended Blitz first information, including session information, wait stats, file stats, and perfmon stats.

### Example 17
```powershell
PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -SinceStartup
```

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @ExpertMode parameter set to 1.  This will return wait stats, file stats, and perfmon stats.

### Example 18
```powershell
PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -OutputTableNameFileStats BlitzFirst_FileStats -OutputTableNamePerfmonStats BlitzFirst_PerfmonStats -OutputTableNameWaitStats BlitzFirst_WaitStats -OutputTableNameBlitzCache BlitzCache -OutputTableNameBlitzWho BlitzWho
```

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the various output parameters specifying the database and table names to store results from stored procedure.  Tables with appropriate schema must exist in the provided database.

### Example 19
```powershell
PS C:\> Invoke-BlitzFirst SqlConnection $MyConnection -AsOf '2024-07-08 16:57:02.6322342 -04:00' -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -OutputTableNameFileStats BlitzFirst_FileStats -OutputTableNamePerfmonStats BlitzFirst_PerfmonStats -OutputTableNameWaitStats BlitzFirst_WaitStats -OutputTableNameBlitzCache BlitzCache -OutputTableNameBlitzWho BlitzWho
```

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection to return the information previously stored from around the datetimeoffset provided.

### Example 20
```powershell
PS C:\> Invoke-BlitzFirst -ServerInstance . -DatabaseName Admin -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -LogMessageCheckID 69 -LogMessagePriority 1 -LogMessageFindingsGroup 'Log Message' -LogMessageFinding 'Message' -LogMessageURL http://www.domain.com -LogMessage 'Example Log Message Detail.' -LogMessageCheckDate $(Get-Date)
```

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database to store log message into BlitzFirst table.

## PARAMETERS

### -AsOf
Return the previously stored BlitzFirst results from specified datetimeoffset.

```yaml
Type: DateTimeOffset
Parameter Sets: DatabaseName_AsOf, SqlConnection_AsOf
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BlitzCacheAnalysis
Specifies to perform plan cache analysis.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_SinceStartup, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_SinceStartup, SqlConnection_LogToTable, SqlConnection_ExpertMode
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BlitzDebug
Returns Blitz debug information from stored procedure.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_Top10, DatabaseName_SinceStartup, DatabaseName_LogToTable, DatabaseName_LogMessage, DatabaseName_ExpertMode, DatabaseName_AsOf, SqlConnection_Top10, SqlConnection_SinceStartup, SqlConnection_LogToTable, SqlConnection_LogMessage, SqlConnection_ExpertMode, SqlConnection_AsOf, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BlitzFirstSchema
Returns BlitzFirst schema information from stored procedure.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_Schema, SqlConnection_Schema
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BlitzFirstTop10
Specifies BlitzFirst to return the top ten wait types.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_Top10, SqlConnection_Top10
Aliases:

Required: True
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

### -CheckProcedureCache
Include plan cache analysis result set.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_SinceStartup, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_SinceStartup, SqlConnection_LogToTable, SqlConnection_ExpertMode
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseName
Specifies database where sp_BlitzFirst is located.

```yaml
Type: String
Parameter Sets: DatabaseName, DatabaseName_Version, DatabaseName_Top10, DatabaseName_SinceStartup, DatabaseName_Schema, DatabaseName_LogToTable, DatabaseName_LogMessage, DatabaseName_Help, DatabaseName_ExpertMode, DatabaseName_AsOf
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpertMode
Specifies to return additional result sets, which includes sp_BlitzWho, wait stats, Perfmon counters, and file stats.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_ExpertMode, SqlConnection_ExpertMode
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileLatencyThresholdMS
Specifies the file latency threshold for reads and writes.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilterPlansByDatabase
Filter plans by database(s).  Specify "USER" to limit plans to user databases.

```yaml
Type: String[]
Parameter Sets: DatabaseName_SinceStartup, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_SinceStartup, SqlConnection_LogToTable, SqlConnection_ExpertMode
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogMessage
Specifies log message details.

```yaml
Type: String
Parameter Sets: DatabaseName_LogMessage, SqlConnection_LogMessage
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogMessageCheckDate
Specifies datetime for log message entry.

```yaml
Type: DateTimeOffset
Parameter Sets: DatabaseName_LogMessage, SqlConnection_LogMessage
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogMessageCheckID
Specifies check ID.

```yaml
Type: Int32
Parameter Sets: DatabaseName_LogMessage, SqlConnection_LogMessage
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogMessageFinding
Specifies message finding.

```yaml
Type: String
Parameter Sets: DatabaseName_LogMessage, SqlConnection_LogMessage
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogMessageFindingsGroup
Specifies message group.

```yaml
Type: String
Parameter Sets: DatabaseName_LogMessage, SqlConnection_LogMessage
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogMessagePriority
Specifies log message priority.

```yaml
Type: Int32
Parameter Sets: DatabaseName_LogMessage, SqlConnection_LogMessage
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogMessageURL
Specifies URL to reference log message.

```yaml
Type: String
Parameter Sets: DatabaseName_LogMessage, SqlConnection_LogMessage
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MemoryGrantThresholdPct
Specifies the memory grant threshold percentage of maximum workspace.

```yaml
Type: Decimal
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputDatabaseName
Specifies the database that contains the tables to store BlitzFirst information.

```yaml
Type: String
Parameter Sets: DatabaseName_LogToTable, DatabaseName_LogMessage, DatabaseName_AsOf, SqlConnection_LogToTable, SqlConnection_LogMessage, SqlConnection_AsOf
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputResultSets
Specifies the result sets to return from sp_BlitzFirst.

```yaml
Type: BlitzFirstOutputResultSets[]
Parameter Sets: DatabaseName_ExpertMode, SqlConnection_ExpertMode
Aliases:
Accepted values: BlitzWho_Start, Findings, FileStats, PerfmonStats, WaitStats, BlitzCache, BlitzWho_End

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputSchemaName
Specifies the schema name where tables are to store BlitzFirst information.

```yaml
Type: String
Parameter Sets: DatabaseName_LogToTable, DatabaseName_LogMessage, DatabaseName_AsOf, SqlConnection_LogToTable, SqlConnection_LogMessage, SqlConnection_AsOf
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableName
Specifies the table name to store BlitzFirst information.

```yaml
Type: String
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: DatabaseName_LogMessage, DatabaseName_AsOf, SqlConnection_LogMessage, SqlConnection_AsOf
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableNameBlitzCache
Specifies the table name to store BlitzCache results.

```yaml
Type: String
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableNameBlitzWho
Specifies the table name to store BlitzWho results.

```yaml
Type: String
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableNameFileStats
Specifies the table name to store file results.

```yaml
Type: String
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableNamePerfmonStats
Specifies the table name to store Perfmon results.

```yaml
Type: String
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableNameWaitStats
Specifies the table name to store wait stats results.

```yaml
Type: String
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutputTableRetentionDays
Specifies the number of days to retain stored information in database tables.

```yaml
Type: Int32
Parameter Sets: DatabaseName_LogToTable, SqlConnection_LogToTable
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Seconds
Specifies the number of seconds to sample.

```yaml
Type: Int32
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerInstance
Specifies the SQL instance to execute sp_BlitzFirst stored procedure.

```yaml
Type: String
Parameter Sets: DatabaseName, DatabaseName_Version, DatabaseName_Top10, DatabaseName_SinceStartup, DatabaseName_Schema, DatabaseName_LogToTable, DatabaseName_LogMessage, DatabaseName_Help, DatabaseName_ExpertMode, DatabaseName_AsOf
Aliases: SqlServer

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShowSleepingSPIDs
Shows long-running sleeping sessions.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SinceStartup
Specifies to return additional result sets, which includes wait stats, Perfmon counters, and file stats.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName_SinceStartup, SqlConnection_SinceStartup
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipCheckServerInfo
Skips providing server information.

```yaml
Type: SwitchParameter
Parameter Sets: DatabaseName, DatabaseName_LogToTable, DatabaseName_ExpertMode, SqlConnection_LogToTable, SqlConnection_ExpertMode, SqlConnection
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
Parameter Sets: SqlConnection_Version, SqlConnection_Top10, SqlConnection_SinceStartup, SqlConnection_Schema, SqlConnection_LogToTable, SqlConnection_LogMessage, SqlConnection_Help, SqlConnection_ExpertMode, SqlConnection_AsOf, SqlConnection
Aliases:

Required: True
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

### FirstResponderKit.BlitzFirst

### FirstResponderKit.BlitzFirstExpert

### FirstResponderKit.BlitzFirstSinceStartup

### FirstResponderKit.BlitzFirstSchema

### FirstResponderKit.BlitzFirstTop10

### FirstResponderKit.BlitzVersion

### System.Void

## NOTES

## RELATED LINKS
