Dorneuro::Application.routes.draw do
  
  scope "/encerramento" do
    get '/eva' => 'encerramento#new_laudo', :as => :encerramento_eva
    post '/eva' => 'encerramento#create_laudo', :as => :encerramento_salvar_eva
    get '/sf36' => 'encerramento#new_laudo', :as => :encerramento_sf36
    post '/sf36' => 'encerramento#create_laudo', :as => :encerramento_salvar_sf36
    get '/avaliacao_clinica' => 'encerramento#new_avaliacao_clinica', :as => :encerramento_new_avaliacao_clinica
    get '/exames' => 'encerramento#exames', :as => :encerramento_exames
    scope "/avaliacao_clinica" do
      put '/exame_fisico' => 'encerramento#salvar_avaliacao_clinica', :as => :encerramento_salvar_exame_fisico
      get '/exame_fisico' => 'encerramento#avaliacao_clinica', :as => :encerramento_exame_fisico
      put '/anamnese' => 'encerramento#salvar_avaliacao_clinica', :as => :encerramento_salvar_anamnese
      get '/anamnese' => 'encerramento#avaliacao_clinica', :as => :encerramento_anamnese
      put '/sinais_vitais' => 'encerramento#salvar_avaliacao_clinica', :as => :encerramento_salvar_sinais_vitais
      get '/sinais_vitais' => 'encerramento#avaliacao_clinica', :as => :encerramento_sinais_vitais
      put '/dados_demograficos' => 'encerramento#salvar_dados_demograficos', :as => :encerramento_salvar_dados_demograficos
      get '/dados_demograficos' => 'encerramento#dados_demograficos', :as => :encerramento_dados_demograficos
      scope "/exame_fisico" do
        put '/exame_forca' => 'encerramento#salvar_avaliacao_clinica', :as => :encerramento_salvar_exame_forca
        get '/exame_forca' => 'encerramento#avaliacao_clinica', :as => :encerramento_exame_forca
        put '/reflexos' => 'encerramento#salvar_avaliacao_clinica', :as => :encerramento_salvar_reflexos
        get '/reflexos' => 'encerramento#avaliacao_clinica', :as => :encerramento_reflexos
        put '/esfincteres' => 'encerramento#salvar_avaliacao_clinica', :as => :encerramento_salvar_esfincteres
        get '/esfincteres' => 'encerramento#avaliacao_clinica', :as => :encerramento_esfincteres
        put '/coordenacao' => 'encerramento#salvar_avaliacao_clinica', :as => :encerramento_salvar_coordenacao
        get '/coordenacao' => 'encerramento#avaliacao_clinica', :as => :encerramento_coordenacao
        put '/tonus_muscular' => 'encerramento#salvar_avaliacao_clinica', :as => :encerramento_salvar_tonus_muscular
        get '/tonus_muscular' => 'encerramento#avaliacao_clinica', :as => :encerramento_tonus_muscular
        put '/nervos_perifericos' => 'encerramento#salvar_avaliacao_clinica', :as => :encerramento_salvar_nervos_perifericos
        get '/nervos_perifericos' => 'encerramento#avaliacao_clinica', :as => :encerramento_nervos_perifericos
      end
    end
    scope "/exames" do
      get '/teste_gravidez' => 'encerramento#new_laudo', :as => :encerramento_teste_gravidez
      post '/teste_gravidez' => 'encerramento#create_laudo', :as => :encerramento_salvar_teste_gravidez
      get '/hemograma' => 'encerramento#new_laudo', :as => :encerramento_hemograma
      post '/hemograma' => 'encerramento#create_laudo', :as => :encerramento_salvar_hemograma
      get '/func_renal' => 'encerramento#new_laudo', :as => :encerramento_func_renal
      post '/func_renal' => 'encerramento#create_laudo', :as => :encerramento_salvar_func_renal
      get '/func_hepatica' => 'encerramento#new_laudo', :as => :encerramento_func_hepatica
      post '/func_hepatica' => 'encerramento#create_laudo', :as => :encerramento_salvar_func_hepatica
      get '/rx_torax' => 'encerramento#new_laudo', :as => :encerramento_rx_torax
      post '/rx_torax' => 'encerramento#create_laudo', :as => :encerramento_salvar_rx_torax
    end
  end
  
  scope "/execucao" do
    get '/dispensacao' => 'execucao#dispensacao', :as => :execucao_dispensacao
    post '/dispensacao' => 'execucao#salvar_dispensacao', :as => :execucao_salvar_dispensacao
    put '/dispensacao' => 'execucao#salvar_dispensacao', :as => :execucao_salvar_dispensacao
    get '/avaliacao_clinica' => 'execucao#new_avaliacao_clinica', :as => :execucao_new_avaliacao_clinica
    get '/eva' => 'execucao#new_laudo', :as => :execucao_eva
    post '/eva' => 'execucao#create_laudo', :as => :execucao_salvar_eva
    get '/exames' => 'execucao#exames', :as => :execucao_exames
    get '/adesao' => 'execucao#adesao', :as => :execucao_adesao
    post '/adesao' => 'execucao#salvar_adesao', :as => :execucao_salvar_adesao
    put '/adesao' => 'execucao#salvar_adesao', :as => :execucao_salvar_adesao
    scope "/avaliacao_clinica" do
      put '/exame_fisico' => 'execucao#salvar_avaliacao_clinica', :as => :execucao_salvar_exame_fisico
      get '/exame_fisico' => 'execucao#avaliacao_clinica', :as => :execucao_exame_fisico
      put '/anamnese' => 'execucao#salvar_avaliacao_clinica', :as => :execucao_salvar_anamnese
      get '/anamnese' => 'execucao#avaliacao_clinica', :as => :execucao_anamnese
      put '/sinais_vitais' => 'execucao#salvar_avaliacao_clinica', :as => :execucao_salvar_sinais_vitais
      get '/sinais_vitais' => 'execucao#avaliacao_clinica', :as => :execucao_sinais_vitais
      put '/dados_demograficos' => 'execucao#salvar_dados_demograficos', :as => :execucao_salvar_dados_demograficos
      get '/dados_demograficos' => 'execucao#dados_demograficos', :as => :execucao_dados_demograficos
      scope "/exame_fisico" do
        put '/exame_forca' => 'execucao#salvar_avaliacao_clinica', :as => :execucao_salvar_exame_forca
        get '/exame_forca' => 'execucao#avaliacao_clinica', :as => :execucao_exame_forca
        put '/reflexos' => 'execucao#salvar_avaliacao_clinica', :as => :execucao_salvar_reflexos
        get '/reflexos' => 'execucao#avaliacao_clinica', :as => :execucao_reflexos
        put '/esfincteres' => 'execucao#salvar_avaliacao_clinica', :as => :execucao_salvar_esfincteres
        get '/esfincteres' => 'execucao#avaliacao_clinica', :as => :execucao_esfincteres
        put '/coordenacao' => 'execucao#salvar_avaliacao_clinica', :as => :execucao_salvar_coordenacao
        get '/coordenacao' => 'execucao#avaliacao_clinica', :as => :execucao_coordenacao
        put '/tonus_muscular' => 'execucao#salvar_avaliacao_clinica', :as => :execucao_salvar_tonus_muscular
        get '/tonus_muscular' => 'execucao#avaliacao_clinica', :as => :execucao_tonus_muscular
        put '/nervos_perifericos' => 'execucao#salvar_avaliacao_clinica', :as => :execucao_salvar_nervos_perifericos
        get '/nervos_perifericos' => 'execucao#avaliacao_clinica', :as => :execucao_nervos_perifericos
      end
    end
    scope "/exames" do
      get '/teste_gravidez' => 'execucao#new_laudo', :as => :execucao_teste_gravidez
      post '/teste_gravidez' => 'execucao#create_laudo', :as => :execucao_salvar_teste_gravidez
      get '/hemograma' => 'execucao#new_laudo', :as => :execucao_hemograma
      post '/hemograma' => 'execucao#create_laudo', :as => :execucao_salvar_hemograma
      get '/func_renal' => 'execucao#new_laudo', :as => :execucao_func_renal
      post '/func_renal' => 'execucao#create_laudo', :as => :execucao_salvar_func_renal
      get '/func_hepatica' => 'execucao#new_laudo', :as => :execucao_func_hepatica
      post '/func_hepatica' => 'execucao#create_laudo', :as => :execucao_salvar_func_hepatica
      get '/rx_torax' => 'execucao#new_laudo', :as => :execucao_rx_torax
      post '/rx_torax' => 'execucao#create_laudo', :as => :execucao_salvar_rx_torax
    end
  end
  
  scope "/alocacao" do
    get '/incluir' => 'alocacao#incluir'
    post '/incluir' => 'alocacao#salvar_incluir', :as => :salvar_incluir
    get '/excluir' => 'alocacao#incluir'
    post '/excluir' => 'alocacao#salvar_incluir', :as => :salvar_incluir
    get '/analisar_prontuarios' => 'alocacao#analisar_prontuarios'
    get '/randomizar' => 'alocacao#randomizar'
    get '/dispensacao' => 'alocacao#dispensacao', :as => :alocacao_dispensacao
    put '/dispensacao' => 'alocacao#salvar_dispensacao', :as => :alocacao_salvar_dispensacao
    scope "/analisar_prontuarios" do
      get '/avaliacao_clinica' => 'alocacao#show_avaliacao_clinica', :as => :show_avaliacao_clinica
      get '/criterios' => 'alocacao#show_criterios', :as => :show_criterios
      get '/biopsia' => 'alocacao#show_biopsia', :as => :show_biopsia
      get '/neurofisiologia' => 'alocacao#analisar_prontuarios', :as => :show_neurofisiologia
      get '/enmg' => 'alocacao#show_enmg', :as => :show_enmg
      get '/cheps' => 'alocacao#show_cheps', :as => :show_cheps
      get '/qst' => 'alocacao#show_qst', :as => :show_qst
      get '/questionarios' => 'alocacao#analisar_prontuarios', :as => :show_questionarios
      get '/eva' => 'alocacao#show_eva', :as => :show_eva
      get '/dn4' => 'alocacao#show_dn4', :as => :show_dn4
      get '/lanss' => 'alocacao#show_lanss', :as => :show_lanss
      get '/sf36' => 'alocacao#show_sf36', :as => :show_sf36
      get '/mini_mental' => 'alocacao#show_mini_mental', :as => :show_mini_mental
      get '/exames' => 'alocacao#analisar_prontuarios', :as => :show_exames
      get '/gravidez' => 'alocacao#show_gravidez', :as => :show_gravidez
      get '/hemograma' => 'alocacao#show_hemograma', :as => :show_hemograma
      get '/func_renal' => 'alocacao#show_func_renal', :as => :show_func_renal
      get '/func_hepatica' => 'alocacao#show_func_hepatica', :as => :show_func_hepatica
      get '/urinocultura' => 'alocacao#show_urinocultura', :as => :show_urinocultura
      get '/ppd' => 'alocacao#show_ppd', :as => :show_ppd
    end
    scope "/randomizar" do
      get '/criterios' => 'alocacao#criterios', :as => :alocacao_criterios
      put '/criterios' => 'alocacao#salvar_criterios', :as => :alocacao_salvar_criterios
      get '/grupos' => 'alocacao#grupos', :as => :alocacao_grupos
      put '/grupos' => 'alocacao#salvar_grupos', :as => :alocacao_salvar_grupos
      get '/avaliacao_clinica' => 'alocacao#new_avaliacao_clinica', :as => :alocacao_new_avaliacao_clinica
      scope "/avaliacao_clinica" do
        put '/exame_fisico' => 'alocacao#salvar_avaliacao_clinica', :as => :alocacao_salvar_exame_fisico
        get '/exame_fisico' => 'alocacao#avaliacao_clinica', :as => :alocacao_exame_fisico
        put '/anamnese' => 'alocacao#salvar_avaliacao_clinica', :as => :alocacao_salvar_anamnese
        get '/anamnese' => 'alocacao#avaliacao_clinica', :as => :alocacao_anamnese
        put '/sinais_vitais' => 'alocacao#salvar_avaliacao_clinica', :as => :alocacao_salvar_sinais_vitais
        get '/sinais_vitais' => 'alocacao#avaliacao_clinica', :as => :alocacao_sinais_vitais
        put '/dados_demograficos' => 'alocacao#salvar_dados_demograficos', :as => :alocacao_salvar_dados_demograficos
        get '/dados_demograficos' => 'alocacao#dados_demograficos', :as => :alocacao_dados_demograficos
        scope "/exame_fisico" do
          put '/exame_forca' => 'alocacao#salvar_avaliacao_clinica', :as => :alocacao_salvar_exame_forca
          get '/exame_forca' => 'alocacao#avaliacao_clinica', :as => :alocacao_exame_forca
          put '/reflexos' => 'alocacao#salvar_avaliacao_clinica', :as => :alocacao_salvar_reflexos
          get '/reflexos' => 'alocacao#avaliacao_clinica', :as => :alocacao_reflexos
          put '/esfincteres' => 'alocacao#salvar_avaliacao_clinica', :as => :alocacao_salvar_esfincteres
          get '/esfincteres' => 'alocacao#avaliacao_clinica', :as => :alocacao_esfincteres
          put '/coordenacao' => 'alocacao#salvar_avaliacao_clinica', :as => :alocacao_salvar_coordenacao
          get '/coordenacao' => 'alocacao#avaliacao_clinica', :as => :alocacao_coordenacao
          put '/tonus_muscular' => 'alocacao#salvar_avaliacao_clinica', :as => :alocacao_salvar_tonus_muscular
          get '/tonus_muscular' => 'alocacao#avaliacao_clinica', :as => :alocacao_tonus_muscular
          put '/nervos_perifericos' => 'alocacao#salvar_avaliacao_clinica', :as => :alocacao_salvar_nervos_perifericos
          get '/nervos_perifericos' => 'alocacao#avaliacao_clinica', :as => :alocacao_nervos_perifericos
        end
      end
    end
  end
  
  scope "/eventos_adversos" do
    get '/evento_adverso_grave' => 'eventos_adversos#evento_adverso_grave', :as => :evento_adverso_grave
    post '/evento_adverso_grave' => 'eventos_adversos#salvar_evento_adverso_grave', :as => :salvar_evento_adverso_grave
    get '/superdose' => 'eventos_adversos#superdose', :as => :superdose
    post '/superdose' => 'eventos_adversos#salvar_superdose', :as => :salvar_superdose
    get '/gravidez' => 'eventos_adversos#gravidez', :as => :gravidez
    post '/gravidez' => 'eventos_adversos#salvar_gravidez', :as => :salvar_gravidez
    get '/new' => 'eventos_adversos#evento_adverso', :as => :evento_adverso
    post '/new' => 'eventos_adversos#salvar_evento_adverso', :as => :salvar_evento_adverso
  end
  
  scope "/selecao" do
    get '/exames' => 'selecao#exames', :as => :selecao_exames
    get '/questionarios' => 'selecao#questionarios', :as => :selecao_questionarios
    get '/neurofisiologia' => 'selecao#neurofisiologia', :as => :selecao_neurofisiologia
    get '/biopsia/new' => 'selecao#new_laudo', :as => :selecao_new_biopsia
    post '/biopsia/new' => 'selecao#create_laudo', :as => :selecao_biopsia
    get '/criterios/new' => 'selecao#new_criterio', :as => :selecao_new_criterio
    post '/criterios/new' => 'selecao#create_criterio', :as => :selecao_criterios
    get '/tcle/new' => 'selecao#new_laudo', :as => :selecao_new_tcle
    post '/tcle/new' => 'selecao#create_laudo', :as => :selecao_tcles
    scope "/avaliacao_clinica" do
      put '/exame_fisico' => 'selecao#salvar_avaliacao_clinica', :as => :selecao_salvar_exame_fisico
      get '/exame_fisico' => 'selecao#avaliacao_clinica', :as => :selecao_exame_fisico
      put '/anamnese' => 'selecao#salvar_avaliacao_clinica', :as => :selecao_salvar_anamnese
      get '/anamnese' => 'selecao#avaliacao_clinica', :as => :selecao_anamnese
      put '/sinais_vitais' => 'selecao#salvar_avaliacao_clinica', :as => :selecao_salvar_sinais_vitais
      get '/sinais_vitais' => 'selecao#avaliacao_clinica', :as => :selecao_sinais_vitais
      put '/dados_demograficos' => 'selecao#salvar_dados_demograficos', :as => :selecao_salvar_dados_demograficos
      get '/dados_demograficos' => 'selecao#dados_demograficos', :as => :selecao_dados_demograficos
      get '/new' => 'selecao#new_avaliacao_clinica', :as => :selecao_new_avaliacao_clinica
      scope "/exame_fisico" do
        put '/exame_forca' => 'selecao#salvar_avaliacao_clinica', :as => :selecao_salvar_exame_forca
        get '/exame_forca' => 'selecao#avaliacao_clinica', :as => :selecao_exame_forca
        put '/reflexos' => 'selecao#salvar_avaliacao_clinica', :as => :selecao_salvar_reflexos
        get '/reflexos' => 'selecao#avaliacao_clinica', :as => :selecao_reflexos
        put '/esfincteres' => 'selecao#salvar_avaliacao_clinica', :as => :selecao_salvar_esfincteres
        get '/esfincteres' => 'selecao#avaliacao_clinica', :as => :selecao_esfincteres
        put '/coordenacao' => 'selecao#salvar_avaliacao_clinica', :as => :selecao_salvar_coordenacao
        get '/coordenacao' => 'selecao#avaliacao_clinica', :as => :selecao_coordenacao
        put '/tonus_muscular' => 'selecao#salvar_avaliacao_clinica', :as => :selecao_salvar_tonus_muscular
        get '/tonus_muscular' => 'selecao#avaliacao_clinica', :as => :selecao_tonus_muscular
        put '/nervos_perifericos' => 'selecao#salvar_avaliacao_clinica', :as => :selecao_salvar_nervos_perifericos
        get '/nervos_perifericos' => 'selecao#avaliacao_clinica', :as => :selecao_nervos_perifericos
      end
    end
    scope "/neurofisiologia" do
      get '/enmg' => 'selecao#new_laudo', :as => :selecao_enmg
      post '/enmg' => 'selecao#create_laudo', :as => :selecao_salvar_enmg
      get '/cheps' => 'selecao#new_laudo', :as => :selecao_cheps
      post '/cheps' => 'selecao#create_laudo', :as => :selecao_salvar_cheps
      get '/qst' => 'selecao#new_laudo', :as => :selecao_qst
      post '/qst' => 'selecao#create_laudo', :as => :selecao_salvar_qst
    end
    scope "/questionarios" do
      get '/eva' => 'selecao#new_laudo', :as => :selecao_eva
      post '/eva' => 'selecao#create_laudo', :as => :selecao_salvar_eva
      get '/dn4' => 'selecao#new_laudo', :as => :selecao_dn4
      post '/dn4' => 'selecao#create_laudo', :as => :selecao_salvar_dn4
      get '/sf36' => 'selecao#new_laudo', :as => :selecao_sf36
      post '/sf36' => 'selecao#create_laudo', :as => :selecao_salvar_sf36
      get '/lanss' => 'selecao#new_laudo', :as => :selecao_lanss
      post '/lanss' => 'selecao#create_laudo', :as => :selecao_salvar_lanss
      get '/mini_mental' => 'selecao#new_laudo', :as => :selecao_mini_mental
      post '/mini_mental' => 'selecao#create_laudo', :as => :selecao_salvar_mini_mental
    end
    scope "/exames" do
      get '/teste_gravidez' => 'selecao#new_laudo', :as => :selecao_teste_gravidez
      post '/teste_gravidez' => 'selecao#create_laudo', :as => :selecao_salvar_teste_gravidez
      get '/hemograma' => 'selecao#new_laudo', :as => :selecao_hemograma
      post '/hemograma' => 'selecao#create_laudo', :as => :selecao_salvar_hemograma
      get '/func_renal' => 'selecao#new_laudo', :as => :selecao_func_renal
      post '/func_renal' => 'selecao#create_laudo', :as => :selecao_salvar_func_renal
      get '/func_hepatica' => 'selecao#new_laudo', :as => :selecao_func_hepatica
      post '/func_hepatica' => 'selecao#create_laudo', :as => :selecao_salvar_func_hepatica
      get '/urinocultura' => 'selecao#new_laudo', :as => :selecao_urinocultura
      post '/urinocultura' => 'selecao#create_laudo', :as => :selecao_salvar_urinocultura
      get '/ppd' => 'selecao#new_laudo', :as => :selecao_ppd
      post '/ppd' => 'selecao#create_laudo', :as => :selecao_salvar_ppd
      get '/rx_torax' => 'selecao#new_laudo', :as => :selecao_rx_torax
      post '/rx_torax' => 'selecao#create_laudo', :as => :selecao_salvar_rx_torax
    end
  end
  
  get 'escolher_voluntario' => 'application#escolher_voluntario'
  
  resources :agendas

  resources :voluntarios do
    collection do
      get :listar_voluntarios
    end
  end

  devise_for :usuarios do
    get "usuarios/listar_medicos" => "usuarios#listar_medicos"
    resources :usuarios, :path => "/profissionais"
    # get "profissionais" => "usuarios#index"
    # post "profissionais" => "usuarios#create"
    # get "profissionais/new" => "usuarios#new", :as => :new_profissional
    # get "profissionais/:id/edit" => "usuarios#edit", :as => :edit_profissional
    # get "profissionais/:id" => "usuarios#show", :as => :profissional
    # put "profissionais/:id" => "usuarios#update"
  end

  resources :centros

  resources :criterios, :only => :show
  
  resources :municipios do
    collection do
      get :listar_municipios
    end
  end
  
  get '/pre_selecao' => "application#pre_selecao"
  get '/agenda_menu' => "application#agenda_menu"
  get '/selecao_menu' => "application#selecao_menu"
  get '/eventos_adversos_menu' => "application#eventos_adversos_menu"
  get '/alocacao' => "application#alocacao"
  get '/execucao' => "application#execucao"
  get '/encerramento' => "application#encerramento"
  get '/admin' => "application#admin"
  get '/home' => "application#home"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "application#principal"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
