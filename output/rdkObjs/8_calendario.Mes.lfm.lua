require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmGerenciador02_MES()
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
    obj:setName("frmGerenciador02_MES");
    obj:setWidth(110);
    obj:setHeight(25);
    obj:setTheme("dark");
    obj:setMargins({top=1});

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#212121");
    obj.rectangle1:setName("rectangle1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle1);
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(30);
    obj.edit1:setHeight(25);
    obj.edit1:setField("ordem");
    obj.edit1:setType("number");
    obj.edit1:setName("edit1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle1);
    obj.edit2:setLeft(30);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(130);
    obj.edit2:setHeight(25);
    obj.edit2:setField("mes");
    obj.edit2:setName("edit2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle1);
    obj.edit3:setLeft(160);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(35);
    obj.edit3:setHeight(25);
    obj.edit3:setField("dias");
    obj.edit3:setType("number");
    obj.edit3:setName("edit3");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle1);
    obj.button1:setLeft(195);
    obj.button1:setTop(0);
    obj.button1:setWidth(25);
    obj.button1:setHeight(25);
    obj.button1:setText("X");
    obj.button1:setName("button1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.rectangle1);
    obj.dataLink1:setField("dias");
    obj.dataLink1:setName("dataLink1");

    obj._e_event0 = obj.edit1:addEventListener("onChange",
        function (_)
            local rcl = self:findControlByName("rclMeses");
            				if rcl~= nil then
            					rcl:sort();
            				end;
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (_)
            dialogs.confirmOkCancel("Tem certeza que quer apagar esse mês?",
            					function (confirmado)
            						if confirmado then
            							ndb.deleteNode(sheet);
            						end;
            				end);
        end, obj);

    obj._e_event2 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet~= nil then
            					local node = ndb.getRoot(sheet);
            					local mod = 0;
            					local nodes = ndb.getChildNodes(node.listaMeses); 
            					for i=1, #nodes, 1 do
            						nodes[i].cumulativo = mod;
            						mod = mod + (tonumber(nodes[i].dias) or 0);
            					end
            					node.dias = mod;
            				end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmGerenciador02_MES()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmGerenciador02_MES();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmGerenciador02_MES = {
    newEditor = newfrmGerenciador02_MES, 
    new = newfrmGerenciador02_MES, 
    name = "frmGerenciador02_MES", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmGerenciador02_MES = _frmGerenciador02_MES;
Firecast.registrarForm(_frmGerenciador02_MES);

return _frmGerenciador02_MES;
