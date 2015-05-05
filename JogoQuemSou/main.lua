
score = 5


-- include background nvl1
local background1 = display.newImage("play/nivel1/Quem-sou-nivel-1.png")
background1.x = display.contentWidth/2 
background1.y = display.contentHeight/2

-- include botao que recebe texto
local botaotexto = display.newImage("play/buttonName.png")
botaotexto.x = display.contentWidth/2 
botaotexto.y = display.contentHeight/2 + 110

--include botao estrela
local botaoestrelaum = display.newImage("play/estrela-botao.png")
botaoestrelaum.x = display.contentWidth/2 + 117
botaoestrelaum.y = display.contentHeight/2 - 79


--include botao estrela
local botaoestreladois = display.newImage("play/estrela-botao.png")
botaoestreladois.x = display.contentWidth/2 + 117
botaoestreladois.y = display.contentHeight/2 - 6

--include botao estrela
local botaoestrelatres = display.newImage("play/estrela-botao.png")
botaoestrelatres.x = display.contentWidth/2 + 117
botaoestrelatres.y = display.contentHeight/2 - -67

-- include dicas
local dicaum = display.newImage("play/nivel1/dica1.png")
dicaum.x = display.contentWidth/2 - 10
dicaum.y = display.contentHeight/2 - 20
dicaum.alpha=0

local dicadois = display.newImage("play/nivel1/dica2.png")
dicadois.x = display.contentWidth/2 - 10
dicadois.y = display.contentHeight/2 - -50
dicadois.alpha=0

local dicatres = display.newImage("play/nivel1/dica3.png")
dicatres.x = display.contentWidth/2 - 10
dicatres.y = display.contentHeight/2 - -120
dicatres.alpha=0

--group:insert(scoreText); --(quando usar storyboard)

 local scoreNumber = display.newText(score, 260, 460, nil, 22)
 scoreNumber: setTextColor ( 1, 1, 1)
 scoreNumber.sCale = 1.2
 scoreNumber.yScale = 1.2

  
    if (score > 0) then
    	   --função mostra dica (nivel 1)
        function botaoestrelaum:tap(event)
	        scoreNumber.text = tostring(tonumber(scoreNumber.text)-1)
	        dicaum.alpha = 0.8
	        if (scoreNumber.text == '0') then
	           botaoestrelaum:removeEventListener ("tap", botaoestrelaum)
	           botaoestreladois:removeEventListener ("tap", botaoestreladois)
	           botaoestrelatres:removeEventListener ("tap", botaoestrelatres)
	        end
        end     
    end 

     score = tonumber(tostring(scoreNumber.text))

-- apertando mostra dica (nivel 1)
botaoestrelaum:addEventListener("tap", botaoestrelaum)

-- função esconde dica (nivel 1)
function dicaum:tap(event) dicaum.alpha = 0 end    
-- apertando esconde dica (nivel 1)
dicaum:addEventListener("tap", dicaum)


  if (scoreNumber.text > '0') then
    	   --função mostra dica (nivel 2)
        function botaoestreladois:tap(event)
	        scoreNumber.text = tostring(tonumber(scoreNumber.text)-1)
	        dicadois.alpha = 0.8
	        if (scoreNumber.text == '0') then
	           botaoestreladois:removeEventListener ("tap", botaoestreladois)
	           botaoestrelaum:removeEventListener ("tap", botaoestrelaum)
	           botaoestrelatres:removeEventListener ("tap", botaoestrelatres)
	        end
        end     
    end 

    score = tonumber(tostring(scoreNumber.text))

    -- apertando mostra dica (nivel 2)
botaoestreladois:addEventListener("tap", botaoestreladois)

-- função esconde dica (nivel 2)
function dicadois:tap(event)  dicadois.alpha = 0 end 
-- apertando esconde dica (nivel 2)
dicadois:addEventListener("tap", dicadois)



  if (scoreNumber.text > '0') then
    	   --função mostra dica (nivel 3)
        function botaoestrelatres:tap(event)
	        scoreNumber.text = tostring(tonumber(scoreNumber.text)-1)
	        dicatres.alpha = 0.8
	        if (scoreNumber.text == '0') then
	           botaoestrelatres:removeEventListener ("tap", botaoestrelatres)
	           botaoestreladois:removeEventListener ("tap", botaoestreladois)
	           botaoestrelaum:removeEventListener ("tap", botaoestrelaum)
	        end
        end     
    end 

    score = tonumber(tostring(scoreNumber.text))
    
    -- apertando mostra dica (nivel 3)
botaoestrelatres:addEventListener("tap", botaoestrelatres)

-- função esconde dica (nivel 3)
function dicatres:tap(event)  dicatres.alpha = 0 end 
-- apertando esconde dica (nivel 3)
dicatres:addEventListener("tap", dicatres)