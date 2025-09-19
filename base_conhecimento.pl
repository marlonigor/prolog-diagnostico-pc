% --- FATOS ---
% Definimos aqui o vocabulário do nosso sistema.

% Sintomas possíveis que o usuário pode reportar.
% Usamos o predicado 'sintoma/1' para declarar cada um.
sintoma(pc_nao_liga).
sintoma(pc_liga_mas_nao_da_video).
sintoma(pc_emite_bips_sequenciais).
sintoma(sistema_operacional_lento).
sintoma(tela_azul_da_morte).

% Diagnósticos possíveis que o sistema pode inferir.
% Usamos o predicado 'diagnostico/1' para declarar cada um.
diagnostico(fonte_de_energia_queimada).
diagnostico(memoria_ram_mal_encaixada_ou_com_defeito).
diagnostico(disco_rigido_com_falha).
diagnostico(superaquecimento_do_processador).
diagnostico(problema_de_driver_ou_software).