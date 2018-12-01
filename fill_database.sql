-- populate_database.sql


-- Template
--INSERT INTO tags (tag) VALUES ('');
--INSERT INTO articles (article_id, short) VALUES (0, '');
--INSERT INTO articles_tags (article_id, tag) VALUES (0, '');


--"2BR": "2 Bars Reversal - reversão de duas barras",
INSERT INTO tags (tag) VALUES ('2BR');
INSERT INTO articles (article_id, short) VALUES (1, '2 Bars Reversal - reversão de duas barras');
INSERT INTO articles_tags (article_id, tag) VALUES (1, '2BR');


--"2E": "Second Entry",
INSERT INTO tags (tag) VALUES ('2E');
INSERT INTO articles (article_id, short) VALUES (2, 'Second Entry');
INSERT INTO articles_tags (article_id, tag) VALUES (2, '2E');

--"2LT": "Second Leg Trap - armadilha de segunda perna",
INSERT INTO tags (tag) VALUES ('2LT');
INSERT INTO articles (article_id, short) VALUES (3, 'Second Leg Trap - armadilha de segunda perna');
INSERT INTO articles_tags (article_id, tag) VALUES (3, '2LT');

--"2S": "Second Signal",
INSERT INTO tags (tag) VALUES ('2S');
INSERT INTO articles (article_id, short) VALUES (4, 'Second Signal');
INSERT INTO articles_tags (article_id, tag) VALUES (4, '2S');

--"AI": "Always In",
INSERT INTO tags (tag) VALUES ('AI');
INSERT INTO articles (article_id, short) VALUES (5, 'Always In');
INSERT INTO articles_tags (article_id, tag) VALUES (5, 'AI');

--"AIL": "Always In Long - modo sempre comprado",
INSERT INTO tags (tag) VALUES ('AIL');
INSERT INTO articles (article_id, short) VALUES (6, 'Always In Long - modo sempre comprado');
INSERT INTO articles_tags (article_id, tag) VALUES (6, 'AIL');

--"AIS": "Always In Short - modo sempre vendido",
INSERT INTO tags (tag) VALUES ('AIS');
INSERT INTO articles (article_id, short) VALUES (7, 'Always In Short - modo sempre vendido');
INSERT INTO articles_tags (article_id, tag) VALUES (7, 'AIS');

--"BC": "Broad Channel - canal amplo",
INSERT INTO tags (tag) VALUES ('BC');
INSERT INTO articles (article_id, short) VALUES (8, 'Broad Channel - canal amplo');
INSERT INTO articles_tags (article_id, tag) VALUES (8, 'BC');

--"BE": "Break Even - encerrar a operação no empate, sem lucro nem prejuízo",
INSERT INTO tags (tag) VALUES ('BE');
INSERT INTO articles (article_id, short) VALUES (9, 'Break Even - encerrar a operação no empate, sem lucro nem prejuízo');
INSERT INTO articles_tags (article_id, tag) VALUES (9, 'BE');

--"BGP": "Buying Pressure - pressão de compra",
INSERT INTO tags (tag) VALUES ('BGP');
INSERT INTO articles (article_id, short) VALUES (10, 'Buying Pressure - pressão de compra');
INSERT INTO articles_tags (article_id, tag) VALUES (10, 'BGP');

--"BLR": "Bull Reversal - reversão de alta",
INSERT INTO tags (tag) VALUES ('BLR');
INSERT INTO articles (article_id, short) VALUES (11, 'Bull Reversal - reversão de alta');
INSERT INTO articles_tags (article_id, tag) VALUES (11, 'BLR');

--"BLSH": "Buy Low, Sell High - comprar baixo, vender alto",
INSERT INTO tags (tag) VALUES ('BLSH');
INSERT INTO articles (article_id, short) VALUES (12, 'Buy Low, Sell High - comprar baixo, vender alto');
INSERT INTO articles_tags (article_id, tag) VALUES (12, 'BLSH');

