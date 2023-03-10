require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmContador()
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
    obj:setName("frmContador");
    obj:setHeight(60);
    obj:setMargins({top=10});


			local function askForDelete()
				Dialogs.confirmYesNo("Deseja realmente apagar este item?",
									 function (confirmado)
										if confirmado then
											NDB.deleteNode(self.sheet);
										end;
									 end);
			end;
		


    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("client");
    obj.layout1:setName("layout1");

    obj.editName = GUI.fromHandle(_obj_newObject("edit"));
    obj.editName:setParent(obj.layout1);
    obj.editName:setName("editName");
    obj.editName:setAlign("top");
    obj.editName:setField("name");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setAlign("client");
    obj.layout2:setMargins({top=2});
    obj.layout2:setName("layout2");

    obj.progBar = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.progBar:setParent(obj.layout2);
    obj.progBar:setName("progBar");
    obj.progBar:setAlign("client");
    obj.progBar:setColor("red");
    obj.progBar:setMin(0);
    obj.progBar:setField("valCur");
    obj.progBar:setFieldMax("valMax");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout2);
    obj.layout3:setAlign("right");
    obj.layout3:setWidth(61);
    obj.layout3:setName("layout3");

    obj.editCur = GUI.fromHandle(_obj_newObject("edit"));
    obj.editCur:setParent(obj.layout3);
    obj.editCur:setName("editCur");
    obj.editCur:setAlign("left");
    obj.editCur:setMargins({left=2});
    obj.editCur:setWidth(25);
    obj.editCur:setField("valCur");
    obj.editCur:setType("number");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout3);
    obj.label1:setAlign("left");
    obj.label1:setMargins({left=2});
    obj.label1:setText("/");
    obj.label1:setWidth(5);
    obj.label1:setName("label1");

    obj.editMax = GUI.fromHandle(_obj_newObject("edit"));
    obj.editMax:setParent(obj.layout3);
    obj.editMax:setName("editMax");
    obj.editMax:setAlign("left");
    obj.editMax:setMargins({left=2});
    obj.editMax:setWidth(25);
    obj.editMax:setField("valMax");
    obj.editMax:setType("number");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setField("name");
    obj.dataLink1:setDefaultValue("Nome");
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setField("valPrev");
    obj.dataLink2:setDefaultValue("0");
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setField("valCur");
    obj.dataLink3:setDefaultValue("0");
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setField("valMax");
    obj.dataLink4:setDefaultValue("100");
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setField("valMaxPrev");
    obj.dataLink5:setDefaultValue("100");
    obj.dataLink5:setName("dataLink5");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj);
    obj.layout4:setAlign("right");
    obj.layout4:setWidth(25);
    obj.layout4:setName("layout4");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout4);
    obj.button1:setAlign("top");
    obj.button1:setHeight(30);
    obj.button1:setText("+");
    obj.button1:setName("button1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout4);
    obj.button2:setAlign("top");
    obj.button2:setHeight(30);
    obj.button2:setText("-");
    obj.button2:setName("button2");

    obj.colorComboBox1 = GUI.fromHandle(_obj_newObject("colorComboBox"));
    obj.colorComboBox1:setParent(obj);
    obj.colorComboBox1:setAlign("right");
    obj.colorComboBox1:setMargins({left=2});
    obj.colorComboBox1:setWidth(60);
    obj.colorComboBox1:setField("barColor");
    obj.colorComboBox1:setUseAlpha(false);
    obj.colorComboBox1:setName("colorComboBox1");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setField("barColor");
    obj.dataLink6:setDefaultValue("red");
    obj.dataLink6:setName("dataLink6");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj);
    obj.layout5:setAlign("right");
    obj.layout5:setWidth(300);
    obj.layout5:setName("layout5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout5);
    obj.layout6:setAlign("left");
    obj.layout6:setWidth(175);
    obj.layout6:setName("layout6");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout6);
    obj.label2:setAlign("top");
    obj.label2:setText("Descri????o");
    obj.label2:setName("label2");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout6);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("descricao");
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setName("textEditor1");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout5);
    obj.layout7:setAlign("left");
    obj.layout7:setWidth(100);
    obj.layout7:setName("layout7");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout7);
    obj.label3:setAlign("top");
    obj.label3:setText("Rolagem");
    obj.label3:setName("label3");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout7);
    obj.edit1:setAlign("client");
    obj.edit1:setField("rolagem");
    obj.edit1:setName("edit1");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout5);
    obj.button3:setAlign("left");
    obj.button3:setHeight(30);
    obj.button3:setText("i");
    obj.button3:setName("button3");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj);
    obj.layout8:setAlign("right");
    obj.layout8:setWidth(333);
    obj.layout8:setName("layout8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout8);
    obj.layout9:setAlign("left");
    obj.layout9:setWidth(184);
    obj.layout9:setName("layout9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout9);
    obj.layout10:setAlign("left");
    obj.layout10:setWidth(152);
    obj.layout10:setMargins({left=2});
    obj.layout10:setName("layout10");

    obj.cbBarChoose = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cbBarChoose:setParent(obj.layout10);
    obj.cbBarChoose:setName("cbBarChoose");
    obj.cbBarChoose:setAlign("top");
    obj.cbBarChoose:setHeight(60);
    obj.cbBarChoose:setItems({'','Barra 2', 'Barra 3', 'Barra 4'});
    obj.cbBarChoose:setValues({'','2','3','4'});
    obj.cbBarChoose:setField("barChoose");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.layout10);
    obj.dataLink7:setFields({'barChoose','valMax','valCur'});
    obj.dataLink7:setName("dataLink7");

    obj.btnDelete = GUI.fromHandle(_obj_newObject("button"));
    obj.btnDelete:setParent(obj.layout8);
    obj.btnDelete:setName("btnDelete");
    obj.btnDelete:setAlign("left");
    obj.btnDelete:setMargins({left=2});
    obj.btnDelete:setWidth(25);
    obj.btnDelete:setText("???");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local contadores = NDB.getChildNodes(NDB.getParent(sheet));
            		local cont = 0;
            		for i=1,#contadores,1 do
            			if contadores[i].name == sheet.name then cont = cont + 1; end;
            		end;
            		if cont ~= 1 then sheet.name = sheet.name .. "_"; end;
            
            		local ficha = common.getTopNode(sheet);
            		ficha.contadoresMudaram = true;
            		ficha.contadoresMudaram = false;
        end, obj);

    obj._e_event1 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.valCur == nil then sheet.valCur = 0; end;
            				if sheet.valPrev == nil then sheet.valPrev = sheet.valCur; end;
            
            				if sheet.valCur < 0 then sheet.valCur = sheet.valCur + sheet.valPrev; end;
            
            				if sheet.valCur > sheet.valPrev then
            					common.getMesa(sheet).chat:enviarAcao("recuperou " .. sheet.valCur-sheet.valPrev .. " uso(s) de '" .. sheet.name .. "' (" .. sheet.valCur .. "/" .. sheet.valMax .. ")");
            				elseif sheet.valCur < sheet.valPrev then
            					common.getMesa(sheet).chat:enviarAcao("gastou " .. sheet.valPrev-sheet.valCur .. " uso(s) de '" .. sheet.name .. "' (" .. sheet.valCur .. "/" .. sheet.valMax .. ")");
            					if sheet.rolagem then
            						common.getMesa(sheet).chat:rolarDados(common.interpreta(sheet, sheet.rolagem), sheet.name);
            					end;
            				end;
            				sheet.valPrev = sheet.valCur;
        end, obj);

    obj._e_event2 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.valMax == nil then sheet.valMax = 100; end;
            			if sheet.valMaxPrev == nil then sheet.valMaxPrev = sheet.valMax; end;
            
            			if sheet.valMax < 0 then sheet.valMax = sheet.valMax + sheet.valMaxPrev; end;
            
            			self.editCur:setMax(sheet.valMax);
            			sheet.valMaxPrev = sheet.valMax;
        end, obj);

    obj._e_event3 = obj.button1:addEventListener("onClick",
        function (_)
            sheet.valCur = math.min(sheet.valCur+1, sheet.valMax);
        end, obj);

    obj._e_event4 = obj.button2:addEventListener("onClick",
        function (_)
            sheet.valCur = math.max(sheet.valCur-1, 0);
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.progBar:setColor(sheet.barColor);
        end, obj);

    obj._e_event6 = obj.button3:addEventListener("onMenu",
        function (_, x, y)
            common.getMesa(sheet).chat:enviarMensagem('\n'..sheet.descricao);
        end, obj);

    obj._e_event7 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local bar = tonumber(sheet.barChoose)
            						if bar == nil then
            							return;
            						else
            							local jogador = Firecast.getPersonagemDe(sheet).dono;
            							if common.isMyChar(sheet) and common.isMainChar(sheet) then 
            								if sheet.valCur ~= sheet.valPrev or sheet.valMax ~= sheet.valMaxPrev then
            									jogador:requestSetBarValue(bar, sheet.valCur, sheet.valMax);
            								else 
            									local curBar, maxBar = jogador:getBarValue(bar);
            									sheet.valCur = curBar;
            									sheet.valMax = maxBar;
            								end;
            							end;
            						end;
        end, obj);

    obj._e_event8 = obj.btnDelete:addEventListener("onClick",
        function (_)
            askForDelete();
        end, obj);

    obj._e_event9 = obj.btnDelete:addEventListener("onMenu",
        function (_, x, y)
            NDB.deleteNode(sheet)
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
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

        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.editCur ~= nil then self.editCur:destroy(); self.editCur = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.btnDelete ~= nil then self.btnDelete:destroy(); self.btnDelete = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.progBar ~= nil then self.progBar:destroy(); self.progBar = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.editMax ~= nil then self.editMax:destroy(); self.editMax = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.colorComboBox1 ~= nil then self.colorComboBox1:destroy(); self.colorComboBox1 = nil; end;
        if self.editName ~= nil then self.editName:destroy(); self.editName = nil; end;
        if self.cbBarChoose ~= nil then self.cbBarChoose:destroy(); self.cbBarChoose = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmContador()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmContador();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmContador = {
    newEditor = newfrmContador, 
    new = newfrmContador, 
    name = "frmContador", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmContador = _frmContador;
Firecast.registrarForm(_frmContador);

return _frmContador;
