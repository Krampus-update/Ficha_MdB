require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmMagiaItemComCheckbox()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmMagiaItemComCheckbox");


			



			local function askForDelete()
				Dialogs.confirmYesNo("Deseja realmente apagar este item?",
									 function (confirmado)
										if confirmado then
											NDB.deleteNode(self.sheet);
										end;
									 end);
			end;

			local function showMagiaPopup()
				local pop = self:findControlByName("popMagia");

				if pop ~= nil then
					pop:setNodeObject(self.sheet);
					pop:showPopupEx("bottomCenter", self.edtNome);
				else
					showMessage("Ops, bug.. nao encontrei o popup de magia para exibir");
				end;
			end;

			local function mostraMagia()
				local magia = sheet;																			if not magia		then return; end;
				local ficha = sheet; while (NDB.getParent(ficha) ~= nil) do ficha = NDB.getParent(ficha); end;
				local personagem = Firecast.getPersonagemDe(ficha);												if not personagem	then return; end;
				local mesa = personagem.mesa;																	if not mesa			then return; end;
				local chat = mesa.chat;																			if not chat			then return; end;

				local mensagem = "";
				if magia.nome then mensagem = mensagem .. "\nNome: '" .. magia.nome .. "'"; end;
				if magia.tempoDeFormulacao then mensagem = mensagem .. "\nTempo de Formulação: '" .. magia.tempoDeFormulacao .. "'"; end;
				if magia.alcance then mensagem = mensagem .. "\nAlcance: '" .. magia.alcance .. "'"; end;
				if magia.componentes then mensagem = mensagem .. "\nComponentes: '" .. magia.componentes .. "'"; end;
				if magia.duracao then mensagem = mensagem .. "\nDuração: '" .. magia.duracao .. "'"; end;
				if magia.ataque then mensagem = mensagem .. "\nAtaque: '" .. magia.ataque .. "'"; end;
				if magia.resistencia then mensagem = mensagem .. "\nTeste de Resistência: '" .. magia.resistencia .. "'"; end;
				if magia.descricao then mensagem = mensagem .. "\nDescrição: '" .. magia.descricao .. "'"; end;
				if mensagem ~= "" then mesa.chat:enviarMensagem(mensagem); end;
			end;
			



		


    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj);
    obj.imageCheckBox1:setAlign("left");
    obj.imageCheckBox1:setWidth(25);
    obj.imageCheckBox1:setMargins({});
    obj.imageCheckBox1:setField("marcacao");
    obj.imageCheckBox1:setOptimize(false);
    obj.imageCheckBox1:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox1:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox1:setName("imageCheckBox1");
    obj.imageCheckBox1:setHeight(20);
    obj.imageCheckBox1:setVisible(true);

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("client");
    obj.layout1:setName("layout1");

    obj.edtNome = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtNome:setParent(obj.layout1);
    obj.edtNome:setName("edtNome");
    obj.edtNome:setAlign("client");
    obj.edtNome:setField("nome");
    obj.edtNome:setMargins({left=4, right=4});
    obj.edtNome:setVertTextAlign("center");
    obj.edtNome:setFontSize(15);
    obj.edtNome:setFontColor("white");
    obj.edtNome:setTransparent(true);

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.layout1);
    obj.horzLine1:setAlign("bottom");
    obj.horzLine1:setStrokeColor("white");
    obj.horzLine1:setName("horzLine1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setText("🎲");
    obj.button1:setAlign("right");
    obj.button1:setWidth(32);
    obj.button1:setMargins({left=4, right=0, top=2, bottom=2});
    obj.button1:setName("button1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout1);
    obj.button2:setText("i");
    obj.button2:setAlign("right");
    obj.button2:setWidth(32);
    obj.button2:setMargins({left=4, right=0, top=2, bottom=2});
    obj.button2:setName("button2");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout1);
    obj.button3:setText("Apagar");
    obj.button3:setAlign("right");
    obj.button3:setWidth(60);
    obj.button3:setMargins({left=4, right=4, top=2, bottom=2});
    obj.button3:setName("button3");

self.height=32;


    obj._e_event0 = obj.button1:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event2 = obj.button1:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaMagia, { magia=self.sheet }, nil, false);
        end, obj);

    obj._e_event3 = obj.button1:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaMagia, { magia=self.sheet }, nil, true);
        end, obj);

    obj._e_event4 = obj.button2:addEventListener("onClick",
        function (_)
            showMagiaPopup();
        end, obj);

    obj._e_event5 = obj.button2:addEventListener("onMenu",
        function (_, x, y)
            mostraMagia();
        end, obj);

    obj._e_event6 = obj.button3:addEventListener("onClick",
        function (_)
            askForDelete();
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edtNome ~= nil then self.edtNome:destroy(); self.edtNome = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmMagiaItemComCheckbox()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmMagiaItemComCheckbox();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmMagiaItemComCheckbox = {
    newEditor = newfrmMagiaItemComCheckbox, 
    new = newfrmMagiaItemComCheckbox, 
    name = "frmMagiaItemComCheckbox", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmMagiaItemComCheckbox = _frmMagiaItemComCheckbox;
Firecast.registrarForm(_frmMagiaItemComCheckbox);

return _frmMagiaItemComCheckbox;