--"BLSHS": "Buy Low, Sell High, and Scalp - comprar baixo, vender alto, e lucrar curto (1:1)",
INSERT INTO tags (tag) VALUES ('BLSHS');
INSERT INTO articles (article_id, short) VALUES (13, 'Buy Low, Sell High, and Scalp - comprar baixo, vender alto, e lucrar curto (1:1)');
INSERT INTO articles_tags (article_id, tag) VALUES (13, 'BLSHS');

--"BO": "Breakout - rompimento",
INSERT INTO tags (tag) VALUES ('BO');
INSERT INTO articles (article_id, short) VALUES (14, 'Breakout - rompimento');
INSERT INTO articles_tags (article_id, tag) VALUES (14, 'BO');

--"BOM": "Breakout Mode - modo rompimento",
INSERT INTO tags (tag) VALUES ('BOM');
INSERT INTO articles (article_id, short) VALUES (15, 'Breakout Mode - modo rompimento');
INSERT INTO articles_tags (article_id, tag) VALUES (15, 'BOM');

--"BP": "Breakout Pullback - rompimento e correção",
INSERT INTO tags (tag) VALUES ('BP');
INSERT INTO articles (article_id, short) VALUES (16, 'Breakout Pullback - rompimento e correção');
INSERT INTO articles_tags (article_id, tag) VALUES (16, 'BP');

--"BRR": "Bear Reversal - reversão de baixa",
INSERT INTO tags (tag) VALUES ('BRR');
INSERT INTO articles (article_id, short) VALUES (17, 'Bear Reversal - reversão de baixa');
INSERT INTO articles_tags (article_id, tag) VALUES (17, 'BRR');

--"BW": "Barbwire - arame farpado",
INSERT INTO tags (tag) VALUES ('BW');
INSERT INTO articles (article_id, short) VALUES (18, 'Barbwire - arame farpado');
INSERT INTO articles_tags (article_id, tag) VALUES (18, 'BW');

--"CLX": "Climax",
INSERT INTO tags (tag) VALUES ('CLX');
INSERT INTO articles (article_id, short) VALUES (19, 'Climax');
INSERT INTO articles_tags (article_id, tag) VALUES (19, 'CLX');

--"CT": "Counter Trend - contra a tendência",
INSERT INTO tags (tag) VALUES ('CT');
INSERT INTO articles (article_id, short) VALUES (20, 'Counter Trend - contra a tendência');
INSERT INTO articles_tags (article_id, tag) VALUES (20, 'CT');

--"DB": "Double Bottom - fundo duplo",
INSERT INTO tags (tag) VALUES ('DB');
INSERT INTO articles (article_id, short) VALUES (21, 'Double Bottom - fundo duplo');
INSERT INTO articles_tags (article_id, tag) VALUES (21, 'DB');

--"DT": "Double Top - topo duplo",
INSERT INTO tags (tag) VALUES ('DT');
INSERT INTO articles (article_id, short) VALUES (22, 'Double Top - topo duplo');
INSERT INTO articles_tags (article_id, tag) VALUES (22, 'DT');

--"EB": "Entry Bar",
INSERT INTO tags (tag) VALUES ('EB');
INSERT INTO articles (article_id, short) VALUES (23, 'Entry Bar');
INSERT INTO articles_tags (article_id, tag) VALUES (23, 'EB');

--"EMA": "Exponential Moving Average - média móvel exponencial",
INSERT INTO tags (tag) VALUES ('EMA');
INSERT INTO articles (article_id, short) VALUES (24, 'Exponential Moving Average - média móvel exponencial');
INSERT INTO articles_tags (article_id, tag) VALUES (24, 'EMA');

--"FBO": "Failed Breakout - falha de rompimento",
INSERT INTO tags (tag) VALUES ('FBO');
INSERT INTO articles (article_id, short) VALUES (25, 'Failed Breakout - falha de rompimento');
INSERT INTO articles_tags (article_id, tag) VALUES (25, 'FBO');

