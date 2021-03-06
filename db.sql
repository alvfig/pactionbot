PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE articles (
    article_id DECIMAL NOT NULL PRIMARY KEY,
    short TEXT DEFAULT '',
    long TEXT DEFAULT ''
);
INSERT INTO "articles" VALUES(1,'2 Bars Reversal - reversão de duas barras','');
INSERT INTO "articles" VALUES(2,'Second Entry','');
INSERT INTO "articles" VALUES(3,'Second Leg Trap - armadilha de segunda perna','');
INSERT INTO "articles" VALUES(4,'Second Signal','');
INSERT INTO "articles" VALUES(5,'Always In','');
INSERT INTO "articles" VALUES(6,'Always In Long - modo sempre comprado','');
INSERT INTO "articles" VALUES(7,'Always In Short - modo sempre vendido','');
INSERT INTO "articles" VALUES(8,'Broad Channel - canal amplo','');
INSERT INTO "articles" VALUES(9,'Break Even - encerrar a operação no empate, sem lucro nem prejuízo','');
INSERT INTO "articles" VALUES(10,'Buying Pressure - pressão de compra','');
INSERT INTO "articles" VALUES(11,'Bull Reversal - reversão de alta','');
INSERT INTO "articles" VALUES(12,'Buy Low, Sell High - comprar baixo, vender alto','');
INSERT INTO "articles" VALUES(13,'Buy Low, Sell High, and Scalp - comprar baixo, vender alto, e lucrar curto (1:1)','');
INSERT INTO "articles" VALUES(14,'Breakout - rompimento','');
INSERT INTO "articles" VALUES(15,'Breakout Mode - modo rompimento','');
INSERT INTO "articles" VALUES(16,'Breakout Pullback - rompimento e correção','');
INSERT INTO "articles" VALUES(17,'Bear Reversal - reversão de baixa','');
INSERT INTO "articles" VALUES(18,'Barbwire - arame farpado','');
INSERT INTO "articles" VALUES(19,'Climax','');
INSERT INTO "articles" VALUES(20,'Counter Trend - contra a tendência','');
INSERT INTO "articles" VALUES(21,'Double Bottom - fundo duplo','');
INSERT INTO "articles" VALUES(22,'Double Top - topo duplo','');
INSERT INTO "articles" VALUES(23,'Entry Bar','');
INSERT INTO "articles" VALUES(24,'Exponential Moving Average - média móvel exponencial','');
INSERT INTO "articles" VALUES(25,'Failed Breakout - falha de rompimento','');
INSERT INTO "articles" VALUES(26,'Final Flag - bandeira final','');
INSERT INTO "articles" VALUES(27,'Follow Through - continuidade','');
INSERT INTO "articles" VALUES(28,'Gap','');
INSERT INTO "articles" VALUES(29,'Gap Bar','');
INSERT INTO "articles" VALUES(30,'High - alto, região alta','');
INSERT INTO "articles" VALUES(31,'High 1 - 1ª tentativa de retomar a tendência de alta','');
INSERT INTO "articles" VALUES(32,'High 2 - 2ª tentativa de retomar a tendência de alta','');
INSERT INTO "articles" VALUES(33,'High 3 - 3ª tentativa de retomar a tendência de alta','');
INSERT INTO "articles" VALUES(34,'High 4 - 4ª tentativa de retomar a tendência de alta','');
INSERT INTO "articles" VALUES(35,'Higher High','');
INSERT INTO "articles" VALUES(36,'Higher Low','');
INSERT INTO "articles" VALUES(37,'High Of the Day - máxima do dia','');
INSERT INTO "articles" VALUES(38,'High Of Yesterday - máxima do dia anterior','');
INSERT INTO "articles" VALUES(39,'Higher Time Frame - tempo gráfico maior','');
INSERT INTO "articles" VALUES(40,'Inside Bar','');
INSERT INTO "articles" VALUES(41,'Inside bar, Outside bar, Inside bar - sequência de barras dentro, fora, dentro','');
INSERT INTO "articles" VALUES(42,'Low - baixo, região baixa','');
INSERT INTO "articles" VALUES(43,'Low 1 - 1ª tentativa de retomar a tendência de baixa','');
INSERT INTO "articles" VALUES(44,'Low 2 - 2ª tentativa de retomar a tendência de baixa','');
INSERT INTO "articles" VALUES(45,'Low 3 - 3ª tentativa de retomar a tendência de baixa','');
INSERT INTO "articles" VALUES(46,'Low 4 - 4ª tentativa de retomar a tendência de baixa','');
INSERT INTO "articles" VALUES(47,'Lower High','');
INSERT INTO "articles" VALUES(48,'Lower Low','');
INSERT INTO "articles" VALUES(49,'Low Of the Day - mínima do dia','');
INSERT INTO "articles" VALUES(50,'Limit Orders Market - mercado de ordens limitadas','');
INSERT INTO "articles" VALUES(51,'Low Of Yesterday - mínima do dia anterior','');
INSERT INTO "articles" VALUES(52,'Moving average touch with double bottom Buy - sinal de compra com fundo duplo tocando na média móvel','');
INSERT INTO "articles" VALUES(53,'Measured Move - movimento projetado','');
INSERT INTO "articles" VALUES(54,'Major Trend Reversal - reversão majoritária de tendência','');
INSERT INTO "articles" VALUES(55,'Micro Channel','');
INSERT INTO "articles" VALUES(56,'Moving Average - média móvel','');
INSERT INTO "articles" VALUES(57,'Outside Bar','');
INSERT INTO "articles" VALUES(58,'Outside bar, Inside bar, Outside bar - sequência de barras fora, dentro, fora','');
INSERT INTO "articles" VALUES(59,'Price Action','');
INSERT INTO "articles" VALUES(60,'Pullback - correção','');
INSERT INTO "articles" VALUES(61,'Reversal - reversão','');
INSERT INTO "articles" VALUES(62,'realização curta de lucro (1:1)','');
INSERT INTO "articles" VALUES(63,'Selling Pressure - pressão de venda','');
INSERT INTO "articles" VALUES(64,'Swing High','');
INSERT INTO "articles" VALUES(65,'Swing Low','');
INSERT INTO "articles" VALUES(66,'realização longa de lucro (1:2 ou maior)','');
INSERT INTO "articles" VALUES(67,'Ten Bars, Two Legs - dez barras, duas pernas','');
INSERT INTO "articles" VALUES(68,'Tight Channel - canal estreito','');
INSERT INTO "articles" VALUES(69,'Trader''s Equation - equação do trader','');
INSERT INTO "articles" VALUES(70,'Time Frame - tempo gráfico','');
INSERT INTO "articles" VALUES(71,'Trading Range - lateralidade','');
INSERT INTO "articles" VALUES(72,'operação','');
INSERT INTO "articles" VALUES(73,'operador','');
INSERT INTO "articles" VALUES(74,'Trend Reversal - reversão de tendência','');
INSERT INTO "articles" VALUES(75,'Tight Trading Range - lateralidade estreita','');
INSERT INTO "articles" VALUES(76,'Wedge - cunha','');
INSERT INTO "articles" VALUES(77,'With Trend - a favor da tendência','');
INSERT INTO "articles" VALUES(78,'Moving average touch with double top Sell - sinal de venda com topo duplo tocando na média móvel','');
INSERT INTO "articles" VALUES(79,'Consecutive Candles - sequência de barras em continuidade','');
INSERT INTO "articles" VALUES(80,'Exausting Gaps - Gaps de exaustão','');
INSERT INTO "articles" VALUES(81,'Lower Time Frame - tempo gráfico menor','');
INSERT INTO "articles" VALUES(82,'High Probability - alta probabilidade','');
INSERT INTO "articles" VALUES(83,'Low Probability - baixa probabilidade','');
INSERT INTO "articles" VALUES(84,'mini contrato de dólar futuro - mercado para traders fracotes, bom mesmo é WIN!!','');
INSERT INTO "articles" VALUES(85,'mini contrato de índice futuro - mercado para traders fracotes, bom mesmo é WDO!!','');
INSERT INTO "articles" VALUES(86,'Expanded Triangle - triângulo expandido','');
INSERT INTO "articles" VALUES(87,'Breakout Pullback - rompimento seguido de correção','');
INSERT INTO "articles" VALUES(88,'Signal Bar - barra de sinal','');
INSERT INTO "articles" VALUES(89,'Buy The Close - tendência com pressão suficiente para compras próximas ao topo das barras de alta','');
INSERT INTO "articles" VALUES(90,'Sell The Close - tendência com pressão suficiente para vendas próximas ao fundo das barras de baixa','');
INSERT INTO "articles" VALUES(91,'Reversal Bar - barra de reversão','');
INSERT INTO "articles" VALUES(92,'Big Down, Big Up - grande perna de baixa seguida de grande perna de alta','');
INSERT INTO "articles" VALUES(93,'Big Up, Big Down - grande perna de alta seguida de grande perna de baixa','');
INSERT INTO "articles" VALUES(94,'Open Of Day - preço da abertura','');
INSERT INTO "articles" VALUES(95,'Open Of Month - preço da abertura do mês atual','');
INSERT INTO "articles" VALUES(96,'Open Of Today - preço da abertura','');
INSERT INTO "articles" VALUES(97,'Open Of Week - preço da abertura da semana atual','');
INSERT INTO "articles" VALUES(98,'Open Of Yesterday - preço da abertura do pregão anterior','');
INSERT INTO "articles" VALUES(99,'Buy Signal Bar - barra de sinal de compra','');
INSERT INTO "articles" VALUES(100,'Sell Signal Bar - barra de sinal de venda','');
INSERT INTO "articles" VALUES(101,'All Time High - máxima cotação em toda a história do ativo','');
INSERT INTO "articles" VALUES(102,'Parabolic Wedge - cunha parabólica, possível clímax do movimento','');
INSERT INTO "articles" VALUES(103,'Consecutive inside bars - barras internas consecutivas','');
INSERT INTO "articles" VALUES(104,'Consecutive outside bars - barras externas consecutivas','');
INSERT INTO "articles" VALUES(105,'Support and/or Resistance, depending on context - suporte ou resistência, dependendo do contexto','');
INSERT INTO "articles" VALUES(106,'Trend Bar - barra de tendência','');
INSERT INTO "articles" VALUES(107,'Gaps','');
INSERT INTO "articles" VALUES(108,'Micro Double Bottom - micro fundo duplo','');
INSERT INTO "articles" VALUES(109,'Micro Double Top - micro topo duplo','');
CREATE TABLE tags (
    tag TEXT NOT NULL PRIMARY KEY
);
INSERT INTO "tags" VALUES('2BR');
INSERT INTO "tags" VALUES('2E');
INSERT INTO "tags" VALUES('2LT');
INSERT INTO "tags" VALUES('2S');
INSERT INTO "tags" VALUES('AI');
INSERT INTO "tags" VALUES('AIL');
INSERT INTO "tags" VALUES('AIS');
INSERT INTO "tags" VALUES('BC');
INSERT INTO "tags" VALUES('BE');
INSERT INTO "tags" VALUES('BGP');
INSERT INTO "tags" VALUES('BLR');
INSERT INTO "tags" VALUES('BLSH');
INSERT INTO "tags" VALUES('BLSHS');
INSERT INTO "tags" VALUES('BO');
INSERT INTO "tags" VALUES('BOM');
INSERT INTO "tags" VALUES('BOP');
INSERT INTO "tags" VALUES('BP');
INSERT INTO "tags" VALUES('BRR');
INSERT INTO "tags" VALUES('BW');
INSERT INTO "tags" VALUES('CC');
INSERT INTO "tags" VALUES('CLX');
INSERT INTO "tags" VALUES('CT');
INSERT INTO "tags" VALUES('DB');
INSERT INTO "tags" VALUES('DT');
INSERT INTO "tags" VALUES('EB');
INSERT INTO "tags" VALUES('EG');
INSERT INTO "tags" VALUES('EMA');
INSERT INTO "tags" VALUES('EXPTRI');
INSERT INTO "tags" VALUES('EXP');
INSERT INTO "tags" VALUES('TRI');
INSERT INTO "tags" VALUES('EXP.TRI.');
INSERT INTO "tags" VALUES('EXP.');
INSERT INTO "tags" VALUES('TRI.');
INSERT INTO "tags" VALUES('FBO');
INSERT INTO "tags" VALUES('FF');
INSERT INTO "tags" VALUES('FT');
INSERT INTO "tags" VALUES('G');
INSERT INTO "tags" VALUES('GB');
INSERT INTO "tags" VALUES('H');
INSERT INTO "tags" VALUES('H1');
INSERT INTO "tags" VALUES('H2');
INSERT INTO "tags" VALUES('H3');
INSERT INTO "tags" VALUES('H4');
INSERT INTO "tags" VALUES('HH');
INSERT INTO "tags" VALUES('HL');
INSERT INTO "tags" VALUES('HOD');
INSERT INTO "tags" VALUES('HOY');
INSERT INTO "tags" VALUES('HP');
INSERT INTO "tags" VALUES('HTF');
INSERT INTO "tags" VALUES('IB');
INSERT INTO "tags" VALUES('IOI');
INSERT INTO "tags" VALUES('L');
INSERT INTO "tags" VALUES('L1');
INSERT INTO "tags" VALUES('L2');
INSERT INTO "tags" VALUES('L3');
INSERT INTO "tags" VALUES('L4');
INSERT INTO "tags" VALUES('LH');
INSERT INTO "tags" VALUES('LL');
INSERT INTO "tags" VALUES('LOD');
INSERT INTO "tags" VALUES('LOM');
INSERT INTO "tags" VALUES('LOY');
INSERT INTO "tags" VALUES('LP');
INSERT INTO "tags" VALUES('LTF');
INSERT INTO "tags" VALUES('M2B');
INSERT INTO "tags" VALUES('M2S');
INSERT INTO "tags" VALUES('MM');
INSERT INTO "tags" VALUES('MTR');
INSERT INTO "tags" VALUES('MC');
INSERT INTO "tags" VALUES('MA');
INSERT INTO "tags" VALUES('OB');
INSERT INTO "tags" VALUES('OIO');
INSERT INTO "tags" VALUES('PA');
INSERT INTO "tags" VALUES('PB');
INSERT INTO "tags" VALUES('RV');
INSERT INTO "tags" VALUES('SB');
INSERT INTO "tags" VALUES('SCALP');
INSERT INTO "tags" VALUES('SGP');
INSERT INTO "tags" VALUES('SH');
INSERT INTO "tags" VALUES('SL');
INSERT INTO "tags" VALUES('SWING');
INSERT INTO "tags" VALUES('TBTL');
INSERT INTO "tags" VALUES('TC');
INSERT INTO "tags" VALUES('TE');
INSERT INTO "tags" VALUES('TF');
INSERT INTO "tags" VALUES('TR');
INSERT INTO "tags" VALUES('TRADE');
INSERT INTO "tags" VALUES('TRADER');
INSERT INTO "tags" VALUES('TREV');
INSERT INTO "tags" VALUES('TTR');
INSERT INTO "tags" VALUES('W');
INSERT INTO "tags" VALUES('WT');
INSERT INTO "tags" VALUES('WDO');
INSERT INTO "tags" VALUES('WIN');
INSERT INTO "tags" VALUES('BTC');
INSERT INTO "tags" VALUES('STC');
INSERT INTO "tags" VALUES('RB');
INSERT INTO "tags" VALUES('BDBU');
INSERT INTO "tags" VALUES('BUBD');
INSERT INTO "tags" VALUES('OOD');
INSERT INTO "tags" VALUES('OOM');
INSERT INTO "tags" VALUES('OOT');
INSERT INTO "tags" VALUES('OOW');
INSERT INTO "tags" VALUES('OOY');
INSERT INTO "tags" VALUES('BSB');
INSERT INTO "tags" VALUES('SSB');
INSERT INTO "tags" VALUES('ATH');
INSERT INTO "tags" VALUES('PW');
INSERT INTO "tags" VALUES('II');
INSERT INTO "tags" VALUES('OO');
INSERT INTO "tags" VALUES('SR');
INSERT INTO "tags" VALUES('TB');
INSERT INTO "tags" VALUES('GS');
INSERT INTO "tags" VALUES('MDB');
INSERT INTO "tags" VALUES('MDT');
CREATE TABLE figures (
    figure_id DECIMAL NOT NULL PRIMARY KEY,
    image BLOB NOT NULL
);
CREATE TABLE articles_tags (
    article_id DECIMAL NOT NULL,
    tag TEXT NOT NULL,
    CONSTRAINT articles_tags_article_id FOREIGN KEY (article_id) REFERENCES articles(article_id),
    CONSTRAINT articles_tags_tag FOREIGN KEY (tag) REFERENCES tags(tag),
    CONSTRAINT articles_tags_unique UNIQUE (article_id, tag)
);
INSERT INTO "articles_tags" VALUES(1,'2BR');
INSERT INTO "articles_tags" VALUES(2,'2E');
INSERT INTO "articles_tags" VALUES(3,'2LT');
INSERT INTO "articles_tags" VALUES(4,'2S');
INSERT INTO "articles_tags" VALUES(5,'AI');
INSERT INTO "articles_tags" VALUES(6,'AIL');
INSERT INTO "articles_tags" VALUES(7,'AIS');
INSERT INTO "articles_tags" VALUES(8,'BC');
INSERT INTO "articles_tags" VALUES(9,'BE');
INSERT INTO "articles_tags" VALUES(10,'BGP');
INSERT INTO "articles_tags" VALUES(11,'BLR');
INSERT INTO "articles_tags" VALUES(12,'BLSH');
INSERT INTO "articles_tags" VALUES(13,'BLSHS');
INSERT INTO "articles_tags" VALUES(14,'BO');
INSERT INTO "articles_tags" VALUES(15,'BOM');
INSERT INTO "articles_tags" VALUES(16,'BP');
INSERT INTO "articles_tags" VALUES(17,'BRR');
INSERT INTO "articles_tags" VALUES(18,'BW');
INSERT INTO "articles_tags" VALUES(19,'CLX');
INSERT INTO "articles_tags" VALUES(20,'CT');
INSERT INTO "articles_tags" VALUES(21,'DB');
INSERT INTO "articles_tags" VALUES(22,'DT');
INSERT INTO "articles_tags" VALUES(23,'EB');
INSERT INTO "articles_tags" VALUES(24,'EMA');
INSERT INTO "articles_tags" VALUES(25,'FBO');
INSERT INTO "articles_tags" VALUES(26,'FF');
INSERT INTO "articles_tags" VALUES(27,'FT');
INSERT INTO "articles_tags" VALUES(28,'G');
INSERT INTO "articles_tags" VALUES(29,'GB');
INSERT INTO "articles_tags" VALUES(30,'H');
INSERT INTO "articles_tags" VALUES(31,'H1');
INSERT INTO "articles_tags" VALUES(32,'H2');
INSERT INTO "articles_tags" VALUES(33,'H3');
INSERT INTO "articles_tags" VALUES(34,'H4');
INSERT INTO "articles_tags" VALUES(35,'HH');
INSERT INTO "articles_tags" VALUES(36,'HL');
INSERT INTO "articles_tags" VALUES(37,'HOD');
INSERT INTO "articles_tags" VALUES(38,'HOY');
INSERT INTO "articles_tags" VALUES(39,'HTF');
INSERT INTO "articles_tags" VALUES(40,'IB');
INSERT INTO "articles_tags" VALUES(41,'IOI');
INSERT INTO "articles_tags" VALUES(42,'L');
INSERT INTO "articles_tags" VALUES(43,'L1');
INSERT INTO "articles_tags" VALUES(44,'L2');
INSERT INTO "articles_tags" VALUES(45,'L3');
INSERT INTO "articles_tags" VALUES(46,'L4');
INSERT INTO "articles_tags" VALUES(47,'LH');
INSERT INTO "articles_tags" VALUES(48,'LL');
INSERT INTO "articles_tags" VALUES(49,'LOD');
INSERT INTO "articles_tags" VALUES(50,'LOM');
INSERT INTO "articles_tags" VALUES(51,'LOY');
INSERT INTO "articles_tags" VALUES(52,'M2B');
INSERT INTO "articles_tags" VALUES(53,'MM');
INSERT INTO "articles_tags" VALUES(54,'MTR');
INSERT INTO "articles_tags" VALUES(55,'MC');
INSERT INTO "articles_tags" VALUES(56,'MA');
INSERT INTO "articles_tags" VALUES(57,'OB');
INSERT INTO "articles_tags" VALUES(58,'OIO');
INSERT INTO "articles_tags" VALUES(59,'PA');
INSERT INTO "articles_tags" VALUES(60,'PB');
INSERT INTO "articles_tags" VALUES(61,'RV');
INSERT INTO "articles_tags" VALUES(62,'SCALP');
INSERT INTO "articles_tags" VALUES(63,'SGP');
INSERT INTO "articles_tags" VALUES(64,'SH');
INSERT INTO "articles_tags" VALUES(65,'SL');
INSERT INTO "articles_tags" VALUES(66,'SWING');
INSERT INTO "articles_tags" VALUES(67,'TBTL');
INSERT INTO "articles_tags" VALUES(68,'TC');
INSERT INTO "articles_tags" VALUES(69,'TE');
INSERT INTO "articles_tags" VALUES(70,'TF');
INSERT INTO "articles_tags" VALUES(71,'TR');
INSERT INTO "articles_tags" VALUES(72,'TRADE');
INSERT INTO "articles_tags" VALUES(73,'TRADER');
INSERT INTO "articles_tags" VALUES(74,'TREV');
INSERT INTO "articles_tags" VALUES(75,'TTR');
INSERT INTO "articles_tags" VALUES(76,'W');
INSERT INTO "articles_tags" VALUES(77,'WT');
INSERT INTO "articles_tags" VALUES(78,'M2S');
INSERT INTO "articles_tags" VALUES(79,'CC');
INSERT INTO "articles_tags" VALUES(80,'EG');
INSERT INTO "articles_tags" VALUES(81,'LTF');
INSERT INTO "articles_tags" VALUES(82,'HP');
INSERT INTO "articles_tags" VALUES(83,'LP');
INSERT INTO "articles_tags" VALUES(84,'WDO');
INSERT INTO "articles_tags" VALUES(85,'WIN');
INSERT INTO "articles_tags" VALUES(86,'EXPTRI');
INSERT INTO "articles_tags" VALUES(86,'EXP');
INSERT INTO "articles_tags" VALUES(86,'TRI');
INSERT INTO "articles_tags" VALUES(86,'EXP.TRI.');
INSERT INTO "articles_tags" VALUES(86,'EXP.');
INSERT INTO "articles_tags" VALUES(86,'TRI.');
INSERT INTO "articles_tags" VALUES(87,'BOP');
INSERT INTO "articles_tags" VALUES(88,'SB');
INSERT INTO "articles_tags" VALUES(89,'BTC');
INSERT INTO "articles_tags" VALUES(90,'STC');
INSERT INTO "articles_tags" VALUES(91,'RB');
INSERT INTO "articles_tags" VALUES(92,'BDBU');
INSERT INTO "articles_tags" VALUES(93,'BUBD');
INSERT INTO "articles_tags" VALUES(94,'OOD');
INSERT INTO "articles_tags" VALUES(95,'OOM');
INSERT INTO "articles_tags" VALUES(96,'OOT');
INSERT INTO "articles_tags" VALUES(97,'OOW');
INSERT INTO "articles_tags" VALUES(98,'OOY');
INSERT INTO "articles_tags" VALUES(99,'BSB');
INSERT INTO "articles_tags" VALUES(100,'SSB');
INSERT INTO "articles_tags" VALUES(101,'ATH');
INSERT INTO "articles_tags" VALUES(102,'PW');
INSERT INTO "articles_tags" VALUES(103,'II');
INSERT INTO "articles_tags" VALUES(104,'OO');
INSERT INTO "articles_tags" VALUES(105,'SR');
INSERT INTO "articles_tags" VALUES(106,'TB');
INSERT INTO "articles_tags" VALUES(107,'GS');
INSERT INTO "articles_tags" VALUES(108,'MDB');
INSERT INTO "articles_tags" VALUES(109,'MDT');
CREATE TABLE articles_figures (
    article_id DECIMAL NOT NULL,
    figure_id DECIMAL NOT NULL,
    CONSTRAINT articles_figures_article_id FOREIGN KEY (article_id) REFERENCES articles(article_id),
    CONSTRAINT articles_figures_figure_id FOREIGN KEY (figure_id) REFERENCES figures(figure_id),
    CONSTRAINT articles_figures_unique UNIQUE (article_id, figure_id)
);
COMMIT;
