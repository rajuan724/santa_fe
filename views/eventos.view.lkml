view: eventos {
  sql_table_name: `Tablas.Eventos` ;;

  dimension: condicion_clinica {
    type: string
    sql: ${TABLE}.condicion_clinica ;;
  }
  dimension: eliminado_por {
    type: string
    sql: ${TABLE}.eliminado_por ;;
  }
  dimension: evento {
    type: number
    sql: ${TABLE}.evento ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_egreso {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_egreso ;;
  }
  dimension_group: fecha_eliminacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_eliminacion ;;
  }
  dimension_group: fecha_ingreso {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_ingreso ;;
  }
  dimension_group: fecha_iniciado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_iniciado ;;
  }
  dimension: id_evento {
    primary_key: yes
    type: string
    sql: ${TABLE}.id_evento ;;
  }
  dimension: iniciado {
    type: yesno
    sql: ${TABLE}.iniciado ;;
  }
  dimension: iniciado_por {
    type: string
    sql: ${TABLE}.iniciado_por ;;
  }
  dimension: linea_servicio {
    type: string
    sql: ${TABLE}.linea_servicio ;;
  }
  dimension: motivo_eliminacion {
    type: string
    sql: ${TABLE}.motivo_eliminacion ;;
  }
  dimension: paciente {
    type: number
    sql: ${TABLE}.paciente ;;
  }
  dimension: sexo {
    type: string
    sql: ${TABLE}.sexo ;;
  }
  measure: count {
    type: count
  }
}