--"FF": "Final Flag - bandeira final",
INSERT INTO tags (tag) VALUES ('FF');
INSERT INTO articles (article_id, short) VALUES (26, 'Final Flag - bandeira final');
INSERT INTO articles_tags (article_id, tag) VALUES (26, 'FF');

--"FT": "Follow Through - continuidade",
INSERT INTO tags (tag) VALUES ('FT');
INSERT INTO articles (article_id, short) VALUES (27, 'Follow Through - continuidade');
INSERT INTO articles_tags (article_id, tag) VALUES (27, 'FT');

--"G": "Gap",
INSERT INTO tags (tag) VALUES ('G');
INSERT INTO articles (article_id, short) VALUES (28, 'Gap');
INSERT INTO articles_tags (article_id, tag) VALUES (28, 'G');

--"GB": "Gap Bar",
INSERT INTO tags (tag) VALUES ('GB');
INSERT INTO articles (article_id, short) VALUES (29, 'Gap Bar');
INSERT INTO articles_tags (article_id, tag) VALUES (29, 'GB');

--"H": "High - alto, região alta",
INSERT INTO tags (tag) VALUES ('H');
INSERT INTO articles (article_id, short) VALUES (30, 'High - alto, região alta');
INSERT INTO articles_tags (article_id, tag) VALUES (30, 'H');

--"H1": "High 1 - 1ª tentativa de retomar a tendência de alta",
INSERT INTO tags (tag) VALUES ('H1');
INSERT INTO articles (article_id, short) VALUES (31, 'High 1 - 1ª tentativa de retomar a tendência de alta');
INSERT INTO articles_tags (article_id, tag) VALUES (31, 'H1');

--"H2": "High 2 - 2ª tentativa de retomar a tendência de alta",
INSERT INTO tags (tag) VALUES ('H2');
INSERT INTO articles (article_id, short) VALUES (32, 'High 2 - 2ª tentativa de retomar a tendência de alta');
INSERT INTO articles_tags (article_id, tag) VALUES (32, 'H2');

--"H3": "High 3 - 3ª tentativa de retomar a tendência de alta",
INSERT INTO tags (tag) VALUES ('H3');
INSERT INTO articles (article_id, short) VALUES (33, 'High 3 - 3ª tentativa de retomar a tendência de alta');
INSERT INTO articles_tags (article_id, tag) VALUES (33, 'H3');

--"H4": "High 4 - 4ª tentativa de retomar a tendência de alta",
INSERT INTO tags (tag) VALUES ('H4');
INSERT INTO articles (article_id, short) VALUES (34, 'High 4 - 4ª tentativa de retomar a tendência de alta');
INSERT INTO articles_tags (article_id, tag) VALUES (34, 'H4');

--"HH": "Higher High",
INSERT INTO tags (tag) VALUES ('HH');
INSERT INTO articles (article_id, short) VALUES (35, 'Higher High');
INSERT INTO articles_tags (article_id, tag) VALUES (35, 'HH');

--"HL": "Higher Low",
INSERT INTO tags (tag) VALUES ('HL');
INSERT INTO articles (article_id, short) VALUES (36, 'Higher Low');
INSERT INTO articles_tags (article_id, tag) VALUES (36, 'HL');

--"HOD": "High Of the Day - máxima do dia",
INSERT INTO tags (tag) VALUES ('HOD');
INSERT INTO articles (article_id, short) VALUES (37, 'High Of the Day - máxima do dia');
INSERT INTO articles_tags (article_id, tag) VALUES (37, 'HOD');

--"HOY": "High Of Yesterday - máxima do dia anterior",
INSERT INTO tags (tag) VALUES ('HOY');
INSERT INTO articles (article_id, short) VALUES (38, 'High Of Yesterday - máxima do dia anterior');
INSERT INTO articles_tags (article_id, tag) VALUES (38, 'HOY');

