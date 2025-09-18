---
document type: cmdlet
external help file: PSFirstResponderKit-help.xml
HelpUri: ''
Locale: en-US
Module Name: PSFirstResponderKit
ms.date: 07/31/2025
PlatyPS schema version: 2024-05-01
title: Invoke-Blitz
---

# Invoke-Blitz

## SYNOPSIS

Executes dbo.sp_Blitz and returns results.

## SYNTAX

### DatabaseName (Default)

```
Invoke-Blitz
  -ServerInstance <string>
  -DatabaseName <string>
  [-SkipCheckUserDatabaseObjects]
  [-CheckServerInfo]
  [-IgnorePrioritiesBelow <int>]
  [-IgnorePrioritiesAbove <int>]
  [-SummaryMode]
  [-BringThePain]
  [-UsualDBOwner <string>]
  [-BlockingChecks]
  [-BlitzDebugLevel <int>]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_Version

```
Invoke-Blitz
  -ServerInstance <string>
  -DatabaseName <string>
  -VersionCheckMode
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_SkipChecks_LogToTable

```
Invoke-Blitz
  -ServerInstance <string>
  -DatabaseName <string>
  -SkipChecksDatabase <Object>
  -SkipChecksSchema <Object>
  -SkipChecksTable <Object>
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  -OutputTableName <string>
  [-SkipCheckUserDatabaseObjects]
  [-CheckServerInfo]
  [-SkipChecksServer <string>]
  [-IgnorePrioritiesBelow <int>]
  [-IgnorePrioritiesAbove <int>]
  [-SummaryMode]
  [-BringThePain]
  [-UsualDBOwner <string>]
  [-BlockingChecks]
  [-BlitzDebugLevel <int>]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_SkipChecks

```
Invoke-Blitz
  -ServerInstance <string>
  -DatabaseName <string>
  -SkipChecksDatabase <Object>
  -SkipChecksSchema <Object>
  -SkipChecksTable <Object>
  [-SkipChecksServer <string>]
  [-BlitzDebugLevel <int>]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_ProcedureCache

```
Invoke-Blitz
  -ServerInstance <string>
  -DatabaseName <string>
  -CheckProcedureCache
  [-SkipCheckUserDatabaseObjects]
  [-OutputProcedureCache]
  [-CheckProcedureCacheFilter <BlitzProcedureCacheFilter>]
  [-CheckServerInfo]
  [-IgnorePrioritiesBelow <int>]
  [-IgnorePrioritiesAbove <int>]
  [-SummaryMode]
  [-BringThePain]
  [-UsualDBOwner <string>]
  [-BlockingChecks]
  [-BlitzDebugLevel <int>]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_LogToTable

```
Invoke-Blitz
  -ServerInstance <string>
  -DatabaseName <string>
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  -OutputTableName <string>
  [-SkipCheckUserDatabaseObjects]
  [-CheckServerInfo]
  [-IgnorePrioritiesBelow <int>]
  [-IgnorePrioritiesAbove <int>]
  [-SummaryMode]
  [-BringThePain]
  [-UsualDBOwner <string>]
  [-BlockingChecks]
  [-BlitzDebugLevel <int>]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_Help

```
Invoke-Blitz
  -ServerInstance <string>
  -DatabaseName <string>
  -BlitzHelp
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection_Version

```
Invoke-Blitz
  -SqlConnection <SqlConnection>
  -VersionCheckMode
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection_SkipChecks_LogToTable

```
Invoke-Blitz
  -SqlConnection <SqlConnection>
  -SkipChecksDatabase <Object>
  -SkipChecksSchema <Object>
  -SkipChecksTable <Object>
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  -OutputTableName <string>
  [-SkipCheckUserDatabaseObjects]
  [-CheckServerInfo]
  [-SkipChecksServer <string>]
  [-IgnorePrioritiesBelow <int>]
  [-IgnorePrioritiesAbove <int>]
  [-SummaryMode]
  [-BringThePain]
  [-UsualDBOwner <string>]
  [-BlockingChecks]
  [-BlitzDebugLevel <int>]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection_SkipChecks

```
Invoke-Blitz
  -SqlConnection <SqlConnection>
  -SkipChecksDatabase <Object>
  -SkipChecksSchema <Object>
  -SkipChecksTable <Object>
  [-SkipChecksServer <string>]
  [-BlitzDebugLevel <int>]
  [-WhatIf]
  [-Confirm]
  +[<CommonParameters>]
