---
document type: cmdlet
external help file: PSFirstResponderKit-help.xml
HelpUri: ''
Locale: en-US
Module Name: PSFirstResponderKit
ms.date: 07/31/2025
PlatyPS schema version: 2024-05-01
title: Invoke-BlitzWho
---

# Invoke-BlitzWho

## SYNOPSIS

Executes dbo.sp_BlitzWho and returns results.

## SYNTAX

### DatabaseName (Default)

```
Invoke-BlitzWho
  -ServerInstance <string>
  -DatabaseName <string>
  [-ShowSleepingSPIDs]
  [-MinElapsedSeconds <int>]
  [-MinCPUTime <int>]
  [-MinLogicalReads <int>]
  [-MinPhysicalReads <int>]
  [-MinWrites <int>]
  [-MinTempdbMB <int>]
  [-MinRequestedMemoryKB <int>]
  [-MinBlockingSeconds <int>]
  [-ShowActualParameters]
  [-GetOuterCommand]
  [-GetLiveQueryPlan]
  [-SortOrder
  <BlitzWhoSortOrder>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_Version

```
Invoke-BlitzWho
  -ServerInstance <string>
  -DatabaseName <string>
  -VersionCheckMode
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_LogToTable

```
Invoke-BlitzWho
  -ServerInstance <string>
  -DatabaseName <string>
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  [-OutputTableName <string>]
  [-OutputTableRetentionDays <int>]
  [-CheckDateOverride <DateTimeOffset>]
  [-ShowSleepingSPIDs]
  [-MinElapsedSeconds <int>]
  [-MinCPUTime <int>]
  [-MinLogicalReads <int>]
  [-MinPhysicalReads <int>]
  [-MinWrites <int>]
  [-MinTempdbMB <int>]
  [-MinRequestedMemoryKB <int>]
  [-MinBlockingSeconds <int>]
  [-ShowActualParameters]
  [-GetOuterCommand]
  [-GetLiveQueryPlan]
  [-SortOrder <BlitzWhoSortOrder>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_Help

```
Invoke-BlitzWho
  -ServerInstance <string>
  -DatabaseName <string>
  -BlitzHelp
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_ExpertMode

```
Invoke-BlitzWho
  -ServerInstance <string>
  -DatabaseName <string>
  -ExpertMode
  [-ShowSleepingSPIDs]
  [-MinElapsedSeconds <int>]
  [-MinCPUTime <int>]
  [-MinLogicalReads <int>]
  [-MinPhysicalReads <int>]
  [-MinWrites <int>]
  [-MinTempdbMB <int>]
  [-MinRequestedMemoryKB <int>]
  [-MinBlockingSeconds <int>]
  [-ShowActualParameters]
  [-GetOuterCommand]
  [-GetLiveQueryPlan]
  [-SortOrder <BlitzWhoSortOrder>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection_Version

```
Invoke-BlitzWho
  -SqlConnection <SqlConnection>
  -VersionCheckMode
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection_LogToTable

```
Invoke-BlitzWho
  -SqlConnection <SqlConnection>
  -OutputDatabaseName <string>
  -OutputSchemaName <string>
  [-OutputTableName <string>]
  [-OutputTableRetentionDays <int>]
  [-CheckDateOverride <DateTimeOffset>]
  [-ShowSleepingSPIDs]
  [-MinElapsedSeconds <int>]
  [-MinCPUTime <int>]
  [-MinLogicalReads <int>]
  [-MinPhysicalReads <int>]
  [-MinWrites <int>]
  [-MinTempdbMB <int>]
  [-MinRequestedMemoryKB <int>]
  [-MinBlockingSeconds <int>]
  [-ShowActualParameters]
  [-GetOuterCommand]
  [-GetLiveQueryPlan]
  [-SortOrder <BlitzWhoSortOrder>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection_Help

```
Invoke-BlitzWho
  -SqlConnection <SqlConnection>
  -BlitzHelp
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection_ExpertMode

