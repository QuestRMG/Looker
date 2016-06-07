- view: system_quest_error_handling
  sql_table_name: dbo.SystemQuestErrorHandling
  fields:

  - dimension: error_line
    type: number
    sql: ${TABLE}.Error_Line

  - dimension: error_message
    type: string
    sql: ${TABLE}.Error_Message

  - dimension: error_number
    type: number
    sql: ${TABLE}.Error_Number

  - dimension: error_procedure
    type: string
    sql: ${TABLE}.Error_Procedure

  - dimension: error_severity
    type: number
    sql: ${TABLE}.Error_Severity

  - dimension: error_state
    type: number
    sql: ${TABLE}.Error_State

  - dimension: host_name
    type: string
    sql: ${TABLE}.HostName

  - dimension: pk_error_handling_id
    type: number
    sql: ${TABLE}.pkErrorHandlingID

  - dimension_group: time_stamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Time_Stamp

  - dimension: user_name
    type: string
    sql: ${TABLE}.UserName

  - measure: count
    type: count
    drill_fields: [user_name, host_name]

