# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
    #   inflect.plural /^(ox)$/i, '\1en'
    #   inflect.singular /^(ox)en/i, '\1'
    #   inflect.irregular 'person', 'people'
    #   inflect.uncountable %w( fish sheep )
        inflect.irregular 'tipo_comida', 'tipos_comidas'
        inflect.irregular 'invitacion', 'invitaciones'
        inflect.irregular 'promocion', 'promociones'
        inflect.irregular 'promocion', 'promociones'
        inflect.irregular 'puntaje_plato', 'puntajes_platos'
        inflect.irregular 'puntaje_restaurante', 'puntajes_restaurantes'
    end
    
    # These inflection rules are supported but not enabled by default:
    # ActiveSupport::Inflector.inflections(:en) do |inflect|
    #   inflect.acronym 'RESTful'
    # end
    