--"HTF": "Higher Time Frame - tempo gráfico maior",
INSERT INTO tags (tag) VALUES ('HTF');
INSERT INTO articles (article_id, short) VALUES (39, 'Higher Time Frame - tempo gráfico maior');
INSERT INTO articles_tags (article_id, tag) VALUES (39, 'HTF');

--"IB": "Inside Bar",
INSERT INTO tags (tag) VALUES ('IB');
INSERT INTO articles (article_id, short) VALUES (40, 'Inside Bar');
INSERT INTO articles_tags (article_id, tag) VALUES (40, 'IB');

--"IOI": "Inside bar, Outside bar, Inside bar - sequência de barras dentro, fora, dentro",
INSERT INTO tags (tag) VALUES ('IOI');
INSERT INTO articles (article_id, short) VALUES (41, 'Inside bar, Outside bar, Inside bar - sequência de barras dentro, fora, dentro');
INSERT INTO articles_tags (article_id, tag) VALUES (41, 'IOI');

--"L": "Low - baixo, região baixa",
INSERT INTO tags (tag) VALUES ('L');
INSERT INTO articles (article_id, short) VALUES (42, 'Low - baixo, região baixa');
INSERT INTO articles_tags (article_id, tag) VALUES (42, 'L');

--"L1": "Low 1 - 1ª tentativa de retomar a tendência de baixa",
INSERT INTO tags (tag) VALUES ('L1');
INSERT INTO articles (article_id, short) VALUES (43, 'Low 1 - 1ª tentativa de retomar a tendência de baixa');
INSERT INTO articles_tags (article_id, tag) VALUES (43, 'L1');

--"L2": "Low 2 - 2ª tentativa de retomar a tendência de baixa",
INSERT INTO tags (tag) VALUES ('L2');
INSERT INTO articles (article_id, short) VALUES (44, 'Low 2 - 2ª tentativa de retomar a tendência de baixa');
INSERT INTO articles_tags (article_id, tag) VALUES (44, 'L2');

--"L3": "Low 3 - 3ª tentativa de retomar a tendência de baixa",
INSERT INTO tags (tag) VALUES ('L3');
INSERT INTO articles (article_id, short) VALUES (45, 'Low 3 - 3ª tentativa de retomar a tendência de baixa');
INSERT INTO articles_tags (article_id, tag) VALUES (45, 'L3');

--"L4": "Low 4 - 4ª tentativa de retomar a tendência de baixa",
INSERT INTO tags (tag) VALUES ('L4');
INSERT INTO articles (article_id, short) VALUES (46, 'Low 4 - 4ª tentativa de retomar a tendência de baixa');
INSERT INTO articles_tags (article_id, tag) VALUES (46, 'L4');

--"LH": "Lower High",
INSERT INTO tags (tag) VALUES ('LH');
INSERT INTO articles (article_id, short) VALUES (47, 'Lower High');
INSERT INTO articles_tags (article_id, tag) VALUES (47, 'LH');

--"LL": "Lower Low",
INSERT INTO tags (tag) VALUES ('LL');
INSERT INTO articles (article_id, short) VALUES (48, 'Lower Low');
INSERT INTO articles_tags (article_id, tag) VALUES (48, 'LL');

--"LOD": "Low Of the Day - mínima do dia",
INSERT INTO tags (tag) VALUES ('LOD');
INSERT INTO articles (article_id, short) VALUES (49, 'Low Of the Day - mínima do dia');
INSERT INTO articles_tags (article_id, tag) VALUES (49, 'LOD');

--"LOM": "Limit Orders Market - mercado de ordens limitadas",
INSERT INTO tags (tag) VALUES ('LOM');
INSERT INTO articles (article_id, short) VALUES (50, 'Limit Orders Market - mercado de ordens limitadas');
INSERT INTO articles_tags (article_id, tag) VALUES (50, 'LOM');

