---
document type: cmdlet
external help file: PSFirstResponderKit-help.xml
HelpUri: ''
Locale: en-US
Module Name: PSFirstResponderKit
ms.date: 07/31/2025
PlatyPS schema version: 2024-05-01
title: Invoke-BlitzAnalysis
---

# Invoke-BlitzAnalysis

## SYNOPSIS

Executes dbo.sp_BlitzAnalysis and returns results.

## SYNTAX

### DatabaseName (Default)

```
Invoke-BlitzAnalysis
  -ServerInstance <string>
  -DatabaseName <string>
  [-StartDate <DateTimeOffset>]
  [-EndDate <DateTimeOffset>]
  [-OutputDatabaseName <string>]
  [-OutputSchemaName <string>]
  [-OutputTableNameBlitzFirst <string>]
  [-OutputTableNameFileStats <string>]
  [-OutputTableNamePerfmonStats <string>]
  [-OutputTableNameWaitStats <string>]
  [-OutputTableNameBlitzCache <string>]
  [-OutputTableNameBlitzWho <string>]
  [-ServerName <string>]
  [-DatabaseNameFilter <string>]
  [-BlitzCacheSortOrder <BlitzCacheSortOrder>]
  [-MaxBlitzFirstPriority <int>]
  [-ReadLatencyThreshold <int>]
  [-WriteLatencyThreshold <int>]
  [-WaitStatsTop <int>]
  [-BringThePain]
  [-MaxDOP <int>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_Version

```
Invoke-BlitzAnalysis
  -ServerInstance <string>
  -DatabaseName <string>
  -VersionCheckMode
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### DatabaseName_Help

```
Invoke-BlitzAnalysis
  -ServerInstance <string>
  -DatabaseName <string>
  -BlitzHelp
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection_Version

```
Invoke-BlitzAnalysis
  -SqlConnection <SqlConnection>
  -VersionCheckMode
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection_Help

```
Invoke-BlitzAnalysis
  -SqlConnection <SqlConnection>
  -BlitzHelp
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

### SqlConnection

```
Invoke-BlitzAnalysis
  -SqlConnection <SqlConnection>
  [-StartDate <DateTimeOffset>]
  [-EndDate <DateTimeOffset>]
  [-OutputDatabaseName <string>]
  [-OutputSchemaName <string>]
  [-OutputTableNameBlitzFirst <string>]
  [-OutputTableNameFileStats <string>]
  [-OutputTableNamePerfmonStats <string>]
  [-OutputTableNameWaitStats <string>]
  [-OutputTableNameBlitzCache <string>]
  [-OutputTableNameBlitzWho <string>]
  [-ServerName <string>]
  [-DatabaseNameFilter <string>]
  [-BlitzCacheSortOrder <BlitzCacheSortOrder>]
  [-MaxBlitzFirstPriority <int>]
  [-ReadLatencyThreshold <int>]
  [-WriteLatencyThreshold <int>]
  [-WaitStatsTop <int>]
  [-BringThePain]
  [-MaxDOP <int>]
  [-BlitzDebug]
  [-WhatIf]
  [-Confirm]
  [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases:
  None

## DESCRIPTION

Executes dbo.sp_BlitzAnalysis and returns results.
 Result returned will depend on the parameters provided.

## EXAMPLES

### Example 1

PS C:\> Invoke-BlitzAnalysis -ServerInstance MyServer -DatabaseName Admin

Executes stored procedure dbo.sp_BlitzAnalysis on SQL instance MyServer in the Admin database.
 This will return the default output of the stored procedure.

### Example 2

PS C:\> Invoke-BlitzAnalysis -SqlConnection $MyConnection

Executes stored procedure dbo.sp_BlitzAnalysis using the the SqlConnection object in variable $MyConnection.
 This will return the default output of stored procedure.

### Example 3

PS C:\> Invoke-BlitzAnalysis -ServerInstance MyServer -DatabaseName Admin -BlitzHelp

Executes stored procedure dbo.sp_BlitzAnalysis on SQL instance MyServer in the Admin database with the @Help parameter set to 1.
 This will return the help information from stored procedure.

### Example 4

PS C:\> Invoke-BlitzAnalysis -ServerInstance MyServer -DatabaseName Admin -VersionCheckMode

Executes stored procedure dbo.sp_BlitzAnalysis on SQL instance MyServer in the Admin database with the @VersionCheckMode parameter set to 1.
 This will return the version information from stored procedure.

### Example 5

PS C:\> Invoke-BlitzAnalysis -SqlConnection $MyConnection -BlitzHelp

Executes stored procedure dbo.sp_BlitzAnalysis using the the SqlConnection object in variable $MyConnection with the @Help parameter set to 1.
 This will return the help information from stored procedure.

### Example 6

PS C:\> Invoke-BlitzAnalysis -SqlConnection $MyConnection -VersionCheckMode

Executes stored procedure dbo.sp_BlitzAnalysis using the the SqlConnection object in variable $MyConnection with the @VersionCheckMode parameter set to 1.
 This will return the version information from stored procedure.

## PARAMETERS

### -BlitzCacheSortOrder

Specifies the sort order for stored BlitzCache results.

```yaml
Type: BlitzCacheSortOrder
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -BlitzDebug

Returns Blitz debug information from stored procedure.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

Returns BlitzFirst schema information from stored procedure.

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

### -BringThePain

Required when retrieving more than 4 hours of data with BlitzCacheSortOrder set to all.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

Specifies database where sp_BlitzAnalysis is located.

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

### -DatabaseNameFilter

Filters results for BlitzCache, FileStats and BlitzWho result sets.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -EndDate

Specifies the datetime to end analysis.

```yaml
Type: System.DateTimeOffset
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -MaxBlitzFirstPriority

Specifies the maximum BlitzFirst priority to include in the results.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -MaxDOP

Specifies the maximum degree of parallelism that the queries within the stored procedure can use.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

Specify the database name where where the blitz data is stored.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -OutputSchemaName

Specifies the schema name where tables are that contains the Blitz information.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -OutputTableNameBlitzCache

Specifies the table name where BlitzCache information is stored.
 Set parameter to null to skip.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -OutputTableNameBlitzFirst

Specifies the table name where BlitzFirst information is stored.
 Set parameter to null to skip.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -OutputTableNameBlitzWho

Specifies the table name where BlitzWho information is stored.
 Set parameter to null to skip.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -OutputTableNameFileStats

Specifies the table name where FileStats information is stored.
 Set parameter to null to skip.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -OutputTableNamePerfmonStats

Specifies the table name where PerfMonStats information is stored.
 Set parameter to null to skip.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -OutputTableNameWaitStats

Specifies the table name where WaitStats information is stored.
 Set parameter to null to skip.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -ReadLatencyThreshold

Sets the threshold in milliseconds to compare against io_stall_read_average_ms for the stored FileStats.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

Specifies the SQL instance to execute sp_BlitzAnalysis stored procedure.

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

### -ServerName

Specifies the server name to folder results.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -StartDate

Specifies the datetime to start analysis.

```yaml
Type: System.DateTimeOffset
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

Returns only version information of BlitzAnalysis stored procedure.

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

### -WaitStatsTop

Specifies the number of top wait stats.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### -WriteLatencyThreshold

Sets the threshold in milliseconds to compare against io_stall_write_average_ms for the stored FileStats.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SqlConnection
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### FirstResponderKit.BlitzAnalysis



### System.Void



### FirstResponderKit.BlitzVersion



## NOTES




## RELATED LINKS

None.