```

### SqlConnection_ProcedureCache

```
Invoke-Blitz
  -SqlConnection <SqlConnection>
  -CheckProcedureCache
  [-SkipCheckUserDatabaseObjects]
  [-OutputProcedureCache]
  [-CheckProcedureCacheFilter <BlitzProcedureCacheFilter>]
  [-CheckServerInfo]
  [-IgnorePrioritiesBelow <int>]
  [-IgnorePrioritiesAbove <int>]
  [-SummaryMode]
  [-BringThePain]
  [-UsualDBOwner <string>]
  [-BlockingChecks]
  [-BlitzDebugLevel <int>]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection_LogToTable

```
Invoke-Blitz
  -SqlConnection <SqlConnection>
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  -OutputTableName <string>
  [-SkipCheckUserDatabaseObjects]
  [-CheckServerInfo]
  [-IgnorePrioritiesBelow <int>]
  [-IgnorePrioritiesAbove <int>]
  [-SummaryMode]
  [-BringThePain]
  [-UsualDBOwner <string>]
  [-BlockingChecks]
  [-BlitzDebugLevel <int>]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection_Help

```
Invoke-Blitz
  -SqlConnection <SqlConnection>
  -BlitzHelp
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
  [-IgnorePrioritiesBelow <int>]
  [-IgnorePrioritiesAbove <int>]
  [-SummaryMode]
  [-BringThePain]
  [-UsualDBOwner <string>]
  [-BlockingChecks]
  [-BlitzDebugLevel <int>]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases:
  None

## DESCRIPTION

Executes dbo.sp_Blitz and returns results.
 Result returned will depend on the parameters provided.

## EXAMPLES

### Example 1

PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database.
 This will return the default output of the stored procedure.

### Example 2

PS C:\> Invoke-Blitz -SqlConnection $MyConnection

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection.
 This will return the default output of stored procedure.

### Example 3

PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -BlitzHelp

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database with the @Help parameter set to 1.
 This will return the help information from stored procedure.

### Example 4

PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -VersionCheckMode

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database with the @VersionCheckMode parameter set to 1.
 This will return the version information from stored procedure.

### Example 5

PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -SkipChecksDatabase Admin -SkipChecksSchema dbo -SkipChecksTable Blitz_SkipChecks

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database skipping steps matched in table Admin.dbo.Blitz_SkipChecks.

### Example 6

PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -CheckProcedureCache -OutputProcedureCache

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database.
 The output will include procedure cache information.

### Example 7

PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName Blitz

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database and stores the results in dbo.Blitz table.

### Example 8

PS C:\> Invoke-Blitz -ServerInstance MyServer -DatabaseName Admin -SkipChecksDatabase Admin -SkipChecksSchema dbo -SkipChecksTable Blitz_SkipChecks -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName Blitz

Executes stored procedure dbo.sp_Blitz on SQL instance MyServer in the Admin database, skips checks in table dbo.,Blitz_SkipChecks and stores the results in dbo.Blitz table.

### Example 9

PS C:\> Invoke-Blitz -SqlConnection $MyConnection -BlitzHelp

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection with the @Help parameter set to 1.
 This will return the help information from stored procedure.

### Example 10

PS C:\> Invoke-Blitz -SqlConnection $MyConnection -VersionCheckMode

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection with the @VersionCheckMode parameter set to 1.
 This will return the version information from stored procedure.

### Example 11

PS C:\> Invoke-Blitz -SqlConnection $MyConnection -SkipChecksDatabase Admin -SkipChecksSchema dbo -SkipChecksTable Blitz_SkipChecks

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection skipping steps matched in table Admin.dbo.Blitz_SkipChecks.

