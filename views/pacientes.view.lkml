view: pacientes {
  sql_table_name: `Tablas.pacientes` ;;

  dimension: paciente {
    primary_key: yes
    type: number
    sql: ${TABLE}.paciente ;;
  }
  dimension: cantidad_no_aplica {
    type: number
    sql: ${TABLE}.cantidad_no_aplica ;;
  }
  dimension: cantidad_id_planes {
    type: number
    sql: ${TABLE}.cantidad_id_planes ;;
  }
  dimension: ratio_perdida_informacion{
    type: number
    sql: ${TABLE}.ratio_perdida_informacion ;;
  }
  dimension: ratio {
    type: number
    sql: ${TABLE}.ratio1 ;;
  }
  measure: count {
    type: count
  }


  ######dim created
  dimension: rango_ratio {
    type: tier
    tiers: [0,26, 51, 76, 101]
    style: integer
    sql: ${ratio} ;;
  }
 }
