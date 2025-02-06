INPUT

//Triplo RSI

periodo_RSI_curto(7);
periodo_RSI_medio(14);
periodo_RSI_longo(21);
gatilhoEntradaC(30);
gatilhoSaidaC(70);
gatilhoEntradaV(70);
gatilhoSaidaV(30);
inventerEntrada(false);

VAR
RSI_curto, RSI_medio, RSI_longo : float;
sinalC, sinalV, stopC, stopV: boolean;

BEGIN

//CARREGAR VALORES DOS INDICADORES
RSI_curto:=RSI(periodo_RSI_curto,1);
RSI_medio:=RSI(periodo_RSI_medio,1);
RSI_longo:=RSI(periodo_RSI_longo,1);

//SINAIS DE ENTRADA
se (not inventerEntrada) entao
BEGIN
sinalC:= (RSI_curto < gatilhoEntradaC) and (RSI_medio < gatilhoEntradaC) and (RSI_longo < gatilhoEntradaC);
sinalV:= (RSI_curto > gatilhoEntradaV) and (RSI_medio > gatilhoEntradaV) and (RSI_longo > gatilhoEntradaV);
END
senao
BEGIN
sinalV:= (RSI_curto < gatilhoEntradaC) and (RSI_medio < gatilhoEntradaC) and (RSI_longo < gatilhoEntradaC);
sinalC:= (RSI_curto > gatilhoEntradaV) and (RSI_medio > gatilhoEntradaV) and (RSI_longo > gatilhoEntradaV);
END;

//SINAIS DE SAÍDA
se (not inventerEntrada) entao
BEGIN
stopC:= (RSI_curto > gatilhoSaidaC) or (RSI_medio > gatilhoSaidaC) or (RSI_longo > gatilhoSaidaC);
stopV:= (RSI_curto < gatilhoSaidaV) or (RSI_medio < gatilhoSaidaV) or (RSI_longo < gatilhoSaidaV);
END
senao
BEGIN
stopV:= (RSI_curto > gatilhoSaidaC) or (RSI_medio > gatilhoSaidaC) or (RSI_longo > gatilhoSaidaC);
stopC:= (RSI_curto < gatilhoSaidaV) or (RSI_medio < gatilhoSaidaV) or (RSI_longo < gatilhoSaidaV);
END;

//EXECUÇÃO DE ENTRADA
se sinalC e (not IsBought) e (not IsSold) entao BuyAtMarket;
se sinalV e (not IsBought) e (not IsSold) entao SellShortAtMarket;

//EXECUÇÃO DE SAÍDA
se IsBought e stopC entao closeposition;
se IsSold e stopV entao closeposition;

//PLOTAGEM

plot(RSI_curto);
plot2(RSI_medio);
plot3(RSI_longo);
plot4(gatilhoEntradaC);
plot5(gatilhoSaidaC);
plot6(gatilhoEntradaV);
plot7(gatilhoSaidaV);

END;