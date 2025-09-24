% --- FATOS ---
% Definimos aqui o vocabulário do nosso sistema.

% Sintomas possíveis que o usuário pode reportar.
% Usamos o predicado 'sintoma/1' para declarar cada um.
sintoma(pc_nao_liga).
sintoma(pc_liga_mas_nao_da_video).
sintoma(pc_emite_bips_sequenciais).
sintoma(sistema_operacional_lento).
sintoma(tela_azul).

% Diagnósticos possíveis que o sistema pode inferir.
% Usamos o predicado 'diagnostico/1' para declarar cada um.
diagnostico(fonte_de_energia_queimada).
diagnostico(memoria_ram_mal_encaixada_ou_com_defeito).
diagnostico(disco_rigido_com_falha).
diagnostico(superaquecimento_do_processador).
diagnostico(problema_de_driver_ou_software).

% --- RELAÇÕES ---
% Mapeamos aqui quais sintomas estão associados a quais diagnósticos.
% Usamos o predicado sintoma_de(Sintoma, Diagnostico).

sintoma_de(pc_nao_liga, fonte_de_energia_queimada).

sintoma_de(pc_liga_mas_nao_da_video, memoria_ram_mal_encaixada_ou_com_defeito).
sintoma_de(pc_emite_bips_sequenciais, memoria_ram_mal_encaixada_ou_com_defeito).
sintoma_de(tela_azul, memoria_ram_mal_encaixada_ou_com_defeito).

sintoma_de(sistema_operacional_lento, disco_rigido_com_falha).
sintoma_de(tela_azul, disco_rigido_com_falha).

sintoma_de(sistema_operacional_lento, superaquecimento_do_processador).

% --- REGRAS ---
% Aqui definimos o comportamento e a inteligência do nosso sistema.

% A regra 'investigar/1' recebe um Sintoma, procura por um Diagnostico
% associado e exibe o resultado de forma amigável.
investigar(Sintoma) :-
    sintoma_de(Sintoma, Diagnostico),
    write('-> Para o sintoma: '), write(Sintoma), nl,
    write('   Um possível diagnóstico é: '), write(Diagnostico), nl.