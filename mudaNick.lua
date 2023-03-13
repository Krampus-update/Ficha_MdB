function mudaNick(nome, sheet)
    if not nome then return; end;
    if not sheet then return; end;

    if not common.isMainChar(sheet) then return; end;
    if not common.isMyChar(sheet) then return; end;

    local mesa = common.getMesa(sheet);
    if not mesa then return; end;

    if not mesa.meuJogador.isJogador then return; end;
    if not (mesa.meuJogador.nick ~= nome) then return; end;

    mesa.chat:enviarMensagem("/nick " .. nome);
	end;