--"LOY": "Low Of Yesterday - mínima do dia anterior",
INSERT INTO tags (tag) VALUES ('LOY');
INSERT INTO articles (article_id, short) VALUES (51, 'Low Of Yesterday - mínima do dia anterior');
INSERT INTO articles_tags (article_id, tag) VALUES (51, 'LOY');

--"M2B": "Moving average touch with Double bottom Buy - compra com fundo duplo tocando na média móvel",
INSERT INTO tags (tag) VALUES ('M2B');
INSERT INTO articles (article_id, short) VALUES (52, 'Moving average touch with Double bottom Buy - compra com fundo duplo tocando na média móvel');
INSERT INTO articles_tags (article_id, tag) VALUES (52, 'M2B');

--"MM": "Major Move - movimento projetado",
INSERT INTO tags (tag) VALUES ('MM');
INSERT INTO articles (article_id, short) VALUES (53, 'Major Move - movimento projetado');
INSERT INTO articles_tags (article_id, tag) VALUES (53, 'MM');

--"MTR": "Major Trend Reversal - reversão majoritária de tendência",
INSERT INTO tags (tag) VALUES ('MTR');
INSERT INTO articles (article_id, short) VALUES (54, 'Major Trend Reversal - reversão majoritária de tendência');
INSERT INTO articles_tags (article_id, tag) VALUES (54, 'MTR');

--"MC": "Micro Channel",
INSERT INTO tags (tag) VALUES ('MC');
INSERT INTO articles (article_id, short) VALUES (55, 'Micro Channel');
INSERT INTO articles_tags (article_id, tag) VALUES (55, 'MC');

--"MA": "Moving Average - média móvel",
INSERT INTO tags (tag) VALUES ('MA');
INSERT INTO articles (article_id, short) VALUES (56, 'Moving Average - média móvel');
INSERT INTO articles_tags (article_id, tag) VALUES (56, 'MA');

--"OB": "Outside Bar",
INSERT INTO tags (tag) VALUES ('OB');
INSERT INTO articles (article_id, short) VALUES (57, 'Outside Bar');
INSERT INTO articles_tags (article_id, tag) VALUES (57, 'OB');

--"OIO": "Outside bar, Inside bar, Outside bar - sequência de barras fora, dentro, fora",
INSERT INTO tags (tag) VALUES ('OIO');
INSERT INTO articles (article_id, short) VALUES (58, 'Outside bar, Inside bar, Outside bar - sequência de barras fora, dentro, fora');
INSERT INTO articles_tags (article_id, tag) VALUES (58, 'OIO');

--"PA": "Price Action",
INSERT INTO tags (tag) VALUES ('PA');
INSERT INTO articles (article_id, short) VALUES (59, 'Price Action');
INSERT INTO articles_tags (article_id, tag) VALUES (59, 'PA');

--"PB": "Pullback - correção",
INSERT INTO tags (tag) VALUES ('PB');
INSERT INTO articles (article_id, short) VALUES (60, 'Pullback - correção');
INSERT INTO articles_tags (article_id, tag) VALUES (60, 'PB');

--"RV": "Reversal - reversão",
INSERT INTO tags (tag) VALUES ('RV');
INSERT INTO articles (article_id, short) VALUES (61, 'Reversal - reversão');
INSERT INTO articles_tags (article_id, tag) VALUES (61, 'RV');

--"SCALP": "realização curta de lucro (1:1)",
INSERT INTO tags (tag) VALUES ('SCALP');
INSERT INTO articles (article_id, short) VALUES (62, 'realização curta de lucro (1:1)');
INSERT INTO articles_tags (article_id, tag) VALUES (62, 'SCALP');

--"SGP": "Selling Pressure - pressão de venda",
INSERT INTO tags (tag) VALUES ('SGP');
INSERT INTO articles (article_id, short) VALUES (63, 'Selling Pressure - pressão de venda');
INSERT INTO articles_tags (article_id, tag) VALUES (63, 'SGP');

