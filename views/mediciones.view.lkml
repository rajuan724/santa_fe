view: mediciones {
  sql_table_name: `Tablas.Mediciones` ;;

  dimension: acepta_medicion {
    type: yesno
    sql: ${TABLE}.acepta_medicion ;;
  }
  dimension: actualizado_por {
    type: string
    sql: ${TABLE}.actualizado_por ;;
  }
  dimension: calculo {
    type: number
    sql: ${TABLE}.calculo ;;
  }
  dimension: diligenciado_por {
    type: string
    sql: ${TABLE}.diligenciado_por ;;
  }
  dimension_group: fecha_actualizacion_med {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion_med ;;
  }
  dimension_group: fecha_creacion_med {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion_med ;;
  }
  ####################################
  parameter: date_granularity {
    type: unquoted
    allowed_value: {
      label: "Año"
      value: "year"
    }
    allowed_value: {
      label: "Mes"
      value: "month"
    }
    allowed_value: {
      label: "Trimestre"
      value: "quarter"
    }
  }

  dimension: fecha_creancion_filtro {
    sql: {% if date_granularity._parameter_value == 'year' %}
          ${fecha_creacion_med_year}
         {% elsif date_granularity._parameter_value == 'quarter' %}
          ${fecha_creacion_med_quarter}
        {% elsif date_granularity._parameter_value == 'month' %}
          ${fecha_creacion_med_month}
        {% else %}
          ${fecha_creacion_med_date}
        {% endif %} ;;
  }
  ####################################
  dimension: fecha_eliminacion_med {
    type: string
    sql: ${TABLE}.fecha_eliminacion_med ;;
  }
  dimension: finalizado {
    type: yesno
    sql: ${TABLE}.finalizado ;;
  }
  dimension: id_escala {
    type: number
    sql: ${TABLE}.id_escala ;;
  }
  dimension: id_medicion {
    type: string
    sql: ${TABLE}.id_medicion ;;
  }
  dimension: id_plan {
    primary_key: yes
    type: string
    sql: ${TABLE}.id_plan ;;
  }
  dimension: informante {
    type: string
    sql: ${TABLE}.informante ;;
  }
  dimension: perdida_informacion {
    type: string
    sql: ${TABLE}.perdida_informacion ;;
  }
  dimension: respondido_por {
    type: string
    sql: ${TABLE}.respondido_por ;;
  }
  dimension: tipo_entrevista {
    type: string
    sql: ${TABLE}.tipo_entrevista ;;
  }
  measure: count {
    type: count
  }
}
