view: planes {
  sql_table_name: `Tablas.Planes` ;;

  dimension: eliminado_por {
    type: string
    sql: ${TABLE}.eliminado_por ;;
  }
  dimension: enviado_paciente {
    type: yesno
    sql: ${TABLE}.enviado_paciente ;;
  }
  dimension: escala {
    type: string
    sql: ${TABLE}.escala ;;
  }
  dimension: escala_activa {
    type: yesno
    sql: ${TABLE}.escala_activa ;;
  }
  dimension: evento {
    type: number
    sql: ${TABLE}.evento ;;
  }
  dimension_group: fecha_actualizacion_pl {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion_pl ;;
  }
  dimension_group: fecha_creacion_pl {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion_pl ;;
  }
  dimension_group: fecha_eliminacion_pl {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_eliminacion_pl ;;
  }
  dimension_group: fecha_envio_paciente {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_envio_paciente ;;
  }
  dimension_group: fecha_plan {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_plan ;;
  }
  dimension: frecuencia {
    type: number
    sql: ${TABLE}.frecuencia ;;
  }
  dimension: id_escala {
    type: number
    sql: ${TABLE}.id_escala ;;
  }
  dimension: id_evento {
    type: string
    sql: ${TABLE}.id_evento ;;
  }
  dimension: id_plan {
    type: string
    sql: ${TABLE}.id_plan ;;
  }
  dimension: motivo_eliminacion {
    type: string
    sql: ${TABLE}.motivo_eliminacion ;;
  }
  dimension: paciente {
    type: number
    sql: ${TABLE}.paciente ;;
  }
  dimension: rol_usuario {
    type: string
    sql: ${TABLE}.rol_usuario ;;
  }
  dimension: usuario_responsable {
    type: string
    sql: ${TABLE}.usuario_responsable ;;
  }
  measure: count {
    type: count
  }
}
