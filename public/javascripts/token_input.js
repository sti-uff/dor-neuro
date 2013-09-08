$(document).ready(function() {
  $("._municipio").tokenInput("/municipios/listar_municipios", {theme: "facebook", preventDuplicates: true, crossDomain: false,
tokenLimit:1, prePopulate: $('._municipio').data('pre')});

  $("._voluntario").tokenInput("/voluntarios/listar_voluntarios", {theme: "facebook", preventDuplicates: true, crossDomain: false,
tokenLimit:1, prePopulate: $('._voluntario').data('pre')});

  $("._medico").tokenInput("/usuarios/listar_medicos", {theme: "facebook", preventDuplicates: true, crossDomain: false,
tokenLimit:1, prePopulate: $('._medico').data('pre')});
});