```
Invoke-BlitzWho
  -SqlConnection <SqlConnection>
  -ExpertMode [-ShowSleepingSPIDs]
  [-MinElapsedSeconds <int>]
  [-MinCPUTime <int>]
  [-MinLogicalReads <int>]
  [-MinPhysicalReads <int>]
  [-MinWrites <int>]
  [-MinTempdbMB <int>]
  [-MinRequestedMemoryKB <int>]
  [-MinBlockingSeconds <int>]
  [-ShowActualParameters]
  [-GetOuterCommand]
  [-GetLiveQueryPlan]
  [-SortOrder <BlitzWhoSortOrder>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection

```
Invoke-BlitzWho
  -SqlConnection <SqlConnection>
  [-ShowSleepingSPIDs]
  [-MinElapsedSeconds <int>]
  [-MinCPUTime <int>]
  [-MinLogicalReads <int>]
  [-MinPhysicalReads <int>]
  [-MinWrites <int>]
  [-MinTempdbMB <int>]
  [-MinRequestedMemoryKB <int>]
  [-MinBlockingSeconds <int>]
  [-ShowActualParameters]
  [-GetOuterCommand]
  [-GetLiveQueryPlan]
  [-SortOrder <BlitzWhoSortOrder>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases:
  None

## DESCRIPTION

Executes dbo.sp_BlitzWho and returns results.
 Result returned will depend on the parameters provided.

## EXAMPLES

### Example 1

PS C:\> Invoke-BlitzWho -ServerInstance MyServer -DatabaseName Admin

Executes stored procedure dbo.sp_BlitzWho on SQL instance MyServer in the Admin database.
 This will return the default output of the stored procedure.

### Example 2

PS C:\> Invoke-BlitzWho -SqlConnection $MyConnection

Executes stored procedure dbo.sp_BlitzWho using the the SqlConnection object in variable $MyConnection.
 This will return the default output of stored procedure.

### Example 3

PS C:\> Invoke-BlitzWho -ServerInstance MyServer -DatabaseName Admin -BlitzHelp

Executes stored procedure dbo.sp_BlitzWho on SQL instance MyServer in the Admin database with the @Help parameter set to 1.
 This will return the help information from stored procedure.

### Example 4

PS C:\> Invoke-BlitzWho -ServerInstance MyServer -DatabaseName Admin -VersionCheckMode

Executes stored procedure dbo.sp_BlitzWho on SQL instance MyServer in the Admin database with the @VersionCheckMode parameter set to 1.
 This will return the version information from stored procedure.

### Example 5

PS C:\> Invoke-BlitzWho -ServerInstance MyServer -DatabaseName Admin -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzWho

Executes stored procedure dbo.sp_BlitzWho on SQL instance MyServer in the Admin database with the stored procedure results are stored in the specified database and table.

### Example 6

PS C:\> Invoke-BlitzWho -ServerInstance MyServer -DatabaseName Admin -ExpertMode

Executes stored procedure dbo.sp_BlitzWho on SQL instance MyServer in the Admin database with the @ExpertMode parameter set to 1.
 This will return extended BlitzWho information.

### Example 7

PS C:\> Invoke-BlitzWho -SqlConnection $MyConnection -BlitzHelp

Executes stored procedure dbo.sp_BlitzWho using the the SqlConnection object in variable $MyConnection with the @Help parameter set to 1.
 This will return the help information from stored procedure.

### Example 8

PS C:\> Invoke-BlitzWho -SqlConnection $MyConnection -VersionCheckMode

Executes stored procedure dbo.sp_BlitzWho using the the SqlConnection object in variable $MyConnection with the @VersionCheckMode parameter set to 1.
 This will return the version information from stored procedure.

### Example 9

PS C:\> Invoke-BlitzWho -SqlConnection $MyConnection -OutputDatabaseName Admin -OutputSchemaName dbo -OutputTableName BlitzWho

Executes stored procedure dbo.sp_BlitzWho using the the SqlConnection object in variable $MyConnection with the stored procedure results are stored in the specified database and table.

### Example 10

PS C:\> Invoke-BlitzWho -SqlConnection $MyConnection -ExpertMode

Executes stored procedure dbo.sp_BlitzWho using the the SqlConnection object in variable $MyConnection with the @ExpertMode parameter set to 1.
 This will return extended BlitzWho information.

## PARAMETERS

### -BlitzDebug

Returns Blitz debug information from stored procedure.

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

### -CheckDateOverride

Specifies the date and time stored with BlitzWho output.

```yaml
Type: System.DateTimeOffset
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

Specifies database where sp_BlitzWho is located.

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
- Name: DatabaseName_ExpertMode
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

Specifies to return additional information.

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

### -GetLiveQueryPlan

Specifies to return love query plans available.

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

### -GetOuterCommand

Specifies to return the outer commands within a batch.

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

### -MinBlockingSeconds

Specifies minimum number of seconds of blocking to return results.

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

### -MinCPUTime

Specifies minimum CPU time to return results.

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

### -MinElapsedSeconds

Specifies minimum number of seconds of elapsed time to return results.

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

### -MinLogicalReads

Specifies minimum number of logical reads to return results.

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

### -MinPhysicalReads

Specifies minimum number of physical reads to return results.

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

### -MinRequestedMemoryKB

Specifies minimum amount of requested memory to return results.

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

### -MinTempdbMB

Specifies minimum amount of Tempdb usage to return results.

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

### -MinWrites

Specifies minimum number of writes to return results.

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

### -OutputDatabaseName

Specifies the database that contains the tables to store BlitzWho information.

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

### -OutputSchemaName

Specifies the schema name where tables are to store BlitzWho information.

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

Specifies the table name to store BlitzWho information.

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

### -ServerInstance

Specifies the SQL instance to execute sp_BlitzWho stored procedure.

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
- Name: DatabaseName_ExpertMode
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

### -ShowActualParameters

Specifies to return actual parameters in parameterized query requests.

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

### -SortOrder

Specifies the order to return results.

```yaml
Type: BlitzWhoSortOrder
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
- Name: SqlConnection_ExpertMode
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

Returns only version information of BlitzWho stored procedure.

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

### FirstResponderKit.BlitzWho



### FirstResponderKit.BlitzWhoExpert



### System.Void



### FirstResponderKit.BlitzVersion



## NOTES




## RELATED LINKS

None.

