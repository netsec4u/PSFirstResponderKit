---
document type: cmdlet
external help file: PSFirstResponderKit-help.xml
HelpUri: ''
Locale: en-US
Module Name: PSFirstResponderKit
ms.date: 07/31/2025
PlatyPS schema version: 2024-05-01
title: Invoke-BlitzFirst
---

# Invoke-BlitzFirst

## SYNOPSIS

Executes dbo.sp_BlitzFirst and returns results.

## SYNTAX

### DatabaseName (Default)

```
Invoke-BlitzFirst
  -ServerInstance <string>
  -DatabaseName <string>
  [-SkipCheckServerInfo]
  [-Seconds <int>]
  [-FileLatencyThresholdMS <int>]
  [-MemoryGrantThresholdPct <decimal>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_Version

```
Invoke-BlitzFirst
  -ServerInstance <string>
  -DatabaseName <string>
  -VersionCheckMode
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_Top10

```
Invoke-BlitzFirst
  -ServerInstance <string>
  -DatabaseName <string>
  -BlitzFirstTop10
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_SinceStartup

```
Invoke-BlitzFirst
  -ServerInstance <string>
  -DatabaseName <string>
  -SinceStartup
  [-CheckProcedureCache]
  [-BlitzCacheAnalysis]
  [-FilterPlansByDatabase <string[]>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_Schema

```
Invoke-BlitzFirst
  -ServerInstance <string>
  -DatabaseName <string>
  -BlitzFirstSchema
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_LogToTable

```
Invoke-BlitzFirst
  -ServerInstance <string>
  -DatabaseName <string>
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  [-SkipCheckServerInfo]
  [-Seconds <int>]
  [-FileLatencyThresholdMS <int>]
  [-MemoryGrantThresholdPct <decimal>]
  [-OutputTableName <string>]
  [-OutputTableNameFileStats <string>]
  [-OutputTableNamePerfmonStats <string>]
  [-OutputTableNameWaitStats <string>]
  [-OutputTableNameBlitzCache <string>]
  [-OutputTableNameBlitzWho <string>]
  [-OutputTableRetentionDays <int>]
  [-CheckProcedureCache]
  [-BlitzCacheAnalysis]
  [-FilterPlansByDatabase <string[]>]
  [-ShowSleepingSPIDs]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_LogMessage

```
Invoke-BlitzFirst
  -ServerInstance <string>
  -DatabaseName <string>
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  -OutputTableName <string>
  -LogMessage <string>
  -LogMessageURL <string>
  [-LogMessageCheckID <int>]
  [-LogMessagePriority <int>]
  [-LogMessageFindingsGroup <string>]
  [-LogMessageFinding <string>]
  [-LogMessageCheckDate <DateTimeOffset>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_Help

```
Invoke-BlitzFirst
  -ServerInstance <string>
  -DatabaseName <string>
  -BlitzHelp
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_ExpertMode

```
Invoke-BlitzFirst
  -ServerInstance <string>
  -DatabaseName <string>
  -ExpertMode [-SkipCheckServerInfo]
  [-Seconds <int>]
  [-FileLatencyThresholdMS <int>]
  [-MemoryGrantThresholdPct <decimal>]
  [-OutputResultSets <BlitzFirstOutputResultSets[]>]
  [-CheckProcedureCache]
  [-BlitzCacheAnalysis]
  [-FilterPlansByDatabase <string[]>]
  [-ShowSleepingSPIDs]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_AsOf

```
Invoke-BlitzFirst
  -ServerInstance <string>
  -DatabaseName <string>
  -AsOf <DateTimeOffset>
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  -OutputTableName <string>
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
  [-FilterPlansByDatabase <string[]>]
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
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  [-SkipCheckServerInfo]
  [-Seconds <int>]
  [-FileLatencyThresholdMS <int>]
  [-MemoryGrantThresholdPct <decimal>]
  [-OutputTableName <string>]
  [-OutputTableNameFileStats <string>]
  [-OutputTableNamePerfmonStats <string>]
  [-OutputTableNameWaitStats <string>]
  [-OutputTableNameBlitzCache <string>]
  [-OutputTableNameBlitzWho <string>]
  [-OutputTableRetentionDays <int>]
  [-CheckProcedureCache]
  [-BlitzCacheAnalysis]
  [-FilterPlansByDatabase <string[]>]
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
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  -OutputTableName <string>
  -LogMessage <string>
  -LogMessageURL <string>
  [-LogMessageCheckID <int>]
  [-LogMessagePriority <int>]
  [-LogMessageFindingsGroup <string>]
  [-LogMessageFinding <string>]
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
  -ExpertMode
  [-SkipCheckServerInfo]
  [-Seconds <int>]
  [-FileLatencyThresholdMS <int>]
  [-MemoryGrantThresholdPct <decimal>]
  [-OutputResultSets <BlitzFirstOutputResultSets[]>]
  [-CheckProcedureCache]
  [-BlitzCacheAnalysis]
  [-FilterPlansByDatabase <string[]>]
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
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  -OutputTableName <string>
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
  [-Seconds <int>]
  [-FileLatencyThresholdMS <int>]
  [-MemoryGrantThresholdPct <decimal>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases:
  None

## DESCRIPTION

Executes dbo.sp_BlitzFirst and returns results.
 Result returned will depend on the parameters provided.

## EXAMPLES

### Example 1

PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database.
 This will return the default output of the stored procedure.

### Example 2

PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection.
 This will return the default output of stored procedure.

### Example 3

PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -BlitzHelp

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @Help parameter set to 1.
 This will return the help information from stored procedure.

### Example 4

PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -VersionCheckMode

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @VersionCheckMode parameter set to 1.
 This will return the version information from stored procedure.

### Example 5

PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -BlitzFirstTop10

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @OutputType parameter set to Top10.
 This will return the top 10 wait information.

### Example 6

PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -BlitzFirstSchema

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @OutputType parameter set to Schema.
 This will return the table schema information.

### Example 7

PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -ExpertMode

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @ExpertMode parameter set to 1.
 This will return extended Blitz first information, including session information, wait stats, file stats, and perfmon stats.

### Example 8

PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -SinceStartup

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the @SinceStartup parameter set to 1.
 This will return wait stats, file stats, and perfmon stats.

### Example 9

PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -OutputTableNameFileStats BlitzFirst_FileStats -OutputTableNamePerfmonStats BlitzFirst_PerfmonStats -OutputTableNameWaitStats BlitzFirst_WaitStats -OutputTableNameBlitzCache BlitzCache -OutputTableNameBlitzWho BlitzWho

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database with the various output parameters specifying the database and table names to store results from stored procedure.

### Example 10

PS C:\> Invoke-BlitzFirst -ServerInstance MyServer -DatabaseName Admin -AsOf '2024-07-08 16:57:02.6322342 -04:00' -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -OutputTableNameFileStats BlitzFirst_FileStats -OutputTableNamePerfmonStats BlitzFirst_PerfmonStats -OutputTableNameWaitStats BlitzFirst_WaitStats -OutputTableNameBlitzCache BlitzCache -OutputTableNameBlitzWho BlitzWho

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database to return the information previously stored from around the datetimeoffset provided.

### Example 11

PS C:\> Invoke-BlitzFirst -ServerInstance . -DatabaseName Admin -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -LogMessageCheckID 69 -LogMessagePriority 1 -LogMessageFindingsGroup 'Log Message' -LogMessageFinding 'Message' -LogMessageURL http://www.domain.com -LogMessage 'Example Log Message Detail.' -LogMessageCheckDate $(Get-Date)

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database to store log message into BlitzFirst table.

### Example 12

PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -BlitzHelp

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @Help parameter set to 1.
 This will return the help information from stored procedure.

### Example 13

PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -VersionCheckMode

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @VersionCheckMode parameter set to 1.
 This will return the version information from stored procedure.

### Example 14

PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -BlitzFirstTop10

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @OutputType parameter set to Top10.
 This will return the top 10 wait information.

### Example 15

PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -BlitzFirstSchema

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @OutputType parameter set to Schema.
 This will return the table schema information.

### Example 16

PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -ExpertMode

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @ExpertMode parameter set to 1.
 This will return extended Blitz first information, including session information, wait stats, file stats, and perfmon stats.

### Example 17

PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -SinceStartup

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the @ExpertMode parameter set to 1.
 This will return wait stats, file stats, and perfmon stats.

### Example 18

PS C:\> Invoke-BlitzFirst -SqlConnection $MyConnection -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -OutputTableNameFileStats BlitzFirst_FileStats -OutputTableNamePerfmonStats BlitzFirst_PerfmonStats -OutputTableNameWaitStats BlitzFirst_WaitStats -OutputTableNameBlitzCache BlitzCache -OutputTableNameBlitzWho BlitzWho

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection with the various output parameters specifying the database and table names to store results from stored procedure.
 Tables with appropriate schema must exist in the provided database.

### Example 19

PS C:\> Invoke-BlitzFirst SqlConnection $MyConnection -AsOf '2024-07-08 16:57:02.6322342 -04:00' -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -OutputTableNameFileStats BlitzFirst_FileStats -OutputTableNamePerfmonStats BlitzFirst_PerfmonStats -OutputTableNameWaitStats BlitzFirst_WaitStats -OutputTableNameBlitzCache BlitzCache -OutputTableNameBlitzWho BlitzWho

Executes stored procedure dbo.sp_BlitzFirst using the the SqlConnection object in variable $MyConnection to return the information previously stored from around the datetimeoffset provided.

### Example 20

PS C:\> Invoke-BlitzFirst -ServerInstance . -DatabaseName Admin -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzFirst -LogMessageCheckID 69 -LogMessagePriority 1 -LogMessageFindingsGroup 'Log Message' -LogMessageFinding 'Message' -LogMessageURL http://www.domain.com -LogMessage 'Example Log Message Detail.' -LogMessageCheckDate $(Get-Date)

Executes stored procedure dbo.sp_BlitzFirst on SQL instance MyServer in the Admin database to store log message into BlitzFirst table.

## PARAMETERS

### -AsOf

Return the previously stored BlitzFirst results from specified datetimeoffset.

```yaml
Type: System.DateTimeOffset
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_AsOf
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_AsOf
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BlitzCacheAnalysis

Specifies to perform plan cache analysis.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SinceStartup
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SinceStartup
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BlitzDebug

Returns Blitz debug information from stored procedure.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_Top10
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_SinceStartup
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_AsOf
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_Top10
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SinceStartup
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_AsOf
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BlitzFirstSchema

Returns BlitzFirst schema information from stored procedure.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_Schema
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_Schema
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BlitzFirstTop10

Specifies BlitzFirst to return the top ten wait types.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_Top10
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_Top10
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BlitzHelp

Returns Blitz help information from stored procedure.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_Help
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_Help
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CheckProcedureCache

Include plan cache analysis result set.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SinceStartup
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SinceStartup
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Confirm

Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- cf
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DatabaseName

Specifies database where sp_BlitzFirst is located.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: DatabaseName_Version
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_Top10
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SinceStartup
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_Schema
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_Help
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_AsOf
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExpertMode

Specifies to return additional result sets, which includes sp_BlitzWho, wait stats, Perfmon counters, and file stats.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FileLatencyThresholdMS

Specifies the file latency threshold for reads and writes.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FilterPlansByDatabase

Filter plans by database(s).
 Specify "USER" to limit plans to user databases.

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SinceStartup
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SinceStartup
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LogMessage

Specifies log message details.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LogMessageCheckDate

Specifies datetime for log message entry.

```yaml
Type: System.DateTimeOffset
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LogMessageCheckID

Specifies check ID.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LogMessageFinding

Specifies message finding.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LogMessageFindingsGroup

Specifies message group.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LogMessagePriority

Specifies log message priority.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LogMessageURL

Specifies URL to reference log message.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MemoryGrantThresholdPct

Specifies the memory grant threshold percentage of maximum workspace.

```yaml
Type: System.Decimal
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputDatabaseName

Specifies the database that contains the tables to store BlitzFirst information.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_AsOf
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_AsOf
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputResultSets

Specifies the result sets to return from sp_BlitzFirst.

```yaml
Type: BlitzFirstOutputResultSets[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputSchemaName

Specifies the schema name where tables are to store BlitzFirst information.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_AsOf
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_AsOf
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputTableName

Specifies the table name to store BlitzFirst information.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_AsOf
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_AsOf
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputTableNameBlitzCache

Specifies the table name to store BlitzCache results.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputTableNameBlitzWho

Specifies the table name to store BlitzWho results.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputTableNameFileStats

Specifies the table name to store file results.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputTableNamePerfmonStats

Specifies the table name to store Perfmon results.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputTableNameWaitStats

Specifies the table name to store wait stats results.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputTableRetentionDays

Specifies the number of days to retain stored information in database tables.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Seconds

Specifies the number of seconds to sample.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ServerInstance

Specifies the SQL instance to execute sp_BlitzFirst stored procedure.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- SqlServer
ParameterSets:
- Name: DatabaseName_Version
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_Top10
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SinceStartup
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_Schema
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_Help
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_AsOf
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ShowSleepingSPIDs

Shows long-running sleeping sessions.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SinceStartup

Specifies to return additional result sets, which includes wait stats, Perfmon counters, and file stats.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SinceStartup
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SinceStartup
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SkipCheckServerInfo

Skips providing server information.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ExpertMode
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SqlConnection

Specifies the SqlConnection object.

```yaml
Type: Microsoft.Data.SqlClient.SqlConnection
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_Version
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_Top10
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_SinceStartup
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_Schema
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_LogMessage
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_Help
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ExpertMode
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_AsOf
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -VersionCheckMode

Returns only version information of BlitzFirst stored procedure.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_Version
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_Version
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- wi
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

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

None.