--"SH": "Swing High",
INSERT INTO tags (tag) VALUES ('SH');
INSERT INTO articles (article_id, short) VALUES (64, 'Swing High');
INSERT INTO articles_tags (article_id, tag) VALUES (64, 'SH');

--"SL": "Swing Low",
INSERT INTO tags (tag) VALUES ('SL');
INSERT INTO articles (article_id, short) VALUES (65, 'Swing Low');
INSERT INTO articles_tags (article_id, tag) VALUES (65, 'SL');

--"SWING": "realização longa de lucro (1:2 ou maior)",
INSERT INTO tags (tag) VALUES ('SWING');
INSERT INTO articles (article_id, short) VALUES (66, 'realização longa de lucro (1:2 ou maior)');
INSERT INTO articles_tags (article_id, tag) VALUES (66, 'SWING');

--"TBTL": "Ten Bars, Two Legs - dez barras, duas pernas",
INSERT INTO tags (tag) VALUES ('TBTL');
INSERT INTO articles (article_id, short) VALUES (67, 'Ten Bars, Two Legs - dez barras, duas pernas');
INSERT INTO articles_tags (article_id, tag) VALUES (67, 'TBTL');

--"TC": "Tight Channel - canal estreito",
INSERT INTO tags (tag) VALUES ('TC');
INSERT INTO articles (article_id, short) VALUES (68, 'Tight Channel - canal estreito');
INSERT INTO articles_tags (article_id, tag) VALUES (68, 'TC');

--"TE": "Trader's Equation - equação do trader",
INSERT INTO tags (tag) VALUES ('TE');
INSERT INTO articles (article_id, short) VALUES (69, 'Trader''s Equation - equação do trader');
INSERT INTO articles_tags (article_id, tag) VALUES (69, 'TE');

--"TF": "Time Frame - tempo gráfico",
INSERT INTO tags (tag) VALUES ('TF');
INSERT INTO articles (article_id, short) VALUES (70, 'Time Frame - tempo gráfico');
INSERT INTO articles_tags (article_id, tag) VALUES (70, 'TF');

--"TR": "Trading Range - lateralidade",
INSERT INTO tags (tag) VALUES ('TR');
INSERT INTO articles (article_id, short) VALUES (71, 'Trading Range - lateralidade');
INSERT INTO articles_tags (article_id, tag) VALUES (71, 'TR');

--"TRADE": "operação",
INSERT INTO tags (tag) VALUES ('TRADE');
INSERT INTO articles (article_id, short) VALUES (72, 'operação');
INSERT INTO articles_tags (article_id, tag) VALUES (72, 'TRADE');

--"TRADER": "operador",
INSERT INTO tags (tag) VALUES ('TRADER');
INSERT INTO articles (article_id, short) VALUES (73, 'operador');
INSERT INTO articles_tags (article_id, tag) VALUES (73, 'TRADER');

--"TREV": "Trend Reversal - reversão de tendência",
INSERT INTO tags (tag) VALUES ('TREV');
INSERT INTO articles (article_id, short) VALUES (74, 'Trend Reversal - reversão de tendência');
INSERT INTO articles_tags (article_id, tag) VALUES (74, 'TREV');

--"TTR": "Tight Trading Range - lateralidade estreita",
INSERT INTO tags (tag) VALUES ('TTR');
INSERT INTO articles (article_id, short) VALUES (75, 'Tight Trading Range - lateralidade estreita');
INSERT INTO articles_tags (article_id, tag) VALUES (75, 'TTR');

--"W": "Wedge - cunha",
INSERT INTO tags (tag) VALUES ('W');
INSERT INTO articles (article_id, short) VALUES (76, 'Wedge - cunha');
INSERT INTO articles_tags (article_id, tag) VALUES (76, 'W');

--"WT": "With Trend - a favor da tendência",
INSERT INTO tags (tag) VALUES ('WT');
INSERT INTO articles (article_id, short) VALUES (77, 'With Trend - a favor da tendência');
INSERT INTO articles_tags (article_id, tag) VALUES (77, 'WT');
