connection: "santa_fe"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: santa_fe_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: santa_fe_default_datagroup

explore: planes {
  join:eventos{
  type: left_outer
  sql_on: ${planes.id_evento}=${eventos.id_evento} ;;
  relationship: many_to_many
  }

  join:mediciones{
    type: left_outer
    sql_on: ${planes.id_plan}=${mediciones.id_plan} ;;
    relationship: many_to_many
  }

  join:pacientes{
    type: left_outer
    sql_on: ${planes.paciente}=${pacientes.paciente} ;;
    relationship: many_to_many
  }
}