### Example 12

PS C:\> Invoke-Blitz -SqlConnection $MyConnection -CheckProcedureCache -OutputProcedureCache

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection.
 The output will include procedure cache information.

### Example 13

PS C:\> Invoke-Blitz -SqlConnection $MyConnection -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName Blitz

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection and stores the results in dbo.Blitz table.

### Example 14

PS C:\> Invoke-Blitz -SqlConnection $MyConnection -SkipChecksDatabase Admin -SkipChecksSchema dbo -SkipChecksTable Blitz_SkipChecks -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName Blitz

Executes stored procedure dbo.sp_Blitz using the the SqlConnection object in variable $MyConnection, skips checks in table dbo.,Blitz_SkipChecks and stores the results in dbo.Blitz table.

## PARAMETERS

### -BlitzDebugLevel

Specifies the debug level for stored procedure.
 Level 1 returns 1 message per step.
 Level 2 outputs dynamic queries.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_SkipChecks
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ProcedureCache
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
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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

### -BlockingChecks

Perform checks that may cause blocking.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ProcedureCache
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
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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

### -BringThePain

Specifies to check databases beyond the first 50.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ProcedureCache
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
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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

### -CheckProcedureCache

Returns the top 20-50 resource-intensive cache plans and analyze them for common performance issues.
 It looks for missing indexes, implicit datatype conversions, user-defined functions, and more.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_ProcedureCache
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CheckProcedureCacheFilter

Specifies the analysis to focus on.

```yaml
Type: BlitzProcedureCacheFilter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_ProcedureCache
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CheckServerInfo

Show server information like SQL Server version, CPUs, memory, virtualization, etc.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ProcedureCache
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
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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

Specifies database where sp_Blitz is located.

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
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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
- Name: DatabaseName_Help
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

### -IgnorePrioritiesAbove

Ignore priorities above specified value.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ProcedureCache
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
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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

### -IgnorePrioritiesBelow

Ignore priorities below specified value.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ProcedureCache
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
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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

Specifies the database that contains the tables to store Blitz information.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
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
- Name: DatabaseName_SkipChecks_LogToTable
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
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputProcedureCache

Returns the top 20-50 resource-intensive plans even if they did not trigger an alarm.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_ProcedureCache
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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

Specifies the schema name where tables are to store Blitz information.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
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
- Name: DatabaseName_SkipChecks_LogToTable
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
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputTableName

Specifies the table name to store Blitz information.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
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
- Name: DatabaseName_SkipChecks_LogToTable
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
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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
- Name: DatabaseName_Help
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

### -SkipChecksDatabase

Specifies the database name that contains the table that contains checks to skip.

```yaml
Type: System.Object
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_SkipChecks
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SkipChecksSchema

Specifies the schema name that contains the table that contains checks to skip.

```yaml
Type: System.Object
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_SkipChecks
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SkipChecksServer

Specifies the server name that contains the database and table that contains checks to skip.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_SkipChecks
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SkipChecksTable

Specifies the table name that contains that contains checks to skip.

```yaml
Type: System.Object
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_SkipChecks
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SkipCheckUserDatabaseObjects

Skips the review user databases for triggers, heaps, untrusted foreign keys, etc.
Takes more time for more databases and objects.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ProcedureCache
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
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_SkipChecks
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ProcedureCache
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
- Name: SqlConnection_Help
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

### -SummaryMode

Return one row per distinct FindingsGroup and Finding and Priority.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ProcedureCache
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
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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

### -UsualDBOwner

Specifies the user principal to check for database owner.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: SqlConnection_ProcedureCache
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
- Name: SqlConnection
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_SkipChecks_LogToTable
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: DatabaseName_ProcedureCache
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

### FirstResponderKit.Blitz



### FirstResponderKit.BlitzAdvanced



### FirstResponderKit.BlitzVersion



### System.Void



## NOTES




## RELATED LINKS

None.

