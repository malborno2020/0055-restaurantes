Rails.application.routes.draw do
  
  # Rutas Tipos Comidas
  get      'tipos_comidas',             to: 'tipos_comidas#listar',     as: 'tipos_comidas'     # listar 
  get      'tipos_comidas/nuevo',       to: 'tipos_comidas#crear',      as: 'nuevo_tipo_comida' # formulario de nuevo
  get      'tipos_comidas/:id',         to: 'tipos_comidas#mostrar',    as: 'tipo_comida'       # vista del detalle de un tipo de comida
  get      'tipos_comidas/:id/editar',  to: 'tipos_comidas#editar',     as: 'editar_tipo_comida'# formulario para editar el registro

  post     'tipos_comidas',             to: 'tipos_comidas#guardar'
  put      'tipos_comidas/:id',         to: 'tipos_comidas#actualizar'
  patch    'tipos_comidas/:id',         to: 'tipos_comidas#actualizar'
  delete   'tipos_comidas/:id',         to: 'tipos_comidas#eliminar'

  # Rutas Puntajes
  get       'puntajes',                 to: 'puntajes#listar',          as: 'puntajes'
  get       'puntajes/nuevo',           to: 'puntajes#crear',           as: 'nuevo_puntaje'
  get       'puntajes/:id',             to: 'puntajes#mostrar',         as: 'puntaje'
  get       'puntajes/:id/editar',      to: 'puntajes#editar',          as: 'editar_puntaje'

  post      'puntajes',                 to: 'puntajes#guardar'
  put       'puntajes/:id',             to: 'puntajes#actualizar'
  patch     'puntajes/:id',             to: 'puntajes#actualizar'
  delete    'puntajes/:id',             to: 'puntajes#eliminar'

  # Usuarios
  get       'usuarios/nuevo',           to: 'usuarios#crear',           as: 'nuevo_usuario'
  get       'usuarios/:id',             to: 'usuarios#mostrar',         as: 'usuario'
  post      'usuarios',                 to: 'usuarios#guardar',         as: 'usuarios'
  
  
end