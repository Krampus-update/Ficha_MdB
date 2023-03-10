require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmMdB()
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
    obj:setDataType("MultiVerso_MdBe");
    obj:setFormType("sheetTemplate");
    obj:setTitle("Ficha Mesa do Bolo");
    obj:setName("frmMdB");
    obj:setTheme("dark");

require('mudaNick.lua')


    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setField("nome");
    obj.dataLink1:setName("dataLink1");

    obj.pgcPrincipal = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.pgcPrincipal:setParent(obj);
    obj.pgcPrincipal:setAlign("client");
    obj.pgcPrincipal:setName("pgcPrincipal");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.pgcPrincipal);
    obj.tab1:setTitle("FRENTE");
    obj.tab1:setName("tab1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.tab1);
    obj.rectangle1:setStrokeColor("white");
    obj.rectangle1:setStrokeSize(1);
    obj.rectangle1:setName("rectangle1");
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#40000000");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);

 require("common.lua"); 


    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.rectangle1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.fraFrenteLayout = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraFrenteLayout:setParent(obj.scrollBox1);
    obj.fraFrenteLayout:setAlign("top");
    obj.fraFrenteLayout:setHeight(500);
    obj.fraFrenteLayout:setMargins({left=10, right=10, top=10});
    obj.fraFrenteLayout:setAutoHeight(true);
    obj.fraFrenteLayout:setHorzAlign("center");
    obj.fraFrenteLayout:setLineSpacing(2);
    obj.fraFrenteLayout:setName("fraFrenteLayout");
    obj.fraFrenteLayout:setStepSizes({310, 420, 640, 760, 1150});
    obj.fraFrenteLayout:setMinScaledWidth(300);
    obj.fraFrenteLayout:setVertAlign("leading");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.fraFrenteLayout);
    obj.flowLayout1:setAutoHeight(true);
    obj.flowLayout1:setMinScaledWidth(290);
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setName("flowLayout1");
    obj.flowLayout1:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout1:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout1:setVertAlign("leading");

    obj.flwNome1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flwNome1:setParent(obj.flowLayout1);
    obj.flwNome1:setName("flwNome1");
    obj.flwNome1:setMinWidth(320);
    obj.flwNome1:setMaxWidth(1600);
    obj.flwNome1:setFrameStyle("frames/banner/dragon.xml");
    obj.flwNome1:setHeight(175);
    obj.flwNome1:setVertAlign("center");
    obj.flwNome1:setAvoidScale(true);
    obj.flwNome1:setMargins({left=1, right=1, top=2, bottom=2});

    obj.layNomeHolderFrente = GUI.fromHandle(_obj_newObject("layout"));
    obj.layNomeHolderFrente:setParent(obj.flwNome1);
    obj.layNomeHolderFrente:setAlign("client");
    obj.layNomeHolderFrente:setName("layNomeHolderFrente");

    obj.edtNome1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtNome1:setParent(obj.layNomeHolderFrente);
    obj.edtNome1:setName("edtNome1");
    obj.edtNome1:setField("nome");
    obj.edtNome1:setFontSize(17);
    obj.edtNome1:setAlign("client");
    obj.edtNome1:setFontColor("white");
    obj.edtNome1:setVertTextAlign("center");
    obj.edtNome1:setTransparent(true);

    obj.labNome1 = GUI.fromHandle(_obj_newObject("label"));
    obj.labNome1:setParent(obj.layNomeHolderFrente);
    obj.labNome1:setMargins({left=3});
    obj.labNome1:setName("labNome1");
    obj.labNome1:setAlign("bottom");
    obj.labNome1:setText("NOME DO PERSONAGEM");
    obj.labNome1:setAutoSize(true);
    obj.labNome1:setFontSize(12);
    obj.labNome1:setFontColor("#D0D0D0");

    obj.fraUpperGridFrente = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraUpperGridFrente:setParent(obj.flowLayout1);
    obj.fraUpperGridFrente:setMinWidth(320);
    obj.fraUpperGridFrente:setMaxWidth(1600);
    obj.fraUpperGridFrente:setName("fraUpperGridFrente");
    obj.fraUpperGridFrente:setAvoidScale(true);
    obj.fraUpperGridFrente:setFrameStyle("frames/panel4transp/frame.xml");
    obj.fraUpperGridFrente:setAutoHeight(true);
    obj.fraUpperGridFrente:setVertAlign("trailing");
    obj.fraUpperGridFrente:setMaxControlsPerLine(3);
    obj.fraUpperGridFrente:setMargins({left=1, right=1, top=2, bottom=2});

    obj.UpperGridCampo1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo1:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo1:setHeight(50);
    obj.UpperGridCampo1:setMinScaledWidth(100);
    obj.UpperGridCampo1:setMinWidth(100);
    obj.UpperGridCampo1:setMaxWidth(233);
    obj.UpperGridCampo1:setMaxScaledWidth(233);
    obj.UpperGridCampo1:setAvoidScale(true);
    obj.UpperGridCampo1:setName("UpperGridCampo1");
    obj.UpperGridCampo1:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo1:setVertAlign("leading");

    obj.edtUpperGridCampo1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo1:setParent(obj.UpperGridCampo1);
    obj.edtUpperGridCampo1:setName("edtUpperGridCampo1");
    obj.edtUpperGridCampo1:setAlign("top");
    obj.edtUpperGridCampo1:setField("classeENivel");
    obj.edtUpperGridCampo1:setFontSize(13);
    obj.edtUpperGridCampo1:setHeight(30);
    obj.edtUpperGridCampo1:setTransparent(true);
    obj.edtUpperGridCampo1:setVertTextAlign("trailing");
    obj.edtUpperGridCampo1:setWidth(195);
    obj.edtUpperGridCampo1:setFontColor("white");

    obj.linUpperGridCampo1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo1:setParent(obj.UpperGridCampo1);
    obj.linUpperGridCampo1:setName("linUpperGridCampo1");
    obj.linUpperGridCampo1:setAlign("top");
    obj.linUpperGridCampo1:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo1:setStrokeSize(1);

    obj.labUpperGridCampo1 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo1:setParent(obj.UpperGridCampo1);
    obj.labUpperGridCampo1:setName("labUpperGridCampo1");
    obj.labUpperGridCampo1:setAlign("top");
    obj.labUpperGridCampo1:setText("CLASSES & NIVEIS");
    obj.labUpperGridCampo1:setVertTextAlign("leading");
    obj.labUpperGridCampo1:setWordWrap(true);
    obj.labUpperGridCampo1:setTextTrimming("none");
    obj.labUpperGridCampo1:setFontSize(12);
    obj.labUpperGridCampo1:setFontColor("#D0D0D0");

    self.UpperGridCampo1:setHeight(self.edtUpperGridCampo1:getHeight() + self.labUpperGridCampo1:getHeight() + self.linUpperGridCampo1:getHeight());


    obj.UpperGridCampo2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo2:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo2:setHeight(50);
    obj.UpperGridCampo2:setMinScaledWidth(100);
    obj.UpperGridCampo2:setMinWidth(100);
    obj.UpperGridCampo2:setMaxWidth(233);
    obj.UpperGridCampo2:setMaxScaledWidth(233);
    obj.UpperGridCampo2:setAvoidScale(true);
    obj.UpperGridCampo2:setName("UpperGridCampo2");
    obj.UpperGridCampo2:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo2:setVertAlign("leading");

    obj.edtUpperGridCampo2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo2:setParent(obj.UpperGridCampo2);
    obj.edtUpperGridCampo2:setName("edtUpperGridCampo2");
    obj.edtUpperGridCampo2:setAlign("top");
    obj.edtUpperGridCampo2:setField("raca");
    obj.edtUpperGridCampo2:setFontSize(13);
    obj.edtUpperGridCampo2:setHeight(30);
    obj.edtUpperGridCampo2:setTransparent(true);
    obj.edtUpperGridCampo2:setVertTextAlign("trailing");
    obj.edtUpperGridCampo2:setWidth(195);
    obj.edtUpperGridCampo2:setFontColor("white");

    obj.linUpperGridCampo2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo2:setParent(obj.UpperGridCampo2);
    obj.linUpperGridCampo2:setName("linUpperGridCampo2");
    obj.linUpperGridCampo2:setAlign("top");
    obj.linUpperGridCampo2:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo2:setStrokeSize(1);

    obj.labUpperGridCampo2 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo2:setParent(obj.UpperGridCampo2);
    obj.labUpperGridCampo2:setName("labUpperGridCampo2");
    obj.labUpperGridCampo2:setAlign("top");
    obj.labUpperGridCampo2:setText("ORIGEM");
    obj.labUpperGridCampo2:setVertTextAlign("leading");
    obj.labUpperGridCampo2:setWordWrap(true);
    obj.labUpperGridCampo2:setTextTrimming("none");
    obj.labUpperGridCampo2:setFontSize(12);
    obj.labUpperGridCampo2:setFontColor("#D0D0D0");

    self.UpperGridCampo2:setHeight(self.edtUpperGridCampo2:getHeight() + self.labUpperGridCampo2:getHeight() + self.linUpperGridCampo2:getHeight());


    obj.UpperGridCampo3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo3:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo3:setHeight(50);
    obj.UpperGridCampo3:setMinScaledWidth(100);
    obj.UpperGridCampo3:setMinWidth(100);
    obj.UpperGridCampo3:setMaxWidth(233);
    obj.UpperGridCampo3:setMaxScaledWidth(233);
    obj.UpperGridCampo3:setAvoidScale(true);
    obj.UpperGridCampo3:setName("UpperGridCampo3");
    obj.UpperGridCampo3:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo3:setVertAlign("leading");

    obj.edtUpperGridCampo3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo3:setParent(obj.UpperGridCampo3);
    obj.edtUpperGridCampo3:setName("edtUpperGridCampo3");
    obj.edtUpperGridCampo3:setAlign("top");
    obj.edtUpperGridCampo3:setField("caracteristicas.regiao");
    obj.edtUpperGridCampo3:setFontSize(13);
    obj.edtUpperGridCampo3:setHeight(30);
    obj.edtUpperGridCampo3:setTransparent(true);
    obj.edtUpperGridCampo3:setVertTextAlign("trailing");
    obj.edtUpperGridCampo3:setWidth(195);
    obj.edtUpperGridCampo3:setFontColor("white");

    obj.linUpperGridCampo3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo3:setParent(obj.UpperGridCampo3);
    obj.linUpperGridCampo3:setName("linUpperGridCampo3");
    obj.linUpperGridCampo3:setAlign("top");
    obj.linUpperGridCampo3:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo3:setStrokeSize(1);

    obj.labUpperGridCampo3 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo3:setParent(obj.UpperGridCampo3);
    obj.labUpperGridCampo3:setName("labUpperGridCampo3");
    obj.labUpperGridCampo3:setAlign("top");
    obj.labUpperGridCampo3:setText("REGI??O");
    obj.labUpperGridCampo3:setVertTextAlign("leading");
    obj.labUpperGridCampo3:setWordWrap(true);
    obj.labUpperGridCampo3:setTextTrimming("none");
    obj.labUpperGridCampo3:setFontSize(12);
    obj.labUpperGridCampo3:setFontColor("#D0D0D0");

    self.UpperGridCampo3:setHeight(self.edtUpperGridCampo3:getHeight() + self.labUpperGridCampo3:getHeight() + self.linUpperGridCampo3:getHeight());


    obj.UpperGridCampo4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo4:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo4:setHeight(50);
    obj.UpperGridCampo4:setMinScaledWidth(100);
    obj.UpperGridCampo4:setMinWidth(100);
    obj.UpperGridCampo4:setMaxWidth(233);
    obj.UpperGridCampo4:setMaxScaledWidth(233);
    obj.UpperGridCampo4:setAvoidScale(true);
    obj.UpperGridCampo4:setName("UpperGridCampo4");
    obj.UpperGridCampo4:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo4:setVertAlign("leading");

    obj.edtUpperGridCampo4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo4:setParent(obj.UpperGridCampo4);
    obj.edtUpperGridCampo4:setName("edtUpperGridCampo4");
    obj.edtUpperGridCampo4:setAlign("top");
    obj.edtUpperGridCampo4:setField("antecedente");
    obj.edtUpperGridCampo4:setFontSize(13);
    obj.edtUpperGridCampo4:setHeight(30);
    obj.edtUpperGridCampo4:setTransparent(true);
    obj.edtUpperGridCampo4:setVertTextAlign("trailing");
    obj.edtUpperGridCampo4:setWidth(195);
    obj.edtUpperGridCampo4:setFontColor("white");

    obj.linUpperGridCampo4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo4:setParent(obj.UpperGridCampo4);
    obj.linUpperGridCampo4:setName("linUpperGridCampo4");
    obj.linUpperGridCampo4:setAlign("top");
    obj.linUpperGridCampo4:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo4:setStrokeSize(1);

    obj.labUpperGridCampo4 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo4:setParent(obj.UpperGridCampo4);
    obj.labUpperGridCampo4:setName("labUpperGridCampo4");
    obj.labUpperGridCampo4:setAlign("top");
    obj.labUpperGridCampo4:setText("PASSADO");
    obj.labUpperGridCampo4:setVertTextAlign("leading");
    obj.labUpperGridCampo4:setWordWrap(true);
    obj.labUpperGridCampo4:setTextTrimming("none");
    obj.labUpperGridCampo4:setFontSize(12);
    obj.labUpperGridCampo4:setFontColor("#D0D0D0");

    self.UpperGridCampo4:setHeight(self.edtUpperGridCampo4:getHeight() + self.labUpperGridCampo4:getHeight() + self.linUpperGridCampo4:getHeight());


    obj.UpperGridCampo5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo5:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo5:setHeight(50);
    obj.UpperGridCampo5:setMinScaledWidth(100);
    obj.UpperGridCampo5:setMinWidth(100);
    obj.UpperGridCampo5:setMaxWidth(233);
    obj.UpperGridCampo5:setMaxScaledWidth(233);
    obj.UpperGridCampo5:setAvoidScale(true);
    obj.UpperGridCampo5:setName("UpperGridCampo5");
    obj.UpperGridCampo5:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo5:setVertAlign("leading");

    obj.edtUpperGridCampo5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo5:setParent(obj.UpperGridCampo5);
    obj.edtUpperGridCampo5:setName("edtUpperGridCampo5");
    obj.edtUpperGridCampo5:setAlign("top");
    obj.edtUpperGridCampo5:setField("alinhamento");
    obj.edtUpperGridCampo5:setFontSize(13);
    obj.edtUpperGridCampo5:setHeight(30);
    obj.edtUpperGridCampo5:setTransparent(true);
    obj.edtUpperGridCampo5:setVertTextAlign("trailing");
    obj.edtUpperGridCampo5:setWidth(195);
    obj.edtUpperGridCampo5:setFontColor("white");

    obj.linUpperGridCampo5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo5:setParent(obj.UpperGridCampo5);
    obj.linUpperGridCampo5:setName("linUpperGridCampo5");
    obj.linUpperGridCampo5:setAlign("top");
    obj.linUpperGridCampo5:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo5:setStrokeSize(1);

    obj.labUpperGridCampo5 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo5:setParent(obj.UpperGridCampo5);
    obj.labUpperGridCampo5:setName("labUpperGridCampo5");
    obj.labUpperGridCampo5:setAlign("top");
    obj.labUpperGridCampo5:setText("ALINHAMENTO");
    obj.labUpperGridCampo5:setVertTextAlign("leading");
    obj.labUpperGridCampo5:setWordWrap(true);
    obj.labUpperGridCampo5:setTextTrimming("none");
    obj.labUpperGridCampo5:setFontSize(12);
    obj.labUpperGridCampo5:setFontColor("#D0D0D0");

    self.UpperGridCampo5:setHeight(self.edtUpperGridCampo5:getHeight() + self.labUpperGridCampo5:getHeight() + self.linUpperGridCampo5:getHeight());


    obj.UpperGridCampo6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo6:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo6:setHeight(50);
    obj.UpperGridCampo6:setMinScaledWidth(100);
    obj.UpperGridCampo6:setMinWidth(100);
    obj.UpperGridCampo6:setMaxWidth(233);
    obj.UpperGridCampo6:setMaxScaledWidth(233);
    obj.UpperGridCampo6:setAvoidScale(true);
    obj.UpperGridCampo6:setName("UpperGridCampo6");
    obj.UpperGridCampo6:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo6:setVertAlign("leading");

    obj.edtUpperGridCampo6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo6:setParent(obj.UpperGridCampo6);
    obj.edtUpperGridCampo6:setName("edtUpperGridCampo6");
    obj.edtUpperGridCampo6:setAlign("top");
    obj.edtUpperGridCampo6:setField("devocoes");
    obj.edtUpperGridCampo6:setFontSize(13);
    obj.edtUpperGridCampo6:setHeight(30);
    obj.edtUpperGridCampo6:setTransparent(true);
    obj.edtUpperGridCampo6:setVertTextAlign("trailing");
    obj.edtUpperGridCampo6:setWidth(195);
    obj.edtUpperGridCampo6:setFontColor("white");

    obj.linUpperGridCampo6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo6:setParent(obj.UpperGridCampo6);
    obj.linUpperGridCampo6:setName("linUpperGridCampo6");
    obj.linUpperGridCampo6:setAlign("top");
    obj.linUpperGridCampo6:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo6:setStrokeSize(1);

    obj.labUpperGridCampo6 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo6:setParent(obj.UpperGridCampo6);
    obj.labUpperGridCampo6:setName("labUpperGridCampo6");
    obj.labUpperGridCampo6:setAlign("top");
    obj.labUpperGridCampo6:setText("DEVO????ES");
    obj.labUpperGridCampo6:setVertTextAlign("leading");
    obj.labUpperGridCampo6:setWordWrap(true);
    obj.labUpperGridCampo6:setTextTrimming("none");
    obj.labUpperGridCampo6:setFontSize(12);
    obj.labUpperGridCampo6:setFontColor("#D0D0D0");

    self.UpperGridCampo6:setHeight(self.edtUpperGridCampo6:getHeight() + self.labUpperGridCampo6:getHeight() + self.linUpperGridCampo6:getHeight());


    obj.flowLineBreak1 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak1:setParent(obj.fraFrenteLayout);
    obj.flowLineBreak1:setName("flowLineBreak1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.fraFrenteLayout);
    obj.dataLink2:setFields({'classeENivel', 'CA','iniciativa','percepicaoPassiva'});
    obj.dataLink2:setName("dataLink2");

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.fraFrenteLayout);
    obj.flowLayout2:setHorzAlign("justify");
    obj.flowLayout2:setAutoHeight(true);
    obj.flowLayout2:setAvoidScale(true);
    obj.flowLayout2:setName("flowLayout2");
    obj.flowLayout2:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout2:setMinScaledWidth(300);
    obj.flowLayout2:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout2:setVertAlign("leading");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout2);
    obj.flowPart1:setMinWidth(280);
    obj.flowPart1:setMaxWidth(800);
    obj.flowPart1:setHeight(64);
    obj.flowPart1:setFrameStyle("frames/posCaptionEdit2/frame.xml");
    obj.flowPart1:setName("flowPart1");
    obj.flowPart1:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart1:setVertAlign("leading");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowPart1);
    obj.edit1:setAlign("left");
    obj.edit1:setField("destino");
    obj.edit1:setWidth(65);
    obj.edit1:setName("edit1");
    obj.edit1:setTransparent(true);
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setFontSize(15);
    obj.edit1:setFontColor("white");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.flowPart1);
    obj.label1:setAlign("client");
    obj.label1:setText("MOEDAS DO DESTINO ( Inspira????o )");
    obj.label1:setMargins({left=10});
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");
    obj.label1:setFontSize(12);
    obj.label1:setFontColor("#D0D0D0");

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout2);
    obj.flowPart2:setMinWidth(280);
    obj.flowPart2:setMaxWidth(800);
    obj.flowPart2:setHeight(64);
    obj.flowPart2:setFrameStyle("frames/posCaptionEdit2/frame.xml");
    obj.flowPart2:setName("flowPart2");
    obj.flowPart2:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart2:setVertAlign("leading");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowPart2);
    obj.edit2:setAlign("left");
    obj.edit2:setField("bonusProficiencia");
    obj.edit2:setWidth(70);
    obj.edit2:setName("edit2");
    obj.edit2:setTransparent(true);
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setFontSize(15);
    obj.edit2:setFontColor("white");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.flowPart2);
    obj.label2:setAlign("client");
    obj.label2:setText("BONUS DE PROFICI??NCIA");
    obj.label2:setMargins({left=10});
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");
    obj.label2:setFontSize(12);
    obj.label2:setFontColor("#D0D0D0");

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout2);
    obj.flowPart3:setMinWidth(280);
    obj.flowPart3:setMaxWidth(800);
    obj.flowPart3:setHeight(64);
    obj.flowPart3:setFrameStyle("frames/posCaptionEdit2/frame.xml");
    obj.flowPart3:setName("flowPart3");
    obj.flowPart3:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart3:setVertAlign("leading");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowPart3);
    obj.edit3:setAlign("left");
    obj.edit3:setField("percepicaoPassiva");
    obj.edit3:setWidth(70);
    obj.edit3:setName("edit3");
    obj.edit3:setTransparent(true);
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setFontSize(15);
    obj.edit3:setFontColor("white");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.flowPart3);
    obj.label3:setAlign("client");
    obj.label3:setText("PERCEP????O PASSIVA");
    obj.label3:setTextTrimming("none");
    obj.label3:setWordWrap(true);
    obj.label3:setMargins({left=10});
    obj.label3:setHorzTextAlign("center");
    obj.label3:setName("label3");
    obj.label3:setFontSize(12);
    obj.label3:setFontColor("#D0D0D0");

    obj.flowLineBreak2 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak2:setParent(obj.fraFrenteLayout);
    obj.flowLineBreak2:setName("flowLineBreak2");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.fraFrenteLayout);
    obj.flowLayout3:setAutoHeight(true);
    obj.flowLayout3:setMinScaledWidth(290);
    obj.flowLayout3:setHorzAlign("center");
    obj.flowLayout3:setName("flowLayout3");
    obj.flowLayout3:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout3:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout3:setVertAlign("leading");

    obj.fraLayAtributos = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraLayAtributos:setParent(obj.flowLayout3);
    obj.fraLayAtributos:setName("fraLayAtributos");
    obj.fraLayAtributos:setVertAlign("leading");
    obj.fraLayAtributos:setAutoHeight(true);
    obj.fraLayAtributos:setMinScaledWidth(290);
    obj.fraLayAtributos:setMaxControlsPerLine(3);
    obj.fraLayAtributos:setHorzAlign("center");
    obj.fraLayAtributos:setLineSpacing(10);
    obj.fraLayAtributos:setMargins({left=2, top=2, right=16, bottom=4});
    obj.fraLayAtributos:setAvoidScale(true);
    obj.fraLayAtributos:setStepSizes({310, 420, 640, 760, 1150});

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.fraLayAtributos);
    obj.dataLink3:setField("atributos.forca");
    obj.dataLink3:setName("dataLink3");

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.fraLayAtributos);
    obj.flowPart4:setHeight(140);
    obj.flowPart4:setMinWidth(320);
    obj.flowPart4:setMaxWidth(420);
    obj.flowPart4:setMinScaledWidth(305);
    obj.flowPart4:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart4:setName("flowPart4");
    obj.flowPart4:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart4:setVertAlign("leading");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.flowPart4);
    obj.layout1:setLeft(6);
    obj.layout1:setTop(12);
    obj.layout1:setWidth(116);
    obj.layout1:setHeight(115);
    obj.layout1:setName("layout1");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setAlign("top");
    obj.edit4:setMargins({left=30, right=30});
    obj.edit4:setField("atributos.forca");
    obj.edit4:setHeight(30);
    obj.edit4:setType("number");
    obj.edit4:setMin(0);
    obj.edit4:setMax(99);
    obj.edit4:setName("edit4");
    obj.edit4:setTransparent(true);
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setFontSize(15);
    obj.edit4:setFontColor("white");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.flowPart4);
    obj.label4:setFrameRegion("modificador");
    obj.label4:setField("atributos.modforcastr");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setVertTextAlign("center");
    obj.label4:setFontSize(46);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setName("label4");
    obj.label4:setFontColor("white");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.flowPart4);
    obj.layout2:setFrameRegion("titulo");
    obj.layout2:setName("layout2");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout2);
    obj.button1:setAlign("client");
    obj.button1:setText("FOR??A");
    obj.button1:setVertTextAlign("center");
    obj.button1:setHorzTextAlign("center");
    obj.button1:setName("button1");

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.flowPart4);
    obj.flowLayout4:setFrameRegion("RegiaoDePericias");
    obj.flowLayout4:setAutoHeight(true);
    obj.flowLayout4:setLineSpacing(0);
    obj.flowLayout4:setHorzAlign("leading");
    obj.flowLayout4:setName("flowLayout4");
    obj.flowLayout4:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout4:setVertAlign("leading");

    obj.flowPart5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout4);
    obj.flowPart5:setMinWidth(206);
    obj.flowPart5:setMaxWidth(250);
    obj.flowPart5:setHeight(17);
    obj.flowPart5:setName("flowPart5");
    obj.flowPart5:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart5:setVertAlign("leading");

    obj.cbProfforca = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfforca:setParent(obj.flowPart5);
    obj.cbProfforca:setName("cbProfforca");
    obj.cbProfforca:setAlign("left");
    obj.cbProfforca:setField("resistencias.forca");
    obj.cbProfforca:setWidth(20);
    obj.cbProfforca:setHeight(20);
    obj.cbProfforca:setOptimize(false);
    obj.cbProfforca:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfforca:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.flowPart5);
    obj.dataLink4:setField("macroExpertise.forca");
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.flowPart5);
    obj.dataLink5:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink5:setName("dataLink5");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.flowPart5);
    obj.layout3:setAlign("left");
    obj.layout3:setWidth(26);
    obj.layout3:setMargins({left=2});
    obj.layout3:setName("layout3");

    obj.labProfforca = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfforca:setParent(obj.layout3);
    obj.labProfforca:setName("labProfforca");
    obj.labProfforca:setField("resistencias.bonusforcastr");
    obj.labProfforca:setAlign("client");
    obj.labProfforca:setHorzTextAlign("center");
    obj.labProfforca:setVertTextAlign("trailing");
    obj.labProfforca:setTextTrimming("none");
    obj.labProfforca:setFontColor("white");

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.layout3);
    obj.horzLine1:setStrokeColor("white");
    obj.horzLine1:setStrokeSize(1);
    obj.horzLine1:setAlign("bottom");
    obj.horzLine1:setName("horzLine1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.flowPart5);
    obj.button2:setAlign("left");
    obj.button2:setText("Resist??ncia");
    obj.button2:setWidth(122);
    obj.button2:setMargins({left=2});
    obj.button2:setName("button2");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.flowLayout4);
    obj.dataLink6:setFields({'atributos.modforca', 'bonusProficiencia', 'resistencias.forca', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink6:setName("dataLink6");

    obj.flowPart6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout4);
    obj.flowPart6:setMinWidth(206);
    obj.flowPart6:setMaxWidth(250);
    obj.flowPart6:setHeight(17);
    obj.flowPart6:setName("flowPart6");
    obj.flowPart6:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart6:setVertAlign("leading");

    obj.cbProfatletismo = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfatletismo:setParent(obj.flowPart6);
    obj.cbProfatletismo:setName("cbProfatletismo");
    obj.cbProfatletismo:setAlign("left");
    obj.cbProfatletismo:setField("pericias.atletismo");
    obj.cbProfatletismo:setWidth(20);
    obj.cbProfatletismo:setHeight(20);
    obj.cbProfatletismo:setOptimize(false);
    obj.cbProfatletismo:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfatletismo:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.flowPart6);
    obj.dataLink7:setField("macroExpertise.atletismo");
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.flowPart6);
    obj.dataLink8:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink8:setName("dataLink8");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.flowPart6);
    obj.layout4:setAlign("left");
    obj.layout4:setWidth(26);
    obj.layout4:setMargins({left=2});
    obj.layout4:setName("layout4");

    obj.labProfatletismo = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfatletismo:setParent(obj.layout4);
    obj.labProfatletismo:setName("labProfatletismo");
    obj.labProfatletismo:setField("pericias.bonusatletismostr");
    obj.labProfatletismo:setAlign("client");
    obj.labProfatletismo:setHorzTextAlign("center");
    obj.labProfatletismo:setVertTextAlign("trailing");
    obj.labProfatletismo:setTextTrimming("none");
    obj.labProfatletismo:setFontColor("white");

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.layout4);
    obj.horzLine2:setStrokeColor("white");
    obj.horzLine2:setStrokeSize(1);
    obj.horzLine2:setAlign("bottom");
    obj.horzLine2:setName("horzLine2");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.flowPart6);
    obj.button3:setAlign("left");
    obj.button3:setText("Atletismo");
    obj.button3:setWidth(122);
    obj.button3:setMargins({left=2});
    obj.button3:setName("button3");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.flowLayout4);
    obj.dataLink9:setFields({'atributos.modforca', 'bonusProficiencia', 'pericias.atletismo', 'macroExpertise.atletismo', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink9:setName("dataLink9");

    obj.flowPart7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.flowLayout4);
    obj.flowPart7:setMinWidth(206);
    obj.flowPart7:setMaxWidth(250);
    obj.flowPart7:setHeight(17);
    obj.flowPart7:setName("flowPart7");
    obj.flowPart7:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart7:setVertAlign("leading");

    obj.cbProfpericiaforca = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfpericiaforca:setParent(obj.flowPart7);
    obj.cbProfpericiaforca:setName("cbProfpericiaforca");
    obj.cbProfpericiaforca:setAlign("left");
    obj.cbProfpericiaforca:setField("pericias.periciaforca");
    obj.cbProfpericiaforca:setWidth(20);
    obj.cbProfpericiaforca:setHeight(20);
    obj.cbProfpericiaforca:setOptimize(false);
    obj.cbProfpericiaforca:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfpericiaforca:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.flowPart7);
    obj.dataLink10:setField("macroExpertise.periciaforca");
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.flowPart7);
    obj.dataLink11:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink11:setName("dataLink11");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.flowPart7);
    obj.layout5:setAlign("left");
    obj.layout5:setWidth(26);
    obj.layout5:setMargins({left=2});
    obj.layout5:setName("layout5");

    obj.labProfpericiaforca = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfpericiaforca:setParent(obj.layout5);
    obj.labProfpericiaforca:setName("labProfpericiaforca");
    obj.labProfpericiaforca:setField("pericias.bonuspericiaforcastr");
    obj.labProfpericiaforca:setAlign("client");
    obj.labProfpericiaforca:setHorzTextAlign("center");
    obj.labProfpericiaforca:setVertTextAlign("trailing");
    obj.labProfpericiaforca:setTextTrimming("none");
    obj.labProfpericiaforca:setFontColor("white");

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.layout5);
    obj.horzLine3:setStrokeColor("white");
    obj.horzLine3:setStrokeSize(1);
    obj.horzLine3:setAlign("bottom");
    obj.horzLine3:setName("horzLine3");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.flowPart7);
    obj.button4:setAlign("left");
    obj.button4:setText("N??o Listada");
    obj.button4:setWidth(122);
    obj.button4:setMargins({left=2});
    obj.button4:setName("button4");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.flowLayout4);
    obj.dataLink12:setFields({'atributos.modforca', 'bonusProficiencia', 'pericias.periciaforca', 'macroExpertise.periciaforca', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.fraLayAtributos);
    obj.dataLink13:setField("atributos.destreza");
    obj.dataLink13:setName("dataLink13");

    obj.flowPart8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart8:setParent(obj.fraLayAtributos);
    obj.flowPart8:setHeight(140);
    obj.flowPart8:setMinWidth(320);
    obj.flowPart8:setMaxWidth(420);
    obj.flowPart8:setMinScaledWidth(305);
    obj.flowPart8:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart8:setName("flowPart8");
    obj.flowPart8:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart8:setVertAlign("leading");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.flowPart8);
    obj.layout6:setLeft(6);
    obj.layout6:setTop(12);
    obj.layout6:setWidth(116);
    obj.layout6:setHeight(115);
    obj.layout6:setName("layout6");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout6);
    obj.edit5:setAlign("top");
    obj.edit5:setMargins({left=30, right=30});
    obj.edit5:setField("atributos.destreza");
    obj.edit5:setHeight(30);
    obj.edit5:setType("number");
    obj.edit5:setMin(0);
    obj.edit5:setMax(99);
    obj.edit5:setName("edit5");
    obj.edit5:setTransparent(true);
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setFontSize(15);
    obj.edit5:setFontColor("white");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.flowPart8);
    obj.label5:setFrameRegion("modificador");
    obj.label5:setField("atributos.moddestrezastr");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setVertTextAlign("center");
    obj.label5:setFontSize(46);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setName("label5");
    obj.label5:setFontColor("white");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.flowPart8);
    obj.layout7:setFrameRegion("titulo");
    obj.layout7:setName("layout7");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout7);
    obj.button5:setAlign("client");
    obj.button5:setText("DESTREZA");
    obj.button5:setVertTextAlign("center");
    obj.button5:setHorzTextAlign("center");
    obj.button5:setName("button5");

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.flowPart8);
    obj.flowLayout5:setFrameRegion("RegiaoDePericias");
    obj.flowLayout5:setAutoHeight(true);
    obj.flowLayout5:setLineSpacing(0);
    obj.flowLayout5:setHorzAlign("leading");
    obj.flowLayout5:setName("flowLayout5");
    obj.flowLayout5:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout5:setVertAlign("leading");

    obj.flowPart9 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart9:setParent(obj.flowLayout5);
    obj.flowPart9:setMinWidth(206);
    obj.flowPart9:setMaxWidth(250);
    obj.flowPart9:setHeight(17);
    obj.flowPart9:setName("flowPart9");
    obj.flowPart9:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart9:setVertAlign("leading");

    obj.cbProfdestreza = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfdestreza:setParent(obj.flowPart9);
    obj.cbProfdestreza:setName("cbProfdestreza");
    obj.cbProfdestreza:setAlign("left");
    obj.cbProfdestreza:setField("resistencias.destreza");
    obj.cbProfdestreza:setWidth(20);
    obj.cbProfdestreza:setHeight(20);
    obj.cbProfdestreza:setOptimize(false);
    obj.cbProfdestreza:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfdestreza:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.flowPart9);
    obj.dataLink14:setField("macroExpertise.destreza");
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.flowPart9);
    obj.dataLink15:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink15:setName("dataLink15");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.flowPart9);
    obj.layout8:setAlign("left");
    obj.layout8:setWidth(26);
    obj.layout8:setMargins({left=2});
    obj.layout8:setName("layout8");

    obj.labProfdestreza = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfdestreza:setParent(obj.layout8);
    obj.labProfdestreza:setName("labProfdestreza");
    obj.labProfdestreza:setField("resistencias.bonusdestrezastr");
    obj.labProfdestreza:setAlign("client");
    obj.labProfdestreza:setHorzTextAlign("center");
    obj.labProfdestreza:setVertTextAlign("trailing");
    obj.labProfdestreza:setTextTrimming("none");
    obj.labProfdestreza:setFontColor("white");

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.layout8);
    obj.horzLine4:setStrokeColor("white");
    obj.horzLine4:setStrokeSize(1);
    obj.horzLine4:setAlign("bottom");
    obj.horzLine4:setName("horzLine4");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.flowPart9);
    obj.button6:setAlign("left");
    obj.button6:setText("Resist??ncia");
    obj.button6:setWidth(122);
    obj.button6:setMargins({left=2});
    obj.button6:setName("button6");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.flowLayout5);
    obj.dataLink16:setFields({'atributos.moddestreza', 'bonusProficiencia', 'resistencias.destreza', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink16:setName("dataLink16");

    obj.flowPart10 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart10:setParent(obj.flowLayout5);
    obj.flowPart10:setMinWidth(206);
    obj.flowPart10:setMaxWidth(250);
    obj.flowPart10:setHeight(17);
    obj.flowPart10:setName("flowPart10");
    obj.flowPart10:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart10:setVertAlign("leading");

    obj.cbProfacrobacia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfacrobacia:setParent(obj.flowPart10);
    obj.cbProfacrobacia:setName("cbProfacrobacia");
    obj.cbProfacrobacia:setAlign("left");
    obj.cbProfacrobacia:setField("pericias.acrobacia");
    obj.cbProfacrobacia:setWidth(20);
    obj.cbProfacrobacia:setHeight(20);
    obj.cbProfacrobacia:setOptimize(false);
    obj.cbProfacrobacia:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfacrobacia:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.flowPart10);
    obj.dataLink17:setField("macroExpertise.acrobacia");
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.flowPart10);
    obj.dataLink18:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink18:setName("dataLink18");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.flowPart10);
    obj.layout9:setAlign("left");
    obj.layout9:setWidth(26);
    obj.layout9:setMargins({left=2});
    obj.layout9:setName("layout9");

    obj.labProfacrobacia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfacrobacia:setParent(obj.layout9);
    obj.labProfacrobacia:setName("labProfacrobacia");
    obj.labProfacrobacia:setField("pericias.bonusacrobaciastr");
    obj.labProfacrobacia:setAlign("client");
    obj.labProfacrobacia:setHorzTextAlign("center");
    obj.labProfacrobacia:setVertTextAlign("trailing");
    obj.labProfacrobacia:setTextTrimming("none");
    obj.labProfacrobacia:setFontColor("white");

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.layout9);
    obj.horzLine5:setStrokeColor("white");
    obj.horzLine5:setStrokeSize(1);
    obj.horzLine5:setAlign("bottom");
    obj.horzLine5:setName("horzLine5");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.flowPart10);
    obj.button7:setAlign("left");
    obj.button7:setText("Acrobacia");
    obj.button7:setWidth(122);
    obj.button7:setMargins({left=2});
    obj.button7:setName("button7");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.flowLayout5);
    obj.dataLink19:setFields({'atributos.moddestreza', 'bonusProficiencia', 'pericias.acrobacia', 'macroExpertise.acrobacia', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink19:setName("dataLink19");

    obj.flowPart11 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart11:setParent(obj.flowLayout5);
    obj.flowPart11:setMinWidth(206);
    obj.flowPart11:setMaxWidth(250);
    obj.flowPart11:setHeight(17);
    obj.flowPart11:setName("flowPart11");
    obj.flowPart11:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart11:setVertAlign("leading");

    obj.cbProffurtividade = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProffurtividade:setParent(obj.flowPart11);
    obj.cbProffurtividade:setName("cbProffurtividade");
    obj.cbProffurtividade:setAlign("left");
    obj.cbProffurtividade:setField("pericias.furtividade");
    obj.cbProffurtividade:setWidth(20);
    obj.cbProffurtividade:setHeight(20);
    obj.cbProffurtividade:setOptimize(false);
    obj.cbProffurtividade:setImageChecked("images/checkbox1_checked.png");
    obj.cbProffurtividade:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.flowPart11);
    obj.dataLink20:setField("macroExpertise.furtividade");
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.flowPart11);
    obj.dataLink21:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink21:setName("dataLink21");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.flowPart11);
    obj.layout10:setAlign("left");
    obj.layout10:setWidth(26);
    obj.layout10:setMargins({left=2});
    obj.layout10:setName("layout10");

    obj.labProffurtividade = GUI.fromHandle(_obj_newObject("label"));
    obj.labProffurtividade:setParent(obj.layout10);
    obj.labProffurtividade:setName("labProffurtividade");
    obj.labProffurtividade:setField("pericias.bonusfurtividadestr");
    obj.labProffurtividade:setAlign("client");
    obj.labProffurtividade:setHorzTextAlign("center");
    obj.labProffurtividade:setVertTextAlign("trailing");
    obj.labProffurtividade:setTextTrimming("none");
    obj.labProffurtividade:setFontColor("white");

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.layout10);
    obj.horzLine6:setStrokeColor("white");
    obj.horzLine6:setStrokeSize(1);
    obj.horzLine6:setAlign("bottom");
    obj.horzLine6:setName("horzLine6");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.flowPart11);
    obj.button8:setAlign("left");
    obj.button8:setText("Furtividade");
    obj.button8:setWidth(122);
    obj.button8:setMargins({left=2});
    obj.button8:setName("button8");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.flowLayout5);
    obj.dataLink22:setFields({'atributos.moddestreza', 'bonusProficiencia', 'pericias.furtividade', 'macroExpertise.furtividade', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink22:setName("dataLink22");

    obj.flowPart12 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart12:setParent(obj.flowLayout5);
    obj.flowPart12:setMinWidth(206);
    obj.flowPart12:setMaxWidth(250);
    obj.flowPart12:setHeight(17);
    obj.flowPart12:setName("flowPart12");
    obj.flowPart12:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart12:setVertAlign("leading");

    obj.cbProfiniciativa = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfiniciativa:setParent(obj.flowPart12);
    obj.cbProfiniciativa:setName("cbProfiniciativa");
    obj.cbProfiniciativa:setAlign("left");
    obj.cbProfiniciativa:setField("pericias.iniciativa");
    obj.cbProfiniciativa:setWidth(20);
    obj.cbProfiniciativa:setHeight(20);
    obj.cbProfiniciativa:setOptimize(false);
    obj.cbProfiniciativa:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfiniciativa:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.flowPart12);
    obj.dataLink23:setField("macroExpertise.iniciativa");
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.flowPart12);
    obj.dataLink24:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink24:setName("dataLink24");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.flowPart12);
    obj.layout11:setAlign("left");
    obj.layout11:setWidth(26);
    obj.layout11:setMargins({left=2});
    obj.layout11:setName("layout11");

    obj.labProfiniciativa = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfiniciativa:setParent(obj.layout11);
    obj.labProfiniciativa:setName("labProfiniciativa");
    obj.labProfiniciativa:setField("pericias.bonusiniciativastr");
    obj.labProfiniciativa:setAlign("client");
    obj.labProfiniciativa:setHorzTextAlign("center");
    obj.labProfiniciativa:setVertTextAlign("trailing");
    obj.labProfiniciativa:setTextTrimming("none");
    obj.labProfiniciativa:setFontColor("white");

    obj.horzLine7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine7:setParent(obj.layout11);
    obj.horzLine7:setStrokeColor("white");
    obj.horzLine7:setStrokeSize(1);
    obj.horzLine7:setAlign("bottom");
    obj.horzLine7:setName("horzLine7");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.flowPart12);
    obj.button9:setAlign("left");
    obj.button9:setText("Iniciativa");
    obj.button9:setWidth(122);
    obj.button9:setMargins({left=2});
    obj.button9:setName("button9");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.flowLayout5);
    obj.dataLink25:setFields({'atributos.moddestreza', 'bonusProficiencia', 'pericias.iniciativa', 'macroExpertise.iniciativa', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink25:setName("dataLink25");

    obj.flowPart13 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart13:setParent(obj.flowLayout5);
    obj.flowPart13:setMinWidth(206);
    obj.flowPart13:setMaxWidth(250);
    obj.flowPart13:setHeight(17);
    obj.flowPart13:setName("flowPart13");
    obj.flowPart13:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart13:setVertAlign("leading");

    obj.cbProfprestidigitacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfprestidigitacao:setParent(obj.flowPart13);
    obj.cbProfprestidigitacao:setName("cbProfprestidigitacao");
    obj.cbProfprestidigitacao:setAlign("left");
    obj.cbProfprestidigitacao:setField("pericias.prestidigitacao");
    obj.cbProfprestidigitacao:setWidth(20);
    obj.cbProfprestidigitacao:setHeight(20);
    obj.cbProfprestidigitacao:setOptimize(false);
    obj.cbProfprestidigitacao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfprestidigitacao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.flowPart13);
    obj.dataLink26:setField("macroExpertise.prestidigitacao");
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.flowPart13);
    obj.dataLink27:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink27:setName("dataLink27");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.flowPart13);
    obj.layout12:setAlign("left");
    obj.layout12:setWidth(26);
    obj.layout12:setMargins({left=2});
    obj.layout12:setName("layout12");

    obj.labProfprestidigitacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfprestidigitacao:setParent(obj.layout12);
    obj.labProfprestidigitacao:setName("labProfprestidigitacao");
    obj.labProfprestidigitacao:setField("pericias.bonusprestidigitacaostr");
    obj.labProfprestidigitacao:setAlign("client");
    obj.labProfprestidigitacao:setHorzTextAlign("center");
    obj.labProfprestidigitacao:setVertTextAlign("trailing");
    obj.labProfprestidigitacao:setTextTrimming("none");
    obj.labProfprestidigitacao:setFontColor("white");

    obj.horzLine8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine8:setParent(obj.layout12);
    obj.horzLine8:setStrokeColor("white");
    obj.horzLine8:setStrokeSize(1);
    obj.horzLine8:setAlign("bottom");
    obj.horzLine8:setName("horzLine8");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.flowPart13);
    obj.button10:setAlign("left");
    obj.button10:setText("Prestidigita????o");
    obj.button10:setWidth(122);
    obj.button10:setMargins({left=2});
    obj.button10:setName("button10");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.flowLayout5);
    obj.dataLink28:setFields({'atributos.moddestreza', 'bonusProficiencia', 'pericias.prestidigitacao', 'macroExpertise.prestidigitacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink28:setName("dataLink28");

    obj.flowPart14 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart14:setParent(obj.flowLayout5);
    obj.flowPart14:setMinWidth(206);
    obj.flowPart14:setMaxWidth(250);
    obj.flowPart14:setHeight(17);
    obj.flowPart14:setName("flowPart14");
    obj.flowPart14:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart14:setVertAlign("leading");

    obj.cbProfpericiadestreza = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfpericiadestreza:setParent(obj.flowPart14);
    obj.cbProfpericiadestreza:setName("cbProfpericiadestreza");
    obj.cbProfpericiadestreza:setAlign("left");
    obj.cbProfpericiadestreza:setField("pericias.periciadestreza");
    obj.cbProfpericiadestreza:setWidth(20);
    obj.cbProfpericiadestreza:setHeight(20);
    obj.cbProfpericiadestreza:setOptimize(false);
    obj.cbProfpericiadestreza:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfpericiadestreza:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.flowPart14);
    obj.dataLink29:setField("macroExpertise.periciadestreza");
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.flowPart14);
    obj.dataLink30:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink30:setName("dataLink30");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.flowPart14);
    obj.layout13:setAlign("left");
    obj.layout13:setWidth(26);
    obj.layout13:setMargins({left=2});
    obj.layout13:setName("layout13");

    obj.labProfpericiadestreza = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfpericiadestreza:setParent(obj.layout13);
    obj.labProfpericiadestreza:setName("labProfpericiadestreza");
    obj.labProfpericiadestreza:setField("pericias.bonuspericiadestrezastr");
    obj.labProfpericiadestreza:setAlign("client");
    obj.labProfpericiadestreza:setHorzTextAlign("center");
    obj.labProfpericiadestreza:setVertTextAlign("trailing");
    obj.labProfpericiadestreza:setTextTrimming("none");
    obj.labProfpericiadestreza:setFontColor("white");

    obj.horzLine9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine9:setParent(obj.layout13);
    obj.horzLine9:setStrokeColor("white");
    obj.horzLine9:setStrokeSize(1);
    obj.horzLine9:setAlign("bottom");
    obj.horzLine9:setName("horzLine9");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.flowPart14);
    obj.button11:setAlign("left");
    obj.button11:setText("N??o Listada");
    obj.button11:setWidth(122);
    obj.button11:setMargins({left=2});
    obj.button11:setName("button11");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.flowLayout5);
    obj.dataLink31:setFields({'atributos.moddestreza', 'bonusProficiencia', 'pericias.periciadestreza', 'macroExpertise.periciadestreza', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink31:setName("dataLink31");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.fraLayAtributos);
    obj.dataLink32:setField("atributos.constituicao");
    obj.dataLink32:setName("dataLink32");

    obj.flowPart15 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart15:setParent(obj.fraLayAtributos);
    obj.flowPart15:setHeight(140);
    obj.flowPart15:setMinWidth(320);
    obj.flowPart15:setMaxWidth(420);
    obj.flowPart15:setMinScaledWidth(305);
    obj.flowPart15:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart15:setName("flowPart15");
    obj.flowPart15:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart15:setVertAlign("leading");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.flowPart15);
    obj.layout14:setLeft(6);
    obj.layout14:setTop(12);
    obj.layout14:setWidth(116);
    obj.layout14:setHeight(115);
    obj.layout14:setName("layout14");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout14);
    obj.edit6:setAlign("top");
    obj.edit6:setMargins({left=30, right=30});
    obj.edit6:setField("atributos.constituicao");
    obj.edit6:setHeight(30);
    obj.edit6:setType("number");
    obj.edit6:setMin(0);
    obj.edit6:setMax(99);
    obj.edit6:setName("edit6");
    obj.edit6:setTransparent(true);
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setFontSize(15);
    obj.edit6:setFontColor("white");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.flowPart15);
    obj.label6:setFrameRegion("modificador");
    obj.label6:setField("atributos.modconstituicaostr");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setVertTextAlign("center");
    obj.label6:setFontSize(46);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setName("label6");
    obj.label6:setFontColor("white");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.flowPart15);
    obj.layout15:setFrameRegion("titulo");
    obj.layout15:setName("layout15");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.layout15);
    obj.button12:setAlign("client");
    obj.button12:setText("CONSTITUI????O");
    obj.button12:setVertTextAlign("center");
    obj.button12:setHorzTextAlign("center");
    obj.button12:setName("button12");

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.flowPart15);
    obj.flowLayout6:setFrameRegion("RegiaoDePericias");
    obj.flowLayout6:setAutoHeight(true);
    obj.flowLayout6:setLineSpacing(0);
    obj.flowLayout6:setHorzAlign("leading");
    obj.flowLayout6:setName("flowLayout6");
    obj.flowLayout6:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout6:setVertAlign("leading");

    obj.flowPart16 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart16:setParent(obj.flowLayout6);
    obj.flowPart16:setMinWidth(206);
    obj.flowPart16:setMaxWidth(250);
    obj.flowPart16:setHeight(17);
    obj.flowPart16:setName("flowPart16");
    obj.flowPart16:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart16:setVertAlign("leading");

    obj.cbProfconstituicao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfconstituicao:setParent(obj.flowPart16);
    obj.cbProfconstituicao:setName("cbProfconstituicao");
    obj.cbProfconstituicao:setAlign("left");
    obj.cbProfconstituicao:setField("resistencias.constituicao");
    obj.cbProfconstituicao:setWidth(20);
    obj.cbProfconstituicao:setHeight(20);
    obj.cbProfconstituicao:setOptimize(false);
    obj.cbProfconstituicao:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfconstituicao:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.flowPart16);
    obj.dataLink33:setField("macroExpertise.constituicao");
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.flowPart16);
    obj.dataLink34:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink34:setName("dataLink34");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.flowPart16);
    obj.layout16:setAlign("left");
    obj.layout16:setWidth(26);
    obj.layout16:setMargins({left=2});
    obj.layout16:setName("layout16");

    obj.labProfconstituicao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfconstituicao:setParent(obj.layout16);
    obj.labProfconstituicao:setName("labProfconstituicao");
    obj.labProfconstituicao:setField("resistencias.bonusconstituicaostr");
    obj.labProfconstituicao:setAlign("client");
    obj.labProfconstituicao:setHorzTextAlign("center");
    obj.labProfconstituicao:setVertTextAlign("trailing");
    obj.labProfconstituicao:setTextTrimming("none");
    obj.labProfconstituicao:setFontColor("white");

    obj.horzLine10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine10:setParent(obj.layout16);
    obj.horzLine10:setStrokeColor("white");
    obj.horzLine10:setStrokeSize(1);
    obj.horzLine10:setAlign("bottom");
    obj.horzLine10:setName("horzLine10");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.flowPart16);
    obj.button13:setAlign("left");
    obj.button13:setText("Resist??ncia");
    obj.button13:setWidth(122);
    obj.button13:setMargins({left=2});
    obj.button13:setName("button13");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.flowLayout6);
    obj.dataLink35:setFields({'atributos.modconstituicao', 'bonusProficiencia', 'resistencias.constituicao', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink35:setName("dataLink35");

    obj.flowPart17 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart17:setParent(obj.flowLayout6);
    obj.flowPart17:setMinWidth(206);
    obj.flowPart17:setMaxWidth(250);
    obj.flowPart17:setHeight(17);
    obj.flowPart17:setName("flowPart17");
    obj.flowPart17:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart17:setVertAlign("leading");

    obj.cbProfconcentracao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfconcentracao:setParent(obj.flowPart17);
    obj.cbProfconcentracao:setName("cbProfconcentracao");
    obj.cbProfconcentracao:setAlign("left");
    obj.cbProfconcentracao:setField("pericias.concentracao");
    obj.cbProfconcentracao:setWidth(20);
    obj.cbProfconcentracao:setHeight(20);
    obj.cbProfconcentracao:setOptimize(false);
    obj.cbProfconcentracao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfconcentracao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.flowPart17);
    obj.dataLink36:setField("macroExpertise.concentracao");
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.flowPart17);
    obj.dataLink37:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink37:setName("dataLink37");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.flowPart17);
    obj.layout17:setAlign("left");
    obj.layout17:setWidth(26);
    obj.layout17:setMargins({left=2});
    obj.layout17:setName("layout17");

    obj.labProfconcentracao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfconcentracao:setParent(obj.layout17);
    obj.labProfconcentracao:setName("labProfconcentracao");
    obj.labProfconcentracao:setField("pericias.bonusconcentracaostr");
    obj.labProfconcentracao:setAlign("client");
    obj.labProfconcentracao:setHorzTextAlign("center");
    obj.labProfconcentracao:setVertTextAlign("trailing");
    obj.labProfconcentracao:setTextTrimming("none");
    obj.labProfconcentracao:setFontColor("white");

    obj.horzLine11 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine11:setParent(obj.layout17);
    obj.horzLine11:setStrokeColor("white");
    obj.horzLine11:setStrokeSize(1);
    obj.horzLine11:setAlign("bottom");
    obj.horzLine11:setName("horzLine11");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.flowPart17);
    obj.button14:setAlign("left");
    obj.button14:setText("Concentra????o");
    obj.button14:setWidth(122);
    obj.button14:setMargins({left=2});
    obj.button14:setName("button14");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.flowLayout6);
    obj.dataLink38:setFields({'atributos.modconstituicao', 'bonusProficiencia', 'pericias.concentracao', 'macroExpertise.concentracao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink38:setName("dataLink38");

    obj.flowPart18 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart18:setParent(obj.flowLayout6);
    obj.flowPart18:setMinWidth(206);
    obj.flowPart18:setMaxWidth(250);
    obj.flowPart18:setHeight(17);
    obj.flowPart18:setName("flowPart18");
    obj.flowPart18:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart18:setVertAlign("leading");

    obj.cbProftolerancia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProftolerancia:setParent(obj.flowPart18);
    obj.cbProftolerancia:setName("cbProftolerancia");
    obj.cbProftolerancia:setAlign("left");
    obj.cbProftolerancia:setField("pericias.tolerancia");
    obj.cbProftolerancia:setWidth(20);
    obj.cbProftolerancia:setHeight(20);
    obj.cbProftolerancia:setOptimize(false);
    obj.cbProftolerancia:setImageChecked("images/checkbox1_checked.png");
    obj.cbProftolerancia:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.flowPart18);
    obj.dataLink39:setField("macroExpertise.tolerancia");
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.flowPart18);
    obj.dataLink40:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink40:setName("dataLink40");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.flowPart18);
    obj.layout18:setAlign("left");
    obj.layout18:setWidth(26);
    obj.layout18:setMargins({left=2});
    obj.layout18:setName("layout18");

    obj.labProftolerancia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProftolerancia:setParent(obj.layout18);
    obj.labProftolerancia:setName("labProftolerancia");
    obj.labProftolerancia:setField("pericias.bonustoleranciastr");
    obj.labProftolerancia:setAlign("client");
    obj.labProftolerancia:setHorzTextAlign("center");
    obj.labProftolerancia:setVertTextAlign("trailing");
    obj.labProftolerancia:setTextTrimming("none");
    obj.labProftolerancia:setFontColor("white");

    obj.horzLine12 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine12:setParent(obj.layout18);
    obj.horzLine12:setStrokeColor("white");
    obj.horzLine12:setStrokeSize(1);
    obj.horzLine12:setAlign("bottom");
    obj.horzLine12:setName("horzLine12");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.flowPart18);
    obj.button15:setAlign("left");
    obj.button15:setText("Tolerancia");
    obj.button15:setWidth(122);
    obj.button15:setMargins({left=2});
    obj.button15:setName("button15");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.flowLayout6);
    obj.dataLink41:setFields({'atributos.modconstituicao', 'bonusProficiencia', 'pericias.tolerancia', 'macroExpertise.tolerancia', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink41:setName("dataLink41");

    obj.flowPart19 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart19:setParent(obj.flowLayout6);
    obj.flowPart19:setMinWidth(206);
    obj.flowPart19:setMaxWidth(250);
    obj.flowPart19:setHeight(17);
    obj.flowPart19:setName("flowPart19");
    obj.flowPart19:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart19:setVertAlign("leading");

    obj.cbProfpericiaconstituicao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfpericiaconstituicao:setParent(obj.flowPart19);
    obj.cbProfpericiaconstituicao:setName("cbProfpericiaconstituicao");
    obj.cbProfpericiaconstituicao:setAlign("left");
    obj.cbProfpericiaconstituicao:setField("pericias.periciaconstituicao");
    obj.cbProfpericiaconstituicao:setWidth(20);
    obj.cbProfpericiaconstituicao:setHeight(20);
    obj.cbProfpericiaconstituicao:setOptimize(false);
    obj.cbProfpericiaconstituicao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfpericiaconstituicao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.flowPart19);
    obj.dataLink42:setField("macroExpertise.periciaconstituicao");
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.flowPart19);
    obj.dataLink43:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink43:setName("dataLink43");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.flowPart19);
    obj.layout19:setAlign("left");
    obj.layout19:setWidth(26);
    obj.layout19:setMargins({left=2});
    obj.layout19:setName("layout19");

    obj.labProfpericiaconstituicao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfpericiaconstituicao:setParent(obj.layout19);
    obj.labProfpericiaconstituicao:setName("labProfpericiaconstituicao");
    obj.labProfpericiaconstituicao:setField("pericias.bonuspericiaconstituicaostr");
    obj.labProfpericiaconstituicao:setAlign("client");
    obj.labProfpericiaconstituicao:setHorzTextAlign("center");
    obj.labProfpericiaconstituicao:setVertTextAlign("trailing");
    obj.labProfpericiaconstituicao:setTextTrimming("none");
    obj.labProfpericiaconstituicao:setFontColor("white");

    obj.horzLine13 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine13:setParent(obj.layout19);
    obj.horzLine13:setStrokeColor("white");
    obj.horzLine13:setStrokeSize(1);
    obj.horzLine13:setAlign("bottom");
    obj.horzLine13:setName("horzLine13");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.flowPart19);
    obj.button16:setAlign("left");
    obj.button16:setText("N??o Listada");
    obj.button16:setWidth(122);
    obj.button16:setMargins({left=2});
    obj.button16:setName("button16");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.flowLayout6);
    obj.dataLink44:setFields({'atributos.modconstituicao', 'bonusProficiencia', 'pericias.periciaconstituicao', 'macroExpertise.periciaconstituicao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj.fraLayAtributos);
    obj.dataLink45:setField("atributos.inteligencia");
    obj.dataLink45:setName("dataLink45");

    obj.flowPart20 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart20:setParent(obj.fraLayAtributos);
    obj.flowPart20:setHeight(140);
    obj.flowPart20:setMinWidth(320);
    obj.flowPart20:setMaxWidth(420);
    obj.flowPart20:setMinScaledWidth(305);
    obj.flowPart20:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart20:setName("flowPart20");
    obj.flowPart20:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart20:setVertAlign("leading");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.flowPart20);
    obj.layout20:setLeft(6);
    obj.layout20:setTop(12);
    obj.layout20:setWidth(116);
    obj.layout20:setHeight(115);
    obj.layout20:setName("layout20");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout20);
    obj.edit7:setAlign("top");
    obj.edit7:setMargins({left=30, right=30});
    obj.edit7:setField("atributos.inteligencia");
    obj.edit7:setHeight(30);
    obj.edit7:setType("number");
    obj.edit7:setMin(0);
    obj.edit7:setMax(99);
    obj.edit7:setName("edit7");
    obj.edit7:setTransparent(true);
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setFontSize(15);
    obj.edit7:setFontColor("white");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.flowPart20);
    obj.label7:setFrameRegion("modificador");
    obj.label7:setField("atributos.modinteligenciastr");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setVertTextAlign("center");
    obj.label7:setFontSize(46);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setName("label7");
    obj.label7:setFontColor("white");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.flowPart20);
    obj.layout21:setFrameRegion("titulo");
    obj.layout21:setName("layout21");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.layout21);
    obj.button17:setAlign("client");
    obj.button17:setText("INTELIG??NCIA");
    obj.button17:setVertTextAlign("center");
    obj.button17:setHorzTextAlign("center");
    obj.button17:setName("button17");

    obj.flowLayout7 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.flowPart20);
    obj.flowLayout7:setFrameRegion("RegiaoDePericias");
    obj.flowLayout7:setAutoHeight(true);
    obj.flowLayout7:setLineSpacing(0);
    obj.flowLayout7:setHorzAlign("leading");
    obj.flowLayout7:setName("flowLayout7");
    obj.flowLayout7:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout7:setVertAlign("leading");

    obj.flowPart21 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart21:setParent(obj.flowLayout7);
    obj.flowPart21:setMinWidth(206);
    obj.flowPart21:setMaxWidth(250);
    obj.flowPart21:setHeight(17);
    obj.flowPart21:setName("flowPart21");
    obj.flowPart21:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart21:setVertAlign("leading");

    obj.cbProfinteligencia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfinteligencia:setParent(obj.flowPart21);
    obj.cbProfinteligencia:setName("cbProfinteligencia");
    obj.cbProfinteligencia:setAlign("left");
    obj.cbProfinteligencia:setField("resistencias.inteligencia");
    obj.cbProfinteligencia:setWidth(20);
    obj.cbProfinteligencia:setHeight(20);
    obj.cbProfinteligencia:setOptimize(false);
    obj.cbProfinteligencia:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfinteligencia:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj.flowPart21);
    obj.dataLink46:setField("macroExpertise.inteligencia");
    obj.dataLink46:setName("dataLink46");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj.flowPart21);
    obj.dataLink47:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink47:setName("dataLink47");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.flowPart21);
    obj.layout22:setAlign("left");
    obj.layout22:setWidth(26);
    obj.layout22:setMargins({left=2});
    obj.layout22:setName("layout22");

    obj.labProfinteligencia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfinteligencia:setParent(obj.layout22);
    obj.labProfinteligencia:setName("labProfinteligencia");
    obj.labProfinteligencia:setField("resistencias.bonusinteligenciastr");
    obj.labProfinteligencia:setAlign("client");
    obj.labProfinteligencia:setHorzTextAlign("center");
    obj.labProfinteligencia:setVertTextAlign("trailing");
    obj.labProfinteligencia:setTextTrimming("none");
    obj.labProfinteligencia:setFontColor("white");

    obj.horzLine14 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine14:setParent(obj.layout22);
    obj.horzLine14:setStrokeColor("white");
    obj.horzLine14:setStrokeSize(1);
    obj.horzLine14:setAlign("bottom");
    obj.horzLine14:setName("horzLine14");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.flowPart21);
    obj.button18:setAlign("left");
    obj.button18:setText("Resist??ncia");
    obj.button18:setWidth(122);
    obj.button18:setMargins({left=2});
    obj.button18:setName("button18");

    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj.flowLayout7);
    obj.dataLink48:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'resistencias.inteligencia', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink48:setName("dataLink48");

    obj.flowPart22 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart22:setParent(obj.flowLayout7);
    obj.flowPart22:setMinWidth(206);
    obj.flowPart22:setMaxWidth(250);
    obj.flowPart22:setHeight(17);
    obj.flowPart22:setName("flowPart22");
    obj.flowPart22:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart22:setVertAlign("leading");

    obj.cbProfarcanismo = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfarcanismo:setParent(obj.flowPart22);
    obj.cbProfarcanismo:setName("cbProfarcanismo");
    obj.cbProfarcanismo:setAlign("left");
    obj.cbProfarcanismo:setField("pericias.arcanismo");
    obj.cbProfarcanismo:setWidth(20);
    obj.cbProfarcanismo:setHeight(20);
    obj.cbProfarcanismo:setOptimize(false);
    obj.cbProfarcanismo:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfarcanismo:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj.flowPart22);
    obj.dataLink49:setField("macroExpertise.arcanismo");
    obj.dataLink49:setName("dataLink49");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj.flowPart22);
    obj.dataLink50:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink50:setName("dataLink50");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.flowPart22);
    obj.layout23:setAlign("left");
    obj.layout23:setWidth(26);
    obj.layout23:setMargins({left=2});
    obj.layout23:setName("layout23");

    obj.labProfarcanismo = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfarcanismo:setParent(obj.layout23);
    obj.labProfarcanismo:setName("labProfarcanismo");
    obj.labProfarcanismo:setField("pericias.bonusarcanismostr");
    obj.labProfarcanismo:setAlign("client");
    obj.labProfarcanismo:setHorzTextAlign("center");
    obj.labProfarcanismo:setVertTextAlign("trailing");
    obj.labProfarcanismo:setTextTrimming("none");
    obj.labProfarcanismo:setFontColor("white");

    obj.horzLine15 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine15:setParent(obj.layout23);
    obj.horzLine15:setStrokeColor("white");
    obj.horzLine15:setStrokeSize(1);
    obj.horzLine15:setAlign("bottom");
    obj.horzLine15:setName("horzLine15");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.flowPart22);
    obj.button19:setAlign("left");
    obj.button19:setText("Arcanismo");
    obj.button19:setWidth(122);
    obj.button19:setMargins({left=2});
    obj.button19:setName("button19");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj.flowLayout7);
    obj.dataLink51:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'pericias.arcanismo', 'macroExpertise.arcanismo', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink51:setName("dataLink51");

    obj.flowPart23 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart23:setParent(obj.flowLayout7);
    obj.flowPart23:setMinWidth(206);
    obj.flowPart23:setMaxWidth(250);
    obj.flowPart23:setHeight(17);
    obj.flowPart23:setName("flowPart23");
    obj.flowPart23:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart23:setVertAlign("leading");

    obj.cbProfhistoria = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfhistoria:setParent(obj.flowPart23);
    obj.cbProfhistoria:setName("cbProfhistoria");
    obj.cbProfhistoria:setAlign("left");
    obj.cbProfhistoria:setField("pericias.historia");
    obj.cbProfhistoria:setWidth(20);
    obj.cbProfhistoria:setHeight(20);
    obj.cbProfhistoria:setOptimize(false);
    obj.cbProfhistoria:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfhistoria:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj.flowPart23);
    obj.dataLink52:setField("macroExpertise.historia");
    obj.dataLink52:setName("dataLink52");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj.flowPart23);
    obj.dataLink53:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink53:setName("dataLink53");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.flowPart23);
    obj.layout24:setAlign("left");
    obj.layout24:setWidth(26);
    obj.layout24:setMargins({left=2});
    obj.layout24:setName("layout24");

    obj.labProfhistoria = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfhistoria:setParent(obj.layout24);
    obj.labProfhistoria:setName("labProfhistoria");
    obj.labProfhistoria:setField("pericias.bonushistoriastr");
    obj.labProfhistoria:setAlign("client");
    obj.labProfhistoria:setHorzTextAlign("center");
    obj.labProfhistoria:setVertTextAlign("trailing");
    obj.labProfhistoria:setTextTrimming("none");
    obj.labProfhistoria:setFontColor("white");

    obj.horzLine16 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine16:setParent(obj.layout24);
    obj.horzLine16:setStrokeColor("white");
    obj.horzLine16:setStrokeSize(1);
    obj.horzLine16:setAlign("bottom");
    obj.horzLine16:setName("horzLine16");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.flowPart23);
    obj.button20:setAlign("left");
    obj.button20:setText("Hist??ria");
    obj.button20:setWidth(122);
    obj.button20:setMargins({left=2});
    obj.button20:setName("button20");

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj.flowLayout7);
    obj.dataLink54:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'pericias.historia', 'macroExpertise.historia', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink54:setName("dataLink54");

    obj.flowPart24 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart24:setParent(obj.flowLayout7);
    obj.flowPart24:setMinWidth(206);
    obj.flowPart24:setMaxWidth(250);
    obj.flowPart24:setHeight(17);
    obj.flowPart24:setName("flowPart24");
    obj.flowPart24:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart24:setVertAlign("leading");

    obj.cbProfnatureza = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfnatureza:setParent(obj.flowPart24);
    obj.cbProfnatureza:setName("cbProfnatureza");
    obj.cbProfnatureza:setAlign("left");
    obj.cbProfnatureza:setField("pericias.natureza");
    obj.cbProfnatureza:setWidth(20);
    obj.cbProfnatureza:setHeight(20);
    obj.cbProfnatureza:setOptimize(false);
    obj.cbProfnatureza:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfnatureza:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj.flowPart24);
    obj.dataLink55:setField("macroExpertise.natureza");
    obj.dataLink55:setName("dataLink55");

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj.flowPart24);
    obj.dataLink56:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink56:setName("dataLink56");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.flowPart24);
    obj.layout25:setAlign("left");
    obj.layout25:setWidth(26);
    obj.layout25:setMargins({left=2});
    obj.layout25:setName("layout25");

    obj.labProfnatureza = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfnatureza:setParent(obj.layout25);
    obj.labProfnatureza:setName("labProfnatureza");
    obj.labProfnatureza:setField("pericias.bonusnaturezastr");
    obj.labProfnatureza:setAlign("client");
    obj.labProfnatureza:setHorzTextAlign("center");
    obj.labProfnatureza:setVertTextAlign("trailing");
    obj.labProfnatureza:setTextTrimming("none");
    obj.labProfnatureza:setFontColor("white");

    obj.horzLine17 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine17:setParent(obj.layout25);
    obj.horzLine17:setStrokeColor("white");
    obj.horzLine17:setStrokeSize(1);
    obj.horzLine17:setAlign("bottom");
    obj.horzLine17:setName("horzLine17");

    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.flowPart24);
    obj.button21:setAlign("left");
    obj.button21:setText("Natureza");
    obj.button21:setWidth(122);
    obj.button21:setMargins({left=2});
    obj.button21:setName("button21");

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj.flowLayout7);
    obj.dataLink57:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'pericias.natureza', 'macroExpertise.natureza', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink57:setName("dataLink57");

    obj.flowPart25 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart25:setParent(obj.flowLayout7);
    obj.flowPart25:setMinWidth(206);
    obj.flowPart25:setMaxWidth(250);
    obj.flowPart25:setHeight(17);
    obj.flowPart25:setName("flowPart25");
    obj.flowPart25:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart25:setVertAlign("leading");

    obj.cbProfreligiao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfreligiao:setParent(obj.flowPart25);
    obj.cbProfreligiao:setName("cbProfreligiao");
    obj.cbProfreligiao:setAlign("left");
    obj.cbProfreligiao:setField("pericias.religiao");
    obj.cbProfreligiao:setWidth(20);
    obj.cbProfreligiao:setHeight(20);
    obj.cbProfreligiao:setOptimize(false);
    obj.cbProfreligiao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfreligiao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj.flowPart25);
    obj.dataLink58:setField("macroExpertise.religiao");
    obj.dataLink58:setName("dataLink58");

    obj.dataLink59 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj.flowPart25);
    obj.dataLink59:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink59:setName("dataLink59");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.flowPart25);
    obj.layout26:setAlign("left");
    obj.layout26:setWidth(26);
    obj.layout26:setMargins({left=2});
    obj.layout26:setName("layout26");

    obj.labProfreligiao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfreligiao:setParent(obj.layout26);
    obj.labProfreligiao:setName("labProfreligiao");
    obj.labProfreligiao:setField("pericias.bonusreligiaostr");
    obj.labProfreligiao:setAlign("client");
    obj.labProfreligiao:setHorzTextAlign("center");
    obj.labProfreligiao:setVertTextAlign("trailing");
    obj.labProfreligiao:setTextTrimming("none");
    obj.labProfreligiao:setFontColor("white");

    obj.horzLine18 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine18:setParent(obj.layout26);
    obj.horzLine18:setStrokeColor("white");
    obj.horzLine18:setStrokeSize(1);
    obj.horzLine18:setAlign("bottom");
    obj.horzLine18:setName("horzLine18");

    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.flowPart25);
    obj.button22:setAlign("left");
    obj.button22:setText("Religi??o");
    obj.button22:setWidth(122);
    obj.button22:setMargins({left=2});
    obj.button22:setName("button22");

    obj.dataLink60 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj.flowLayout7);
    obj.dataLink60:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'pericias.religiao', 'macroExpertise.religiao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink60:setName("dataLink60");

    obj.flowPart26 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart26:setParent(obj.flowLayout7);
    obj.flowPart26:setMinWidth(206);
    obj.flowPart26:setMaxWidth(250);
    obj.flowPart26:setHeight(17);
    obj.flowPart26:setName("flowPart26");
    obj.flowPart26:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart26:setVertAlign("leading");

    obj.cbProfpericiainteligencia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfpericiainteligencia:setParent(obj.flowPart26);
    obj.cbProfpericiainteligencia:setName("cbProfpericiainteligencia");
    obj.cbProfpericiainteligencia:setAlign("left");
    obj.cbProfpericiainteligencia:setField("pericias.periciainteligencia");
    obj.cbProfpericiainteligencia:setWidth(20);
    obj.cbProfpericiainteligencia:setHeight(20);
    obj.cbProfpericiainteligencia:setOptimize(false);
    obj.cbProfpericiainteligencia:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfpericiainteligencia:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink61 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink61:setParent(obj.flowPart26);
    obj.dataLink61:setField("macroExpertise.periciainteligencia");
    obj.dataLink61:setName("dataLink61");

    obj.dataLink62 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink62:setParent(obj.flowPart26);
    obj.dataLink62:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink62:setName("dataLink62");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.flowPart26);
    obj.layout27:setAlign("left");
    obj.layout27:setWidth(26);
    obj.layout27:setMargins({left=2});
    obj.layout27:setName("layout27");

    obj.labProfpericiainteligencia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfpericiainteligencia:setParent(obj.layout27);
    obj.labProfpericiainteligencia:setName("labProfpericiainteligencia");
    obj.labProfpericiainteligencia:setField("pericias.bonuspericiainteligenciastr");
    obj.labProfpericiainteligencia:setAlign("client");
    obj.labProfpericiainteligencia:setHorzTextAlign("center");
    obj.labProfpericiainteligencia:setVertTextAlign("trailing");
    obj.labProfpericiainteligencia:setTextTrimming("none");
    obj.labProfpericiainteligencia:setFontColor("white");

    obj.horzLine19 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine19:setParent(obj.layout27);
    obj.horzLine19:setStrokeColor("white");
    obj.horzLine19:setStrokeSize(1);
    obj.horzLine19:setAlign("bottom");
    obj.horzLine19:setName("horzLine19");

    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.flowPart26);
    obj.button23:setAlign("left");
    obj.button23:setText("N??o Listada");
    obj.button23:setWidth(122);
    obj.button23:setMargins({left=2});
    obj.button23:setName("button23");

    obj.dataLink63 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink63:setParent(obj.flowLayout7);
    obj.dataLink63:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'pericias.periciainteligencia', 'macroExpertise.periciainteligencia', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink63:setName("dataLink63");

    obj.dataLink64 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink64:setParent(obj.fraLayAtributos);
    obj.dataLink64:setField("atributos.sabedoria");
    obj.dataLink64:setName("dataLink64");

    obj.flowPart27 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart27:setParent(obj.fraLayAtributos);
    obj.flowPart27:setHeight(140);
    obj.flowPart27:setMinWidth(320);
    obj.flowPart27:setMaxWidth(420);
    obj.flowPart27:setMinScaledWidth(305);
    obj.flowPart27:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart27:setName("flowPart27");
    obj.flowPart27:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart27:setVertAlign("leading");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.flowPart27);
    obj.layout28:setLeft(6);
    obj.layout28:setTop(12);
    obj.layout28:setWidth(116);
    obj.layout28:setHeight(115);
    obj.layout28:setName("layout28");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout28);
    obj.edit8:setAlign("top");
    obj.edit8:setMargins({left=30, right=30});
    obj.edit8:setField("atributos.sabedoria");
    obj.edit8:setHeight(30);
    obj.edit8:setType("number");
    obj.edit8:setMin(0);
    obj.edit8:setMax(99);
    obj.edit8:setName("edit8");
    obj.edit8:setTransparent(true);
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setFontSize(15);
    obj.edit8:setFontColor("white");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.flowPart27);
    obj.label8:setFrameRegion("modificador");
    obj.label8:setField("atributos.modsabedoriastr");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setVertTextAlign("center");
    obj.label8:setFontSize(46);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setName("label8");
    obj.label8:setFontColor("white");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.flowPart27);
    obj.layout29:setFrameRegion("titulo");
    obj.layout29:setName("layout29");

    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.layout29);
    obj.button24:setAlign("client");
    obj.button24:setText("SABEDORIA");
    obj.button24:setVertTextAlign("center");
    obj.button24:setHorzTextAlign("center");
    obj.button24:setName("button24");

    obj.flowLayout8 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout8:setParent(obj.flowPart27);
    obj.flowLayout8:setFrameRegion("RegiaoDePericias");
    obj.flowLayout8:setAutoHeight(true);
    obj.flowLayout8:setLineSpacing(0);
    obj.flowLayout8:setHorzAlign("leading");
    obj.flowLayout8:setName("flowLayout8");
    obj.flowLayout8:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout8:setVertAlign("leading");

    obj.flowPart28 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart28:setParent(obj.flowLayout8);
    obj.flowPart28:setMinWidth(206);
    obj.flowPart28:setMaxWidth(250);
    obj.flowPart28:setHeight(17);
    obj.flowPart28:setName("flowPart28");
    obj.flowPart28:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart28:setVertAlign("leading");

    obj.cbProfsabedoria = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfsabedoria:setParent(obj.flowPart28);
    obj.cbProfsabedoria:setName("cbProfsabedoria");
    obj.cbProfsabedoria:setAlign("left");
    obj.cbProfsabedoria:setField("resistencias.sabedoria");
    obj.cbProfsabedoria:setWidth(20);
    obj.cbProfsabedoria:setHeight(20);
    obj.cbProfsabedoria:setOptimize(false);
    obj.cbProfsabedoria:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfsabedoria:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink65 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink65:setParent(obj.flowPart28);
    obj.dataLink65:setField("macroExpertise.sabedoria");
    obj.dataLink65:setName("dataLink65");

    obj.dataLink66 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink66:setParent(obj.flowPart28);
    obj.dataLink66:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink66:setName("dataLink66");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.flowPart28);
    obj.layout30:setAlign("left");
    obj.layout30:setWidth(26);
    obj.layout30:setMargins({left=2});
    obj.layout30:setName("layout30");

    obj.labProfsabedoria = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfsabedoria:setParent(obj.layout30);
    obj.labProfsabedoria:setName("labProfsabedoria");
    obj.labProfsabedoria:setField("resistencias.bonussabedoriastr");
    obj.labProfsabedoria:setAlign("client");
    obj.labProfsabedoria:setHorzTextAlign("center");
    obj.labProfsabedoria:setVertTextAlign("trailing");
    obj.labProfsabedoria:setTextTrimming("none");
    obj.labProfsabedoria:setFontColor("white");

    obj.horzLine20 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine20:setParent(obj.layout30);
    obj.horzLine20:setStrokeColor("white");
    obj.horzLine20:setStrokeSize(1);
    obj.horzLine20:setAlign("bottom");
    obj.horzLine20:setName("horzLine20");

    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.flowPart28);
    obj.button25:setAlign("left");
    obj.button25:setText("Resist??ncia");
    obj.button25:setWidth(122);
    obj.button25:setMargins({left=2});
    obj.button25:setName("button25");

    obj.dataLink67 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink67:setParent(obj.flowLayout8);
    obj.dataLink67:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'resistencias.sabedoria', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink67:setName("dataLink67");

    obj.flowPart29 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart29:setParent(obj.flowLayout8);
    obj.flowPart29:setMinWidth(206);
    obj.flowPart29:setMaxWidth(250);
    obj.flowPart29:setHeight(17);
    obj.flowPart29:setName("flowPart29");
    obj.flowPart29:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart29:setVertAlign("leading");

    obj.cbProfadestrarAnimais = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfadestrarAnimais:setParent(obj.flowPart29);
    obj.cbProfadestrarAnimais:setName("cbProfadestrarAnimais");
    obj.cbProfadestrarAnimais:setAlign("left");
    obj.cbProfadestrarAnimais:setField("pericias.adestrarAnimais");
    obj.cbProfadestrarAnimais:setWidth(20);
    obj.cbProfadestrarAnimais:setHeight(20);
    obj.cbProfadestrarAnimais:setOptimize(false);
    obj.cbProfadestrarAnimais:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfadestrarAnimais:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink68 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink68:setParent(obj.flowPart29);
    obj.dataLink68:setField("macroExpertise.adestrarAnimais");
    obj.dataLink68:setName("dataLink68");

    obj.dataLink69 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink69:setParent(obj.flowPart29);
    obj.dataLink69:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink69:setName("dataLink69");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.flowPart29);
    obj.layout31:setAlign("left");
    obj.layout31:setWidth(26);
    obj.layout31:setMargins({left=2});
    obj.layout31:setName("layout31");

    obj.labProfadestrarAnimais = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfadestrarAnimais:setParent(obj.layout31);
    obj.labProfadestrarAnimais:setName("labProfadestrarAnimais");
    obj.labProfadestrarAnimais:setField("pericias.bonusadestrarAnimaisstr");
    obj.labProfadestrarAnimais:setAlign("client");
    obj.labProfadestrarAnimais:setHorzTextAlign("center");
    obj.labProfadestrarAnimais:setVertTextAlign("trailing");
    obj.labProfadestrarAnimais:setTextTrimming("none");
    obj.labProfadestrarAnimais:setFontColor("white");

    obj.horzLine21 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine21:setParent(obj.layout31);
    obj.horzLine21:setStrokeColor("white");
    obj.horzLine21:setStrokeSize(1);
    obj.horzLine21:setAlign("bottom");
    obj.horzLine21:setName("horzLine21");

    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.flowPart29);
    obj.button26:setAlign("left");
    obj.button26:setText("Adestrar Animais");
    obj.button26:setWidth(122);
    obj.button26:setMargins({left=2});
    obj.button26:setName("button26");

    obj.dataLink70 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink70:setParent(obj.flowLayout8);
    obj.dataLink70:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'pericias.adestrarAnimais', 'macroExpertise.adestrarAnimais', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink70:setName("dataLink70");

    obj.flowPart30 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart30:setParent(obj.flowLayout8);
    obj.flowPart30:setMinWidth(206);
    obj.flowPart30:setMaxWidth(250);
    obj.flowPart30:setHeight(17);
    obj.flowPart30:setName("flowPart30");
    obj.flowPart30:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart30:setVertAlign("leading");

    obj.cbProfmedicina = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfmedicina:setParent(obj.flowPart30);
    obj.cbProfmedicina:setName("cbProfmedicina");
    obj.cbProfmedicina:setAlign("left");
    obj.cbProfmedicina:setField("pericias.medicina");
    obj.cbProfmedicina:setWidth(20);
    obj.cbProfmedicina:setHeight(20);
    obj.cbProfmedicina:setOptimize(false);
    obj.cbProfmedicina:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfmedicina:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink71 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink71:setParent(obj.flowPart30);
    obj.dataLink71:setField("macroExpertise.medicina");
    obj.dataLink71:setName("dataLink71");

    obj.dataLink72 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink72:setParent(obj.flowPart30);
    obj.dataLink72:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink72:setName("dataLink72");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.flowPart30);
    obj.layout32:setAlign("left");
    obj.layout32:setWidth(26);
    obj.layout32:setMargins({left=2});
    obj.layout32:setName("layout32");

    obj.labProfmedicina = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfmedicina:setParent(obj.layout32);
    obj.labProfmedicina:setName("labProfmedicina");
    obj.labProfmedicina:setField("pericias.bonusmedicinastr");
    obj.labProfmedicina:setAlign("client");
    obj.labProfmedicina:setHorzTextAlign("center");
    obj.labProfmedicina:setVertTextAlign("trailing");
    obj.labProfmedicina:setTextTrimming("none");
    obj.labProfmedicina:setFontColor("white");

    obj.horzLine22 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine22:setParent(obj.layout32);
    obj.horzLine22:setStrokeColor("white");
    obj.horzLine22:setStrokeSize(1);
    obj.horzLine22:setAlign("bottom");
    obj.horzLine22:setName("horzLine22");

    obj.button27 = GUI.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.flowPart30);
    obj.button27:setAlign("left");
    obj.button27:setText("Medicina");
    obj.button27:setWidth(122);
    obj.button27:setMargins({left=2});
    obj.button27:setName("button27");

    obj.dataLink73 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink73:setParent(obj.flowLayout8);
    obj.dataLink73:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'pericias.medicina', 'macroExpertise.medicina', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink73:setName("dataLink73");

    obj.flowPart31 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart31:setParent(obj.flowLayout8);
    obj.flowPart31:setMinWidth(206);
    obj.flowPart31:setMaxWidth(250);
    obj.flowPart31:setHeight(17);
    obj.flowPart31:setName("flowPart31");
    obj.flowPart31:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart31:setVertAlign("leading");

    obj.cbProfpercepcao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfpercepcao:setParent(obj.flowPart31);
    obj.cbProfpercepcao:setName("cbProfpercepcao");
    obj.cbProfpercepcao:setAlign("left");
    obj.cbProfpercepcao:setField("pericias.percepcao");
    obj.cbProfpercepcao:setWidth(20);
    obj.cbProfpercepcao:setHeight(20);
    obj.cbProfpercepcao:setOptimize(false);
    obj.cbProfpercepcao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfpercepcao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink74 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink74:setParent(obj.flowPart31);
    obj.dataLink74:setField("macroExpertise.percepcao");
    obj.dataLink74:setName("dataLink74");

    obj.dataLink75 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink75:setParent(obj.flowPart31);
    obj.dataLink75:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink75:setName("dataLink75");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.flowPart31);
    obj.layout33:setAlign("left");
    obj.layout33:setWidth(26);
    obj.layout33:setMargins({left=2});
    obj.layout33:setName("layout33");

    obj.labProfpercepcao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfpercepcao:setParent(obj.layout33);
    obj.labProfpercepcao:setName("labProfpercepcao");
    obj.labProfpercepcao:setField("pericias.bonuspercepcaostr");
    obj.labProfpercepcao:setAlign("client");
    obj.labProfpercepcao:setHorzTextAlign("center");
    obj.labProfpercepcao:setVertTextAlign("trailing");
    obj.labProfpercepcao:setTextTrimming("none");
    obj.labProfpercepcao:setFontColor("white");

    obj.horzLine23 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine23:setParent(obj.layout33);
    obj.horzLine23:setStrokeColor("white");
    obj.horzLine23:setStrokeSize(1);
    obj.horzLine23:setAlign("bottom");
    obj.horzLine23:setName("horzLine23");

    obj.button28 = GUI.fromHandle(_obj_newObject("button"));
    obj.button28:setParent(obj.flowPart31);
    obj.button28:setAlign("left");
    obj.button28:setText("Percep????o");
    obj.button28:setWidth(122);
    obj.button28:setMargins({left=2});
    obj.button28:setName("button28");

    obj.dataLink76 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink76:setParent(obj.flowLayout8);
    obj.dataLink76:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'pericias.percepcao', 'macroExpertise.percepcao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink76:setName("dataLink76");

    obj.flowPart32 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart32:setParent(obj.flowLayout8);
    obj.flowPart32:setMinWidth(206);
    obj.flowPart32:setMaxWidth(250);
    obj.flowPart32:setHeight(17);
    obj.flowPart32:setName("flowPart32");
    obj.flowPart32:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart32:setVertAlign("leading");

    obj.cbProfsobrevivencia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfsobrevivencia:setParent(obj.flowPart32);
    obj.cbProfsobrevivencia:setName("cbProfsobrevivencia");
    obj.cbProfsobrevivencia:setAlign("left");
    obj.cbProfsobrevivencia:setField("pericias.sobrevivencia");
    obj.cbProfsobrevivencia:setWidth(20);
    obj.cbProfsobrevivencia:setHeight(20);
    obj.cbProfsobrevivencia:setOptimize(false);
    obj.cbProfsobrevivencia:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfsobrevivencia:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink77 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink77:setParent(obj.flowPart32);
    obj.dataLink77:setField("macroExpertise.sobrevivencia");
    obj.dataLink77:setName("dataLink77");

    obj.dataLink78 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink78:setParent(obj.flowPart32);
    obj.dataLink78:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink78:setName("dataLink78");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.flowPart32);
    obj.layout34:setAlign("left");
    obj.layout34:setWidth(26);
    obj.layout34:setMargins({left=2});
    obj.layout34:setName("layout34");

    obj.labProfsobrevivencia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfsobrevivencia:setParent(obj.layout34);
    obj.labProfsobrevivencia:setName("labProfsobrevivencia");
    obj.labProfsobrevivencia:setField("pericias.bonussobrevivenciastr");
    obj.labProfsobrevivencia:setAlign("client");
    obj.labProfsobrevivencia:setHorzTextAlign("center");
    obj.labProfsobrevivencia:setVertTextAlign("trailing");
    obj.labProfsobrevivencia:setTextTrimming("none");
    obj.labProfsobrevivencia:setFontColor("white");

    obj.horzLine24 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine24:setParent(obj.layout34);
    obj.horzLine24:setStrokeColor("white");
    obj.horzLine24:setStrokeSize(1);
    obj.horzLine24:setAlign("bottom");
    obj.horzLine24:setName("horzLine24");

    obj.button29 = GUI.fromHandle(_obj_newObject("button"));
    obj.button29:setParent(obj.flowPart32);
    obj.button29:setAlign("left");
    obj.button29:setText("Sobreviv??ncia");
    obj.button29:setWidth(122);
    obj.button29:setMargins({left=2});
    obj.button29:setName("button29");

    obj.dataLink79 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink79:setParent(obj.flowLayout8);
    obj.dataLink79:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'pericias.sobrevivencia', 'macroExpertise.sobrevivencia', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink79:setName("dataLink79");

    obj.flowPart33 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart33:setParent(obj.flowLayout8);
    obj.flowPart33:setMinWidth(206);
    obj.flowPart33:setMaxWidth(250);
    obj.flowPart33:setHeight(17);
    obj.flowPart33:setName("flowPart33");
    obj.flowPart33:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart33:setVertAlign("leading");

    obj.cbProfbedoria = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfbedoria:setParent(obj.flowPart33);
    obj.cbProfbedoria:setName("cbProfbedoria");
    obj.cbProfbedoria:setAlign("left");
    obj.cbProfbedoria:setField("pericias.periciasabedoria");
    obj.cbProfbedoria:setWidth(20);
    obj.cbProfbedoria:setHeight(20);
    obj.cbProfbedoria:setOptimize(false);
    obj.cbProfbedoria:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfbedoria:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink80 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink80:setParent(obj.flowPart33);
    obj.dataLink80:setField("macroExpertise.bedoria");
    obj.dataLink80:setName("dataLink80");

    obj.dataLink81 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink81:setParent(obj.flowPart33);
    obj.dataLink81:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink81:setName("dataLink81");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.flowPart33);
    obj.layout35:setAlign("left");
    obj.layout35:setWidth(26);
    obj.layout35:setMargins({left=2});
    obj.layout35:setName("layout35");

    obj.labProfbedoria = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfbedoria:setParent(obj.layout35);
    obj.labProfbedoria:setName("labProfbedoria");
    obj.labProfbedoria:setField("pericias.bonuspericiasabedoriastr");
    obj.labProfbedoria:setAlign("client");
    obj.labProfbedoria:setHorzTextAlign("center");
    obj.labProfbedoria:setVertTextAlign("trailing");
    obj.labProfbedoria:setTextTrimming("none");
    obj.labProfbedoria:setFontColor("white");

    obj.horzLine25 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine25:setParent(obj.layout35);
    obj.horzLine25:setStrokeColor("white");
    obj.horzLine25:setStrokeSize(1);
    obj.horzLine25:setAlign("bottom");
    obj.horzLine25:setName("horzLine25");

    obj.button30 = GUI.fromHandle(_obj_newObject("button"));
    obj.button30:setParent(obj.flowPart33);
    obj.button30:setAlign("left");
    obj.button30:setText("N??o Listada");
    obj.button30:setWidth(122);
    obj.button30:setMargins({left=2});
    obj.button30:setName("button30");

    obj.dataLink82 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink82:setParent(obj.flowLayout8);
    obj.dataLink82:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'pericias.periciasabedoria', 'macroExpertise.periciasabedoria', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink82:setName("dataLink82");

    obj.dataLink83 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink83:setParent(obj.fraLayAtributos);
    obj.dataLink83:setField("atributos.carisma");
    obj.dataLink83:setName("dataLink83");

    obj.flowPart34 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart34:setParent(obj.fraLayAtributos);
    obj.flowPart34:setHeight(140);
    obj.flowPart34:setMinWidth(320);
    obj.flowPart34:setMaxWidth(420);
    obj.flowPart34:setMinScaledWidth(305);
    obj.flowPart34:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart34:setName("flowPart34");
    obj.flowPart34:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart34:setVertAlign("leading");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.flowPart34);
    obj.layout36:setLeft(6);
    obj.layout36:setTop(12);
    obj.layout36:setWidth(116);
    obj.layout36:setHeight(115);
    obj.layout36:setName("layout36");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout36);
    obj.edit9:setAlign("top");
    obj.edit9:setMargins({left=30, right=30});
    obj.edit9:setField("atributos.carisma");
    obj.edit9:setHeight(30);
    obj.edit9:setType("number");
    obj.edit9:setMin(0);
    obj.edit9:setMax(99);
    obj.edit9:setName("edit9");
    obj.edit9:setTransparent(true);
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setFontSize(15);
    obj.edit9:setFontColor("white");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.flowPart34);
    obj.label9:setFrameRegion("modificador");
    obj.label9:setField("atributos.modcarismastr");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setVertTextAlign("center");
    obj.label9:setFontSize(46);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setName("label9");
    obj.label9:setFontColor("white");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.flowPart34);
    obj.layout37:setFrameRegion("titulo");
    obj.layout37:setName("layout37");

    obj.button31 = GUI.fromHandle(_obj_newObject("button"));
    obj.button31:setParent(obj.layout37);
    obj.button31:setAlign("client");
    obj.button31:setText("CARISMA");
    obj.button31:setVertTextAlign("center");
    obj.button31:setHorzTextAlign("center");
    obj.button31:setName("button31");

    obj.flowLayout9 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout9:setParent(obj.flowPart34);
    obj.flowLayout9:setFrameRegion("RegiaoDePericias");
    obj.flowLayout9:setAutoHeight(true);
    obj.flowLayout9:setLineSpacing(0);
    obj.flowLayout9:setHorzAlign("leading");
    obj.flowLayout9:setName("flowLayout9");
    obj.flowLayout9:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout9:setVertAlign("leading");

    obj.flowPart35 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart35:setParent(obj.flowLayout9);
    obj.flowPart35:setMinWidth(206);
    obj.flowPart35:setMaxWidth(250);
    obj.flowPart35:setHeight(17);
    obj.flowPart35:setName("flowPart35");
    obj.flowPart35:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart35:setVertAlign("leading");

    obj.cbProfcarisma = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcarisma:setParent(obj.flowPart35);
    obj.cbProfcarisma:setName("cbProfcarisma");
    obj.cbProfcarisma:setAlign("left");
    obj.cbProfcarisma:setField("resistencias.carisma");
    obj.cbProfcarisma:setWidth(20);
    obj.cbProfcarisma:setHeight(20);
    obj.cbProfcarisma:setOptimize(false);
    obj.cbProfcarisma:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfcarisma:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink84 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink84:setParent(obj.flowPart35);
    obj.dataLink84:setField("macroExpertise.carisma");
    obj.dataLink84:setName("dataLink84");

    obj.dataLink85 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink85:setParent(obj.flowPart35);
    obj.dataLink85:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink85:setName("dataLink85");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.flowPart35);
    obj.layout38:setAlign("left");
    obj.layout38:setWidth(26);
    obj.layout38:setMargins({left=2});
    obj.layout38:setName("layout38");

    obj.labProfcarisma = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcarisma:setParent(obj.layout38);
    obj.labProfcarisma:setName("labProfcarisma");
    obj.labProfcarisma:setField("resistencias.bonuscarismastr");
    obj.labProfcarisma:setAlign("client");
    obj.labProfcarisma:setHorzTextAlign("center");
    obj.labProfcarisma:setVertTextAlign("trailing");
    obj.labProfcarisma:setTextTrimming("none");
    obj.labProfcarisma:setFontColor("white");

    obj.horzLine26 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine26:setParent(obj.layout38);
    obj.horzLine26:setStrokeColor("white");
    obj.horzLine26:setStrokeSize(1);
    obj.horzLine26:setAlign("bottom");
    obj.horzLine26:setName("horzLine26");

    obj.button32 = GUI.fromHandle(_obj_newObject("button"));
    obj.button32:setParent(obj.flowPart35);
    obj.button32:setAlign("left");
    obj.button32:setText("Resist??ncia");
    obj.button32:setWidth(122);
    obj.button32:setMargins({left=2});
    obj.button32:setName("button32");

    obj.dataLink86 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink86:setParent(obj.flowLayout9);
    obj.dataLink86:setFields({'atributos.modcarisma', 'bonusProficiencia', 'resistencias.carisma', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink86:setName("dataLink86");

    obj.flowPart36 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart36:setParent(obj.flowLayout9);
    obj.flowPart36:setMinWidth(206);
    obj.flowPart36:setMaxWidth(250);
    obj.flowPart36:setHeight(17);
    obj.flowPart36:setName("flowPart36");
    obj.flowPart36:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart36:setVertAlign("leading");

    obj.cbProfatuacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfatuacao:setParent(obj.flowPart36);
    obj.cbProfatuacao:setName("cbProfatuacao");
    obj.cbProfatuacao:setAlign("left");
    obj.cbProfatuacao:setField("pericias.atuacao");
    obj.cbProfatuacao:setWidth(20);
    obj.cbProfatuacao:setHeight(20);
    obj.cbProfatuacao:setOptimize(false);
    obj.cbProfatuacao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfatuacao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink87 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink87:setParent(obj.flowPart36);
    obj.dataLink87:setField("macroExpertise.atuacao");
    obj.dataLink87:setName("dataLink87");

    obj.dataLink88 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink88:setParent(obj.flowPart36);
    obj.dataLink88:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink88:setName("dataLink88");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.flowPart36);
    obj.layout39:setAlign("left");
    obj.layout39:setWidth(26);
    obj.layout39:setMargins({left=2});
    obj.layout39:setName("layout39");

    obj.labProfatuacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfatuacao:setParent(obj.layout39);
    obj.labProfatuacao:setName("labProfatuacao");
    obj.labProfatuacao:setField("pericias.bonusatuacaostr");
    obj.labProfatuacao:setAlign("client");
    obj.labProfatuacao:setHorzTextAlign("center");
    obj.labProfatuacao:setVertTextAlign("trailing");
    obj.labProfatuacao:setTextTrimming("none");
    obj.labProfatuacao:setFontColor("white");

    obj.horzLine27 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine27:setParent(obj.layout39);
    obj.horzLine27:setStrokeColor("white");
    obj.horzLine27:setStrokeSize(1);
    obj.horzLine27:setAlign("bottom");
    obj.horzLine27:setName("horzLine27");

    obj.button33 = GUI.fromHandle(_obj_newObject("button"));
    obj.button33:setParent(obj.flowPart36);
    obj.button33:setAlign("left");
    obj.button33:setText("Atua????o");
    obj.button33:setWidth(122);
    obj.button33:setMargins({left=2});
    obj.button33:setName("button33");

    obj.dataLink89 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink89:setParent(obj.flowLayout9);
    obj.dataLink89:setFields({'atributos.modcarisma', 'bonusProficiencia', 'pericias.atuacao', 'macroExpertise.atuacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink89:setName("dataLink89");

    obj.flowPart37 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart37:setParent(obj.flowLayout9);
    obj.flowPart37:setMinWidth(206);
    obj.flowPart37:setMaxWidth(250);
    obj.flowPart37:setHeight(17);
    obj.flowPart37:setName("flowPart37");
    obj.flowPart37:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart37:setVertAlign("leading");

    obj.cbProfenganacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfenganacao:setParent(obj.flowPart37);
    obj.cbProfenganacao:setName("cbProfenganacao");
    obj.cbProfenganacao:setAlign("left");
    obj.cbProfenganacao:setField("pericias.enganacao");
    obj.cbProfenganacao:setWidth(20);
    obj.cbProfenganacao:setHeight(20);
    obj.cbProfenganacao:setOptimize(false);
    obj.cbProfenganacao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfenganacao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink90 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink90:setParent(obj.flowPart37);
    obj.dataLink90:setField("macroExpertise.enganacao");
    obj.dataLink90:setName("dataLink90");

    obj.dataLink91 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink91:setParent(obj.flowPart37);
    obj.dataLink91:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink91:setName("dataLink91");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.flowPart37);
    obj.layout40:setAlign("left");
    obj.layout40:setWidth(26);
    obj.layout40:setMargins({left=2});
    obj.layout40:setName("layout40");

    obj.labProfenganacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfenganacao:setParent(obj.layout40);
    obj.labProfenganacao:setName("labProfenganacao");
    obj.labProfenganacao:setField("pericias.bonusenganacaostr");
    obj.labProfenganacao:setAlign("client");
    obj.labProfenganacao:setHorzTextAlign("center");
    obj.labProfenganacao:setVertTextAlign("trailing");
    obj.labProfenganacao:setTextTrimming("none");
    obj.labProfenganacao:setFontColor("white");

    obj.horzLine28 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine28:setParent(obj.layout40);
    obj.horzLine28:setStrokeColor("white");
    obj.horzLine28:setStrokeSize(1);
    obj.horzLine28:setAlign("bottom");
    obj.horzLine28:setName("horzLine28");

    obj.button34 = GUI.fromHandle(_obj_newObject("button"));
    obj.button34:setParent(obj.flowPart37);
    obj.button34:setAlign("left");
    obj.button34:setText("Engana????o");
    obj.button34:setWidth(122);
    obj.button34:setMargins({left=2});
    obj.button34:setName("button34");

    obj.dataLink92 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink92:setParent(obj.flowLayout9);
    obj.dataLink92:setFields({'atributos.modcarisma', 'bonusProficiencia', 'pericias.enganacao', 'macroExpertise.enganacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink92:setName("dataLink92");

    obj.flowPart38 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart38:setParent(obj.flowLayout9);
    obj.flowPart38:setMinWidth(206);
    obj.flowPart38:setMaxWidth(250);
    obj.flowPart38:setHeight(17);
    obj.flowPart38:setName("flowPart38");
    obj.flowPart38:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart38:setVertAlign("leading");

    obj.cbProfintimidacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfintimidacao:setParent(obj.flowPart38);
    obj.cbProfintimidacao:setName("cbProfintimidacao");
    obj.cbProfintimidacao:setAlign("left");
    obj.cbProfintimidacao:setField("pericias.intimidacao");
    obj.cbProfintimidacao:setWidth(20);
    obj.cbProfintimidacao:setHeight(20);
    obj.cbProfintimidacao:setOptimize(false);
    obj.cbProfintimidacao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfintimidacao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink93 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink93:setParent(obj.flowPart38);
    obj.dataLink93:setField("macroExpertise.intimidacao");
    obj.dataLink93:setName("dataLink93");

    obj.dataLink94 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink94:setParent(obj.flowPart38);
    obj.dataLink94:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink94:setName("dataLink94");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.flowPart38);
    obj.layout41:setAlign("left");
    obj.layout41:setWidth(26);
    obj.layout41:setMargins({left=2});
    obj.layout41:setName("layout41");

    obj.labProfintimidacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfintimidacao:setParent(obj.layout41);
    obj.labProfintimidacao:setName("labProfintimidacao");
    obj.labProfintimidacao:setField("pericias.bonusintimidacaostr");
    obj.labProfintimidacao:setAlign("client");
    obj.labProfintimidacao:setHorzTextAlign("center");
    obj.labProfintimidacao:setVertTextAlign("trailing");
    obj.labProfintimidacao:setTextTrimming("none");
    obj.labProfintimidacao:setFontColor("white");

    obj.horzLine29 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine29:setParent(obj.layout41);
    obj.horzLine29:setStrokeColor("white");
    obj.horzLine29:setStrokeSize(1);
    obj.horzLine29:setAlign("bottom");
    obj.horzLine29:setName("horzLine29");

    obj.button35 = GUI.fromHandle(_obj_newObject("button"));
    obj.button35:setParent(obj.flowPart38);
    obj.button35:setAlign("left");
    obj.button35:setText("Intimida????o");
    obj.button35:setWidth(122);
    obj.button35:setMargins({left=2});
    obj.button35:setName("button35");

    obj.dataLink95 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink95:setParent(obj.flowLayout9);
    obj.dataLink95:setFields({'atributos.modcarisma', 'bonusProficiencia', 'pericias.intimidacao', 'macroExpertise.intimidacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink95:setName("dataLink95");

    obj.flowPart39 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart39:setParent(obj.flowLayout9);
    obj.flowPart39:setMinWidth(206);
    obj.flowPart39:setMaxWidth(250);
    obj.flowPart39:setHeight(17);
    obj.flowPart39:setName("flowPart39");
    obj.flowPart39:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart39:setVertAlign("leading");

    obj.cbProfpersuasao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfpersuasao:setParent(obj.flowPart39);
    obj.cbProfpersuasao:setName("cbProfpersuasao");
    obj.cbProfpersuasao:setAlign("left");
    obj.cbProfpersuasao:setField("pericias.persuasao");
    obj.cbProfpersuasao:setWidth(20);
    obj.cbProfpersuasao:setHeight(20);
    obj.cbProfpersuasao:setOptimize(false);
    obj.cbProfpersuasao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfpersuasao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink96 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink96:setParent(obj.flowPart39);
    obj.dataLink96:setField("macroExpertise.persuasao");
    obj.dataLink96:setName("dataLink96");

    obj.dataLink97 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink97:setParent(obj.flowPart39);
    obj.dataLink97:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink97:setName("dataLink97");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.flowPart39);
    obj.layout42:setAlign("left");
    obj.layout42:setWidth(26);
    obj.layout42:setMargins({left=2});
    obj.layout42:setName("layout42");

    obj.labProfpersuasao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfpersuasao:setParent(obj.layout42);
    obj.labProfpersuasao:setName("labProfpersuasao");
    obj.labProfpersuasao:setField("pericias.bonuspersuasaostr");
    obj.labProfpersuasao:setAlign("client");
    obj.labProfpersuasao:setHorzTextAlign("center");
    obj.labProfpersuasao:setVertTextAlign("trailing");
    obj.labProfpersuasao:setTextTrimming("none");
    obj.labProfpersuasao:setFontColor("white");

    obj.horzLine30 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine30:setParent(obj.layout42);
    obj.horzLine30:setStrokeColor("white");
    obj.horzLine30:setStrokeSize(1);
    obj.horzLine30:setAlign("bottom");
    obj.horzLine30:setName("horzLine30");

    obj.button36 = GUI.fromHandle(_obj_newObject("button"));
    obj.button36:setParent(obj.flowPart39);
    obj.button36:setAlign("left");
    obj.button36:setText("Persuas??o");
    obj.button36:setWidth(122);
    obj.button36:setMargins({left=2});
    obj.button36:setName("button36");

    obj.dataLink98 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink98:setParent(obj.flowLayout9);
    obj.dataLink98:setFields({'atributos.modcarisma', 'bonusProficiencia', 'pericias.persuasao', 'macroExpertise.persuasao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink98:setName("dataLink98");

    obj.flowPart40 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart40:setParent(obj.flowLayout9);
    obj.flowPart40:setMinWidth(206);
    obj.flowPart40:setMaxWidth(250);
    obj.flowPart40:setHeight(17);
    obj.flowPart40:setName("flowPart40");
    obj.flowPart40:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart40:setVertAlign("leading");

    obj.cbProfpericiacarisma = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfpericiacarisma:setParent(obj.flowPart40);
    obj.cbProfpericiacarisma:setName("cbProfpericiacarisma");
    obj.cbProfpericiacarisma:setAlign("left");
    obj.cbProfpericiacarisma:setField("pericias.periciacarisma");
    obj.cbProfpericiacarisma:setWidth(20);
    obj.cbProfpericiacarisma:setHeight(20);
    obj.cbProfpericiacarisma:setOptimize(false);
    obj.cbProfpericiacarisma:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfpericiacarisma:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink99 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink99:setParent(obj.flowPart40);
    obj.dataLink99:setField("macroExpertise.periciacarisma");
    obj.dataLink99:setName("dataLink99");

    obj.dataLink100 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink100:setParent(obj.flowPart40);
    obj.dataLink100:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink100:setName("dataLink100");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.flowPart40);
    obj.layout43:setAlign("left");
    obj.layout43:setWidth(26);
    obj.layout43:setMargins({left=2});
    obj.layout43:setName("layout43");

    obj.labProfpericiacarisma = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfpericiacarisma:setParent(obj.layout43);
    obj.labProfpericiacarisma:setName("labProfpericiacarisma");
    obj.labProfpericiacarisma:setField("pericias.bonuspericiacarismastr");
    obj.labProfpericiacarisma:setAlign("client");
    obj.labProfpericiacarisma:setHorzTextAlign("center");
    obj.labProfpericiacarisma:setVertTextAlign("trailing");
    obj.labProfpericiacarisma:setTextTrimming("none");
    obj.labProfpericiacarisma:setFontColor("white");

    obj.horzLine31 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine31:setParent(obj.layout43);
    obj.horzLine31:setStrokeColor("white");
    obj.horzLine31:setStrokeSize(1);
    obj.horzLine31:setAlign("bottom");
    obj.horzLine31:setName("horzLine31");

    obj.button37 = GUI.fromHandle(_obj_newObject("button"));
    obj.button37:setParent(obj.flowPart40);
    obj.button37:setAlign("left");
    obj.button37:setText("N??o Listada");
    obj.button37:setWidth(122);
    obj.button37:setMargins({left=2});
    obj.button37:setName("button37");

    obj.dataLink101 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink101:setParent(obj.flowLayout9);
    obj.dataLink101:setFields({'atributos.modcarisma', 'bonusProficiencia', 'pericias.periciacarisma', 'macroExpertise.periciacarisma', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink101:setName("dataLink101");

    obj.dataLink102 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink102:setParent(obj.fraLayAtributos);
    obj.dataLink102:setField("atributos.sanidade");
    obj.dataLink102:setName("dataLink102");

    obj.flowPart41 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart41:setParent(obj.fraLayAtributos);
    obj.flowPart41:setHeight(140);
    obj.flowPart41:setMinWidth(320);
    obj.flowPart41:setMaxWidth(420);
    obj.flowPart41:setMinScaledWidth(305);
    obj.flowPart41:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart41:setName("flowPart41");
    obj.flowPart41:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart41:setVertAlign("leading");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.flowPart41);
    obj.layout44:setLeft(6);
    obj.layout44:setTop(12);
    obj.layout44:setWidth(116);
    obj.layout44:setHeight(115);
    obj.layout44:setName("layout44");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout44);
    obj.edit10:setAlign("top");
    obj.edit10:setMargins({left=30, right=30});
    obj.edit10:setField("atributos.sanidade");
    obj.edit10:setHeight(30);
    obj.edit10:setType("number");
    obj.edit10:setMin(0);
    obj.edit10:setMax(99);
    obj.edit10:setName("edit10");
    obj.edit10:setTransparent(true);
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setFontSize(15);
    obj.edit10:setFontColor("white");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.flowPart41);
    obj.label10:setFrameRegion("modificador");
    obj.label10:setField("atributos.modsanidadestr");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setVertTextAlign("center");
    obj.label10:setFontSize(46);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setName("label10");
    obj.label10:setFontColor("white");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.flowPart41);
    obj.layout45:setFrameRegion("titulo");
    obj.layout45:setName("layout45");

    obj.button38 = GUI.fromHandle(_obj_newObject("button"));
    obj.button38:setParent(obj.layout45);
    obj.button38:setAlign("client");
    obj.button38:setText("SANIDADE");
    obj.button38:setVertTextAlign("center");
    obj.button38:setHorzTextAlign("center");
    obj.button38:setName("button38");

    obj.flowLayout10 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout10:setParent(obj.flowPart41);
    obj.flowLayout10:setFrameRegion("RegiaoDePericias");
    obj.flowLayout10:setAutoHeight(true);
    obj.flowLayout10:setLineSpacing(0);
    obj.flowLayout10:setHorzAlign("leading");
    obj.flowLayout10:setName("flowLayout10");
    obj.flowLayout10:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout10:setVertAlign("leading");

    obj.flowPart42 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart42:setParent(obj.flowLayout10);
    obj.flowPart42:setMinWidth(206);
    obj.flowPart42:setMaxWidth(250);
    obj.flowPart42:setHeight(17);
    obj.flowPart42:setName("flowPart42");
    obj.flowPart42:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart42:setVertAlign("leading");

    obj.cbProfsanidade = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfsanidade:setParent(obj.flowPart42);
    obj.cbProfsanidade:setName("cbProfsanidade");
    obj.cbProfsanidade:setAlign("left");
    obj.cbProfsanidade:setField("resistencias.sanidade");
    obj.cbProfsanidade:setWidth(20);
    obj.cbProfsanidade:setHeight(20);
    obj.cbProfsanidade:setOptimize(false);
    obj.cbProfsanidade:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfsanidade:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink103 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink103:setParent(obj.flowPart42);
    obj.dataLink103:setField("macroExpertise.sanidade");
    obj.dataLink103:setName("dataLink103");

    obj.dataLink104 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink104:setParent(obj.flowPart42);
    obj.dataLink104:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink104:setName("dataLink104");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.flowPart42);
    obj.layout46:setAlign("left");
    obj.layout46:setWidth(26);
    obj.layout46:setMargins({left=2});
    obj.layout46:setName("layout46");

    obj.labProfsanidade = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfsanidade:setParent(obj.layout46);
    obj.labProfsanidade:setName("labProfsanidade");
    obj.labProfsanidade:setField("resistencias.bonussanidadestr");
    obj.labProfsanidade:setAlign("client");
    obj.labProfsanidade:setHorzTextAlign("center");
    obj.labProfsanidade:setVertTextAlign("trailing");
    obj.labProfsanidade:setTextTrimming("none");
    obj.labProfsanidade:setFontColor("white");

    obj.horzLine32 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine32:setParent(obj.layout46);
    obj.horzLine32:setStrokeColor("white");
    obj.horzLine32:setStrokeSize(1);
    obj.horzLine32:setAlign("bottom");
    obj.horzLine32:setName("horzLine32");

    obj.button39 = GUI.fromHandle(_obj_newObject("button"));
    obj.button39:setParent(obj.flowPart42);
    obj.button39:setAlign("left");
    obj.button39:setText("Resist??ncia");
    obj.button39:setWidth(122);
    obj.button39:setMargins({left=2});
    obj.button39:setName("button39");

    obj.dataLink105 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink105:setParent(obj.flowLayout10);
    obj.dataLink105:setFields({'atributos.modsanidade', 'bonusProficiencia', 'resistencias.sanidade', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink105:setName("dataLink105");

    obj.flowPart43 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart43:setParent(obj.flowLayout10);
    obj.flowPart43:setMinWidth(206);
    obj.flowPart43:setMaxWidth(250);
    obj.flowPart43:setHeight(17);
    obj.flowPart43:setName("flowPart43");
    obj.flowPart43:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart43:setVertAlign("leading");

    obj.cbProfnidade = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfnidade:setParent(obj.flowPart43);
    obj.cbProfnidade:setName("cbProfnidade");
    obj.cbProfnidade:setAlign("left");
    obj.cbProfnidade:setField("pericias.periciasanidade");
    obj.cbProfnidade:setWidth(20);
    obj.cbProfnidade:setHeight(20);
    obj.cbProfnidade:setOptimize(false);
    obj.cbProfnidade:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfnidade:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink106 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink106:setParent(obj.flowPart43);
    obj.dataLink106:setField("macroExpertise.nidade");
    obj.dataLink106:setName("dataLink106");

    obj.dataLink107 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink107:setParent(obj.flowPart43);
    obj.dataLink107:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink107:setName("dataLink107");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.flowPart43);
    obj.layout47:setAlign("left");
    obj.layout47:setWidth(26);
    obj.layout47:setMargins({left=2});
    obj.layout47:setName("layout47");

    obj.labProfnidade = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfnidade:setParent(obj.layout47);
    obj.labProfnidade:setName("labProfnidade");
    obj.labProfnidade:setField("pericias.bonuspericiasanidadestr");
    obj.labProfnidade:setAlign("client");
    obj.labProfnidade:setHorzTextAlign("center");
    obj.labProfnidade:setVertTextAlign("trailing");
    obj.labProfnidade:setTextTrimming("none");
    obj.labProfnidade:setFontColor("white");

    obj.horzLine33 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine33:setParent(obj.layout47);
    obj.horzLine33:setStrokeColor("white");
    obj.horzLine33:setStrokeSize(1);
    obj.horzLine33:setAlign("bottom");
    obj.horzLine33:setName("horzLine33");

    obj.button40 = GUI.fromHandle(_obj_newObject("button"));
    obj.button40:setParent(obj.flowPart43);
    obj.button40:setAlign("left");
    obj.button40:setText("N??o Listada");
    obj.button40:setWidth(122);
    obj.button40:setMargins({left=2});
    obj.button40:setName("button40");

    obj.dataLink108 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink108:setParent(obj.flowLayout10);
    obj.dataLink108:setFields({'atributos.modsanidade', 'bonusProficiencia', 'pericias.periciasanidade', 'macroExpertise.periciasanidade', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink108:setName("dataLink108");

    obj.dataLink109 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink109:setParent(obj.fraLayAtributos);
    obj.dataLink109:setField("atributos.honra");
    obj.dataLink109:setName("dataLink109");

    obj.flowPart44 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart44:setParent(obj.fraLayAtributos);
    obj.flowPart44:setHeight(140);
    obj.flowPart44:setMinWidth(320);
    obj.flowPart44:setMaxWidth(420);
    obj.flowPart44:setMinScaledWidth(305);
    obj.flowPart44:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart44:setName("flowPart44");
    obj.flowPart44:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart44:setVertAlign("leading");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.flowPart44);
    obj.layout48:setLeft(6);
    obj.layout48:setTop(12);
    obj.layout48:setWidth(116);
    obj.layout48:setHeight(115);
    obj.layout48:setName("layout48");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout48);
    obj.edit11:setAlign("top");
    obj.edit11:setMargins({left=30, right=30});
    obj.edit11:setField("atributos.honra");
    obj.edit11:setHeight(30);
    obj.edit11:setType("number");
    obj.edit11:setMin(0);
    obj.edit11:setMax(99);
    obj.edit11:setName("edit11");
    obj.edit11:setTransparent(true);
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setFontSize(15);
    obj.edit11:setFontColor("white");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.flowPart44);
    obj.label11:setFrameRegion("modificador");
    obj.label11:setField("atributos.modhonrastr");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setVertTextAlign("center");
    obj.label11:setFontSize(46);
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setName("label11");
    obj.label11:setFontColor("white");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.flowPart44);
    obj.layout49:setFrameRegion("titulo");
    obj.layout49:setName("layout49");

    obj.button41 = GUI.fromHandle(_obj_newObject("button"));
    obj.button41:setParent(obj.layout49);
    obj.button41:setAlign("client");
    obj.button41:setText(" ");
    obj.button41:setVertTextAlign("center");
    obj.button41:setHorzTextAlign("center");
    obj.button41:setName("button41");

    obj.flowLayout11 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout11:setParent(obj.flowPart44);
    obj.flowLayout11:setFrameRegion("RegiaoDePericias");
    obj.flowLayout11:setAutoHeight(true);
    obj.flowLayout11:setLineSpacing(0);
    obj.flowLayout11:setHorzAlign("leading");
    obj.flowLayout11:setName("flowLayout11");
    obj.flowLayout11:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout11:setVertAlign("leading");

    obj.flowPart45 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart45:setParent(obj.flowLayout11);
    obj.flowPart45:setMinWidth(206);
    obj.flowPart45:setMaxWidth(250);
    obj.flowPart45:setHeight(17);
    obj.flowPart45:setName("flowPart45");
    obj.flowPart45:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart45:setVertAlign("leading");

    obj.cbProfhonra = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfhonra:setParent(obj.flowPart45);
    obj.cbProfhonra:setName("cbProfhonra");
    obj.cbProfhonra:setAlign("left");
    obj.cbProfhonra:setField("resistencias.honra");
    obj.cbProfhonra:setWidth(20);
    obj.cbProfhonra:setHeight(20);
    obj.cbProfhonra:setOptimize(false);
    obj.cbProfhonra:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfhonra:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink110 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink110:setParent(obj.flowPart45);
    obj.dataLink110:setField("macroExpertise.honra");
    obj.dataLink110:setName("dataLink110");

    obj.dataLink111 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink111:setParent(obj.flowPart45);
    obj.dataLink111:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink111:setName("dataLink111");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.flowPart45);
    obj.layout50:setAlign("left");
    obj.layout50:setWidth(26);
    obj.layout50:setMargins({left=2});
    obj.layout50:setName("layout50");

    obj.labProfhonra = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfhonra:setParent(obj.layout50);
    obj.labProfhonra:setName("labProfhonra");
    obj.labProfhonra:setField("resistencias.bonushonrastr");
    obj.labProfhonra:setAlign("client");
    obj.labProfhonra:setHorzTextAlign("center");
    obj.labProfhonra:setVertTextAlign("trailing");
    obj.labProfhonra:setTextTrimming("none");
    obj.labProfhonra:setFontColor("white");

    obj.horzLine34 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine34:setParent(obj.layout50);
    obj.horzLine34:setStrokeColor("white");
    obj.horzLine34:setStrokeSize(1);
    obj.horzLine34:setAlign("bottom");
    obj.horzLine34:setName("horzLine34");

    obj.button42 = GUI.fromHandle(_obj_newObject("button"));
    obj.button42:setParent(obj.flowPart45);
    obj.button42:setAlign("left");
    obj.button42:setText("Resist??ncia");
    obj.button42:setWidth(122);
    obj.button42:setMargins({left=2});
    obj.button42:setName("button42");

    obj.dataLink112 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink112:setParent(obj.flowLayout11);
    obj.dataLink112:setFields({'atributos.modhonra', 'bonusProficiencia', 'resistencias.honra', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink112:setName("dataLink112");

    obj.flowPart46 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart46:setParent(obj.flowLayout11);
    obj.flowPart46:setMinWidth(206);
    obj.flowPart46:setMaxWidth(250);
    obj.flowPart46:setHeight(17);
    obj.flowPart46:setName("flowPart46");
    obj.flowPart46:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart46:setVertAlign("leading");

    obj.cbProfpericiahonra = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfpericiahonra:setParent(obj.flowPart46);
    obj.cbProfpericiahonra:setName("cbProfpericiahonra");
    obj.cbProfpericiahonra:setAlign("left");
    obj.cbProfpericiahonra:setField("pericias.periciahonra");
    obj.cbProfpericiahonra:setWidth(20);
    obj.cbProfpericiahonra:setHeight(20);
    obj.cbProfpericiahonra:setOptimize(false);
    obj.cbProfpericiahonra:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfpericiahonra:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink113 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink113:setParent(obj.flowPart46);
    obj.dataLink113:setField("macroExpertise.periciahonra");
    obj.dataLink113:setName("dataLink113");

    obj.dataLink114 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink114:setParent(obj.flowPart46);
    obj.dataLink114:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink114:setName("dataLink114");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.flowPart46);
    obj.layout51:setAlign("left");
    obj.layout51:setWidth(26);
    obj.layout51:setMargins({left=2});
    obj.layout51:setName("layout51");

    obj.labProfpericiahonra = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfpericiahonra:setParent(obj.layout51);
    obj.labProfpericiahonra:setName("labProfpericiahonra");
    obj.labProfpericiahonra:setField("pericias.bonuspericiahonrastr");
    obj.labProfpericiahonra:setAlign("client");
    obj.labProfpericiahonra:setHorzTextAlign("center");
    obj.labProfpericiahonra:setVertTextAlign("trailing");
    obj.labProfpericiahonra:setTextTrimming("none");
    obj.labProfpericiahonra:setFontColor("white");

    obj.horzLine35 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine35:setParent(obj.layout51);
    obj.horzLine35:setStrokeColor("white");
    obj.horzLine35:setStrokeSize(1);
    obj.horzLine35:setAlign("bottom");
    obj.horzLine35:setName("horzLine35");

    obj.button43 = GUI.fromHandle(_obj_newObject("button"));
    obj.button43:setParent(obj.flowPart46);
    obj.button43:setAlign("left");
    obj.button43:setText("N??o Listada");
    obj.button43:setWidth(122);
    obj.button43:setMargins({left=2});
    obj.button43:setName("button43");

    obj.dataLink115 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink115:setParent(obj.flowLayout11);
    obj.dataLink115:setFields({'atributos.modhonra', 'bonusProficiencia', 'pericias.periciahonra', 'macroExpertise.periciahonra', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink115:setName("dataLink115");

    obj.flowLayout12 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout12:setParent(obj.flowLayout3);
    obj.flowLayout12:setAutoHeight(true);
    obj.flowLayout12:setHorzAlign("center");
    obj.flowLayout12:setVertAlign("leading");
    obj.flowLayout12:setMaxControlsPerLine(1);
    obj.flowLayout12:setName("flowLayout12");
    obj.flowLayout12:setStepSizes({310, 360});
    obj.flowLayout12:setMinScaledWidth(300);
    obj.flowLayout12:setMaxScaledWidth(340);
    obj.flowLayout12:setAvoidScale(true);
    obj.flowLayout12:setMargins({left=1, right=1, top=2, bottom=2});

    obj.flowLayout13 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout13:setParent(obj.flowLayout12);
    obj.flowLayout13:setMinWidth(235);
    obj.flowLayout13:setMaxWidth(475);
    obj.flowLayout13:setAutoHeight(true);
    obj.flowLayout13:setAvoidScale(false);
    obj.flowLayout13:setVertAlign("center");
    obj.flowLayout13:setHorzAlign("justify");
    obj.flowLayout13:setName("flowLayout13");
    obj.flowLayout13:setMargins({left=1, right=1, top=2, bottom=2});

    obj.flowPart47 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart47:setParent(obj.flowLayout13);
    obj.flowPart47:setStepSizes({105});
    obj.flowPart47:setMinScaledWidth(75);
    obj.flowPart47:setHeight(120);
    obj.flowPart47:setFrameStyle("frames/shield/frame.xml");
    obj.flowPart47:setName("flowPart47");
    obj.flowPart47:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart47:setVertAlign("leading");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.flowPart47);
    obj.label12:setAlign("top");
    obj.label12:setText("CLASSE DE ARMADURA");
    obj.label12:setHeight(20);
    obj.label12:setFontSize(9);
    obj.label12:setWordWrap(true);
    obj.label12:setHorzTextAlign("center");
    obj.label12:setTextTrimming("none");
    obj.label12:setName("label12");
    obj.label12:setFontColor("white");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.flowPart47);
    obj.edit12:setAlign("client");
    obj.edit12:setField("CA");
    obj.edit12:setFontSize(30);
    obj.edit12:setName("edit12");
    obj.edit12:setTransparent(true);
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setFontColor("white");

    obj.flowPart48 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart48:setParent(obj.flowLayout13);
    obj.flowPart48:setStepSizes({105});
    obj.flowPart48:setMinScaledWidth(75);
    obj.flowPart48:setHeight(120);
    obj.flowPart48:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart48:setName("flowPart48");
    obj.flowPart48:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart48:setVertAlign("leading");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.flowPart48);
    obj.label13:setAlign("top");
    obj.label13:setText("DESLOCAMENTO ANDANDO");
    obj.label13:setHeight(20);
    obj.label13:setFontSize(9);
    obj.label13:setWordWrap(true);
    obj.label13:setHorzTextAlign("center");
    obj.label13:setTextTrimming("none");
    obj.label13:setName("label13");
    obj.label13:setFontColor("white");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.flowPart48);
    obj.edit13:setAlign("client");
    obj.edit13:setField("deslocamento andando");
    obj.edit13:setFontSize(30);
    obj.edit13:setName("edit13");
    obj.edit13:setTransparent(true);
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setFontColor("white");

    obj.flowPart49 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart49:setParent(obj.flowLayout13);
    obj.flowPart49:setStepSizes({105});
    obj.flowPart49:setMinScaledWidth(75);
    obj.flowPart49:setHeight(120);
    obj.flowPart49:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart49:setName("flowPart49");
    obj.flowPart49:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart49:setVertAlign("leading");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.flowPart49);
    obj.label14:setAlign("top");
    obj.label14:setText("DESLOCAMENTO NADO / ESCALADA");
    obj.label14:setHeight(20);
    obj.label14:setFontSize(9);
    obj.label14:setWordWrap(true);
    obj.label14:setHorzTextAlign("center");
    obj.label14:setTextTrimming("none");
    obj.label14:setName("label14");
    obj.label14:setFontColor("white");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.flowPart49);
    obj.edit14:setAlign("client");
    obj.edit14:setField("deslocamento nado");
    obj.edit14:setFontSize(30);
    obj.edit14:setName("edit14");
    obj.edit14:setTransparent(true);
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setFontColor("white");

    obj.flowPart50 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart50:setParent(obj.flowLayout13);
    obj.flowPart50:setStepSizes({105});
    obj.flowPart50:setMinScaledWidth(75);
    obj.flowPart50:setHeight(120);
    obj.flowPart50:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart50:setName("flowPart50");
    obj.flowPart50:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart50:setVertAlign("leading");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.flowPart50);
    obj.label15:setAlign("top");
    obj.label15:setText("DESLOCAMENTO VOO");
    obj.label15:setHeight(20);
    obj.label15:setFontSize(9);
    obj.label15:setWordWrap(true);
    obj.label15:setHorzTextAlign("center");
    obj.label15:setTextTrimming("none");
    obj.label15:setName("label15");
    obj.label15:setFontColor("white");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.flowPart50);
    obj.edit15:setAlign("client");
    obj.edit15:setField("deslocamento voo");
    obj.edit15:setFontSize(30);
    obj.edit15:setName("edit15");
    obj.edit15:setTransparent(true);
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setFontColor("white");

    obj.flowPart51 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart51:setParent(obj.flowLayout12);
    obj.flowPart51:setMinWidth(235);
    obj.flowPart51:setMaxWidth(475);
    obj.flowPart51:setMinScaledWidth(200);
    obj.flowPart51:setHeight(105);
    obj.flowPart51:setMargins({left=2, right=2, top=4, bottom=8});
    obj.flowPart51:setName("flowPart51");
    obj.flowPart51:setVertAlign("leading");

    obj.frame1 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame1:setParent(obj.flowPart51);
    obj.frame1:setAlign("client");
    obj.frame1:setFrameStyle("frames/panel4transp/frame.xml");
    obj.frame1:setMargins({left = 4, right = 4, bottom=4});
    obj.frame1:setName("frame1");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.frame1);
    obj.layout52:setAlign("client");
    obj.layout52:setMargins({left=5,right=5,bottom=5,top=5});
    obj.layout52:setName("layout52");

    obj.flowLayout14 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout14:setParent(obj.layout52);
    obj.flowLayout14:setAlign("top");
    obj.flowLayout14:setHorzAlign("center");
    obj.flowLayout14:setHeight(30);
    obj.flowLayout14:setMargins({bottom=5});
    obj.flowLayout14:setName("flowLayout14");
    obj.flowLayout14:setVertAlign("leading");

 require("descanso.lua"); 


    obj.button44 = GUI.fromHandle(_obj_newObject("button"));
    obj.button44:setParent(obj.flowLayout14);
    obj.button44:setText("Short Rest");
    obj.button44:setWidth(75);
    obj.button44:setName("button44");

    obj.button45 = GUI.fromHandle(_obj_newObject("button"));
    obj.button45:setParent(obj.flowLayout14);
    obj.button45:setText("Long Rest");
    obj.button45:setWidth(75);
    obj.button45:setName("button45");

    obj.button46 = GUI.fromHandle(_obj_newObject("button"));
    obj.button46:setParent(obj.flowLayout14);
    obj.button46:setText("Dano");
    obj.button46:setWidth(50);
    obj.button46:setName("button46");

    obj.colorComboBox1 = GUI.fromHandle(_obj_newObject("colorComboBox"));
    obj.colorComboBox1:setParent(obj.flowLayout14);
    obj.colorComboBox1:setAlign("right");
    obj.colorComboBox1:setMargins({left=2});
    obj.colorComboBox1:setWidth(50);
    obj.colorComboBox1:setField("barColor");
    obj.colorComboBox1:setUseAlpha(false);
    obj.colorComboBox1:setName("colorComboBox1");

    obj.dataLink116 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink116:setParent(obj.flowLayout14);
    obj.dataLink116:setField("barColor");
    obj.dataLink116:setDefaultValue("Red");
    obj.dataLink116:setName("dataLink116");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.layout52);
    obj.layout53:setAlign("client");
    obj.layout53:setMargins({bottom=10});
    obj.layout53:setName("layout53");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.layout53);
    obj.layout54:setAlign("right");
    obj.layout54:setWidth(81);
    obj.layout54:setName("layout54");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout54);
    obj.edit16:setAlign("left");
    obj.edit16:setMargins({left=2});
    obj.edit16:setWidth(35);
    obj.edit16:setField("PV");
    obj.edit16:setType("number");
    obj.edit16:setMin(0);
    obj.edit16:setName("edit16");
    obj.edit16:setFontSize(15);
    obj.edit16:setFontColor("white");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout54);
    obj.label16:setAlign("left");
    obj.label16:setMargins({left=2});
    obj.label16:setText("/");
    obj.label16:setWidth(5);
    obj.label16:setName("label16");
    obj.label16:setFontColor("white");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout54);
    obj.edit17:setAlign("left");
    obj.edit17:setMargins({left=2});
    obj.edit17:setWidth(35);
    obj.edit17:setField("PVmax");
    obj.edit17:setType("number");
    obj.edit17:setMin(0);
    obj.edit17:setName("edit17");
    obj.edit17:setFontSize(15);
    obj.edit17:setFontColor("white");

    obj.progBar = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.progBar:setParent(obj.layout53);
    obj.progBar:setName("progBar");
    obj.progBar:setAlign("client");
    obj.progBar:setColor("yellow");
    obj.progBar:setMin(0);
    obj.progBar:setField("PV");
    obj.progBar:setFieldMax("PVmax");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout53);
    obj.label17:setAlign("client");
    obj.label17:setAutoSize(true);
    obj.label17:setText("PONTOS DE VIDA");
    obj.label17:setFontSize(11);
    obj.label17:setVertTextAlign("center");
    obj.label17:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setMargins({top=1,left=1});
    obj.label17:setFontColor("black");
    obj.label17:setName("label17");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout53);
    obj.label18:setAlign("client");
    obj.label18:setAutoSize(true);
    obj.label18:setText("PONTOS DE VIDA");
    obj.label18:setFontSize(11);
    obj.label18:setVertTextAlign("center");
    obj.label18:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setName("label18");
    obj.label18:setFontColor("white");

    obj.dataLink117 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink117:setParent(obj.layout53);
    obj.dataLink117:setFields({'PV', 'PVmax'});
    obj.dataLink117:setName("dataLink117");

    obj.dataLink118 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink118:setParent(obj.layout52);
    obj.dataLink118:setField("descansoLongo");
    obj.dataLink118:setName("dataLink118");

    obj.flowPart52 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart52:setParent(obj.flowLayout12);
    obj.flowPart52:setMinWidth(370);
    obj.flowPart52:setMaxWidth(420);
    obj.flowPart52:setMinScaledWidth(370);
    obj.flowPart52:setHeight(200);
    obj.flowPart52:setMargins({left=2, right=2, top=4, bottom=8});
    obj.flowPart52:setName("flowPart52");
    obj.flowPart52:setVertAlign("leading");

    obj.frame2 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame2:setParent(obj.flowPart52);
    obj.frame2:setWidth(360);
    obj.frame2:setHeight(200);
    obj.frame2:setFrameStyle("frames/panel4transp/frame.xml");
    obj.frame2:setMargins({left = 0, right = 4});
    obj.frame2:setName("frame2");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.frame2);
    obj.image1:setAlign("client");
    obj.image1:setStyle("proportional");
    obj.image1:setField("imagens.aparencia");
    obj.image1:setMargins({top=2});
    obj.image1:setEditable(true);
    lfm_setPropAsString(obj.image1, "animate",  "true");
    obj.image1:setName("image1");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.frame2);
    obj.label19:setAlign("bottom");
    obj.label19:setAutoSize(true);
    obj.label19:setText("APARENCIA");
    obj.label19:setVertTextAlign("center");
    obj.label19:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setName("label19");
    obj.label19:setFontColor("white");

    obj.flowLayout15 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout15:setParent(obj.flowLayout12);
    obj.flowLayout15:setAutoHeight(true);
    obj.flowLayout15:setMinWidth(235);
    obj.flowLayout15:setMaxWidth(475);
    obj.flowLayout15:setMinScaledWidth(235);
    obj.flowLayout15:setHorzAlign("justify");
    obj.flowLayout15:setName("flowLayout15");
    obj.flowLayout15:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout15:setVertAlign("leading");

    obj.flowPart53 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart53:setParent(obj.flowLayout15);
    obj.flowPart53:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart53:setStepSizes({130, 150, 160});
    obj.flowPart53:setHeight(100);
    obj.flowPart53:setName("flowPart53");
    obj.flowPart53:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart53:setVertAlign("leading");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.flowPart53);
    obj.layout55:setAlign("top");
    obj.layout55:setHeight(25);
    obj.layout55:setName("layout55");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout55);
    obj.label20:setAlign("left");
    obj.label20:setAutoSize(true);
    obj.label20:setText("TOTAL:");
    obj.label20:setTextTrimming("none");
    obj.label20:setWordWrap(false);
    obj.label20:setFontSize(10);
    obj.label20:setHorzTextAlign("trailing");
    obj.label20:setName("label20");
    obj.label20:setFontColor("#D0D0D0");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.layout55);
    obj.layout56:setAlign("client");
    obj.layout56:setMargins({left=5, right=3});
    obj.layout56:setName("layout56");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout56);
    obj.edit18:setAlign("client");
    obj.edit18:setField("DadosDeVidaTotal");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setName("edit18");
    obj.edit18:setFontSize(15);
    obj.edit18:setFontColor("white");
    obj.edit18:setTransparent(true);

    obj.horzLine36 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine36:setParent(obj.layout56);
    obj.horzLine36:setAlign("bottom");
    obj.horzLine36:setStrokeColor("gray");
    obj.horzLine36:setName("horzLine36");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.flowPart53);
    obj.edit19:setAlign("client");
    obj.edit19:setField("DadosDeVida");
    obj.edit19:setMargins({top=2});
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setFontSize(21);
    obj.edit19:setName("edit19");
    obj.edit19:setFontColor("white");
    obj.edit19:setTransparent(true);

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.flowPart53);
    obj.label21:setAlign("bottom");
    obj.label21:setAutoSize(true);
    obj.label21:setText("DADOS DE VIDA");
    obj.label21:setFontSize(11);
    obj.label21:setVertTextAlign("center");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setName("label21");
    obj.label21:setFontColor("white");

    obj.flowPart54 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart54:setParent(obj.flowLayout15);
    obj.flowPart54:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart54:setStepSizes({170, 170});
    obj.flowPart54:setHeight(100);
    obj.flowPart54:setName("flowPart54");
    obj.flowPart54:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart54:setVertAlign("leading");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.flowPart54);
    obj.layout57:setAlign("top");
    obj.layout57:setHeight(25);
    obj.layout57:setMargins({left=2});
    obj.layout57:setName("layout57");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout57);
    obj.label22:setAlign("client");
    obj.label22:setAutoSize(true);
    obj.label22:setFontSize(10);
    obj.label22:setText("SUCESSOS");
    obj.label22:setWordWrap(false);
    obj.label22:setVertTextAlign("center");
    obj.label22:setHorzTextAlign("trailing");
    obj.label22:setMargins({right=6});
    obj.label22:setName("label22");
    obj.label22:setFontColor("white");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout57);
    obj.imageCheckBox1:setAlign("right");
    obj.imageCheckBox1:setWidth(25);
    obj.imageCheckBox1:setMargins({right=2});
    obj.imageCheckBox1:setField("testesContraMorte.s0");
    obj.imageCheckBox1:setOptimize(false);
    obj.imageCheckBox1:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox1:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox1:setName("imageCheckBox1");
    obj.imageCheckBox1:setHeight(20);
    obj.imageCheckBox1:setVisible(true);

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout57);
    obj.imageCheckBox2:setAlign("right");
    obj.imageCheckBox2:setWidth(25);
    obj.imageCheckBox2:setMargins({right=2});
    obj.imageCheckBox2:setField("testesContraMorte.s1");
    obj.imageCheckBox2:setOptimize(false);
    obj.imageCheckBox2:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox2:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox2:setName("imageCheckBox2");
    obj.imageCheckBox2:setHeight(20);
    obj.imageCheckBox2:setVisible(true);

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout57);
    obj.imageCheckBox3:setAlign("right");
    obj.imageCheckBox3:setWidth(25);
    obj.imageCheckBox3:setMargins({right=6});
    obj.imageCheckBox3:setField("testesContraMorte.s2");
    obj.imageCheckBox3:setOptimize(false);
    obj.imageCheckBox3:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox3:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox3:setName("imageCheckBox3");
    obj.imageCheckBox3:setHeight(20);
    obj.imageCheckBox3:setVisible(true);

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.flowPart54);
    obj.layout58:setAlign("top");
    obj.layout58:setHeight(25);
    obj.layout58:setMargins({left=2, top = 4});
    obj.layout58:setName("layout58");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout58);
    obj.label23:setAlign("client");
    obj.label23:setAutoSize(true);
    obj.label23:setFontSize(10);
    obj.label23:setText("FALHAS");
    obj.label23:setVertTextAlign("center");
    obj.label23:setHorzTextAlign("trailing");
    obj.label23:setMargins({right=6});
    obj.label23:setName("label23");
    obj.label23:setFontColor("white");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout58);
    obj.imageCheckBox4:setAlign("right");
    obj.imageCheckBox4:setWidth(25);
    obj.imageCheckBox4:setMargins({right=2});
    obj.imageCheckBox4:setField("testesContraMorte.f0");
    obj.imageCheckBox4:setOptimize(false);
    obj.imageCheckBox4:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox4:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox4:setName("imageCheckBox4");
    obj.imageCheckBox4:setHeight(20);
    obj.imageCheckBox4:setVisible(true);

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout58);
    obj.imageCheckBox5:setAlign("right");
    obj.imageCheckBox5:setWidth(25);
    obj.imageCheckBox5:setMargins({right=2});
    obj.imageCheckBox5:setField("testesContraMorte.f1");
    obj.imageCheckBox5:setOptimize(false);
    obj.imageCheckBox5:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox5:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox5:setName("imageCheckBox5");
    obj.imageCheckBox5:setHeight(20);
    obj.imageCheckBox5:setVisible(true);

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout58);
    obj.imageCheckBox6:setAlign("right");
    obj.imageCheckBox6:setWidth(25);
    obj.imageCheckBox6:setMargins({right=6});
    obj.imageCheckBox6:setField("testesContraMorte.f2");
    obj.imageCheckBox6:setOptimize(false);
    obj.imageCheckBox6:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox6:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox6:setName("imageCheckBox6");
    obj.imageCheckBox6:setHeight(20);
    obj.imageCheckBox6:setVisible(true);

    obj.button47 = GUI.fromHandle(_obj_newObject("button"));
    obj.button47:setParent(obj.flowPart54);
    obj.button47:setAlign("bottom");
    obj.button47:setText("TESTE CONTRA MORTE");
    obj.button47:setFontSize(11);
    obj.button47:setVertTextAlign("center");
    obj.button47:setHorzTextAlign("center");
    obj.button47:setName("button47");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.pgcPrincipal);
    obj.tab2:setTitle("CARACTERISTICAS");
    obj.tab2:setName("tab2");

    obj.frmFichaRPGmeister9_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaRPGmeister9_svg:setParent(obj.tab2);
    obj.frmFichaRPGmeister9_svg:setName("frmFichaRPGmeister9_svg");
    obj.frmFichaRPGmeister9_svg:setAlign("client");
    obj.frmFichaRPGmeister9_svg:setMargins({top=1});

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.frmFichaRPGmeister9_svg);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.scrollBox2);
    obj.layout59:setLeft(0);
    obj.layout59:setTop(0);
    obj.layout59:setWidth(1205);
    obj.layout59:setHeight(105);
    obj.layout59:setFrameStyle("frames/panel4transp/frame.xml");
    obj.layout59:setName("layout59");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout59);
    obj.label24:setLeft(10);
    obj.label24:setTop(10);
    obj.label24:setWidth(90);
    obj.label24:setHeight(20);
    obj.label24:setText("TAMANHO");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setName("label24");
    obj.label24:setFontColor("white");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.layout59);
    obj.comboBox1:setLeft(100);
    obj.comboBox1:setTop(10);
    obj.comboBox1:setWidth(100);
    obj.comboBox1:setField("caracteristicas.tamanho");
    obj.comboBox1:setFontColor("white");
    obj.comboBox1:setItems({'Min??sculo', 'Diminuto', 'Mi??do', 'Pequeno', 'M??dio', 'Grande', 'Enorme', 'Imenso', 'Colossal'});
    obj.comboBox1:setValues({'-4','-3','-2','-1','0','1','2','3','4'});
    obj.comboBox1:setHorzTextAlign("center");
    obj.comboBox1:setName("comboBox1");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout59);
    obj.checkBox1:setLeft(200);
    obj.checkBox1:setTop(10);
    obj.checkBox1:setWidth(100);
    obj.checkBox1:setField("caracteristicas.quadrupede");
    obj.checkBox1:setText("Quadr??pede");
    obj.checkBox1:setName("checkBox1");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout59);
    obj.label25:setLeft(10);
    obj.label25:setTop(38);
    obj.label25:setWidth(90);
    obj.label25:setHeight(20);
    obj.label25:setText("ALTURA");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setName("label25");
    obj.label25:setFontColor("white");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout59);
    obj.edit20:setLeft(100);
    obj.edit20:setTop(38);
    obj.edit20:setWidth(200);
    obj.edit20:setHeight(25);
    obj.edit20:setField("caracteristicas.altura");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setName("edit20");
    obj.edit20:setFontSize(15);
    obj.edit20:setFontColor("white");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout59);
    obj.label26:setLeft(10);
    obj.label26:setTop(65);
    obj.label26:setWidth(90);
    obj.label26:setHeight(20);
    obj.label26:setText("PESO");
    obj.label26:setHorzTextAlign("center");
    obj.label26:setName("label26");
    obj.label26:setFontColor("white");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout59);
    obj.edit21:setLeft(100);
    obj.edit21:setTop(65);
    obj.edit21:setWidth(200);
    obj.edit21:setHeight(25);
    obj.edit21:setField("caracteristicas.peso");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setName("edit21");
    obj.edit21:setFontSize(15);
    obj.edit21:setFontColor("white");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout59);
    obj.label27:setLeft(310);
    obj.label27:setTop(10);
    obj.label27:setWidth(90);
    obj.label27:setHeight(20);
    obj.label27:setText("IDADE");
    obj.label27:setHorzTextAlign("center");
    obj.label27:setName("label27");
    obj.label27:setFontColor("white");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout59);
    obj.edit22:setLeft(410);
    obj.edit22:setTop(10);
    obj.edit22:setWidth(200);
    obj.edit22:setHeight(25);
    obj.edit22:setField("caracteristicas.idade");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setName("edit22");
    obj.edit22:setFontSize(15);
    obj.edit22:setFontColor("white");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout59);
    obj.label28:setLeft(310);
    obj.label28:setTop(38);
    obj.label28:setWidth(90);
    obj.label28:setHeight(20);
    obj.label28:setText("SEXO");
    obj.label28:setHorzTextAlign("center");
    obj.label28:setName("label28");
    obj.label28:setFontColor("white");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout59);
    obj.edit23:setLeft(410);
    obj.edit23:setTop(38);
    obj.edit23:setWidth(200);
    obj.edit23:setHeight(25);
    obj.edit23:setField("caracteristicas.sexo");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setName("edit23");
    obj.edit23:setFontSize(15);
    obj.edit23:setFontColor("white");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout59);
    obj.label29:setLeft(310);
    obj.label29:setTop(65);
    obj.label29:setWidth(90);
    obj.label29:setHeight(20);
    obj.label29:setText("OUTROS");
    obj.label29:setHorzTextAlign("center");
    obj.label29:setName("label29");
    obj.label29:setFontColor("white");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout59);
    obj.edit24:setLeft(410);
    obj.edit24:setTop(65);
    obj.edit24:setWidth(200);
    obj.edit24:setHeight(25);
    obj.edit24:setField("caracteristicas.aparenciaOutros");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setName("edit24");
    obj.edit24:setFontSize(15);
    obj.edit24:setFontColor("white");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout59);
    obj.label30:setLeft(610);
    obj.label30:setTop(10);
    obj.label30:setWidth(90);
    obj.label30:setHeight(20);
    obj.label30:setText("OLHOS");
    obj.label30:setHorzTextAlign("center");
    obj.label30:setName("label30");
    obj.label30:setFontColor("white");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout59);
    obj.edit25:setLeft(700);
    obj.edit25:setTop(10);
    obj.edit25:setWidth(200);
    obj.edit25:setHeight(25);
    obj.edit25:setField("caracteristicas.aparenciaOlhos");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setName("edit25");
    obj.edit25:setFontSize(15);
    obj.edit25:setFontColor("white");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout59);
    obj.label31:setLeft(610);
    obj.label31:setTop(38);
    obj.label31:setWidth(90);
    obj.label31:setHeight(20);
    obj.label31:setText("PELE");
    obj.label31:setHorzTextAlign("center");
    obj.label31:setName("label31");
    obj.label31:setFontColor("white");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout59);
    obj.edit26:setLeft(700);
    obj.edit26:setTop(38);
    obj.edit26:setWidth(200);
    obj.edit26:setHeight(25);
    obj.edit26:setField("caracteristicas.pele");
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setName("edit26");
    obj.edit26:setFontSize(15);
    obj.edit26:setFontColor("white");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout59);
    obj.label32:setLeft(610);
    obj.label32:setTop(65);
    obj.label32:setWidth(90);
    obj.label32:setHeight(20);
    obj.label32:setText("CABELO");
    obj.label32:setHorzTextAlign("center");
    obj.label32:setName("label32");
    obj.label32:setFontColor("white");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout59);
    obj.edit27:setLeft(700);
    obj.edit27:setTop(65);
    obj.edit27:setWidth(200);
    obj.edit27:setHeight(25);
    obj.edit27:setField("caracteristicas.cabelo");
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setName("edit27");
    obj.edit27:setFontSize(15);
    obj.edit27:setFontColor("white");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout59);
    obj.label33:setLeft(900);
    obj.label33:setTop(10);
    obj.label33:setWidth(90);
    obj.label33:setHeight(20);
    obj.label33:setText("PLANO");
    obj.label33:setHorzTextAlign("center");
    obj.label33:setName("label33");
    obj.label33:setFontColor("white");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout59);
    obj.edit28:setLeft(980);
    obj.edit28:setTop(10);
    obj.edit28:setWidth(200);
    obj.edit28:setHeight(25);
    obj.edit28:setField("caracteristicas.plano");
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setName("edit28");
    obj.edit28:setFontSize(15);
    obj.edit28:setFontColor("white");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout59);
    obj.label34:setLeft(900);
    obj.label34:setTop(38);
    obj.label34:setWidth(90);
    obj.label34:setHeight(20);
    obj.label34:setText("REGI??O");
    obj.label34:setHorzTextAlign("center");
    obj.label34:setName("label34");
    obj.label34:setFontColor("white");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout59);
    obj.edit29:setLeft(980);
    obj.edit29:setTop(38);
    obj.edit29:setWidth(200);
    obj.edit29:setHeight(25);
    obj.edit29:setField("caracteristicas.regiao");
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setName("edit29");
    obj.edit29:setFontSize(15);
    obj.edit29:setFontColor("white");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout59);
    obj.label35:setLeft(900);
    obj.label35:setTop(65);
    obj.label35:setWidth(90);
    obj.label35:setHeight(20);
    obj.label35:setText("REINO");
    obj.label35:setHorzTextAlign("center");
    obj.label35:setName("label35");
    obj.label35:setFontColor("white");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout59);
    obj.edit30:setLeft(980);
    obj.edit30:setTop(65);
    obj.edit30:setWidth(200);
    obj.edit30:setHeight(25);
    obj.edit30:setField("caracteristicas.reino");
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setName("edit30");
    obj.edit30:setFontSize(15);
    obj.edit30:setFontColor("white");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.scrollBox2);
    obj.layout60:setLeft(380);
    obj.layout60:setTop(110);
    obj.layout60:setWidth(825);
    obj.layout60:setHeight(495);
    obj.layout60:setFrameStyle("frames/panel5/frame.xml");
    obj.layout60:setName("layout60");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout60);
    obj.label36:setAlign("bottom");
    obj.label36:setAutoSize(true);
    obj.label36:setVertTextAlign("center");
    obj.label36:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label36, "fontStyle",  "bold");
    obj.label36:setText("HISTORIA");
    obj.label36:setName("label36");
    obj.label36:setFontColor("white");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.layout60);
    obj.richEdit1:setLeft(10);
    obj.richEdit1:setTop(20);
    obj.richEdit1:setWidth(805);
    obj.richEdit1:setHeight(450);
    obj.richEdit1:setField("background");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit1, "defaultFontSize",  "12");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setName("richEdit1");

    obj.flowPart55 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart55:setParent(obj.scrollBox2);
    obj.flowPart55:setLeft(0);
    obj.flowPart55:setTop(110);
    obj.flowPart55:setWidth(375);
    obj.flowPart55:setHeight(211);
    obj.flowPart55:setFrameStyle("frames/panel5/frame.xml");
    obj.flowPart55:setMargins({left = 0, right = 4});
    obj.flowPart55:setName("flowPart55");
    obj.flowPart55:setVertAlign("leading");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.flowPart55);
    obj.image2:setAlign("client");
    obj.image2:setStyle("proportional");
    obj.image2:setField("imagens.aparencia");
    obj.image2:setMargins({top=2});
    obj.image2:setEditable(true);
    lfm_setPropAsString(obj.image2, "animate",  "true");
    obj.image2:setName("image2");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.flowPart55);
    obj.label37:setAlign("bottom");
    obj.label37:setAutoSize(true);
    obj.label37:setText("APARENCIA");
    obj.label37:setVertTextAlign("center");
    obj.label37:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label37, "fontStyle",  "bold");
    obj.label37:setName("label37");
    obj.label37:setFontColor("white");

    obj.flowPart56 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart56:setParent(obj.scrollBox2);
    obj.flowPart56:setLeft(0);
    obj.flowPart56:setTop(325);
    obj.flowPart56:setWidth(375);
    obj.flowPart56:setHeight(211);
    obj.flowPart56:setFrameStyle("frames/panel5/frame.xml");
    obj.flowPart56:setMargins({left = 0, right = 4});
    obj.flowPart56:setName("flowPart56");
    obj.flowPart56:setVertAlign("leading");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.flowPart56);
    obj.image3:setAlign("client");
    obj.image3:setStyle("proportional");
    obj.image3:setField("imagens.aparencia2");
    obj.image3:setMargins({top=2});
    obj.image3:setEditable(true);
    lfm_setPropAsString(obj.image3, "animate",  "true");
    obj.image3:setName("image3");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.flowPart56);
    obj.label38:setAlign("bottom");
    obj.label38:setAutoSize(true);
    obj.label38:setText("APARENCIA");
    obj.label38:setVertTextAlign("center");
    obj.label38:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label38, "fontStyle",  "bold");
    obj.label38:setName("label38");
    obj.label38:setFontColor("white");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.scrollBox2);
    obj.layout61:setLeft(0);
    obj.layout61:setTop(540);
    obj.layout61:setWidth(375);
    obj.layout61:setHeight(315);
    obj.layout61:setFrameStyle("frames/panel5/frame.xml");
    obj.layout61:setMargins({left = 4, right = 4});
    obj.layout61:setName("layout61");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout61);
    obj.label39:setAlign("top");
    obj.label39:setAutoSize(true);
    obj.label39:setVertTextAlign("center");
    obj.label39:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label39, "fontStyle",  "bold");
    obj.label39:setText("TRA??OS");
    obj.label39:setName("label39");
    obj.label39:setFontColor("white");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout61);
    obj.textEditor1:setLeft(10);
    obj.textEditor1:setTop(30);
    obj.textEditor1:setWidth(355);
    obj.textEditor1:setHeight(265);
    obj.textEditor1:setField("caracteristicas.caracteristicasETracoes");
    obj.textEditor1:setName("textEditor1");
    obj.textEditor1:setTransparent(true);

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.scrollBox2);
    obj.layout62:setLeft(380);
    obj.layout62:setTop(610);
    obj.layout62:setWidth(412);
    obj.layout62:setHeight(123);
    obj.layout62:setFrameStyle("frames/panel5/frame.xml");
    obj.layout62:setName("layout62");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout62);
    obj.label40:setAlign("bottom");
    obj.label40:setAutoSize(true);
    obj.label40:setVertTextAlign("center");
    obj.label40:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label40, "fontStyle",  "bold");
    obj.label40:setText("IDIOMAS");
    obj.label40:setName("label40");
    obj.label40:setFontColor("white");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout62);
    obj.textEditor2:setLeft(10);
    obj.textEditor2:setTop(20);
    obj.textEditor2:setWidth(392);
    obj.textEditor2:setHeight(61);
    obj.textEditor2:setField("idiomas");
    obj.textEditor2:setName("textEditor2");
    obj.textEditor2:setTransparent(true);

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.scrollBox2);
    obj.layout63:setLeft(380);
    obj.layout63:setTop(730);
    obj.layout63:setWidth(412);
    obj.layout63:setHeight(123);
    obj.layout63:setFrameStyle("frames/panel5/frame.xml");
    obj.layout63:setName("layout63");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout63);
    obj.label41:setAlign("bottom");
    obj.label41:setAutoSize(true);
    obj.label41:setVertTextAlign("center");
    obj.label41:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label41, "fontStyle",  "bold");
    obj.label41:setText("PERSONALIDADE");
    obj.label41:setName("label41");
    obj.label41:setFontColor("white");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout63);
    obj.textEditor3:setLeft(10);
    obj.textEditor3:setTop(20);
    obj.textEditor3:setWidth(392);
    obj.textEditor3:setHeight(61);
    obj.textEditor3:setField("personalidade");
    obj.textEditor3:setName("textEditor3");
    obj.textEditor3:setTransparent(true);

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.scrollBox2);
    obj.layout64:setLeft(792);
    obj.layout64:setTop(610);
    obj.layout64:setWidth(412);
    obj.layout64:setHeight(125);
    obj.layout64:setFrameStyle("frames/panel5/frame.xml");
    obj.layout64:setName("layout64");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout64);
    obj.label42:setAlign("bottom");
    obj.label42:setAutoSize(true);
    obj.label42:setVertTextAlign("center");
    obj.label42:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label42, "fontStyle",  "bold");
    obj.label42:setText("V??NCULOS");
    obj.label42:setName("label42");
    obj.label42:setFontColor("white");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout64);
    obj.textEditor4:setLeft(10);
    obj.textEditor4:setTop(20);
    obj.textEditor4:setWidth(392);
    obj.textEditor4:setHeight(61);
    obj.textEditor4:setField("vinculos");
    obj.textEditor4:setName("textEditor4");
    obj.textEditor4:setTransparent(true);

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.scrollBox2);
    obj.layout65:setLeft(792);
    obj.layout65:setTop(730);
    obj.layout65:setWidth(412);
    obj.layout65:setHeight(125);
    obj.layout65:setFrameStyle("frames/panel5/frame.xml");
    obj.layout65:setName("layout65");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout65);
    obj.label43:setAlign("bottom");
    obj.label43:setAutoSize(true);
    obj.label43:setVertTextAlign("center");
    obj.label43:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label43, "fontStyle",  "bold");
    obj.label43:setText("FRAQUEZAS");
    obj.label43:setName("label43");
    obj.label43:setFontColor("white");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout65);
    obj.textEditor5:setLeft(10);
    obj.textEditor5:setTop(20);
    obj.textEditor5:setWidth(392);
    obj.textEditor5:setHeight(61);
    obj.textEditor5:setField("fraquezas");
    obj.textEditor5:setName("textEditor5");
    obj.textEditor5:setTransparent(true);

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.pgcPrincipal);
    obj.tab3:setTitle("EQUIPAMENTOS");
    obj.tab3:setName("tab3");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.tab3);
    obj.rectangle2:setStrokeColor("white");
    obj.rectangle2:setStrokeSize(1);
    obj.rectangle2:setName("rectangle2");
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("#40000000");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.rectangle2);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.fraEquipamentoLayout = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraEquipamentoLayout:setParent(obj.scrollBox3);
    obj.fraEquipamentoLayout:setAlign("top");
    obj.fraEquipamentoLayout:setHeight(500);
    obj.fraEquipamentoLayout:setMargins({left=10, right=10, top=10});
    obj.fraEquipamentoLayout:setAutoHeight(true);
    obj.fraEquipamentoLayout:setHorzAlign("center");
    obj.fraEquipamentoLayout:setLineSpacing(3);
    obj.fraEquipamentoLayout:setName("fraEquipamentoLayout");
    obj.fraEquipamentoLayout:setStepSizes({310, 420, 640, 760, 1150});
    obj.fraEquipamentoLayout:setMinScaledWidth(300);
    obj.fraEquipamentoLayout:setVertAlign("leading");


					local function recalcularTamanhoEquipsDefesa()
						self.flwPartEquipDefense.height = self.rclEquipsDefense.height + self.labEquipDefense.height +
														self.layEquipDefenseBottom.height + 
														self.flwPartEquipDefense.padding.top + self.flwPartEquipDefense.padding.bottom + 7;
					end;
				


    obj.flwPartEquipAttack = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flwPartEquipAttack:setParent(obj.fraEquipamentoLayout);
    obj.flwPartEquipAttack:setName("flwPartEquipAttack");
    obj.flwPartEquipAttack:setHeight(250);
    obj.flwPartEquipAttack:setFrameStyle("frames/panel5/frame.xml");
    obj.flwPartEquipAttack:setMinScaledWidth(290);
    obj.flwPartEquipAttack:setStepSizes({310, 420, 640, 760, 1150});
    obj.flwPartEquipAttack:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flwPartEquipAttack:setVertAlign("leading");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.flwPartEquipAttack);
    obj.layout66:setAlign("client");
    obj.layout66:setMargins({top=10, bottom=10});
    obj.layout66:setName("layout66");

    obj.layEquipAttackLeft = GUI.fromHandle(_obj_newObject("layout"));
    obj.layEquipAttackLeft:setParent(obj.layout66);
    obj.layEquipAttackLeft:setName("layEquipAttackLeft");
    obj.layEquipAttackLeft:setAlign("left");
    obj.layEquipAttackLeft:setWidth(240);

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layEquipAttackLeft);
    obj.label44:setAlign("top");
    obj.label44:setAutoSize(true);
    obj.label44:setText("EQUIPAMENTOS E ATAQUES");
    obj.label44:setFontSize(12);
    obj.label44:setVertTextAlign("center");
    obj.label44:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label44, "fontStyle",  "bold");
    obj.label44:setName("label44");
    obj.label44:setFontColor("white");

    obj.rclEquips = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclEquips:setParent(obj.layEquipAttackLeft);
    obj.rclEquips:setName("rclEquips");
    obj.rclEquips:setAlign("client");
    obj.rclEquips:setField("equipamentos.ataques");
    obj.rclEquips:setTemplateForm("frmEquipamentoItem2");
    obj.rclEquips:setMinQt(1);
    obj.rclEquips:setHitTest(true);
    obj.rclEquips:setMargins({top=5, bottom=5});

    obj.button48 = GUI.fromHandle(_obj_newObject("button"));
    obj.button48:setParent(obj.layEquipAttackLeft);
    obj.button48:setAlign("bottom");
    obj.button48:setText("Novo Item");
    obj.button48:setName("button48");

    obj.dataEquipAttackDetails = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.dataEquipAttackDetails:setParent(obj.layout66);
    obj.dataEquipAttackDetails:setName("dataEquipAttackDetails");
    obj.dataEquipAttackDetails:setAlign("client");
    obj.dataEquipAttackDetails:setFrameStyle("frames/panel5/frame.xml");
    obj.dataEquipAttackDetails:setMargins({left=10});
    obj.dataEquipAttackDetails:setEnabled(false);

    obj.layEquipAttackImg = GUI.fromHandle(_obj_newObject("layout"));
    obj.layEquipAttackImg:setParent(obj.dataEquipAttackDetails);
    obj.layEquipAttackImg:setName("layEquipAttackImg");
    obj.layEquipAttackImg:setAlign("left");
    obj.layEquipAttackImg:setWidth(100);

    obj.imgEquipAttackImg = GUI.fromHandle(_obj_newObject("image"));
    obj.imgEquipAttackImg:setParent(obj.layEquipAttackImg);
    obj.imgEquipAttackImg:setName("imgEquipAttackImg");
    obj.imgEquipAttackImg:setAlign("client");
    obj.imgEquipAttackImg:setURL("https://clipartart.com/images/cross-sword-clipart.png");
    obj.imgEquipAttackImg:setShowProgress(false);
    lfm_setPropAsString(obj.imgEquipAttackImg, "animate",  "true");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.layEquipAttackImg);
    obj.image4:setAlign("client");
    obj.image4:setField("imagem");
    obj.image4:setShowProgress(false);
    obj.image4:setEditable(true);
    lfm_setPropAsString(obj.image4, "animate",  "true");
    obj.image4:setName("image4");

    obj.layEquipPropriedades = GUI.fromHandle(_obj_newObject("layout"));
    obj.layEquipPropriedades:setParent(obj.dataEquipAttackDetails);
    obj.layEquipPropriedades:setName("layEquipPropriedades");
    obj.layEquipPropriedades:setAlign("left");
    obj.layEquipPropriedades:setWidth(150);
    obj.layEquipPropriedades:setMargins({left=5});

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layEquipPropriedades);
    obj.label45:setText("PROPRIEDADES");
    obj.label45:setAlign("top");
    obj.label45:setHorzTextAlign("center");
    obj.label45:setName("label45");
    obj.label45:setFontSize(12);
    obj.label45:setFontColor("#D0D0D0");

    obj.rclProps = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclProps:setParent(obj.layEquipPropriedades);
    obj.rclProps:setName("rclProps");
    obj.rclProps:setAlign("client");
    obj.rclProps:setField("listaPropriedades");
    obj.rclProps:setTemplateForm("frmText");

    obj.button49 = GUI.fromHandle(_obj_newObject("button"));
    obj.button49:setParent(obj.layEquipPropriedades);
    obj.button49:setAlign("bottom");
    obj.button49:setText("Adicionar Propriedade");
    obj.button49:setName("button49");

    obj.dataLink119 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink119:setParent(obj.layEquipPropriedades);
    obj.dataLink119:setField("propriedades");
    obj.dataLink119:setName("dataLink119");

    obj.horzLine37 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine37:setParent(obj.dataEquipAttackDetails);
    obj.horzLine37:setLeft(153);
    obj.horzLine37:setTop(120);
    obj.horzLine37:setRotationAngle(90);
    obj.horzLine37:setWidth(240);
    obj.horzLine37:setStrokeColor("lightGray");
    obj.horzLine37:setOpacity(0.5);
    obj.horzLine37:setName("horzLine37");

    obj.layPrincipal = GUI.fromHandle(_obj_newObject("layout"));
    obj.layPrincipal:setParent(obj.dataEquipAttackDetails);
    obj.layPrincipal:setAlign("client");
    obj.layPrincipal:setName("layPrincipal");
    obj.layPrincipal:setMargins({left=5});

    obj.optAtaqueLegenda = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.optAtaqueLegenda:setParent(obj.layPrincipal);
    obj.optAtaqueLegenda:setAlign("top");
    obj.optAtaqueLegenda:setHeight(15);
    obj.optAtaqueLegenda:setName("optAtaqueLegenda");
    obj.optAtaqueLegenda:setHorzAlign("justify");
    obj.optAtaqueLegenda:setStepSizes({310, 420, 640, 760, 1150});
    obj.optAtaqueLegenda:setMinScaledWidth(300);
    obj.optAtaqueLegenda:setMargins({left=1, right=1, top=2, bottom=2});
    obj.optAtaqueLegenda:setVertAlign("leading");

    obj.flowPart57 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart57:setParent(obj.optAtaqueLegenda);
    obj.flowPart57:setHeight(15);
    obj.flowPart57:setMinWidth(20);
    obj.flowPart57:setMaxWidth(20);
    obj.flowPart57:setName("flowPart57");
    obj.flowPart57:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart57:setVertAlign("leading");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.flowPart57);
    obj.label46:setAlign("client");
    obj.label46:setText("");
    obj.label46:setHorzTextAlign("center");
    obj.label46:setVertTextAlign("leading");
    obj.label46:setWordWrap(true);
    obj.label46:setTextTrimming("none");
    obj.label46:setName("label46");
    obj.label46:setFontSize(12);
    obj.label46:setFontColor("#D0D0D0");

    obj.flowPart58 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart58:setParent(obj.optAtaqueLegenda);
    obj.flowPart58:setHeight(15);
    obj.flowPart58:setMinWidth(80);
    obj.flowPart58:setMaxWidth(150);
    obj.flowPart58:setName("flowPart58");
    obj.flowPart58:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart58:setVertAlign("leading");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.flowPart58);
    obj.label47:setAlign("client");
    obj.label47:setText("ALCANCE");
    obj.label47:setHorzTextAlign("center");
    obj.label47:setVertTextAlign("leading");
    obj.label47:setWordWrap(true);
    obj.label47:setTextTrimming("none");
    obj.label47:setName("label47");
    obj.label47:setFontSize(12);
    obj.label47:setFontColor("#D0D0D0");

    obj.flowPart59 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart59:setParent(obj.optAtaqueLegenda);
    obj.flowPart59:setHeight(15);
    obj.flowPart59:setMinWidth(110);
    obj.flowPart59:setMaxWidth(200);
    obj.flowPart59:setName("flowPart59");
    obj.flowPart59:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart59:setVertAlign("leading");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.flowPart59);
    obj.label48:setAlign("client");
    obj.label48:setText("ACERTO");
    obj.label48:setHorzTextAlign("center");
    obj.label48:setVertTextAlign("leading");
    obj.label48:setWordWrap(true);
    obj.label48:setTextTrimming("none");
    obj.label48:setName("label48");
    obj.label48:setFontSize(12);
    obj.label48:setFontColor("#D0D0D0");

    obj.flowPart60 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart60:setParent(obj.optAtaqueLegenda);
    obj.flowPart60:setHeight(15);
    obj.flowPart60:setMinWidth(80);
    obj.flowPart60:setMaxWidth(170);
    obj.flowPart60:setName("flowPart60");
    obj.flowPart60:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart60:setVertAlign("leading");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.flowPart60);
    obj.label49:setAlign("client");
    obj.label49:setText("DANO");
    obj.label49:setHorzTextAlign("center");
    obj.label49:setVertTextAlign("leading");
    obj.label49:setWordWrap(true);
    obj.label49:setTextTrimming("none");
    obj.label49:setName("label49");
    obj.label49:setFontSize(12);
    obj.label49:setFontColor("#D0D0D0");

    obj.flowPart61 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart61:setParent(obj.optAtaqueLegenda);
    obj.flowPart61:setHeight(15);
    obj.flowPart61:setMinWidth(80);
    obj.flowPart61:setMaxWidth(180);
    obj.flowPart61:setName("flowPart61");
    obj.flowPart61:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart61:setVertAlign("leading");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.flowPart61);
    obj.label50:setAlign("client");
    obj.label50:setText("TIPO");
    obj.label50:setHorzTextAlign("center");
    obj.label50:setVertTextAlign("leading");
    obj.label50:setWordWrap(true);
    obj.label50:setTextTrimming("none");
    obj.label50:setName("label50");
    obj.label50:setFontSize(12);
    obj.label50:setFontColor("#D0D0D0");

    obj.flowPart62 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart62:setParent(obj.optAtaqueLegenda);
    obj.flowPart62:setHeight(15);
    obj.flowPart62:setMinWidth(100);
    obj.flowPart62:setMaxWidth(200);
    obj.flowPart62:setName("flowPart62");
    obj.flowPart62:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart62:setVertAlign("leading");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.flowPart62);
    obj.label51:setAlign("client");
    obj.label51:setText("MUNICAO");
    obj.label51:setHorzTextAlign("center");
    obj.label51:setVertTextAlign("leading");
    obj.label51:setWordWrap(true);
    obj.label51:setTextTrimming("none");
    obj.label51:setName("label51");
    obj.label51:setFontSize(12);
    obj.label51:setFontColor("#D0D0D0");

    obj.flowPart63 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart63:setParent(obj.optAtaqueLegenda);
    obj.flowPart63:setHeight(15);
    obj.flowPart63:setMinWidth(25);
    obj.flowPart63:setMaxWidth(50);
    obj.flowPart63:setName("flowPart63");
    obj.flowPart63:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart63:setVertAlign("leading");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.flowPart63);
    obj.label52:setAlign("client");
    obj.label52:setText("QTD");
    obj.label52:setHorzTextAlign("center");
    obj.label52:setVertTextAlign("leading");
    obj.label52:setWordWrap(true);
    obj.label52:setTextTrimming("none");
    obj.label52:setName("label52");
    obj.label52:setFontSize(12);
    obj.label52:setFontColor("#D0D0D0");

    obj.flowPart64 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart64:setParent(obj.optAtaqueLegenda);
    obj.flowPart64:setHeight(25);
    obj.flowPart64:setMinWidth(25);
    obj.flowPart64:setMaxWidth(25);
    obj.flowPart64:setName("flowPart64");
    obj.flowPart64:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart64:setVertAlign("leading");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.flowPart64);
    obj.label53:setAlign("client");
    obj.label53:setText("");
    obj.label53:setHorzTextAlign("center");
    obj.label53:setVertTextAlign("leading");
    obj.label53:setWordWrap(true);
    obj.label53:setTextTrimming("none");
    obj.label53:setName("label53");
    obj.label53:setFontSize(12);
    obj.label53:setFontColor("#D0D0D0");

    obj.optAtaquePadrao = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.optAtaquePadrao:setParent(obj.layPrincipal);
    obj.optAtaquePadrao:setAlign("top");
    obj.optAtaquePadrao:setHeight(30);
    obj.optAtaquePadrao:setWidth(200);
    obj.optAtaquePadrao:setName("optAtaquePadrao");
    obj.optAtaquePadrao:setHorzAlign("justify");
    obj.optAtaquePadrao:setStepSizes({310, 420, 640, 760, 1150});
    obj.optAtaquePadrao:setMinScaledWidth(300);
    obj.optAtaquePadrao:setMargins({left=1, right=1, top=2, bottom=2});
    obj.optAtaquePadrao:setVertAlign("leading");

    obj.flowPart65 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart65:setParent(obj.optAtaquePadrao);
    obj.flowPart65:setHeight(30);
    obj.flowPart65:setWidth(20);
    obj.flowPart65:setName("flowPart65");
    obj.flowPart65:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart65:setVertAlign("leading");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.flowPart65);
    obj.checkBox2:setAlign("client");
    obj.checkBox2:setChecked(true);
    obj.checkBox2:setEnabled(false);
    obj.checkBox2:setName("checkBox2");

    obj.flowPart66 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart66:setParent(obj.optAtaquePadrao);
    obj.flowPart66:setHeight(30);
    obj.flowPart66:setMinWidth(80);
    obj.flowPart66:setMaxWidth(150);
    obj.flowPart66:setAvoidScale(true);
    obj.flowPart66:setName("flowPart66");
    obj.flowPart66:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart66:setVertAlign("leading");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.flowPart66);
    obj.edit31:setAlign("client");
    obj.edit31:setField("alcance");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setFontSize(13);
    obj.edit31:setTransparent(false);
    obj.edit31:setHitTest(true);
    obj.edit31:setName("edit31");
    obj.edit31:setHeight(30);
    obj.edit31:setWidth(195);
    obj.edit31:setFontColor("white");

    obj.flowPart67 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart67:setParent(obj.optAtaquePadrao);
    obj.flowPart67:setHeight(30);
    obj.flowPart67:setMinWidth(110);
    obj.flowPart67:setMaxWidth(200);
    obj.flowPart67:setAvoidScale(true);
    obj.flowPart67:setName("flowPart67");
    obj.flowPart67:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart67:setVertAlign("leading");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.flowPart67);
    obj.edit32:setAlign("client");
    obj.edit32:setField("ataque");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setFontSize(13);
    obj.edit32:setTransparent(false);
    obj.edit32:setHitTest(true);
    obj.edit32:setName("edit32");
    obj.edit32:setHeight(30);
    obj.edit32:setWidth(195);
    obj.edit32:setFontColor("white");

    obj.flowPart68 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart68:setParent(obj.optAtaquePadrao);
    obj.flowPart68:setHeight(30);
    obj.flowPart68:setMinWidth(80);
    obj.flowPart68:setMaxWidth(170);
    obj.flowPart68:setAvoidScale(true);
    obj.flowPart68:setName("flowPart68");
    obj.flowPart68:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart68:setVertAlign("leading");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.flowPart68);
    obj.edit33:setAlign("client");
    obj.edit33:setField("dano");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setFontSize(13);
    obj.edit33:setTransparent(false);
    obj.edit33:setHitTest(true);
    obj.edit33:setName("edit33");
    obj.edit33:setHeight(30);
    obj.edit33:setWidth(195);
    obj.edit33:setFontColor("white");

    obj.flowPart69 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart69:setParent(obj.optAtaquePadrao);
    obj.flowPart69:setHeight(30);
    obj.flowPart69:setMinWidth(80);
    obj.flowPart69:setMaxWidth(180);
    obj.flowPart69:setAvoidScale(true);
    obj.flowPart69:setName("flowPart69");
    obj.flowPart69:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart69:setVertAlign("leading");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.flowPart69);
    obj.edit34:setAlign("client");
    obj.edit34:setField("tipo");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setFontSize(13);
    obj.edit34:setTransparent(false);
    obj.edit34:setHitTest(true);
    obj.edit34:setName("edit34");
    obj.edit34:setHeight(30);
    obj.edit34:setWidth(195);
    obj.edit34:setFontColor("white");

    obj.flowPart70 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart70:setParent(obj.optAtaquePadrao);
    obj.flowPart70:setHeight(30);
    obj.flowPart70:setMinWidth(100);
    obj.flowPart70:setMaxWidth(200);
    obj.flowPart70:setAvoidScale(true);
    obj.flowPart70:setName("flowPart70");
    obj.flowPart70:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart70:setVertAlign("leading");

    obj.cbOptAtaqueMunicao = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cbOptAtaqueMunicao:setParent(obj.flowPart70);
    obj.cbOptAtaqueMunicao:setName("cbOptAtaqueMunicao");
    obj.cbOptAtaqueMunicao:setAlign("client");
    obj.cbOptAtaqueMunicao:setField("municao");
    obj.cbOptAtaqueMunicao:setHint("Qual 'contador' deve ser gasto");

    obj.dataLink120 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink120:setParent(obj.flowPart70);
    obj.dataLink120:setField("contadoresMudaram");
    obj.dataLink120:setName("dataLink120");

    obj.flowPart71 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart71:setParent(obj.optAtaquePadrao);
    obj.flowPart71:setHeight(30);
    obj.flowPart71:setMinWidth(25);
    obj.flowPart71:setMaxWidth(50);
    obj.flowPart71:setAvoidScale(true);
    obj.flowPart71:setName("flowPart71");
    obj.flowPart71:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart71:setVertAlign("leading");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.flowPart71);
    obj.edit35:setAlign("client");
    obj.edit35:setField("qtMunicao");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setFontSize(13);
    obj.edit35:setTransparent(false);
    obj.edit35:setHitTest(true);
    obj.edit35:setName("edit35");
    obj.edit35:setHeight(30);
    obj.edit35:setWidth(195);
    obj.edit35:setFontColor("white");

    obj.flowPart72 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart72:setParent(obj.optAtaquePadrao);
    obj.flowPart72:setHeight(30);
    obj.flowPart72:setWidth(25);
    obj.flowPart72:setName("flowPart72");
    obj.flowPart72:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart72:setVertAlign("leading");

    obj.btnApagar = GUI.fromHandle(_obj_newObject("button"));
    obj.btnApagar:setParent(obj.flowPart72);
    obj.btnApagar:setName("btnApagar");
    obj.btnApagar:setAlign("client");
    obj.btnApagar:setText("???");
    obj.btnApagar:setEnabled(false);

    obj.horzLine38 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine38:setParent(obj.layPrincipal);
    obj.horzLine38:setAlign("top");
    obj.horzLine38:setStrokeColor("lightGray");
    obj.horzLine38:setOpacity(0.3);
    obj.horzLine38:setMargins({top=2});
    obj.horzLine38:setName("horzLine38");

    obj.rclOptsAttack = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclOptsAttack:setParent(obj.layPrincipal);
    obj.rclOptsAttack:setName("rclOptsAttack");
    obj.rclOptsAttack:setAlign("client");
    obj.rclOptsAttack:setField("optsAttack");
    obj.rclOptsAttack:setTemplateForm("frmOptAtaque");

    obj.button50 = GUI.fromHandle(_obj_newObject("button"));
    obj.button50:setParent(obj.layPrincipal);
    obj.button50:setAlign("bottom");
    obj.button50:setText("Add Attack Option");
    obj.button50:setMargins({left=200, right=200});
    obj.button50:setName("button50");

    obj.dataLink121 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink121:setParent(obj.layPrincipal);
    obj.dataLink121:setField("contadoresMudaram");
    obj.dataLink121:setName("dataLink121");

    obj.flowLineBreak3 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak3:setParent(obj.fraEquipamentoLayout);
    obj.flowLineBreak3:setName("flowLineBreak3");

    obj.flwPartEquipDefense = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flwPartEquipDefense:setParent(obj.fraEquipamentoLayout);
    obj.flwPartEquipDefense:setName("flwPartEquipDefense");
    obj.flwPartEquipDefense:setHeight(500);
    obj.flwPartEquipDefense:setFrameStyle("frames/panel5/frame.xml");
    obj.flwPartEquipDefense:setMinScaledWidth(290);
    obj.flwPartEquipDefense:setStepSizes({310, 420, 640, 760, 1150});
    obj.flwPartEquipDefense:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flwPartEquipDefense:setVertAlign("leading");

    obj.labEquipDefense = GUI.fromHandle(_obj_newObject("label"));
    obj.labEquipDefense:setParent(obj.flwPartEquipDefense);
    obj.labEquipDefense:setName("labEquipDefense");
    obj.labEquipDefense:setAlign("top");
    obj.labEquipDefense:setAutoSize(true);
    obj.labEquipDefense:setText("EQUIPAMENTOS DE DEFESA");
    obj.labEquipDefense:setFontSize(12);
    obj.labEquipDefense:setVertTextAlign("center");
    obj.labEquipDefense:setHorzTextAlign("center");
    lfm_setPropAsString(obj.labEquipDefense, "fontStyle",  "bold");
    obj.labEquipDefense:setFontColor("white");

    obj.rclEquipsDefense = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclEquipsDefense:setParent(obj.flwPartEquipDefense);
    obj.rclEquipsDefense:setName("rclEquipsDefense");
    obj.rclEquipsDefense:setAlign("top");
    obj.rclEquipsDefense:setField("equipamentos.defesas");
    obj.rclEquipsDefense:setTemplateForm("frmEquipamentoItemDefesa");
    obj.rclEquipsDefense:setAutoHeight(true);
    obj.rclEquipsDefense:setMinHeight(5);
    obj.rclEquipsDefense:setMinQt(1);
    obj.rclEquipsDefense:setHitTest(false);

    obj.layEquipDefenseBottom = GUI.fromHandle(_obj_newObject("layout"));
    obj.layEquipDefenseBottom:setParent(obj.flwPartEquipDefense);
    obj.layEquipDefenseBottom:setName("layEquipDefenseBottom");
    obj.layEquipDefenseBottom:setAlign("top");
    obj.layEquipDefenseBottom:setHeight(40);

    obj.btnEquipDefenseNew = GUI.fromHandle(_obj_newObject("button"));
    obj.btnEquipDefenseNew:setParent(obj.layEquipDefenseBottom);
    obj.btnEquipDefenseNew:setName("btnEquipDefenseNew");
    obj.btnEquipDefenseNew:setAlign("left");
    obj.btnEquipDefenseNew:setText("Novo Item");
    obj.btnEquipDefenseNew:setWidth(160);
    obj.btnEquipDefenseNew:setMargins({top=4, bottom=4});

    obj.flowLineBreak4 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak4:setParent(obj.fraEquipamentoLayout);
    obj.flowLineBreak4:setName("flowLineBreak4");

    obj.flowPart73 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart73:setParent(obj.fraEquipamentoLayout);
    obj.flowPart73:setHeight(400);
    obj.flowPart73:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart73:setMinScaledWidth(290);
    obj.flowPart73:setName("flowPart73");
    obj.flowPart73:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowPart73:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart73:setVertAlign("leading");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.flowPart73);
    obj.layout67:setAlign("left");
    obj.layout67:setWidth(200);
    obj.layout67:setMargins({left=3});
    obj.layout67:setName("layout67");

    obj.frame3 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame3:setParent(obj.layout67);
    obj.frame3:setFrameStyle("frames/dinheiro/pecaCobre.xml");
    obj.frame3:setWidth(228);
    obj.frame3:setHeight(64);
    obj.frame3:setAlign("top");
    obj.frame3:setMargins({});
    obj.frame3:setName("frame3");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.frame3);
    obj.label54:setFrameRegion("RegiaoSmallTitulo");
    obj.label54:setHorzTextAlign("center");
    obj.label54:setVertTextAlign("center");
    obj.label54:setText("1");
    obj.label54:setTextTrimming("none");
    obj.label54:setWordWrap(false);
    obj.label54:setName("label54");
    obj.label54:setFontSize(12);
    obj.label54:setFontColor("#D0D0D0");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.frame3);
    obj.edit36:setFrameRegion("RegiaoValor");
    obj.edit36:setField("equipamento.dinheiro.1");
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setFontSize(19);
    obj.edit36:setName("edit36");
    obj.edit36:setFontColor("white");
    obj.edit36:setTransparent(true);

    obj.frame4 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame4:setParent(obj.layout67);
    obj.frame4:setFrameStyle("frames/dinheiro/pecaCobre.xml");
    obj.frame4:setWidth(228);
    obj.frame4:setHeight(64);
    obj.frame4:setAlign("top");
    obj.frame4:setMargins({});
    obj.frame4:setName("frame4");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.frame4);
    obj.label55:setFrameRegion("RegiaoSmallTitulo");
    obj.label55:setHorzTextAlign("center");
    obj.label55:setVertTextAlign("center");
    obj.label55:setText("2");
    obj.label55:setTextTrimming("none");
    obj.label55:setWordWrap(false);
    obj.label55:setName("label55");
    obj.label55:setFontSize(12);
    obj.label55:setFontColor("#D0D0D0");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.frame4);
    obj.edit37:setFrameRegion("RegiaoValor");
    obj.edit37:setField("equipamento.dinheiro.2");
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setFontSize(19);
    obj.edit37:setName("edit37");
    obj.edit37:setFontColor("white");
    obj.edit37:setTransparent(true);

    obj.frame5 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame5:setParent(obj.layout67);
    obj.frame5:setFrameStyle("frames/dinheiro/pecaCobre.xml");
    obj.frame5:setWidth(228);
    obj.frame5:setHeight(64);
    obj.frame5:setAlign("top");
    obj.frame5:setMargins({});
    obj.frame5:setName("frame5");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.frame5);
    obj.label56:setFrameRegion("RegiaoSmallTitulo");
    obj.label56:setHorzTextAlign("center");
    obj.label56:setVertTextAlign("center");
    obj.label56:setText("3");
    obj.label56:setTextTrimming("none");
    obj.label56:setWordWrap(false);
    obj.label56:setName("label56");
    obj.label56:setFontSize(12);
    obj.label56:setFontColor("#D0D0D0");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.frame5);
    obj.edit38:setFrameRegion("RegiaoValor");
    obj.edit38:setField("equipamento.dinheiro.3");
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setFontSize(19);
    obj.edit38:setName("edit38");
    obj.edit38:setFontColor("white");
    obj.edit38:setTransparent(true);

    obj.frame6 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame6:setParent(obj.layout67);
    obj.frame6:setFrameStyle("frames/dinheiro/pecaCobre.xml");
    obj.frame6:setWidth(228);
    obj.frame6:setHeight(64);
    obj.frame6:setAlign("top");
    obj.frame6:setMargins({});
    obj.frame6:setName("frame6");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.frame6);
    obj.label57:setFrameRegion("RegiaoSmallTitulo");
    obj.label57:setHorzTextAlign("center");
    obj.label57:setVertTextAlign("center");
    obj.label57:setText("4");
    obj.label57:setTextTrimming("none");
    obj.label57:setWordWrap(false);
    obj.label57:setName("label57");
    obj.label57:setFontSize(12);
    obj.label57:setFontColor("#D0D0D0");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.frame6);
    obj.edit39:setFrameRegion("RegiaoValor");
    obj.edit39:setField("equipamento.dinheiro.4");
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setFontSize(19);
    obj.edit39:setName("edit39");
    obj.edit39:setFontColor("white");
    obj.edit39:setTransparent(true);

    obj.frame7 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame7:setParent(obj.layout67);
    obj.frame7:setFrameStyle("frames/dinheiro/pecaCobre.xml");
    obj.frame7:setWidth(228);
    obj.frame7:setHeight(64);
    obj.frame7:setAlign("top");
    obj.frame7:setMargins({});
    obj.frame7:setName("frame7");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.frame7);
    obj.label58:setFrameRegion("RegiaoSmallTitulo");
    obj.label58:setHorzTextAlign("center");
    obj.label58:setVertTextAlign("center");
    obj.label58:setText("5");
    obj.label58:setTextTrimming("none");
    obj.label58:setWordWrap(false);
    obj.label58:setName("label58");
    obj.label58:setFontSize(12);
    obj.label58:setFontColor("#D0D0D0");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.frame7);
    obj.edit40:setFrameRegion("RegiaoValor");
    obj.edit40:setField("equipamento.dinheiro.5");
    obj.edit40:setVertTextAlign("center");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setFontSize(19);
    obj.edit40:setName("edit40");
    obj.edit40:setFontColor("white");
    obj.edit40:setTransparent(true);

    obj.checkBox3 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.layout67);
    obj.checkBox3:setAlign("top");
    obj.checkBox3:setField("equipamento.outros_melhorado");
    obj.checkBox3:setMargins({left=75, top=15});
    obj.checkBox3:setName("checkBox3");

    obj.editorFancy = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.editorFancy:setParent(obj.flowPart73);
    obj.editorFancy:setName("editorFancy");
    obj.editorFancy:setAlign("client");
    obj.editorFancy:setMargins({left=10, right=10});
    obj.editorFancy:setColor("black");
    obj.editorFancy:setVisible(false);

    obj.richEdit2 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.editorFancy);
    obj.richEdit2:setAlign("client");
    obj.richEdit2:setMargins({left=0.1, right=0.1, top=0.1, bottom=0.1});
    obj.richEdit2:setField("equipamento.outros2");
    lfm_setPropAsString(obj.richEdit2, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit2, "defaultFontColor",  "white");
    lfm_setPropAsString(obj.richEdit2, "hideSelection",  "false");
    lfm_setPropAsString(obj.richEdit2, "defaultFontSize",  "15");
    lfm_setPropAsString(obj.richEdit2, "animateImages",  "true");
    obj.richEdit2:setName("richEdit2");

    obj.editorMerda = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.editorMerda:setParent(obj.flowPart73);
    obj.editorMerda:setName("editorMerda");
    obj.editorMerda:setAlign("client");
    obj.editorMerda:setMargins({left=10, right=10});
    obj.editorMerda:setField("equipamento.outros");
    obj.editorMerda:setFontSize(15);
    obj.editorMerda:setVisible(true);

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.flowPart73);
    obj.label59:setAlign("bottom");
    obj.label59:setAutoSize(true);
    obj.label59:setText("OUTROS EQUIPAMENTOS");
    obj.label59:setFontSize(12);
    obj.label59:setVertTextAlign("center");
    obj.label59:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label59, "fontStyle",  "bold");
    obj.label59:setName("label59");
    obj.label59:setFontColor("white");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.pgcPrincipal);
    obj.tab4:setTitle("MAGIA");
    obj.tab4:setName("tab4");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.tab4);
    obj.rectangle3:setStrokeColor("white");
    obj.rectangle3:setStrokeSize(1);
    obj.rectangle3:setName("rectangle3");
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("#40000000");
    obj.rectangle3:setXradius(10);
    obj.rectangle3:setYradius(10);

    obj.rclMagiasNiveis = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagiasNiveis:setParent(obj.rectangle3);
    obj.rclMagiasNiveis:setName("rclMagiasNiveis");
    obj.rclMagiasNiveis:setField("magias.niveis");
    obj.rclMagiasNiveis:setTemplateForm("frmNivelDeMagia");
    obj.rclMagiasNiveis:setAlign("client");

    obj.dataLink122 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink122:setParent(obj.rectangle3);
    obj.dataLink122:setFields({'descansoLongo', 'descansoCurto'});
    obj.dataLink122:setName("dataLink122");

    obj.flowLayout16 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout16:setParent(obj.rectangle3);
    obj.flowLayout16:setAlign("bottom");
    obj.flowLayout16:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowLayout16:setAutoHeight(true);
    obj.flowLayout16:setHorzAlign("justify");
    obj.flowLayout16:setName("flowLayout16");
    obj.flowLayout16:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout16:setVertAlign("leading");

    obj.flowPart74 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart74:setParent(obj.flowLayout16);
    obj.flowPart74:setWidth(1);
    obj.flowPart74:setName("flowPart74");
    obj.flowPart74:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart74:setVertAlign("leading");

    obj.upperGridMagicBox1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.upperGridMagicBox1:setParent(obj.flowLayout16);
    obj.upperGridMagicBox1:setHeight(60);
    obj.upperGridMagicBox1:setMinScaledWidth(165);
    obj.upperGridMagicBox1:setMinWidth(165);
    obj.upperGridMagicBox1:setMaxWidth(160);
    obj.upperGridMagicBox1:setMaxScaledWidth(160);
    obj.upperGridMagicBox1:setAvoidScale(true);
    obj.upperGridMagicBox1:setName("upperGridMagicBox1");
    obj.upperGridMagicBox1:setVertAlign("leading");
    obj.upperGridMagicBox1:setMargins({left=5, right=5, top=5, bottom=5});


					rawset(self.upperGridMagicBox1, "_RecalcSize",
						function ()
							self.upperGridMagicBox1:setHeight(self.panupperGridMagicBox1:getHeight() + self.labupperGridMagicBox1:getHeight());
						end);
				


    obj.panupperGridMagicBox1 = GUI.fromHandle(_obj_newObject("frame"));
    obj.panupperGridMagicBox1:setParent(obj.upperGridMagicBox1);
    obj.panupperGridMagicBox1:setName("panupperGridMagicBox1");
    obj.panupperGridMagicBox1:setAlign("top");
    obj.panupperGridMagicBox1:setFrameStyle("frames/panel6/panel6.xml");
    obj.panupperGridMagicBox1:setHeight(40);

    obj.cmbupperGridMagicBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cmbupperGridMagicBox1:setParent(obj.panupperGridMagicBox1);
    obj.cmbupperGridMagicBox1:setName("cmbupperGridMagicBox1");
    obj.cmbupperGridMagicBox1:setFrameRegion("ContentRegion");
    obj.cmbupperGridMagicBox1:setField("magias.habilidadeDeConjuracao");
    obj.cmbupperGridMagicBox1:setItems({'', 'FOR??A', 'DESTREZA', 'CONSTITUI????O', 'INTELIG??NCIA', 'SABEDORIA', 'CARISMA'});
    obj.cmbupperGridMagicBox1:setValues({'', 'forca', 'destreza', 'constituicao', 'inteligencia', 'sabedoria', 'carisma'});
    obj.cmbupperGridMagicBox1:setHorzTextAlign("center");
    obj.cmbupperGridMagicBox1:setVertTextAlign("center");
    obj.cmbupperGridMagicBox1:setFontSize(13);
    obj.cmbupperGridMagicBox1:setTransparent(true);

    obj.labupperGridMagicBox1 = GUI.fromHandle(_obj_newObject("label"));
    obj.labupperGridMagicBox1:setParent(obj.upperGridMagicBox1);
    obj.labupperGridMagicBox1:setName("labupperGridMagicBox1");
    obj.labupperGridMagicBox1:setAlign("top");
    obj.labupperGridMagicBox1:setAutoSize(true);
    obj.labupperGridMagicBox1:setWordWrap(false);
    obj.labupperGridMagicBox1:setText("HABILIDADE DE CONJURA????O");
    obj.labupperGridMagicBox1:setHorzTextAlign("center");
    obj.labupperGridMagicBox1:setVertTextAlign("leading");
    obj.labupperGridMagicBox1:setFontSize(12);
    obj.labupperGridMagicBox1:setFontColor("#D0D0D0");

self.upperGridMagicBox1._RecalcSize();	


    obj.upperGridMagicBox2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.upperGridMagicBox2:setParent(obj.flowLayout16);
    obj.upperGridMagicBox2:setHeight(60);
    obj.upperGridMagicBox2:setMinScaledWidth(100);
    obj.upperGridMagicBox2:setMinWidth(100);
    obj.upperGridMagicBox2:setMaxWidth(160);
    obj.upperGridMagicBox2:setMaxScaledWidth(160);
    obj.upperGridMagicBox2:setAvoidScale(true);
    obj.upperGridMagicBox2:setName("upperGridMagicBox2");
    obj.upperGridMagicBox2:setVertAlign("leading");
    obj.upperGridMagicBox2:setMargins({left=5, right=5, top=5, bottom=5});


					rawset(self.upperGridMagicBox2, "_RecalcSize",
						function ()
							self.upperGridMagicBox2:setHeight(self.panupperGridMagicBox2:getHeight() + self.labupperGridMagicBox2:getHeight());
						end);
				


    obj.panupperGridMagicBox2 = GUI.fromHandle(_obj_newObject("frame"));
    obj.panupperGridMagicBox2:setParent(obj.upperGridMagicBox2);
    obj.panupperGridMagicBox2:setName("panupperGridMagicBox2");
    obj.panupperGridMagicBox2:setAlign("top");
    obj.panupperGridMagicBox2:setFrameStyle("frames/panel6/panel6.xml");
    obj.panupperGridMagicBox2:setHeight(40);

    obj.labupperGridMagicBox2val = GUI.fromHandle(_obj_newObject("label"));
    obj.labupperGridMagicBox2val:setParent(obj.panupperGridMagicBox2);
    obj.labupperGridMagicBox2val:setName("labupperGridMagicBox2val");
    obj.labupperGridMagicBox2val:setFrameRegion("ContentRegion");
    obj.labupperGridMagicBox2val:setField("magias.cdDaMagia");
    obj.labupperGridMagicBox2val:setFontSize(22);
    obj.labupperGridMagicBox2val:setVertTextAlign("center");
    obj.labupperGridMagicBox2val:setHorzTextAlign("center");
    obj.labupperGridMagicBox2val:setFontColor("white");

    obj.labupperGridMagicBox2 = GUI.fromHandle(_obj_newObject("label"));
    obj.labupperGridMagicBox2:setParent(obj.upperGridMagicBox2);
    obj.labupperGridMagicBox2:setName("labupperGridMagicBox2");
    obj.labupperGridMagicBox2:setAlign("top");
    obj.labupperGridMagicBox2:setAutoSize(true);
    obj.labupperGridMagicBox2:setWordWrap(false);
    obj.labupperGridMagicBox2:setText("CD DA MAGIA");
    obj.labupperGridMagicBox2:setHorzTextAlign("center");
    obj.labupperGridMagicBox2:setVertTextAlign("leading");
    obj.labupperGridMagicBox2:setFontSize(12);
    obj.labupperGridMagicBox2:setFontColor("#D0D0D0");

self.upperGridMagicBox2._RecalcSize();	


    obj.upperGridMagicBox3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.upperGridMagicBox3:setParent(obj.flowLayout16);
    obj.upperGridMagicBox3:setHeight(60);
    obj.upperGridMagicBox3:setMinScaledWidth(160);
    obj.upperGridMagicBox3:setMinWidth(160);
    obj.upperGridMagicBox3:setMaxWidth(160);
    obj.upperGridMagicBox3:setMaxScaledWidth(160);
    obj.upperGridMagicBox3:setAvoidScale(true);
    obj.upperGridMagicBox3:setName("upperGridMagicBox3");
    obj.upperGridMagicBox3:setVertAlign("leading");
    obj.upperGridMagicBox3:setMargins({left=5, right=5, top=5, bottom=5});


					rawset(self.upperGridMagicBox3, "_RecalcSize",
						function ()
							self.upperGridMagicBox3:setHeight(self.panupperGridMagicBox3:getHeight() + self.labupperGridMagicBox3:getHeight());
						end);
				


    obj.panupperGridMagicBox3 = GUI.fromHandle(_obj_newObject("frame"));
    obj.panupperGridMagicBox3:setParent(obj.upperGridMagicBox3);
    obj.panupperGridMagicBox3:setName("panupperGridMagicBox3");
    obj.panupperGridMagicBox3:setAlign("top");
    obj.panupperGridMagicBox3:setFrameStyle("frames/panel6/panel6.xml");
    obj.panupperGridMagicBox3:setHeight(40);

    obj.labupperGridMagicBox3val = GUI.fromHandle(_obj_newObject("label"));
    obj.labupperGridMagicBox3val:setParent(obj.panupperGridMagicBox3);
    obj.labupperGridMagicBox3val:setName("labupperGridMagicBox3val");
    obj.labupperGridMagicBox3val:setFrameRegion("ContentRegion");
    obj.labupperGridMagicBox3val:setField("magias.bonusAtaqueSTR");
    obj.labupperGridMagicBox3val:setFontSize(22);
    obj.labupperGridMagicBox3val:setVertTextAlign("center");
    obj.labupperGridMagicBox3val:setHorzTextAlign("center");
    obj.labupperGridMagicBox3val:setFontColor("white");

    obj.labupperGridMagicBox3 = GUI.fromHandle(_obj_newObject("label"));
    obj.labupperGridMagicBox3:setParent(obj.upperGridMagicBox3);
    obj.labupperGridMagicBox3:setName("labupperGridMagicBox3");
    obj.labupperGridMagicBox3:setAlign("top");
    obj.labupperGridMagicBox3:setAutoSize(true);
    obj.labupperGridMagicBox3:setWordWrap(false);
    obj.labupperGridMagicBox3:setText("B??NUS DE ATAQUE DE MAGIA");
    obj.labupperGridMagicBox3:setHorzTextAlign("center");
    obj.labupperGridMagicBox3:setVertTextAlign("leading");
    obj.labupperGridMagicBox3:setFontSize(12);
    obj.labupperGridMagicBox3:setFontColor("#D0D0D0");

self.upperGridMagicBox3._RecalcSize();	


    obj.flowPart75 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart75:setParent(obj.flowLayout16);
    obj.flowPart75:setWidth(1);
    obj.flowPart75:setName("flowPart75");
    obj.flowPart75:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart75:setVertAlign("leading");

  require("common.lua"); 


    obj.popupEdit = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupEdit:setParent(obj.rectangle3);
    obj.popupEdit:setName("popupEdit");
    obj.popupEdit:setVisible(false);
    obj.popupEdit:setWidth(700);
    obj.popupEdit:setHeight(600);
    lfm_setPropAsString(obj.popupEdit, "autoScopeNode",  "false");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.popupEdit);
    obj.layout68:setAlign("top");
    obj.layout68:setHeight(100);
    obj.layout68:setName("layout68");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.layout68);
    obj.image5:setAlign("left");
    obj.image5:setField("icone");
    obj.image5:setEditable(true);
    obj.image5:setName("image5");

    obj.flowLayout17 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout17:setParent(obj.layout68);
    obj.flowLayout17:setAlign("client");
    obj.flowLayout17:setName("flowLayout17");
    obj.flowLayout17:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout17:setVertAlign("leading");

    obj.fpPENome = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.fpPENome:setParent(obj.flowLayout17);
    obj.fpPENome:setName("fpPENome");
    obj.fpPENome:setMinWidth(100.0);
    obj.fpPENome:setMinScaledWidth(50.0);
    obj.fpPENome:setMaxWidth(200.0);
    obj.fpPENome:setAvoidScale(true);
    obj.fpPENome:setAdjustHeightToLine(true);
    obj.fpPENome:setPadding({left=0, right=0});
    obj.fpPENome:setVertAlign("center");
    obj.fpPENome:setMargins({left=1, right=1, top=2, bottom=2});

    obj.editPENome = GUI.fromHandle(_obj_newObject("edit"));
    obj.editPENome:setParent(obj.fpPENome);
    obj.editPENome:setName("editPENome");
    obj.editPENome:setAlign("client");
    obj.editPENome:setHitTest(true);
    obj.editPENome:setCanFocus(true);
    obj.editPENome:setCursor("handPoint");
    obj.editPENome:setField("nome");
    obj.editPENome:setHorzTextAlign("leading");
    obj.editPENome:setVertTextAlign("center");
    obj.editPENome:setTransparent(true);
    obj.editPENome:setFontColor("White");
    obj.editPENome:setHint("PENome");
    obj.editPENome:setFontSize(15);

    obj.flowLineBreak5 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak5:setParent(obj.flowLayout17);
    obj.flowLineBreak5:setName("flowLineBreak5");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.flowLayout17);
    obj.rectangle4:setWidth(10000);
    obj.rectangle4:setColor("grey");
    obj.rectangle4:setHeight(1);
    obj.rectangle4:setName("rectangle4");

    obj.flowLineBreak6 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak6:setParent(obj.flowLayout17);
    obj.flowLineBreak6:setName("flowLineBreak6");

    obj.fpPENivel = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.fpPENivel:setParent(obj.flowLayout17);
    obj.fpPENivel:setName("fpPENivel");
    obj.fpPENivel:setMinWidth(141.0);
    obj.fpPENivel:setMinScaledWidth(70.5);
    obj.fpPENivel:setMaxWidth(282.0);
    obj.fpPENivel:setAvoidScale(true);
    obj.fpPENivel:setAdjustHeightToLine(true);
    obj.fpPENivel:setPadding({left=0, right=0});
    obj.fpPENivel:setVertAlign("center");
    obj.fpPENivel:setMargins({left=1, right=1, top=2, bottom=2});

    obj.labelFieldPENivel = GUI.fromHandle(_obj_newObject("edit"));
    obj.labelFieldPENivel:setParent(obj.fpPENivel);
    obj.labelFieldPENivel:setName("labelFieldPENivel");
    obj.labelFieldPENivel:setAlign("client");
    obj.labelFieldPENivel:setHitTest(false);
    obj.labelFieldPENivel:setCanFocus(false);
    obj.labelFieldPENivel:setCursor("default");
    obj.labelFieldPENivel:setField("nivelTexto");
    obj.labelFieldPENivel:setHorzTextAlign("leading");
    obj.labelFieldPENivel:setVertTextAlign("center");
    obj.labelFieldPENivel:setReadOnly(true);
    obj.labelFieldPENivel:setTransparent(true);
    obj.labelFieldPENivel:setFontColor("White");
    obj.labelFieldPENivel:setFontSize(15);

    obj.flowPart76 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart76:setParent(obj.flowLayout17);
    obj.flowPart76:setWidth(1);
    obj.flowPart76:setAdjustHeightToLine(true);
    obj.flowPart76:setName("flowPart76");
    obj.flowPart76:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart76:setVertAlign("leading");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.flowPart76);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("gray");
    obj.rectangle5:setName("rectangle5");

    obj.fpPEEscola = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.fpPEEscola:setParent(obj.flowLayout17);
    obj.fpPEEscola:setName("fpPEEscola");
    obj.fpPEEscola:setMinWidth(147.0);
    obj.fpPEEscola:setMinScaledWidth(73.0);
    obj.fpPEEscola:setMaxWidth(295.0);
    obj.fpPEEscola:setAvoidScale(true);
    obj.fpPEEscola:setAdjustHeightToLine(true);
    obj.fpPEEscola:setPadding({left=0, right=0});
    obj.fpPEEscola:setVertAlign("center");
    obj.fpPEEscola:setMargins({left=1, right=1, top=2, bottom=2});

    obj.labelFieldPEEscola = GUI.fromHandle(_obj_newObject("edit"));
    obj.labelFieldPEEscola:setParent(obj.fpPEEscola);
    obj.labelFieldPEEscola:setName("labelFieldPEEscola");
    obj.labelFieldPEEscola:setAlign("client");
    obj.labelFieldPEEscola:setHitTest(false);
    obj.labelFieldPEEscola:setCanFocus(false);
    obj.labelFieldPEEscola:setCursor("default");
    obj.labelFieldPEEscola:setField("escolaDeMagia");
    obj.labelFieldPEEscola:setHorzTextAlign("leading");
    obj.labelFieldPEEscola:setVertTextAlign("center");
    obj.labelFieldPEEscola:setReadOnly(true);
    obj.labelFieldPEEscola:setTransparent(true);
    obj.labelFieldPEEscola:setFontColor("White");
    obj.labelFieldPEEscola:setFontSize(15);

    obj.flowPart77 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart77:setParent(obj.flowLayout17);
    obj.flowPart77:setWidth(1);
    obj.flowPart77:setAdjustHeightToLine(true);
    obj.flowPart77:setName("flowPart77");
    obj.flowPart77:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart77:setVertAlign("leading");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.flowPart77);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("gray");
    obj.rectangle6:setName("rectangle6");

    obj.fpPETempo = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.fpPETempo:setParent(obj.flowLayout17);
    obj.fpPETempo:setName("fpPETempo");
    obj.fpPETempo:setMinWidth(147.0);
    obj.fpPETempo:setMinScaledWidth(73.0);
    obj.fpPETempo:setMaxWidth(295.0);
    obj.fpPETempo:setAvoidScale(true);
    obj.fpPETempo:setAdjustHeightToLine(true);
    obj.fpPETempo:setPadding({left=0, right=0});
    obj.fpPETempo:setVertAlign("center");
    obj.fpPETempo:setMargins({left=1, right=1, top=2, bottom=2});

    obj.labelFieldPETempo = GUI.fromHandle(_obj_newObject("edit"));
    obj.labelFieldPETempo:setParent(obj.fpPETempo);
    obj.labelFieldPETempo:setName("labelFieldPETempo");
    obj.labelFieldPETempo:setAlign("client");
    obj.labelFieldPETempo:setHitTest(false);
    obj.labelFieldPETempo:setCanFocus(false);
    obj.labelFieldPETempo:setCursor("default");
    obj.labelFieldPETempo:setField("tempoConjuracao");
    obj.labelFieldPETempo:setHorzTextAlign("leading");
    obj.labelFieldPETempo:setVertTextAlign("center");
    obj.labelFieldPETempo:setReadOnly(true);
    obj.labelFieldPETempo:setTransparent(true);
    obj.labelFieldPETempo:setFontColor("White");
    obj.labelFieldPETempo:setFontSize(15);

    obj.tcPopupEdit = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tcPopupEdit:setParent(obj.popupEdit);
    obj.tcPopupEdit:setAlign("client");
    obj.tcPopupEdit:setName("tcPopupEdit");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tcPopupEdit);
    obj.tab5:setTitle("Descri????o");
    obj.tab5:setName("tab5");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.tab5);
    obj.layout69:setAlign("client");
    obj.layout69:setMargins({top=5, bottom=5, left=5, right=5});
    obj.layout69:setName("layout69");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout69);
    obj.label60:setText("Mec??nicas / Flavour");
    obj.label60:setName("label60");
    obj.label60:setAlign("top");
    obj.label60:setFontSize(16.0);
    obj.label60:setHeight(30);
    lfm_setPropAsString(obj.label60, "fontStyle",  "bold");
    obj.label60:setFontColor("white");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout69);
    obj.textEditor6:setAlign("client");
    obj.textEditor6:setField("descricao");
    obj.textEditor6:setName("textEditor6");

    obj.tab6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tcPopupEdit);
    obj.tab6:setTitle("Detalhes");
    obj.tab6:setName("tab6");

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.tab6);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setPadding({top=5, bottom=5, left=5, right=5});
    obj.scrollBox4:setName("scrollBox4");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.scrollBox4);
    obj.label61:setText("Detalhes da Magia");
    obj.label61:setName("label61");
    obj.label61:setAlign("top");
    obj.label61:setFontSize(16.0);
    obj.label61:setHeight(30);
    lfm_setPropAsString(obj.label61, "fontStyle",  "bold");
    obj.label61:setFontColor("white");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.scrollBox4);
    obj.rectangle7:setHeight(30);
    obj.rectangle7:setName("rectangle7");
    obj.rectangle7:setAlign("top");
    obj.rectangle7:setColor("DimGray");
    obj.rectangle7:setMargins({top=2, bottom=2});
    obj.rectangle7:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.rectangle7);
    obj.label62:setAlign("left");
    lfm_setPropAsString(obj.label62, "fontStyle",  "bold");
    obj.label62:setText("N??vel da Magia");
    obj.label62:setName("label62");
    obj.label62:setFontColor("white");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.rectangle7);
    obj.comboBox2:setAlign("right");
    obj.comboBox2:setWidth(115);
    obj.comboBox2:setField("nivel");
    obj.comboBox2:setItems({'Truque', '1?? n??vel', '2?? n??vel', '3?? n??vel', '4?? n??vel', '5?? n??vel', '6?? n??vel', '7?? n??vel', '8?? n??vel', '9?? n??vel', 'Runas'});
    obj.comboBox2:setValues({'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'});
    obj.comboBox2:setName("comboBox2");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.scrollBox4);
    obj.rectangle8:setHeight(30);
    obj.rectangle8:setName("rectangle8");
    obj.rectangle8:setAlign("top");
    obj.rectangle8:setColor("DimGray");
    obj.rectangle8:setMargins({top=2, bottom=2});
    obj.rectangle8:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.rectangle8);
    obj.label63:setAlign("left");
    lfm_setPropAsString(obj.label63, "fontStyle",  "bold");
    obj.label63:setText("Escola de Magia");
    obj.label63:setName("label63");
    obj.label63:setFontColor("white");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.rectangle8);
    obj.comboBox3:setAlign("right");
    obj.comboBox3:setWidth(115);
    obj.comboBox3:setField("escolaDeMagia");
    obj.comboBox3:setItems({'', 'Abjura????o', 'Conjura????o', 'Adivinha????o', 'Encantamento', 'Evoca????o', 'Ilus??o', 'Necrom??ncia', 'Transmuta????o'});
    obj.comboBox3:setName("comboBox3");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.scrollBox4);
    obj.rectangle9:setHeight(90);
    obj.rectangle9:setName("rectangle9");
    obj.rectangle9:setAlign("top");
    obj.rectangle9:setColor("DimGray");
    obj.rectangle9:setMargins({top=2, bottom=2});
    obj.rectangle9:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.rectangle9);
    obj.label64:setAlign("top");
    lfm_setPropAsString(obj.label64, "fontStyle",  "bold");
    obj.label64:setText("Componentes da Magia");
    obj.label64:setHeight(24);
    obj.label64:setName("label64");
    obj.label64:setFontColor("white");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.rectangle9);
    obj.layout70:setAlign("top");
    obj.layout70:setHeight(30);
    obj.layout70:setName("layout70");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.layout70);
    obj.layout71:setAlign("left");
    obj.layout71:setWidth(34);
    obj.layout71:setName("layout71");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout71);
    obj.label65:setAlign("client");
    obj.label65:setHorzTextAlign("trailing");
    obj.label65:setText("V");
    obj.label65:setName("label65");
    obj.label65:setFontColor("white");

    obj.checkBox4 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.layout71);
    obj.checkBox4:setAlign("right");
    obj.checkBox4:setWidth(20);
    obj.checkBox4:setField("componentesV");
    obj.checkBox4:setName("checkBox4");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.layout70);
    obj.layout72:setAlign("left");
    obj.layout72:setWidth(30);
    obj.layout72:setName("layout72");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout72);
    obj.label66:setAlign("client");
    obj.label66:setHorzTextAlign("trailing");
    obj.label66:setText("S");
    obj.label66:setName("label66");
    obj.label66:setFontColor("white");

    obj.checkBox5 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.layout72);
    obj.checkBox5:setAlign("right");
    obj.checkBox5:setWidth(20);
    obj.checkBox5:setField("componentesS");
    obj.checkBox5:setName("checkBox5");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.layout70);
    obj.layout73:setAlign("left");
    obj.layout73:setWidth(32);
    obj.layout73:setName("layout73");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout73);
    obj.label67:setAlign("client");
    obj.label67:setHorzTextAlign("trailing");
    obj.label67:setText("M");
    obj.label67:setName("label67");
    obj.label67:setFontColor("white");

    obj.checkBox6 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.layout73);
    obj.checkBox6:setAlign("right");
    obj.checkBox6:setWidth(20);
    obj.checkBox6:setField("componentesM");
    obj.checkBox6:setName("checkBox6");

    obj.popupEditCompM = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditCompM:setParent(obj.layout70);
    obj.popupEditCompM:setName("popupEditCompM");
    obj.popupEditCompM:setAlign("client");
    obj.popupEditCompM:setField("componentesMaterial");
    obj.popupEditCompM:setEnabled(false);
    obj.popupEditCompM:setFontSize(15);
    obj.popupEditCompM:setFontColor("white");

    obj.dataLink123 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink123:setParent(obj.layout70);
    obj.dataLink123:setField("componentesM");
    obj.dataLink123:setName("dataLink123");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.rectangle9);
    obj.layout74:setAlign("top");
    obj.layout74:setHeight(30);
    obj.layout74:setName("layout74");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.layout74);
    obj.layout75:setAlign("left");
    obj.layout75:setWidth(100);
    obj.layout75:setName("layout75");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.layout75);
    obj.label68:setAlign("client");
    obj.label68:setHorzTextAlign("trailing");
    obj.label68:setText("Concentra????o");
    obj.label68:setName("label68");
    obj.label68:setFontColor("white");

    obj.checkBox7 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.layout75);
    obj.checkBox7:setAlign("right");
    obj.checkBox7:setWidth(20);
    obj.checkBox7:setField("componentesConcentracao");
    obj.checkBox7:setName("checkBox7");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.layout74);
    obj.layout76:setAlign("left");
    obj.layout76:setWidth(55);
    obj.layout76:setName("layout76");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout76);
    obj.label69:setAlign("client");
    obj.label69:setHorzTextAlign("trailing");
    obj.label69:setText("Ritual");
    obj.label69:setName("label69");
    obj.label69:setFontColor("white");

    obj.checkBox8 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.layout76);
    obj.checkBox8:setAlign("right");
    obj.checkBox8:setWidth(20);
    obj.checkBox8:setField("componentesRitual");
    obj.checkBox8:setName("checkBox8");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.scrollBox4);
    obj.rectangle10:setHeight(30);
    obj.rectangle10:setName("rectangle10");
    obj.rectangle10:setAlign("top");
    obj.rectangle10:setColor("DimGray");
    obj.rectangle10:setMargins({top=2, bottom=2});
    obj.rectangle10:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.rectangle10);
    obj.label70:setAlign("left");
    lfm_setPropAsString(obj.label70, "fontStyle",  "bold");
    obj.label70:setText("Tipo de Magia");
    obj.label70:setName("label70");
    obj.label70:setFontColor("white");

    obj.flowLayout18 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout18:setParent(obj.rectangle10);
    obj.flowLayout18:setAlign("client");
    obj.flowLayout18:setHorzAlign("trailing");
    obj.flowLayout18:setName("flowLayout18");
    obj.flowLayout18:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout18:setVertAlign("leading");

    obj.layPrepValor = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.layPrepValor:setParent(obj.flowLayout18);
    obj.layPrepValor:setName("layPrepValor");
    obj.layPrepValor:setWidth(100);
    obj.layPrepValor:setMinScaledWidth(50);
    obj.layPrepValor:setHeight(24);
    obj.layPrepValor:setMargins({left=1, right=1, top=2, bottom=2});
    obj.layPrepValor:setVertAlign("leading");

    obj.layPrepValorLab = GUI.fromHandle(_obj_newObject("label"));
    obj.layPrepValorLab:setParent(obj.layPrepValor);
    obj.layPrepValorLab:setName("layPrepValorLab");
    obj.layPrepValorLab:setAlign("client");
    obj.layPrepValorLab:setText("Preparado");
    obj.layPrepValorLab:setHorzTextAlign("trailing");
    obj.layPrepValorLab:setFontColor("white");

    obj.layPrepValorChb = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.layPrepValorChb:setParent(obj.layPrepValor);
    obj.layPrepValorChb:setName("layPrepValorChb");
    obj.layPrepValorChb:setAlign("right");
    obj.layPrepValorChb:setWidth(20);
    obj.layPrepValorChb:setField("preparadoValor");

    obj.flowPart78 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart78:setParent(obj.flowLayout18);
    obj.flowPart78:setWidth(140);
    obj.flowPart78:setMinScaledWidth(70);
    obj.flowPart78:setHeight(24);
    obj.flowPart78:setName("flowPart78");
    obj.flowPart78:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart78:setVertAlign("leading");

    obj.comboBox4 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.flowPart78);
    obj.comboBox4:setAlign("client");
    obj.comboBox4:setField("preparadoTipo");
    obj.comboBox4:setItems({'Preparada', 'Sempre Preparada', 'Conhecida', 'A vontade', 'Inata'});
    obj.comboBox4:setName("comboBox4");

    obj.dataLink124 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink124:setParent(obj.rectangle10);
    obj.dataLink124:setField("preparadoTipo");
    obj.dataLink124:setName("dataLink124");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.scrollBox4);
    obj.label71:setText("Detalhes de Conjura????o");
    obj.label71:setName("label71");
    obj.label71:setAlign("top");
    obj.label71:setFontSize(16.0);
    obj.label71:setHeight(30);
    lfm_setPropAsString(obj.label71, "fontStyle",  "bold");
    obj.label71:setFontColor("white");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.scrollBox4);
    obj.rectangle11:setHeight(30);
    obj.rectangle11:setName("rectangle11");
    obj.rectangle11:setAlign("top");
    obj.rectangle11:setColor("DimGray");
    obj.rectangle11:setMargins({top=2, bottom=2});
    obj.rectangle11:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);

    obj.flowLayout19 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout19:setParent(obj.rectangle11);
    obj.flowLayout19:setAlign("client");
    obj.flowLayout19:setName("flowLayout19");
    obj.flowLayout19:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout19:setVertAlign("leading");

    obj.flowPart79 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart79:setParent(obj.flowLayout19);
    obj.flowPart79:setMinWidth(173);
    obj.flowPart79:setMaxWidth(865);
    obj.flowPart79:setHeight(24);
    obj.flowPart79:setName("flowPart79");
    obj.flowPart79:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart79:setVertAlign("leading");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.flowPart79);
    obj.label72:setAlign("client");
    lfm_setPropAsString(obj.label72, "fontStyle",  "bold");
    obj.label72:setText("Tempo de Conjura????o");
    obj.label72:setName("label72");
    obj.label72:setFontColor("white");

    obj.flowPart80 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart80:setParent(obj.flowLayout19);
    obj.flowPart80:setMinWidth(3);
    obj.flowPart80:setHeight(24);
    obj.flowPart80:setName("flowPart80");
    obj.flowPart80:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart80:setVertAlign("leading");

    obj.flowPart81 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart81:setParent(obj.flowLayout19);
    obj.flowPart81:setMinWidth(97);
    obj.flowPart81:setMaxWidth(485);
    obj.flowPart81:setHeight(24);
    obj.flowPart81:setName("flowPart81");
    obj.flowPart81:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart81:setVertAlign("leading");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.flowPart81);
    obj.edit41:setAlign("client");
    obj.edit41:setField("tempoConjuracaoValor");
    obj.edit41:setHorzTextAlign("trailing");
    obj.edit41:setType("number");
    obj.edit41:setName("edit41");
    obj.edit41:setFontSize(15);
    obj.edit41:setFontColor("white");

    obj.flowPart82 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart82:setParent(obj.flowLayout19);
    obj.flowPart82:setMinWidth(3);
    obj.flowPart82:setHeight(24);
    obj.flowPart82:setName("flowPart82");
    obj.flowPart82:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart82:setVertAlign("leading");

    obj.flowPart83 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart83:setParent(obj.flowLayout19);
    obj.flowPart83:setMinWidth(158);
    obj.flowPart83:setMaxWidth(790);
    obj.flowPart83:setHeight(24);
    obj.flowPart83:setName("flowPart83");
    obj.flowPart83:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart83:setVertAlign("leading");

    obj.comboBox5 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.flowPart83);
    obj.comboBox5:setAlign("client");
    obj.comboBox5:setField("tempoConjuracaoUnidade");
    obj.comboBox5:setItems({'', 'A????o', 'A????o B??nus', 'A????o de Tripula????o', 'Dias', 'Horas', 'A????o Lend??ria', 'Minutos', 'Nada', 'Rea????o', 'Especial', 'A????o de Lar'});
    obj.comboBox5:setName("comboBox5");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.scrollBox4);
    obj.rectangle12:setHeight(30);
    obj.rectangle12:setName("rectangle12");
    obj.rectangle12:setAlign("top");
    obj.rectangle12:setColor("DimGray");
    obj.rectangle12:setMargins({top=2, bottom=2});
    obj.rectangle12:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);

    obj.flowLayout20 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout20:setParent(obj.rectangle12);
    obj.flowLayout20:setAlign("client");
    obj.flowLayout20:setName("flowLayout20");
    obj.flowLayout20:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout20:setVertAlign("leading");

    obj.flowPart84 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart84:setParent(obj.flowLayout20);
    obj.flowPart84:setMinWidth(173);
    obj.flowPart84:setMaxWidth(865);
    obj.flowPart84:setHeight(24);
    obj.flowPart84:setName("flowPart84");
    obj.flowPart84:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart84:setVertAlign("leading");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.flowPart84);
    obj.label73:setAlign("client");
    lfm_setPropAsString(obj.label73, "fontStyle",  "bold");
    obj.label73:setText("Condi????o de Ativa????o (Rea????o)");
    obj.label73:setName("label73");
    obj.label73:setFontColor("white");

    obj.flowPart85 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart85:setParent(obj.flowLayout20);
    obj.flowPart85:setMinWidth(3);
    obj.flowPart85:setHeight(24);
    obj.flowPart85:setName("flowPart85");
    obj.flowPart85:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart85:setVertAlign("leading");

    obj.flowPart86 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart86:setParent(obj.flowLayout20);
    obj.flowPart86:setMinWidth(258);
    obj.flowPart86:setMaxWidth(1290);
    obj.flowPart86:setHeight(24);
    obj.flowPart86:setName("flowPart86");
    obj.flowPart86:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart86:setVertAlign("leading");

    obj.popupEditCondAtiv = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditCondAtiv:setParent(obj.flowPart86);
    obj.popupEditCondAtiv:setName("popupEditCondAtiv");
    obj.popupEditCondAtiv:setAlign("client");
    obj.popupEditCondAtiv:setField("condicaoAtivacao");
    obj.popupEditCondAtiv:setFontSize(15);
    obj.popupEditCondAtiv:setFontColor("white");

    obj.dataLink125 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink125:setParent(obj.flowLayout20);
    obj.dataLink125:setField("tempoConjuracaoUnidade");
    obj.dataLink125:setName("dataLink125");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.scrollBox4);
    obj.rectangle13:setHeight(30);
    obj.rectangle13:setName("rectangle13");
    obj.rectangle13:setAlign("top");
    obj.rectangle13:setColor("DimGray");
    obj.rectangle13:setMargins({top=2, bottom=2});
    obj.rectangle13:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle13:setXradius(2);
    obj.rectangle13:setYradius(2);

    obj.flowLayout21 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout21:setParent(obj.rectangle13);
    obj.flowLayout21:setAlign("client");
    obj.flowLayout21:setName("flowLayout21");
    obj.flowLayout21:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout21:setVertAlign("leading");

    obj.flowPart87 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart87:setParent(obj.flowLayout21);
    obj.flowPart87:setMinWidth(173);
    obj.flowPart87:setMaxWidth(865);
    obj.flowPart87:setHeight(24);
    obj.flowPart87:setName("flowPart87");
    obj.flowPart87:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart87:setVertAlign("leading");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.flowPart87);
    obj.label74:setAlign("client");
    lfm_setPropAsString(obj.label74, "fontStyle",  "bold");
    obj.label74:setText("Alvo");
    obj.label74:setName("label74");
    obj.label74:setFontColor("white");

    obj.flowPart88 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart88:setParent(obj.flowLayout21);
    obj.flowPart88:setMinWidth(3);
    obj.flowPart88:setHeight(24);
    obj.flowPart88:setName("flowPart88");
    obj.flowPart88:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart88:setVertAlign("leading");

    obj.flowPart89 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart89:setParent(obj.flowLayout21);
    obj.flowPart89:setMinWidth(69);
    obj.flowPart89:setMaxWidth(345);
    obj.flowPart89:setHeight(24);
    obj.flowPart89:setName("flowPart89");
    obj.flowPart89:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart89:setVertAlign("leading");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.flowPart89);
    obj.edit42:setAlign("client");
    obj.edit42:setField("alvoValor");
    obj.edit42:setHorzTextAlign("trailing");
    obj.edit42:setType("number");
    obj.edit42:setName("edit42");
    obj.edit42:setFontSize(15);
    obj.edit42:setFontColor("white");

    obj.flowPart90 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart90:setParent(obj.flowLayout21);
    obj.flowPart90:setMinWidth(3);
    obj.flowPart90:setHeight(24);
    obj.flowPart90:setName("flowPart90");
    obj.flowPart90:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart90:setVertAlign("leading");

    obj.flowPart91 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart91:setParent(obj.flowLayout21);
    obj.flowPart91:setMinWidth(92);
    obj.flowPart91:setMaxWidth(460);
    obj.flowPart91:setHeight(24);
    obj.flowPart91:setName("flowPart91");
    obj.flowPart91:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart91:setVertAlign("leading");

    obj.comboBox6 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.flowPart91);
    obj.comboBox6:setAlign("client");
    obj.comboBox6:setField("alvoUnidade");
    obj.comboBox6:setItems({'', 'Nenhum', 'Pessoal', 'Toque', 'Especial', 'Qualquer', 'P??s', 'Milhas', 'Metros', 'Kil??metros'});
    obj.comboBox6:setName("comboBox6");

    obj.flowPart92 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart92:setParent(obj.flowLayout21);
    obj.flowPart92:setMinWidth(3);
    obj.flowPart92:setHeight(24);
    obj.flowPart92:setName("flowPart92");
    obj.flowPart92:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart92:setVertAlign("leading");

    obj.flowPart93 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart93:setParent(obj.flowLayout21);
    obj.flowPart93:setMinWidth(91);
    obj.flowPart93:setMaxWidth(455);
    obj.flowPart93:setHeight(24);
    obj.flowPart93:setName("flowPart93");
    obj.flowPart93:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart93:setVertAlign("leading");

    obj.comboBox7 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.flowPart93);
    obj.comboBox7:setAlign("client");
    obj.comboBox7:setField("alvoTipo");
    obj.comboBox7:setItems({'', 'Aliado', 'Cone', 'Criatura', 'Cubo', 'Cilindro', 'Inimigo', 'Linha', 'Nenhum', 'Objeto', 'Raio', 'Pessoal', 'Espa??o', 'Esfera', 'Quadrado', 'Parede'});
    obj.comboBox7:setName("comboBox7");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.scrollBox4);
    obj.rectangle14:setHeight(30);
    obj.rectangle14:setName("rectangle14");
    obj.rectangle14:setAlign("top");
    obj.rectangle14:setColor("DimGray");
    obj.rectangle14:setMargins({top=2, bottom=2});
    obj.rectangle14:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle14:setXradius(2);
    obj.rectangle14:setYradius(2);

    obj.flowLayout22 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout22:setParent(obj.rectangle14);
    obj.flowLayout22:setAlign("client");
    obj.flowLayout22:setName("flowLayout22");
    obj.flowLayout22:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout22:setVertAlign("leading");

    obj.flowPart94 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart94:setParent(obj.flowLayout22);
    obj.flowPart94:setMinWidth(173);
    obj.flowPart94:setMaxWidth(865);
    obj.flowPart94:setHeight(24);
    obj.flowPart94:setName("flowPart94");
    obj.flowPart94:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart94:setVertAlign("leading");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.flowPart94);
    obj.label75:setAlign("client");
    lfm_setPropAsString(obj.label75, "fontStyle",  "bold");
    obj.label75:setText("Alcance");
    obj.label75:setName("label75");
    obj.label75:setFontColor("white");

    obj.flowPart95 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart95:setParent(obj.flowLayout22);
    obj.flowPart95:setMinWidth(3);
    obj.flowPart95:setHeight(24);
    obj.flowPart95:setName("flowPart95");
    obj.flowPart95:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart95:setVertAlign("leading");

    obj.flowPart96 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart96:setParent(obj.flowLayout22);
    obj.flowPart96:setMinWidth(68);
    obj.flowPart96:setMaxWidth(340);
    obj.flowPart96:setHeight(24);
    obj.flowPart96:setName("flowPart96");
    obj.flowPart96:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart96:setVertAlign("leading");

    obj.popupEditAlcanceCurto = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditAlcanceCurto:setParent(obj.flowPart96);
    obj.popupEditAlcanceCurto:setName("popupEditAlcanceCurto");
    obj.popupEditAlcanceCurto:setAlign("client");
    obj.popupEditAlcanceCurto:setField("alcanceCurto");
    obj.popupEditAlcanceCurto:setHorzTextAlign("trailing");
    obj.popupEditAlcanceCurto:setType("number");
    obj.popupEditAlcanceCurto:setFontSize(15);
    obj.popupEditAlcanceCurto:setFontColor("white");

    obj.flowPart97 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart97:setParent(obj.flowLayout22);
    obj.flowPart97:setMinWidth(13);
    obj.flowPart97:setMaxWidth(65);
    obj.flowPart97:setHeight(24);
    obj.flowPart97:setName("flowPart97");
    obj.flowPart97:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart97:setVertAlign("leading");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.flowPart97);
    obj.label76:setAlign("client");
    obj.label76:setText("/");
    obj.label76:setHorzTextAlign("center");
    obj.label76:setName("label76");
    obj.label76:setFontColor("white");

    obj.flowPart98 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart98:setParent(obj.flowLayout22);
    obj.flowPart98:setMinWidth(68);
    obj.flowPart98:setMaxWidth(340);
    obj.flowPart98:setHeight(24);
    obj.flowPart98:setName("flowPart98");
    obj.flowPart98:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart98:setVertAlign("leading");

    obj.popupEditAlcanceLongo = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditAlcanceLongo:setParent(obj.flowPart98);
    obj.popupEditAlcanceLongo:setName("popupEditAlcanceLongo");
    obj.popupEditAlcanceLongo:setAlign("client");
    obj.popupEditAlcanceLongo:setField("alcanceLongo");
    obj.popupEditAlcanceLongo:setHorzTextAlign("leading");
    obj.popupEditAlcanceLongo:setType("number");
    obj.popupEditAlcanceLongo:setFontSize(15);
    obj.popupEditAlcanceLongo:setFontColor("white");

    obj.flowPart99 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart99:setParent(obj.flowLayout22);
    obj.flowPart99:setMinWidth(3);
    obj.flowPart99:setHeight(24);
    obj.flowPart99:setName("flowPart99");
    obj.flowPart99:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart99:setVertAlign("leading");

    obj.flowPart100 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart100:setParent(obj.flowLayout22);
    obj.flowPart100:setMinWidth(106);
    obj.flowPart100:setMaxWidth(530);
    obj.flowPart100:setHeight(24);
    obj.flowPart100:setName("flowPart100");
    obj.flowPart100:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart100:setVertAlign("leading");

    obj.comboBox8 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.flowPart100);
    obj.comboBox8:setAlign("client");
    obj.comboBox8:setField("alcanceUnidade");
    obj.comboBox8:setItems({'', 'Nenhum', 'Pessoal', 'Toque', 'Especial', 'Qualquer', 'P??s', 'Milhas', 'Metros', 'Kil??metros'});
    obj.comboBox8:setName("comboBox8");

    obj.dataLink126 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink126:setParent(obj.flowLayout22);
    obj.dataLink126:setField("alcanceUnidade");
    obj.dataLink126:setName("dataLink126");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.scrollBox4);
    obj.rectangle15:setHeight(30);
    obj.rectangle15:setName("rectangle15");
    obj.rectangle15:setAlign("top");
    obj.rectangle15:setColor("DimGray");
    obj.rectangle15:setMargins({top=2, bottom=2});
    obj.rectangle15:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle15:setXradius(2);
    obj.rectangle15:setYradius(2);

    obj.flowLayout23 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout23:setParent(obj.rectangle15);
    obj.flowLayout23:setAlign("client");
    obj.flowLayout23:setName("flowLayout23");
    obj.flowLayout23:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout23:setVertAlign("leading");

    obj.flowPart101 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart101:setParent(obj.flowLayout23);
    obj.flowPart101:setMinWidth(173);
    obj.flowPart101:setMaxWidth(865);
    obj.flowPart101:setHeight(24);
    obj.flowPart101:setName("flowPart101");
    obj.flowPart101:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart101:setVertAlign("leading");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.flowPart101);
    obj.label77:setAlign("client");
    lfm_setPropAsString(obj.label77, "fontStyle",  "bold");
    obj.label77:setText("Dura????o");
    obj.label77:setName("label77");
    obj.label77:setFontColor("white");

    obj.flowPart102 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart102:setParent(obj.flowLayout23);
    obj.flowPart102:setMinWidth(3);
    obj.flowPart102:setHeight(24);
    obj.flowPart102:setName("flowPart102");
    obj.flowPart102:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart102:setVertAlign("leading");

    obj.flowPart103 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart103:setParent(obj.flowLayout23);
    obj.flowPart103:setMinWidth(97);
    obj.flowPart103:setMaxWidth(485);
    obj.flowPart103:setHeight(24);
    obj.flowPart103:setName("flowPart103");
    obj.flowPart103:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart103:setVertAlign("leading");

    obj.popupEditDuracaoUnidade = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditDuracaoUnidade:setParent(obj.flowPart103);
    obj.popupEditDuracaoUnidade:setName("popupEditDuracaoUnidade");
    obj.popupEditDuracaoUnidade:setAlign("client");
    obj.popupEditDuracaoUnidade:setField("duracaoValor");
    obj.popupEditDuracaoUnidade:setHorzTextAlign("trailing");
    obj.popupEditDuracaoUnidade:setType("number");
    obj.popupEditDuracaoUnidade:setFontSize(15);
    obj.popupEditDuracaoUnidade:setFontColor("white");

    obj.flowPart104 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart104:setParent(obj.flowLayout23);
    obj.flowPart104:setMinWidth(3);
    obj.flowPart104:setHeight(24);
    obj.flowPart104:setName("flowPart104");
    obj.flowPart104:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart104:setVertAlign("leading");

    obj.flowPart105 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart105:setParent(obj.flowLayout23);
    obj.flowPart105:setMinWidth(158);
    obj.flowPart105:setMaxWidth(790);
    obj.flowPart105:setHeight(24);
    obj.flowPart105:setName("flowPart105");
    obj.flowPart105:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart105:setVertAlign("leading");

    obj.comboBox9 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.flowPart105);
    obj.comboBox9:setAlign("client");
    obj.comboBox9:setField("duracaoUnidade");
    obj.comboBox9:setItems({'', 'Dias', 'Horas', 'Instant??nea', 'Minutos', 'Meses', 'Permanente', 'Rodadas', 'Especial', 'Turnos', 'Anos'});
    obj.comboBox9:setName("comboBox9");

    obj.dataLink127 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink127:setParent(obj.flowLayout23);
    obj.dataLink127:setField("duracaoUnidade");
    obj.dataLink127:setName("dataLink127");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.scrollBox4);
    obj.rectangle16:setHeight(30);
    obj.rectangle16:setName("rectangle16");
    obj.rectangle16:setAlign("top");
    obj.rectangle16:setColor("DimGray");
    obj.rectangle16:setMargins({top=2, bottom=2});
    obj.rectangle16:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle16:setXradius(2);
    obj.rectangle16:setYradius(2);

    obj.flowLayout24 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout24:setParent(obj.rectangle16);
    obj.flowLayout24:setAlign("client");
    obj.flowLayout24:setName("flowLayout24");
    obj.flowLayout24:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout24:setVertAlign("leading");

    obj.flowPart106 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart106:setParent(obj.flowLayout24);
    obj.flowPart106:setMinWidth(173);
    obj.flowPart106:setMaxWidth(865);
    obj.flowPart106:setHeight(24);
    obj.flowPart106:setName("flowPart106");
    obj.flowPart106:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart106:setVertAlign("leading");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.flowPart106);
    obj.label78:setAlign("client");
    lfm_setPropAsString(obj.label78, "fontStyle",  "bold");
    obj.label78:setText("Recurso Necess??rio");
    obj.label78:setName("label78");
    obj.label78:setFontColor("white");

    obj.flowPart107 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart107:setParent(obj.flowLayout24);
    obj.flowPart107:setMinWidth(3);
    obj.flowPart107:setHeight(24);
    obj.flowPart107:setName("flowPart107");
    obj.flowPart107:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart107:setVertAlign("leading");

    obj.flowPart108 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart108:setParent(obj.flowLayout24);
    obj.flowPart108:setMinWidth(44);
    obj.flowPart108:setMaxWidth(220);
    obj.flowPart108:setHeight(24);
    obj.flowPart108:setName("flowPart108");
    obj.flowPart108:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart108:setVertAlign("leading");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.flowPart108);
    obj.edit43:setAlign("client");
    obj.edit43:setField("contadorUsos");
    obj.edit43:setHorzTextAlign("trailing");
    obj.edit43:setType("number");
    obj.edit43:setName("edit43");
    obj.edit43:setFontSize(15);
    obj.edit43:setFontColor("white");

    obj.flowPart109 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart109:setParent(obj.flowLayout24);
    obj.flowPart109:setMinWidth(23);
    obj.flowPart109:setMaxWidth(115);
    obj.flowPart109:setHeight(24);
    obj.flowPart109:setName("flowPart109");
    obj.flowPart109:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart109:setVertAlign("leading");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.flowPart109);
    obj.label79:setAlign("client");
    obj.label79:setText("de");
    obj.label79:setHorzTextAlign("center");
    obj.label79:setName("label79");
    obj.label79:setFontColor("white");

    obj.flowPart110 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart110:setParent(obj.flowLayout24);
    obj.flowPart110:setMinWidth(44);
    obj.flowPart110:setMaxWidth(220);
    obj.flowPart110:setHeight(24);
    obj.flowPart110:setName("flowPart110");
    obj.flowPart110:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart110:setVertAlign("leading");

    obj.popupEditContadorUsosTotal = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditContadorUsosTotal:setParent(obj.flowPart110);
    obj.popupEditContadorUsosTotal:setName("popupEditContadorUsosTotal");
    obj.popupEditContadorUsosTotal:setAlign("client");
    obj.popupEditContadorUsosTotal:setField("contadorUsosTotal");
    obj.popupEditContadorUsosTotal:setEnabled(false);
    obj.popupEditContadorUsosTotal:setFontSize(15);
    obj.popupEditContadorUsosTotal:setFontColor("white");

    obj.flowPart111 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart111:setParent(obj.flowLayout24);
    obj.flowPart111:setMinWidth(3);
    obj.flowPart111:setHeight(24);
    obj.flowPart111:setName("flowPart111");
    obj.flowPart111:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart111:setVertAlign("leading");

    obj.flowPart112 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart112:setParent(obj.flowLayout24);
    obj.flowPart112:setMinWidth(146);
    obj.flowPart112:setMaxWidth(730);
    obj.flowPart112:setHeight(24);
    obj.flowPart112:setName("flowPart112");
    obj.flowPart112:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart112:setVertAlign("leading");

    obj.popupEditContadorNome = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.popupEditContadorNome:setParent(obj.flowPart112);
    obj.popupEditContadorNome:setName("popupEditContadorNome");
    obj.popupEditContadorNome:setAlign("client");
    obj.popupEditContadorNome:setField("contadorNome");

    obj.dataLink128 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink128:setParent(obj.flowLayout24);
    obj.dataLink128:setField("contadorNome");
    obj.dataLink128:setName("dataLink128");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.scrollBox4);
    obj.label80:setText("Efeitos da Magia");
    obj.label80:setName("label80");
    obj.label80:setAlign("top");
    obj.label80:setFontSize(16.0);
    obj.label80:setHeight(30);
    lfm_setPropAsString(obj.label80, "fontStyle",  "bold");
    obj.label80:setFontColor("white");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.scrollBox4);
    obj.rectangle17:setHeight(30);
    obj.rectangle17:setName("rectangle17");
    obj.rectangle17:setAlign("top");
    obj.rectangle17:setColor("DimGray");
    obj.rectangle17:setMargins({top=2, bottom=2});
    obj.rectangle17:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle17:setXradius(2);
    obj.rectangle17:setYradius(2);

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.rectangle17);
    obj.label81:setAlign("left");
    lfm_setPropAsString(obj.label81, "fontStyle",  "bold");
    obj.label81:setText("Tipo de Ataque");
    obj.label81:setName("label81");
    obj.label81:setFontColor("white");

    obj.comboBox10 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox10:setParent(obj.rectangle17);
    obj.comboBox10:setAlign("right");
    obj.comboBox10:setWidth(230);
    obj.comboBox10:setField("ataqueTipo");
    obj.comboBox10:setItems({'Sem Ataque', 'Ataque com Arma Corpo-a-Corpo', 'Ataque com Arma a Dist??ncia', 'Ataque de Magia Corpo-a-Corpo', 'Ataque de Magia a Dist??ncia'});
    obj.comboBox10:setName("comboBox10");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.scrollBox4);
    obj.rectangle18:setHeight(30);
    obj.rectangle18:setName("rectangle18");
    obj.rectangle18:setAlign("top");
    obj.rectangle18:setColor("DimGray");
    obj.rectangle18:setMargins({top=2, bottom=2});
    obj.rectangle18:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle18:setXradius(2);
    obj.rectangle18:setYradius(2);

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.rectangle18);
    obj.label82:setAlign("left");
    lfm_setPropAsString(obj.label82, "fontStyle",  "bold");
    obj.label82:setText("Atributo de Ataque");
    obj.label82:setName("label82");
    obj.label82:setFontColor("white");

    obj.popupEditAtaqueAtrib = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.popupEditAtaqueAtrib:setParent(obj.rectangle18);
    obj.popupEditAtaqueAtrib:setName("popupEditAtaqueAtrib");
    obj.popupEditAtaqueAtrib:setAlign("right");
    obj.popupEditAtaqueAtrib:setWidth(230);
    obj.popupEditAtaqueAtrib:setField("ataqueAtributo");
    obj.popupEditAtaqueAtrib:setItems({'Conjura????o', 'For??a', 'Destreza', 'Constitui????o', 'Intelig??ncia', 'Sabedoria', 'Carisma'});
    obj.popupEditAtaqueAtrib:setValues({'conjuracao', 'forca', 'destreza', 'constituicao', 'inteligencia', 'sabedoria', 'carisma'});

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.scrollBox4);
    obj.rectangle19:setHeight(30);
    obj.rectangle19:setName("rectangle19");
    obj.rectangle19:setAlign("top");
    obj.rectangle19:setColor("DimGray");
    obj.rectangle19:setMargins({top=2, bottom=2});
    obj.rectangle19:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle19:setXradius(2);
    obj.rectangle19:setYradius(2);

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.rectangle19);
    obj.label83:setAlign("left");
    lfm_setPropAsString(obj.label83, "fontStyle",  "bold");
    obj.label83:setText("B??nus de Ataque");
    obj.label83:setName("label83");
    obj.label83:setFontColor("white");

    obj.popupEditAtaqueBonus = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditAtaqueBonus:setParent(obj.rectangle19);
    obj.popupEditAtaqueBonus:setName("popupEditAtaqueBonus");
    obj.popupEditAtaqueBonus:setAlign("right");
    obj.popupEditAtaqueBonus:setWidth(230);
    obj.popupEditAtaqueBonus:setField("ataqueBonus");
    obj.popupEditAtaqueBonus:setFontSize(15);
    obj.popupEditAtaqueBonus:setFontColor("white");

    obj.dataLink129 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink129:setParent(obj.scrollBox4);
    obj.dataLink129:setField("ataqueTipo");
    obj.dataLink129:setName("dataLink129");

    obj.popupEditDanoRect = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.popupEditDanoRect:setParent(obj.scrollBox4);
    obj.popupEditDanoRect:setName("popupEditDanoRect");
    obj.popupEditDanoRect:setHeight(30);
    obj.popupEditDanoRect:setAlign("top");
    obj.popupEditDanoRect:setColor("DimGray");
    obj.popupEditDanoRect:setMargins({top=2, bottom=2});
    obj.popupEditDanoRect:setPadding({top=3, bottom=3, left=3, right=3});
    obj.popupEditDanoRect:setXradius(2);
    obj.popupEditDanoRect:setYradius(2);

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.popupEditDanoRect);
    obj.layout77:setAlign("top");
    obj.layout77:setHeight(30);
    obj.layout77:setName("layout77");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout77);
    obj.label84:setAlign("left");
    lfm_setPropAsString(obj.label84, "fontStyle",  "bold");
    obj.label84:setText("F??rmulas de Dano");
    obj.label84:setName("label84");
    obj.label84:setFontColor("white");

    obj.button51 = GUI.fromHandle(_obj_newObject("button"));
    obj.button51:setParent(obj.layout77);
    obj.button51:setAlign("right");
    obj.button51:setWidth(140);
    obj.button51:setText("+ Adicionar F??rmula");
    obj.button51:setName("button51");

    obj.popupEditDanoLegenda = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.popupEditDanoLegenda:setParent(obj.popupEditDanoRect);
    obj.popupEditDanoLegenda:setName("popupEditDanoLegenda");
    obj.popupEditDanoLegenda:setAlign("bottom");
    obj.popupEditDanoLegenda:setHeight(22);
    obj.popupEditDanoLegenda:setPadding({top=2});
    obj.popupEditDanoLegenda:setVisible(false);
    obj.popupEditDanoLegenda:setMargins({left=1, right=1, top=2, bottom=2});
    obj.popupEditDanoLegenda:setVertAlign("leading");

    obj.flowPart113 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart113:setParent(obj.popupEditDanoLegenda);
    obj.flowPart113:setWidth(34);
    obj.flowPart113:setMaxWidth(835);
    obj.flowPart113:setHeight(20);
    obj.flowPart113:setName("flowPart113");
    obj.flowPart113:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart113:setVertAlign("leading");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.flowPart113);
    obj.label85:setAlign("client");
    obj.label85:setText("F??rmula");
    obj.label85:setName("label85");
    obj.label85:setFontColor("white");

    obj.flowPart114 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart114:setParent(obj.popupEditDanoLegenda);
    obj.flowPart114:setWidth(5);
    obj.flowPart114:setHeight(20);
    obj.flowPart114:setName("flowPart114");
    obj.flowPart114:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart114:setVertAlign("leading");

    obj.flowPart115 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart115:setParent(obj.popupEditDanoLegenda);
    obj.flowPart115:setWidth(33);
    obj.flowPart115:setMaxWidth(830);
    obj.flowPart115:setHeight(20);
    obj.flowPart115:setName("flowPart115");
    obj.flowPart115:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart115:setVertAlign("leading");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.flowPart115);
    obj.label86:setAlign("client");
    obj.label86:setText("Contexto");
    obj.label86:setName("label86");
    obj.label86:setFontColor("white");

    obj.flowPart116 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart116:setParent(obj.popupEditDanoLegenda);
    obj.flowPart116:setWidth(5);
    obj.flowPart116:setHeight(20);
    obj.flowPart116:setName("flowPart116");
    obj.flowPart116:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart116:setVertAlign("leading");

    obj.flowPart117 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart117:setParent(obj.popupEditDanoLegenda);
    obj.flowPart117:setWidth(27);
    obj.flowPart117:setMaxWidth(685);
    obj.flowPart117:setHeight(20);
    obj.flowPart117:setName("flowPart117");
    obj.flowPart117:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart117:setVertAlign("leading");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.flowPart117);
    obj.label87:setAlign("client");
    obj.label87:setText("Tipo");
    obj.label87:setName("label87");
    obj.label87:setFontColor("white");

    obj.flowPart118 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart118:setParent(obj.popupEditDanoLegenda);
    obj.flowPart118:setWidth(5);
    obj.flowPart118:setHeight(20);
    obj.flowPart118:setName("flowPart118");
    obj.flowPart118:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart118:setVertAlign("leading");

    obj.flowPart119 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart119:setParent(obj.popupEditDanoLegenda);
    obj.flowPart119:setWidth(20);
    obj.flowPart119:setMaxWidth(35);
    obj.flowPart119:setHeight(20);
    obj.flowPart119:setName("flowPart119");
    obj.flowPart119:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart119:setVertAlign("leading");

    obj.popupEditDanoRL = GUI.fromHandle(_obj_newObject("recordList"));
    obj.popupEditDanoRL:setParent(obj.popupEditDanoRect);
    obj.popupEditDanoRL:setName("popupEditDanoRL");
    obj.popupEditDanoRL:setAlign("bottom");
    obj.popupEditDanoRL:setAutoHeight(true);
    obj.popupEditDanoRL:setTemplateForm("frmItemFormula");
    obj.popupEditDanoRL:setField("danos");

    obj.popupEditFormulaRect = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.popupEditFormulaRect:setParent(obj.scrollBox4);
    obj.popupEditFormulaRect:setName("popupEditFormulaRect");
    obj.popupEditFormulaRect:setHeight(30);
    obj.popupEditFormulaRect:setAlign("top");
    obj.popupEditFormulaRect:setColor("DimGray");
    obj.popupEditFormulaRect:setMargins({top=2, bottom=2});
    obj.popupEditFormulaRect:setPadding({top=3, bottom=3, left=3, right=3});
    obj.popupEditFormulaRect:setXradius(2);
    obj.popupEditFormulaRect:setYradius(2);

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.popupEditFormulaRect);
    obj.layout78:setAlign("top");
    obj.layout78:setHeight(30);
    obj.layout78:setName("layout78");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout78);
    obj.label88:setAlign("left");
    lfm_setPropAsString(obj.label88, "fontStyle",  "bold");
    obj.label88:setText("Outras F??rmulas");
    obj.label88:setName("label88");
    obj.label88:setFontColor("white");

    obj.button52 = GUI.fromHandle(_obj_newObject("button"));
    obj.button52:setParent(obj.layout78);
    obj.button52:setAlign("right");
    obj.button52:setWidth(140);
    obj.button52:setText("+ Adicionar F??rmula");
    obj.button52:setName("button52");

    obj.popupEditFormulaLegenda = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.popupEditFormulaLegenda:setParent(obj.popupEditFormulaRect);
    obj.popupEditFormulaLegenda:setName("popupEditFormulaLegenda");
    obj.popupEditFormulaLegenda:setAlign("bottom");
    obj.popupEditFormulaLegenda:setHeight(22);
    obj.popupEditFormulaLegenda:setPadding({top=2});
    obj.popupEditFormulaLegenda:setVisible(false);
    obj.popupEditFormulaLegenda:setMargins({left=1, right=1, top=2, bottom=2});
    obj.popupEditFormulaLegenda:setVertAlign("leading");

    obj.flowPart120 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart120:setParent(obj.popupEditFormulaLegenda);
    obj.flowPart120:setWidth(34);
    obj.flowPart120:setMaxWidth(835);
    obj.flowPart120:setHeight(20);
    obj.flowPart120:setName("flowPart120");
    obj.flowPart120:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart120:setVertAlign("leading");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.flowPart120);
    obj.label89:setAlign("client");
    obj.label89:setText("F??rmula");
    obj.label89:setName("label89");
    obj.label89:setFontColor("white");

    obj.flowPart121 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart121:setParent(obj.popupEditFormulaLegenda);
    obj.flowPart121:setWidth(5);
    obj.flowPart121:setHeight(20);
    obj.flowPart121:setName("flowPart121");
    obj.flowPart121:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart121:setVertAlign("leading");

    obj.flowPart122 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart122:setParent(obj.popupEditFormulaLegenda);
    obj.flowPart122:setWidth(33);
    obj.flowPart122:setMaxWidth(830);
    obj.flowPart122:setHeight(20);
    obj.flowPart122:setName("flowPart122");
    obj.flowPart122:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart122:setVertAlign("leading");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.flowPart122);
    obj.label90:setAlign("client");
    obj.label90:setText("Contexto");
    obj.label90:setName("label90");
    obj.label90:setFontColor("white");

    obj.flowPart123 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart123:setParent(obj.popupEditFormulaLegenda);
    obj.flowPart123:setWidth(5);
    obj.flowPart123:setHeight(20);
    obj.flowPart123:setName("flowPart123");
    obj.flowPart123:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart123:setVertAlign("leading");

    obj.flowPart124 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart124:setParent(obj.popupEditFormulaLegenda);
    obj.flowPart124:setWidth(20);
    obj.flowPart124:setMaxWidth(35);
    obj.flowPart124:setHeight(20);
    obj.flowPart124:setName("flowPart124");
    obj.flowPart124:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart124:setVertAlign("leading");

    obj.popupEditFormulaRL = GUI.fromHandle(_obj_newObject("recordList"));
    obj.popupEditFormulaRL:setParent(obj.popupEditFormulaRect);
    obj.popupEditFormulaRL:setName("popupEditFormulaRL");
    obj.popupEditFormulaRL:setAlign("bottom");
    obj.popupEditFormulaRL:setAutoHeight(true);
    obj.popupEditFormulaRL:setTemplateForm("frmItemFormula");
    obj.popupEditFormulaRL:setField("formulas");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.scrollBox4);
    obj.rectangle20:setHeight(30);
    obj.rectangle20:setName("rectangle20");
    obj.rectangle20:setAlign("top");
    obj.rectangle20:setColor("DimGray");
    obj.rectangle20:setMargins({top=2, bottom=2});
    obj.rectangle20:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle20:setXradius(2);
    obj.rectangle20:setYradius(2);

    obj.flowLayout25 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout25:setParent(obj.rectangle20);
    obj.flowLayout25:setAlign("client");
    obj.flowLayout25:setName("flowLayout25");
    obj.flowLayout25:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout25:setVertAlign("leading");

    obj.flowPart125 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart125:setParent(obj.flowLayout25);
    obj.flowPart125:setMinWidth(173);
    obj.flowPart125:setMaxWidth(865);
    obj.flowPart125:setHeight(24);
    obj.flowPart125:setName("flowPart125");
    obj.flowPart125:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart125:setVertAlign("leading");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.flowPart125);
    obj.label91:setAlign("client");
    lfm_setPropAsString(obj.label91, "fontStyle",  "bold");
    obj.label91:setText("Teste de Resist??ncia");
    obj.label91:setName("label91");
    obj.label91:setFontColor("white");

    obj.flowPart126 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart126:setParent(obj.flowLayout25);
    obj.flowPart126:setMinWidth(3);
    obj.flowPart126:setHeight(24);
    obj.flowPart126:setName("flowPart126");
    obj.flowPart126:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart126:setVertAlign("leading");

    obj.flowPart127 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart127:setParent(obj.flowLayout25);
    obj.flowPart127:setMinWidth(106);
    obj.flowPart127:setMaxWidth(530);
    obj.flowPart127:setHeight(24);
    obj.flowPart127:setName("flowPart127");
    obj.flowPart127:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart127:setVertAlign("leading");

    obj.comboBox11 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox11:setParent(obj.flowPart127);
    obj.comboBox11:setAlign("client");
    obj.comboBox11:setField("cdResistenciaAtributo");
    obj.comboBox11:setItems({'', 'For??a', 'Destreza', 'Constitui????o', 'Intelig??ncia', 'Sabedoria', 'Carisma'});
    obj.comboBox11:setValues({'', 'forca', 'destreza', 'constituicao', 'inteligencia', 'sabedoria', 'carisma'});
    obj.comboBox11:setName("comboBox11");

    obj.flowPart128 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart128:setParent(obj.flowLayout25);
    obj.flowPart128:setMinWidth(61);
    obj.flowPart128:setMaxWidth(305);
    obj.flowPart128:setHeight(24);
    obj.flowPart128:setName("flowPart128");
    obj.flowPart128:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart128:setVertAlign("leading");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.flowPart128);
    obj.label92:setAlign("client");
    obj.label92:setText("contra CD.");
    obj.label92:setHorzTextAlign("center");
    obj.label92:setName("label92");
    obj.label92:setFontColor("white");

    obj.flowPart129 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart129:setParent(obj.flowLayout25);
    obj.flowPart129:setMinWidth(30);
    obj.flowPart129:setMaxWidth(150);
    obj.flowPart129:setHeight(24);
    obj.flowPart129:setName("flowPart129");
    obj.flowPart129:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart129:setVertAlign("leading");

    obj.popupEditCDvalor = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditCDvalor:setParent(obj.flowPart129);
    obj.popupEditCDvalor:setName("popupEditCDvalor");
    obj.popupEditCDvalor:setAlign("client");
    obj.popupEditCDvalor:setType("number");
    obj.popupEditCDvalor:setField("cdResistenciaValor");
    obj.popupEditCDvalor:setEnabled(false);
    obj.popupEditCDvalor:setFontSize(15);
    obj.popupEditCDvalor:setFontColor("white");

    obj.flowPart130 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart130:setParent(obj.flowLayout25);
    obj.flowPart130:setMinWidth(3);
    obj.flowPart130:setHeight(24);
    obj.flowPart130:setName("flowPart130");
    obj.flowPart130:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart130:setVertAlign("leading");

    obj.flowPart131 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart131:setParent(obj.flowLayout25);
    obj.flowPart131:setMinWidth(106);
    obj.flowPart131:setMaxWidth(630);
    obj.flowPart131:setHeight(24);
    obj.flowPart131:setName("flowPart131");
    obj.flowPart131:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart131:setVertAlign("leading");

    obj.comboBox12 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox12:setParent(obj.flowPart131);
    obj.comboBox12:setAlign("client");
    obj.comboBox12:setField("cdResistenciaTipo");
    obj.comboBox12:setItems({'Conjura????o', 'For??a', 'Destreza', 'Constitui????o', 'Intelig??ncia', 'Sabedoria', 'Carisma', 'Fixo'});
    obj.comboBox12:setValues({'conjuracao', 'forca', 'destreza', 'constituicao', 'inteligencia', 'sabedoria', 'carisma', 'fixo'});
    obj.comboBox12:setName("comboBox12");

    obj.dataLink130 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink130:setParent(obj.flowLayout25);
    obj.dataLink130:setField("cdResistenciaTipo");
    obj.dataLink130:setName("dataLink130");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.scrollBox4);
    obj.rectangle21:setHeight(60);
    obj.rectangle21:setName("rectangle21");
    obj.rectangle21:setAlign("top");
    obj.rectangle21:setColor("DimGray");
    obj.rectangle21:setMargins({top=2, bottom=2});
    obj.rectangle21:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle21:setXradius(2);
    obj.rectangle21:setYradius(2);

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.rectangle21);
    obj.label93:setAlign("top");
    obj.label93:setText("Mensagem");
    obj.label93:setHeight(27);
    obj.label93:setName("label93");
    obj.label93:setFontColor("white");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.rectangle21);
    obj.edit44:setAlign("top");
    obj.edit44:setField("mensagem");
    obj.edit44:setHeight(27);
    obj.edit44:setName("edit44");
    obj.edit44:setFontSize(15);
    obj.edit44:setFontColor("white");

    obj.tab7 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab7:setParent(obj.tcPopupEdit);
    obj.tab7:setTitle("Importar");
    obj.tab7:setName("tab7");

 require("import5etools.lua"); 


    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.tab7);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setPadding({top=5, bottom=5, left=5, right=5});
    obj.scrollBox5:setName("scrollBox5");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.scrollBox5);
    obj.label94:setText("Qual a fonte da magia?");
    obj.label94:setName("label94");
    obj.label94:setAlign("top");
    obj.label94:setFontSize(16.0);
    obj.label94:setHeight(30);
    lfm_setPropAsString(obj.label94, "fontStyle",  "bold");
    obj.label94:setFontColor("white");

    obj.comboBoxImportSource = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBoxImportSource:setParent(obj.scrollBox5);
    obj.comboBoxImportSource:setName("comboBoxImportSource");
    obj.comboBoxImportSource:setAlign("top");
    obj.comboBoxImportSource:setField("importSourceName");

 dload.getSourceNames(self, "spells", function(items) self.comboBoxImportSource:setItems(items); end); 


    obj.dataLink131 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink131:setParent(obj.scrollBox5);
    obj.dataLink131:setField("importSourceName");
    obj.dataLink131:setDefaultValue("PHB");
    obj.dataLink131:setName("dataLink131");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.scrollBox5);
    obj.edit45:setAlign("top");
    obj.edit45:setField("importSourcePath");
    obj.edit45:setReadOnly(true);
    obj.edit45:setName("edit45");
    obj.edit45:setFontSize(15);
    obj.edit45:setFontColor("white");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.scrollBox5);
    obj.label95:setText("Qual o n??vel da magia?");
    obj.label95:setName("label95");
    obj.label95:setAlign("top");
    obj.label95:setFontSize(16.0);
    obj.label95:setHeight(30);
    lfm_setPropAsString(obj.label95, "fontStyle",  "bold");
    obj.label95:setFontColor("white");

    obj.comboBoxImportLevel = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBoxImportLevel:setParent(obj.scrollBox5);
    obj.comboBoxImportLevel:setName("comboBoxImportLevel");
    obj.comboBoxImportLevel:setAlign("top");
    obj.comboBoxImportLevel:setField("importLevel");
    obj.comboBoxImportLevel:setItems({'Qualquer', 'Truque', '1?? n??vel', '2?? n??vel', '3?? n??vel', '4?? n??vel', '5?? n??vel', '6?? n??vel', '7?? n??vel', '8?? n??vel', '9?? n??vel', '10?? n??vel'});
    obj.comboBoxImportLevel:setValues({'', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'});

    obj.dataLink132 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink132:setParent(obj.scrollBox5);
    obj.dataLink132:setField("importLevel");
    obj.dataLink132:setDefaultValue("0");
    obj.dataLink132:setName("dataLink132");

    obj.label96 = GUI.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.scrollBox5);
    obj.label96:setText("Qual a classe da magia?");
    obj.label96:setName("label96");
    obj.label96:setAlign("top");
    obj.label96:setFontSize(16.0);
    obj.label96:setHeight(30);
    lfm_setPropAsString(obj.label96, "fontStyle",  "bold");
    obj.label96:setFontColor("white");

    obj.comboBoxImportClass = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBoxImportClass:setParent(obj.scrollBox5);
    obj.comboBoxImportClass:setName("comboBoxImportClass");
    obj.comboBoxImportClass:setAlign("top");
    obj.comboBoxImportClass:setField("importClass");

    obj.dataLink133 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink133:setParent(obj.scrollBox5);
    obj.dataLink133:setFields({'importSourcePath', 'importLevel'});
    obj.dataLink133:setName("dataLink133");

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.scrollBox5);
    obj.label97:setText("Qual a magia?");
    obj.label97:setName("label97");
    obj.label97:setAlign("top");
    obj.label97:setFontSize(16.0);
    obj.label97:setHeight(30);
    lfm_setPropAsString(obj.label97, "fontStyle",  "bold");
    obj.label97:setFontColor("white");

    obj.comboBoxImportMagia = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBoxImportMagia:setParent(obj.scrollBox5);
    obj.comboBoxImportMagia:setName("comboBoxImportMagia");
    obj.comboBoxImportMagia:setAlign("top");
    obj.comboBoxImportMagia:setField("importName");

    obj.dataLink134 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink134:setParent(obj.scrollBox5);
    obj.dataLink134:setFields({'importSourcePath', 'importLevel', 'importClass'});
    obj.dataLink134:setName("dataLink134");

    obj.button53 = GUI.fromHandle(_obj_newObject("button"));
    obj.button53:setParent(obj.scrollBox5);
    obj.button53:setText("Importar");
    obj.button53:setName("button53");
    obj.button53:setAlign("top");
    obj.button53:setFontSize(16.0);
    obj.button53:setHeight(30);
    lfm_setPropAsString(obj.button53, "fontStyle",  "bold");

    obj.dataLink135 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink135:setParent(obj.rectangle3);
    obj.dataLink135:setFields({'magias.habilidadeDeConjuracao', 'atributos.modForca', 'atributos.modDestreza', 'atributos.modConstituicao', 'atributos.modInteligencia', 'atributos.modSabedoria', 'atributos.modCarisma', 'bonusProficiencia'});
    obj.dataLink135:setName("dataLink135");

    obj.dataLink136 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink136:setParent(obj.rectangle3);
    obj.dataLink136:setField("magias.selecionada");
    obj.dataLink136:setName("dataLink136");

    obj.tab8 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab8:setParent(obj.pgcPrincipal);
    obj.tab8:setTitle("CONTADORES");
    obj.tab8:setName("tab8");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.tab8);
    obj.rectangle22:setStrokeColor("white");
    obj.rectangle22:setStrokeSize(1);
    obj.rectangle22:setName("rectangle22");
    obj.rectangle22:setAlign("client");
    obj.rectangle22:setColor("#40000000");
    obj.rectangle22:setXradius(10);
    obj.rectangle22:setYradius(10);

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.rectangle22);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.button54 = GUI.fromHandle(_obj_newObject("button"));
    obj.button54:setParent(obj.scrollBox6);
    obj.button54:setText("Add");
    obj.button54:setAlign("top");
    obj.button54:setName("button54");

    obj.button55 = GUI.fromHandle(_obj_newObject("button"));
    obj.button55:setParent(obj.scrollBox6);
    obj.button55:setText("Import from Macro");
    obj.button55:setAlign("top");
    obj.button55:setName("button55");

    obj.rclContadores = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclContadores:setParent(obj.scrollBox6);
    obj.rclContadores:setName("rclContadores");
    obj.rclContadores:setAlign("top");
    obj.rclContadores:setField("contadores");
    obj.rclContadores:setTemplateForm("frmContador");
    obj.rclContadores:setAutoHeight(true);
    obj.rclContadores:setMinHeight(5);
    obj.rclContadores:setHitTest(false);
    obj.rclContadores:setMargins({top=10, bottom=10, left=10, right=10});

    obj.dataLink137 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink137:setParent(obj.rectangle22);
    obj.dataLink137:setFields({'descansoLongo', 'descansoCurto'});
    obj.dataLink137:setName("dataLink137");

    obj.tab9 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab9:setParent(obj.pgcPrincipal);
    obj.tab9:setTitle("PROPRIEDADES");
    obj.tab9:setName("tab9");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.tab9);
    obj.rectangle23:setStrokeColor("white");
    obj.rectangle23:setStrokeSize(1);
    obj.rectangle23:setName("rectangle23");
    obj.rectangle23:setAlign("client");
    obj.rectangle23:setColor("#40000000");
    obj.rectangle23:setXradius(10);
    obj.rectangle23:setYradius(10);

    obj.rclFichaPropriedades = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclFichaPropriedades:setParent(obj.rectangle23);
    obj.rclFichaPropriedades:setName("rclFichaPropriedades");
    obj.rclFichaPropriedades:setAlign("client");
    obj.rclFichaPropriedades:setField("propriedades.rcl");
    obj.rclFichaPropriedades:setTemplateForm("frmFichaPropriedade");

    obj.button56 = GUI.fromHandle(_obj_newObject("button"));
    obj.button56:setParent(obj.rectangle23);
    obj.button56:setAlign("bottom");
    obj.button56:setText("Resetar Propriedades");
    obj.button56:setName("button56");

    obj.button57 = GUI.fromHandle(_obj_newObject("button"));
    obj.button57:setParent(obj.rectangle23);
    obj.button57:setAlign("bottom");
    obj.button57:setText("Adicionar Propriedade");
    obj.button57:setName("button57");

    obj.tab10 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab10:setParent(obj.pgcPrincipal);
    obj.tab10:setTitle("DIARIO");
    obj.tab10:setName("tab10");

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.tab10);
    obj.rectangle24:setAlign("client");
    obj.rectangle24:setStrokeColor("white");
    obj.rectangle24:setStrokeSize(1);
    obj.rectangle24:setName("rectangle24");
    obj.rectangle24:setColor("#40000000");
    obj.rectangle24:setXradius(10);
    obj.rectangle24:setYradius(10);

    obj.checkBox9 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox9:setParent(obj.rectangle24);
    obj.checkBox9:setAlign("right");
    obj.checkBox9:setWidth(15);
    obj.checkBox9:setField("historia.usarEditorFancy");
    obj.checkBox9:setMargins({left = 2, right = -2});
    obj.checkBox9:setName("checkBox9");

    obj.historiaFancy = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.historiaFancy:setParent(obj.rectangle24);
    obj.historiaFancy:setName("historiaFancy");
    obj.historiaFancy:setAlign("client");
    obj.historiaFancy:setField("historia.texto2");
    lfm_setPropAsString(obj.historiaFancy, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.historiaFancy, "defaultFontColor",  "white");
    lfm_setPropAsString(obj.historiaFancy, "hideSelection",  "false");
    lfm_setPropAsString(obj.historiaFancy, "defaultFontSize",  "16");
    lfm_setPropAsString(obj.historiaFancy, "animateImages",  "true");
    obj.historiaFancy:setMargins({top=2});
    obj.historiaFancy:setVisible(false);

    obj.historiaMerda = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.historiaMerda:setParent(obj.rectangle24);
    obj.historiaMerda:setName("historiaMerda");
    obj.historiaMerda:setAlign("client");
    obj.historiaMerda:setField("historia.texto");
    obj.historiaMerda:setMargins({top=2});
    obj.historiaMerda:setFontSize(16);
    obj.historiaMerda:setVisible(true);
    obj.historiaMerda:setTransparent(true);

    obj.tab11 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab11:setParent(obj.pgcPrincipal);
    obj.tab11:setTitle("COMPANHEIRO");
    obj.tab11:setName("tab11");

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.tab11);
    obj.rectangle25:setStrokeColor("white");
    obj.rectangle25:setStrokeSize(1);
    obj.rectangle25:setName("rectangle25");
    obj.rectangle25:setAlign("client");
    obj.rectangle25:setColor("#40000000");
    obj.rectangle25:setXradius(10);
    obj.rectangle25:setYradius(10);

 require("common.lua"); 


    obj.scrollBox7 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.rectangle25);
    obj.scrollBox7:setAlign("client");
    obj.scrollBox7:setName("scrollBox7");

    obj.fraCompanionLayout = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraCompanionLayout:setParent(obj.scrollBox7);
    obj.fraCompanionLayout:setAlign("top");
    obj.fraCompanionLayout:setHeight(500);
    obj.fraCompanionLayout:setMargins({left=10, right=10, top=10});
    obj.fraCompanionLayout:setAutoHeight(true);
    obj.fraCompanionLayout:setHorzAlign("center");
    obj.fraCompanionLayout:setLineSpacing(2);
    obj.fraCompanionLayout:setName("fraCompanionLayout");
    obj.fraCompanionLayout:setStepSizes({310, 420, 640, 760, 1150});
    obj.fraCompanionLayout:setMinScaledWidth(300);
    obj.fraCompanionLayout:setVertAlign("leading");

    obj.flowLayout26 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout26:setParent(obj.fraCompanionLayout);
    obj.flowLayout26:setAutoHeight(true);
    obj.flowLayout26:setMinScaledWidth(290);
    obj.flowLayout26:setHorzAlign("center");
    obj.flowLayout26:setName("flowLayout26");
    obj.flowLayout26:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout26:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout26:setVertAlign("leading");

    obj.flwNomeCompanion1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flwNomeCompanion1:setParent(obj.flowLayout26);
    obj.flwNomeCompanion1:setName("flwNomeCompanion1");
    obj.flwNomeCompanion1:setMinWidth(320);
    obj.flwNomeCompanion1:setMaxWidth(1600);
    obj.flwNomeCompanion1:setFrameStyle("frames/banner/magicGroup.xml");
    obj.flwNomeCompanion1:setHeight(175);
    obj.flwNomeCompanion1:setVertAlign("center");
    obj.flwNomeCompanion1:setAvoidScale(true);
    obj.flwNomeCompanion1:setMargins({left=1, right=1, top=2, bottom=2});

    obj.layNomeHolderCompanion = GUI.fromHandle(_obj_newObject("layout"));
    obj.layNomeHolderCompanion:setParent(obj.flwNomeCompanion1);
    obj.layNomeHolderCompanion:setAlign("client");
    obj.layNomeHolderCompanion:setName("layNomeHolderCompanion");

    obj.edtNomeCompanion1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtNomeCompanion1:setParent(obj.layNomeHolderCompanion);
    obj.edtNomeCompanion1:setName("edtNomeCompanion1");
    obj.edtNomeCompanion1:setField("nomeCompanion");
    obj.edtNomeCompanion1:setFontSize(17);
    obj.edtNomeCompanion1:setAlign("client");
    obj.edtNomeCompanion1:setFontColor("white");
    obj.edtNomeCompanion1:setVertTextAlign("center");
    obj.edtNomeCompanion1:setTransparent(true);

    obj.labNomeCompanion1 = GUI.fromHandle(_obj_newObject("label"));
    obj.labNomeCompanion1:setParent(obj.layNomeHolderCompanion);
    obj.labNomeCompanion1:setMargins({left=3});
    obj.labNomeCompanion1:setName("labNomeCompanion1");
    obj.labNomeCompanion1:setAlign("bottom");
    obj.labNomeCompanion1:setText("NOME DO COMPANION");
    obj.labNomeCompanion1:setAutoSize(true);
    obj.labNomeCompanion1:setFontSize(12);
    obj.labNomeCompanion1:setFontColor("#D0D0D0");

    obj.fraUpperGridCompanion = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraUpperGridCompanion:setParent(obj.flowLayout26);
    obj.fraUpperGridCompanion:setMinWidth(320);
    obj.fraUpperGridCompanion:setMaxWidth(1600);
    obj.fraUpperGridCompanion:setName("fraUpperGridCompanion");
    obj.fraUpperGridCompanion:setAvoidScale(true);
    obj.fraUpperGridCompanion:setFrameStyle("frames/panel4transp/frame.xml");
    obj.fraUpperGridCompanion:setAutoHeight(true);
    obj.fraUpperGridCompanion:setVertAlign("trailing");
    obj.fraUpperGridCompanion:setMaxControlsPerLine(3);
    obj.fraUpperGridCompanion:setMargins({left=1, right=1, top=2, bottom=2});

    obj.UpperGridCampo7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo7:setParent(obj.fraUpperGridCompanion);
    obj.UpperGridCampo7:setHeight(50);
    obj.UpperGridCampo7:setMinScaledWidth(100);
    obj.UpperGridCampo7:setMinWidth(100);
    obj.UpperGridCampo7:setMaxWidth(233);
    obj.UpperGridCampo7:setMaxScaledWidth(233);
    obj.UpperGridCampo7:setAvoidScale(true);
    obj.UpperGridCampo7:setName("UpperGridCampo7");
    obj.UpperGridCampo7:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo7:setVertAlign("leading");

    obj.edtUpperGridCampo7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo7:setParent(obj.UpperGridCampo7);
    obj.edtUpperGridCampo7:setName("edtUpperGridCampo7");
    obj.edtUpperGridCampo7:setAlign("top");
    obj.edtUpperGridCampo7:setField("classeENivel.Companion");
    obj.edtUpperGridCampo7:setFontSize(13);
    obj.edtUpperGridCampo7:setHeight(30);
    obj.edtUpperGridCampo7:setTransparent(true);
    obj.edtUpperGridCampo7:setVertTextAlign("trailing");
    obj.edtUpperGridCampo7:setWidth(195);
    obj.edtUpperGridCampo7:setFontColor("white");

    obj.linUpperGridCampo7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo7:setParent(obj.UpperGridCampo7);
    obj.linUpperGridCampo7:setName("linUpperGridCampo7");
    obj.linUpperGridCampo7:setAlign("top");
    obj.linUpperGridCampo7:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo7:setStrokeSize(1);

    obj.labUpperGridCampo7 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo7:setParent(obj.UpperGridCampo7);
    obj.labUpperGridCampo7:setName("labUpperGridCampo7");
    obj.labUpperGridCampo7:setAlign("top");
    obj.labUpperGridCampo7:setText("CLASSES & NIVEIS");
    obj.labUpperGridCampo7:setVertTextAlign("leading");
    obj.labUpperGridCampo7:setWordWrap(true);
    obj.labUpperGridCampo7:setTextTrimming("none");
    obj.labUpperGridCampo7:setFontSize(12);
    obj.labUpperGridCampo7:setFontColor("#D0D0D0");

    self.UpperGridCampo7:setHeight(self.edtUpperGridCampo7:getHeight() + self.labUpperGridCampo7:getHeight() + self.linUpperGridCampo7:getHeight());


    obj.UpperGridCampo8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo8:setParent(obj.fraUpperGridCompanion);
    obj.UpperGridCampo8:setHeight(50);
    obj.UpperGridCampo8:setMinScaledWidth(100);
    obj.UpperGridCampo8:setMinWidth(100);
    obj.UpperGridCampo8:setMaxWidth(233);
    obj.UpperGridCampo8:setMaxScaledWidth(233);
    obj.UpperGridCampo8:setAvoidScale(true);
    obj.UpperGridCampo8:setName("UpperGridCampo8");
    obj.UpperGridCampo8:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo8:setVertAlign("leading");

    obj.edtUpperGridCampo8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo8:setParent(obj.UpperGridCampo8);
    obj.edtUpperGridCampo8:setName("edtUpperGridCampo8");
    obj.edtUpperGridCampo8:setAlign("top");
    obj.edtUpperGridCampo8:setField("origem.Companion");
    obj.edtUpperGridCampo8:setFontSize(13);
    obj.edtUpperGridCampo8:setHeight(30);
    obj.edtUpperGridCampo8:setTransparent(true);
    obj.edtUpperGridCampo8:setVertTextAlign("trailing");
    obj.edtUpperGridCampo8:setWidth(195);
    obj.edtUpperGridCampo8:setFontColor("white");

    obj.linUpperGridCampo8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo8:setParent(obj.UpperGridCampo8);
    obj.linUpperGridCampo8:setName("linUpperGridCampo8");
    obj.linUpperGridCampo8:setAlign("top");
    obj.linUpperGridCampo8:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo8:setStrokeSize(1);

    obj.labUpperGridCampo8 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo8:setParent(obj.UpperGridCampo8);
    obj.labUpperGridCampo8:setName("labUpperGridCampo8");
    obj.labUpperGridCampo8:setAlign("top");
    obj.labUpperGridCampo8:setText("ORIGEM");
    obj.labUpperGridCampo8:setVertTextAlign("leading");
    obj.labUpperGridCampo8:setWordWrap(true);
    obj.labUpperGridCampo8:setTextTrimming("none");
    obj.labUpperGridCampo8:setFontSize(12);
    obj.labUpperGridCampo8:setFontColor("#D0D0D0");

    self.UpperGridCampo8:setHeight(self.edtUpperGridCampo8:getHeight() + self.labUpperGridCampo8:getHeight() + self.linUpperGridCampo8:getHeight());


    obj.UpperGridCampo9 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo9:setParent(obj.fraUpperGridCompanion);
    obj.UpperGridCampo9:setHeight(50);
    obj.UpperGridCampo9:setMinScaledWidth(100);
    obj.UpperGridCampo9:setMinWidth(100);
    obj.UpperGridCampo9:setMaxWidth(233);
    obj.UpperGridCampo9:setMaxScaledWidth(233);
    obj.UpperGridCampo9:setAvoidScale(true);
    obj.UpperGridCampo9:setName("UpperGridCampo9");
    obj.UpperGridCampo9:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo9:setVertAlign("leading");

    obj.edtUpperGridCampo9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo9:setParent(obj.UpperGridCampo9);
    obj.edtUpperGridCampo9:setName("edtUpperGridCampo9");
    obj.edtUpperGridCampo9:setAlign("top");
    obj.edtUpperGridCampo9:setField("regiao.Companion");
    obj.edtUpperGridCampo9:setFontSize(13);
    obj.edtUpperGridCampo9:setHeight(30);
    obj.edtUpperGridCampo9:setTransparent(true);
    obj.edtUpperGridCampo9:setVertTextAlign("trailing");
    obj.edtUpperGridCampo9:setWidth(195);
    obj.edtUpperGridCampo9:setFontColor("white");

    obj.linUpperGridCampo9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo9:setParent(obj.UpperGridCampo9);
    obj.linUpperGridCampo9:setName("linUpperGridCampo9");
    obj.linUpperGridCampo9:setAlign("top");
    obj.linUpperGridCampo9:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo9:setStrokeSize(1);

    obj.labUpperGridCampo9 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo9:setParent(obj.UpperGridCampo9);
    obj.labUpperGridCampo9:setName("labUpperGridCampo9");
    obj.labUpperGridCampo9:setAlign("top");
    obj.labUpperGridCampo9:setText("REGI??O");
    obj.labUpperGridCampo9:setVertTextAlign("leading");
    obj.labUpperGridCampo9:setWordWrap(true);
    obj.labUpperGridCampo9:setTextTrimming("none");
    obj.labUpperGridCampo9:setFontSize(12);
    obj.labUpperGridCampo9:setFontColor("#D0D0D0");

    self.UpperGridCampo9:setHeight(self.edtUpperGridCampo9:getHeight() + self.labUpperGridCampo9:getHeight() + self.linUpperGridCampo9:getHeight());


    obj.UpperGridCampo10 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo10:setParent(obj.fraUpperGridCompanion);
    obj.UpperGridCampo10:setHeight(50);
    obj.UpperGridCampo10:setMinScaledWidth(100);
    obj.UpperGridCampo10:setMinWidth(100);
    obj.UpperGridCampo10:setMaxWidth(233);
    obj.UpperGridCampo10:setMaxScaledWidth(233);
    obj.UpperGridCampo10:setAvoidScale(true);
    obj.UpperGridCampo10:setName("UpperGridCampo10");
    obj.UpperGridCampo10:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo10:setVertAlign("leading");

    obj.edtUpperGridCampo10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo10:setParent(obj.UpperGridCampo10);
    obj.edtUpperGridCampo10:setName("edtUpperGridCampo10");
    obj.edtUpperGridCampo10:setAlign("top");
    obj.edtUpperGridCampo10:setField("antecedente.Companion");
    obj.edtUpperGridCampo10:setFontSize(13);
    obj.edtUpperGridCampo10:setHeight(30);
    obj.edtUpperGridCampo10:setTransparent(true);
    obj.edtUpperGridCampo10:setVertTextAlign("trailing");
    obj.edtUpperGridCampo10:setWidth(195);
    obj.edtUpperGridCampo10:setFontColor("white");

    obj.linUpperGridCampo10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo10:setParent(obj.UpperGridCampo10);
    obj.linUpperGridCampo10:setName("linUpperGridCampo10");
    obj.linUpperGridCampo10:setAlign("top");
    obj.linUpperGridCampo10:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo10:setStrokeSize(1);

    obj.labUpperGridCampo10 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo10:setParent(obj.UpperGridCampo10);
    obj.labUpperGridCampo10:setName("labUpperGridCampo10");
    obj.labUpperGridCampo10:setAlign("top");
    obj.labUpperGridCampo10:setText("PASSADO");
    obj.labUpperGridCampo10:setVertTextAlign("leading");
    obj.labUpperGridCampo10:setWordWrap(true);
    obj.labUpperGridCampo10:setTextTrimming("none");
    obj.labUpperGridCampo10:setFontSize(12);
    obj.labUpperGridCampo10:setFontColor("#D0D0D0");

    self.UpperGridCampo10:setHeight(self.edtUpperGridCampo10:getHeight() + self.labUpperGridCampo10:getHeight() + self.linUpperGridCampo10:getHeight());


    obj.UpperGridCampo11 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo11:setParent(obj.fraUpperGridCompanion);
    obj.UpperGridCampo11:setHeight(50);
    obj.UpperGridCampo11:setMinScaledWidth(100);
    obj.UpperGridCampo11:setMinWidth(100);
    obj.UpperGridCampo11:setMaxWidth(233);
    obj.UpperGridCampo11:setMaxScaledWidth(233);
    obj.UpperGridCampo11:setAvoidScale(true);
    obj.UpperGridCampo11:setName("UpperGridCampo11");
    obj.UpperGridCampo11:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo11:setVertAlign("leading");

    obj.edtUpperGridCampo11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo11:setParent(obj.UpperGridCampo11);
    obj.edtUpperGridCampo11:setName("edtUpperGridCampo11");
    obj.edtUpperGridCampo11:setAlign("top");
    obj.edtUpperGridCampo11:setField("alinhamento.Companion");
    obj.edtUpperGridCampo11:setFontSize(13);
    obj.edtUpperGridCampo11:setHeight(30);
    obj.edtUpperGridCampo11:setTransparent(true);
    obj.edtUpperGridCampo11:setVertTextAlign("trailing");
    obj.edtUpperGridCampo11:setWidth(195);
    obj.edtUpperGridCampo11:setFontColor("white");

    obj.linUpperGridCampo11 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo11:setParent(obj.UpperGridCampo11);
    obj.linUpperGridCampo11:setName("linUpperGridCampo11");
    obj.linUpperGridCampo11:setAlign("top");
    obj.linUpperGridCampo11:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo11:setStrokeSize(1);

    obj.labUpperGridCampo11 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo11:setParent(obj.UpperGridCampo11);
    obj.labUpperGridCampo11:setName("labUpperGridCampo11");
    obj.labUpperGridCampo11:setAlign("top");
    obj.labUpperGridCampo11:setText("ALINHAMENTO");
    obj.labUpperGridCampo11:setVertTextAlign("leading");
    obj.labUpperGridCampo11:setWordWrap(true);
    obj.labUpperGridCampo11:setTextTrimming("none");
    obj.labUpperGridCampo11:setFontSize(12);
    obj.labUpperGridCampo11:setFontColor("#D0D0D0");

    self.UpperGridCampo11:setHeight(self.edtUpperGridCampo11:getHeight() + self.labUpperGridCampo11:getHeight() + self.linUpperGridCampo11:getHeight());


    obj.UpperGridCampo12 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo12:setParent(obj.fraUpperGridCompanion);
    obj.UpperGridCampo12:setHeight(50);
    obj.UpperGridCampo12:setMinScaledWidth(100);
    obj.UpperGridCampo12:setMinWidth(100);
    obj.UpperGridCampo12:setMaxWidth(233);
    obj.UpperGridCampo12:setMaxScaledWidth(233);
    obj.UpperGridCampo12:setAvoidScale(true);
    obj.UpperGridCampo12:setName("UpperGridCampo12");
    obj.UpperGridCampo12:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo12:setVertAlign("leading");

    obj.edtUpperGridCampo12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo12:setParent(obj.UpperGridCampo12);
    obj.edtUpperGridCampo12:setName("edtUpperGridCampo12");
    obj.edtUpperGridCampo12:setAlign("top");
    obj.edtUpperGridCampo12:setField("devocoes.Companion");
    obj.edtUpperGridCampo12:setFontSize(13);
    obj.edtUpperGridCampo12:setHeight(30);
    obj.edtUpperGridCampo12:setTransparent(true);
    obj.edtUpperGridCampo12:setVertTextAlign("trailing");
    obj.edtUpperGridCampo12:setWidth(195);
    obj.edtUpperGridCampo12:setFontColor("white");

    obj.linUpperGridCampo12 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo12:setParent(obj.UpperGridCampo12);
    obj.linUpperGridCampo12:setName("linUpperGridCampo12");
    obj.linUpperGridCampo12:setAlign("top");
    obj.linUpperGridCampo12:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo12:setStrokeSize(1);

    obj.labUpperGridCampo12 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo12:setParent(obj.UpperGridCampo12);
    obj.labUpperGridCampo12:setName("labUpperGridCampo12");
    obj.labUpperGridCampo12:setAlign("top");
    obj.labUpperGridCampo12:setText("DEVO????ES");
    obj.labUpperGridCampo12:setVertTextAlign("leading");
    obj.labUpperGridCampo12:setWordWrap(true);
    obj.labUpperGridCampo12:setTextTrimming("none");
    obj.labUpperGridCampo12:setFontSize(12);
    obj.labUpperGridCampo12:setFontColor("#D0D0D0");

    self.UpperGridCampo12:setHeight(self.edtUpperGridCampo12:getHeight() + self.labUpperGridCampo12:getHeight() + self.linUpperGridCampo12:getHeight());


    obj.flowLineBreak7 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak7:setParent(obj.fraCompanionLayout);
    obj.flowLineBreak7:setName("flowLineBreak7");

    obj.flowLayout27 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout27:setParent(obj.fraCompanionLayout);
    obj.flowLayout27:setHorzAlign("justify");
    obj.flowLayout27:setAutoHeight(true);
    obj.flowLayout27:setAvoidScale(true);
    obj.flowLayout27:setName("flowLayout27");
    obj.flowLayout27:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout27:setMinScaledWidth(300);
    obj.flowLayout27:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout27:setVertAlign("leading");

    obj.flowPart132 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart132:setParent(obj.flowLayout27);
    obj.flowPart132:setMinWidth(280);
    obj.flowPart132:setMaxWidth(800);
    obj.flowPart132:setHeight(64);
    obj.flowPart132:setFrameStyle("frames/posCaptionEdit1/frame.xml");
    obj.flowPart132:setName("flowPart132");
    obj.flowPart132:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart132:setVertAlign("leading");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.flowPart132);
    obj.edit46:setAlign("left");
    obj.edit46:setField("graudelealdade");
    obj.edit46:setWidth(65);
    obj.edit46:setName("edit46");
    obj.edit46:setTransparent(true);
    obj.edit46:setVertTextAlign("center");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setFontSize(15);
    obj.edit46:setFontColor("white");

    obj.label98 = GUI.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.flowPart132);
    obj.label98:setAlign("client");
    obj.label98:setText("GRAU DE LEALDADE");
    obj.label98:setMargins({left=10});
    obj.label98:setHorzTextAlign("center");
    obj.label98:setName("label98");
    obj.label98:setFontSize(12);
    obj.label98:setFontColor("#D0D0D0");

    obj.flowPart133 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart133:setParent(obj.flowLayout27);
    obj.flowPart133:setMinWidth(280);
    obj.flowPart133:setMaxWidth(800);
    obj.flowPart133:setHeight(64);
    obj.flowPart133:setFrameStyle("frames/posCaptionEdit2/frame.xml");
    obj.flowPart133:setName("flowPart133");
    obj.flowPart133:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart133:setVertAlign("leading");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.flowPart133);
    obj.edit47:setAlign("left");
    obj.edit47:setField("CACompanion");
    obj.edit47:setWidth(70);
    obj.edit47:setName("edit47");
    obj.edit47:setTransparent(true);
    obj.edit47:setVertTextAlign("center");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setFontSize(15);
    obj.edit47:setFontColor("white");

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.flowPart133);
    obj.label99:setAlign("client");
    obj.label99:setText("CLASSE DE ARMADURA");
    obj.label99:setTextTrimming("none");
    obj.label99:setWordWrap(true);
    obj.label99:setMargins({left=10});
    obj.label99:setHorzTextAlign("center");
    obj.label99:setName("label99");
    obj.label99:setFontSize(12);
    obj.label99:setFontColor("#D0D0D0");

    obj.flowLineBreak8 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak8:setParent(obj.fraCompanionLayout);
    obj.flowLineBreak8:setName("flowLineBreak8");

    obj.flowLayout28 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout28:setParent(obj.fraCompanionLayout);
    obj.flowLayout28:setAutoHeight(true);
    obj.flowLayout28:setMinScaledWidth(290);
    obj.flowLayout28:setHorzAlign("center");
    obj.flowLayout28:setName("flowLayout28");
    obj.flowLayout28:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout28:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout28:setVertAlign("leading");

    obj.fraLayAtributosCompanion = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraLayAtributosCompanion:setParent(obj.flowLayout28);
    obj.fraLayAtributosCompanion:setName("fraLayAtributosCompanion");
    obj.fraLayAtributosCompanion:setVertAlign("leading");
    obj.fraLayAtributosCompanion:setAutoHeight(true);
    obj.fraLayAtributosCompanion:setMinScaledWidth(290);
    obj.fraLayAtributosCompanion:setMaxControlsPerLine(3);
    obj.fraLayAtributosCompanion:setHorzAlign("center");
    obj.fraLayAtributosCompanion:setLineSpacing(10);
    obj.fraLayAtributosCompanion:setMargins({left=2, top=2, right=16, bottom=4});
    obj.fraLayAtributosCompanion:setAvoidScale(true);
    obj.fraLayAtributosCompanion:setStepSizes({310, 420, 640, 760, 1150});

    obj.dataLink138 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink138:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink138:setField("atributos.companionforca");
    obj.dataLink138:setName("dataLink138");

    obj.flowPart134 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart134:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart134:setHeight(140);
    obj.flowPart134:setMinWidth(320);
    obj.flowPart134:setMaxWidth(420);
    obj.flowPart134:setMinScaledWidth(305);
    obj.flowPart134:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart134:setName("flowPart134");
    obj.flowPart134:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart134:setVertAlign("leading");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.flowPart134);
    obj.layout79:setLeft(6);
    obj.layout79:setTop(12);
    obj.layout79:setWidth(116);
    obj.layout79:setHeight(115);
    obj.layout79:setName("layout79");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout79);
    obj.edit48:setAlign("top");
    obj.edit48:setMargins({left=30, right=30});
    obj.edit48:setField("atributos.companionforca");
    obj.edit48:setHeight(30);
    obj.edit48:setType("number");
    obj.edit48:setMin(0);
    obj.edit48:setMax(99);
    obj.edit48:setName("edit48");
    obj.edit48:setTransparent(true);
    obj.edit48:setVertTextAlign("center");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setFontSize(15);
    obj.edit48:setFontColor("white");

    obj.label100 = GUI.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.flowPart134);
    obj.label100:setFrameRegion("modificador");
    obj.label100:setField("atributos.modcompanionforcastr");
    obj.label100:setHorzTextAlign("center");
    obj.label100:setVertTextAlign("center");
    obj.label100:setFontSize(46);
    lfm_setPropAsString(obj.label100, "fontStyle",  "bold");
    obj.label100:setName("label100");
    obj.label100:setFontColor("white");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.flowPart134);
    obj.layout80:setFrameRegion("titulo");
    obj.layout80:setName("layout80");

    obj.button58 = GUI.fromHandle(_obj_newObject("button"));
    obj.button58:setParent(obj.layout80);
    obj.button58:setAlign("client");
    obj.button58:setText("FOR??A");
    obj.button58:setVertTextAlign("center");
    obj.button58:setHorzTextAlign("center");
    obj.button58:setName("button58");

    obj.flowLayout29 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout29:setParent(obj.flowPart134);
    obj.flowLayout29:setFrameRegion("RegiaoDePericias");
    obj.flowLayout29:setAutoHeight(true);
    obj.flowLayout29:setLineSpacing(0);
    obj.flowLayout29:setHorzAlign("leading");
    obj.flowLayout29:setName("flowLayout29");
    obj.flowLayout29:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout29:setVertAlign("leading");

    obj.flowPart135 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart135:setParent(obj.flowLayout29);
    obj.flowPart135:setMinWidth(206);
    obj.flowPart135:setMaxWidth(250);
    obj.flowPart135:setHeight(17);
    obj.flowPart135:setName("flowPart135");
    obj.flowPart135:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart135:setVertAlign("leading");

    obj.cbProfcompanionforca = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionforca:setParent(obj.flowPart135);
    obj.cbProfcompanionforca:setName("cbProfcompanionforca");
    obj.cbProfcompanionforca:setAlign("left");
    obj.cbProfcompanionforca:setField("resistencias.companionforca");
    obj.cbProfcompanionforca:setWidth(20);
    obj.cbProfcompanionforca:setHeight(20);
    obj.cbProfcompanionforca:setOptimize(false);
    obj.cbProfcompanionforca:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfcompanionforca:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink139 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink139:setParent(obj.flowPart135);
    obj.dataLink139:setField("macroExpertise.companionforca");
    obj.dataLink139:setName("dataLink139");

    obj.dataLink140 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink140:setParent(obj.flowPart135);
    obj.dataLink140:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink140:setName("dataLink140");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.flowPart135);
    obj.layout81:setAlign("left");
    obj.layout81:setWidth(26);
    obj.layout81:setMargins({left=2});
    obj.layout81:setName("layout81");

    obj.labProfcompanionforca = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionforca:setParent(obj.layout81);
    obj.labProfcompanionforca:setName("labProfcompanionforca");
    obj.labProfcompanionforca:setField("resistencias.bonuscompanionforcastr");
    obj.labProfcompanionforca:setAlign("client");
    obj.labProfcompanionforca:setHorzTextAlign("center");
    obj.labProfcompanionforca:setVertTextAlign("trailing");
    obj.labProfcompanionforca:setTextTrimming("none");
    obj.labProfcompanionforca:setFontColor("white");

    obj.horzLine39 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine39:setParent(obj.layout81);
    obj.horzLine39:setStrokeColor("white");
    obj.horzLine39:setStrokeSize(1);
    obj.horzLine39:setAlign("bottom");
    obj.horzLine39:setName("horzLine39");

    obj.button59 = GUI.fromHandle(_obj_newObject("button"));
    obj.button59:setParent(obj.flowPart135);
    obj.button59:setAlign("left");
    obj.button59:setText("Resist??ncia");
    obj.button59:setWidth(122);
    obj.button59:setMargins({left=2});
    obj.button59:setName("button59");

    obj.dataLink141 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink141:setParent(obj.flowLayout29);
    obj.dataLink141:setFields({'atributos.modcompanionforca', 'bonusProficiencia', 'resistencias.companionforca', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink141:setName("dataLink141");

    obj.flowPart136 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart136:setParent(obj.flowLayout29);
    obj.flowPart136:setMinWidth(206);
    obj.flowPart136:setMaxWidth(250);
    obj.flowPart136:setHeight(17);
    obj.flowPart136:setName("flowPart136");
    obj.flowPart136:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart136:setVertAlign("leading");

    obj.cbProfcompanionatletismo = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionatletismo:setParent(obj.flowPart136);
    obj.cbProfcompanionatletismo:setName("cbProfcompanionatletismo");
    obj.cbProfcompanionatletismo:setAlign("left");
    obj.cbProfcompanionatletismo:setField("pericias.companionatletismo");
    obj.cbProfcompanionatletismo:setWidth(20);
    obj.cbProfcompanionatletismo:setHeight(20);
    obj.cbProfcompanionatletismo:setOptimize(false);
    obj.cbProfcompanionatletismo:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionatletismo:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink142 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink142:setParent(obj.flowPart136);
    obj.dataLink142:setField("macroExpertise.companionatletismo");
    obj.dataLink142:setName("dataLink142");

    obj.dataLink143 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink143:setParent(obj.flowPart136);
    obj.dataLink143:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink143:setName("dataLink143");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.flowPart136);
    obj.layout82:setAlign("left");
    obj.layout82:setWidth(26);
    obj.layout82:setMargins({left=2});
    obj.layout82:setName("layout82");

    obj.labProfcompanionatletismo = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionatletismo:setParent(obj.layout82);
    obj.labProfcompanionatletismo:setName("labProfcompanionatletismo");
    obj.labProfcompanionatletismo:setField("pericias.bonuscompanionatletismostr");
    obj.labProfcompanionatletismo:setAlign("client");
    obj.labProfcompanionatletismo:setHorzTextAlign("center");
    obj.labProfcompanionatletismo:setVertTextAlign("trailing");
    obj.labProfcompanionatletismo:setTextTrimming("none");
    obj.labProfcompanionatletismo:setFontColor("white");

    obj.horzLine40 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine40:setParent(obj.layout82);
    obj.horzLine40:setStrokeColor("white");
    obj.horzLine40:setStrokeSize(1);
    obj.horzLine40:setAlign("bottom");
    obj.horzLine40:setName("horzLine40");

    obj.button60 = GUI.fromHandle(_obj_newObject("button"));
    obj.button60:setParent(obj.flowPart136);
    obj.button60:setAlign("left");
    obj.button60:setText("Atletismo");
    obj.button60:setWidth(122);
    obj.button60:setMargins({left=2});
    obj.button60:setName("button60");

    obj.dataLink144 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink144:setParent(obj.flowLayout29);
    obj.dataLink144:setFields({'atributos.modcompanionforca', 'bonusProficiencia', 'pericias.companionatletismo', 'macroExpertise.companionatletismo', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink144:setName("dataLink144");

    obj.dataLink145 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink145:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink145:setField("atributos.companiondestreza");
    obj.dataLink145:setName("dataLink145");

    obj.flowPart137 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart137:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart137:setHeight(140);
    obj.flowPart137:setMinWidth(320);
    obj.flowPart137:setMaxWidth(420);
    obj.flowPart137:setMinScaledWidth(305);
    obj.flowPart137:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart137:setName("flowPart137");
    obj.flowPart137:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart137:setVertAlign("leading");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.flowPart137);
    obj.layout83:setLeft(6);
    obj.layout83:setTop(12);
    obj.layout83:setWidth(116);
    obj.layout83:setHeight(115);
    obj.layout83:setName("layout83");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout83);
    obj.edit49:setAlign("top");
    obj.edit49:setMargins({left=30, right=30});
    obj.edit49:setField("atributos.companiondestreza");
    obj.edit49:setHeight(30);
    obj.edit49:setType("number");
    obj.edit49:setMin(0);
    obj.edit49:setMax(99);
    obj.edit49:setName("edit49");
    obj.edit49:setTransparent(true);
    obj.edit49:setVertTextAlign("center");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setFontSize(15);
    obj.edit49:setFontColor("white");

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.flowPart137);
    obj.label101:setFrameRegion("modificador");
    obj.label101:setField("atributos.modcompaniondestrezastr");
    obj.label101:setHorzTextAlign("center");
    obj.label101:setVertTextAlign("center");
    obj.label101:setFontSize(46);
    lfm_setPropAsString(obj.label101, "fontStyle",  "bold");
    obj.label101:setName("label101");
    obj.label101:setFontColor("white");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.flowPart137);
    obj.layout84:setFrameRegion("titulo");
    obj.layout84:setName("layout84");

    obj.button61 = GUI.fromHandle(_obj_newObject("button"));
    obj.button61:setParent(obj.layout84);
    obj.button61:setAlign("client");
    obj.button61:setText("DESTREZA");
    obj.button61:setVertTextAlign("center");
    obj.button61:setHorzTextAlign("center");
    obj.button61:setName("button61");

    obj.flowLayout30 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout30:setParent(obj.flowPart137);
    obj.flowLayout30:setFrameRegion("RegiaoDePericias");
    obj.flowLayout30:setAutoHeight(true);
    obj.flowLayout30:setLineSpacing(0);
    obj.flowLayout30:setHorzAlign("leading");
    obj.flowLayout30:setName("flowLayout30");
    obj.flowLayout30:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout30:setVertAlign("leading");

    obj.flowPart138 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart138:setParent(obj.flowLayout30);
    obj.flowPart138:setMinWidth(206);
    obj.flowPart138:setMaxWidth(250);
    obj.flowPart138:setHeight(17);
    obj.flowPart138:setName("flowPart138");
    obj.flowPart138:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart138:setVertAlign("leading");

    obj.cbProfcompaniondestreza = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompaniondestreza:setParent(obj.flowPart138);
    obj.cbProfcompaniondestreza:setName("cbProfcompaniondestreza");
    obj.cbProfcompaniondestreza:setAlign("left");
    obj.cbProfcompaniondestreza:setField("resistencias.companiondestreza");
    obj.cbProfcompaniondestreza:setWidth(20);
    obj.cbProfcompaniondestreza:setHeight(20);
    obj.cbProfcompaniondestreza:setOptimize(false);
    obj.cbProfcompaniondestreza:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfcompaniondestreza:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink146 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink146:setParent(obj.flowPart138);
    obj.dataLink146:setField("macroExpertise.companiondestreza");
    obj.dataLink146:setName("dataLink146");

    obj.dataLink147 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink147:setParent(obj.flowPart138);
    obj.dataLink147:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink147:setName("dataLink147");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.flowPart138);
    obj.layout85:setAlign("left");
    obj.layout85:setWidth(26);
    obj.layout85:setMargins({left=2});
    obj.layout85:setName("layout85");

    obj.labProfcompaniondestreza = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompaniondestreza:setParent(obj.layout85);
    obj.labProfcompaniondestreza:setName("labProfcompaniondestreza");
    obj.labProfcompaniondestreza:setField("resistencias.bonuscompaniondestrezastr");
    obj.labProfcompaniondestreza:setAlign("client");
    obj.labProfcompaniondestreza:setHorzTextAlign("center");
    obj.labProfcompaniondestreza:setVertTextAlign("trailing");
    obj.labProfcompaniondestreza:setTextTrimming("none");
    obj.labProfcompaniondestreza:setFontColor("white");

    obj.horzLine41 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine41:setParent(obj.layout85);
    obj.horzLine41:setStrokeColor("white");
    obj.horzLine41:setStrokeSize(1);
    obj.horzLine41:setAlign("bottom");
    obj.horzLine41:setName("horzLine41");

    obj.button62 = GUI.fromHandle(_obj_newObject("button"));
    obj.button62:setParent(obj.flowPart138);
    obj.button62:setAlign("left");
    obj.button62:setText("Resist??ncia");
    obj.button62:setWidth(122);
    obj.button62:setMargins({left=2});
    obj.button62:setName("button62");

    obj.dataLink148 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink148:setParent(obj.flowLayout30);
    obj.dataLink148:setFields({'atributos.modcompaniondestreza', 'bonusProficiencia', 'resistencias.companiondestreza', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink148:setName("dataLink148");

    obj.flowPart139 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart139:setParent(obj.flowLayout30);
    obj.flowPart139:setMinWidth(206);
    obj.flowPart139:setMaxWidth(250);
    obj.flowPart139:setHeight(17);
    obj.flowPart139:setName("flowPart139");
    obj.flowPart139:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart139:setVertAlign("leading");

    obj.cbProfcompanionacrobacia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionacrobacia:setParent(obj.flowPart139);
    obj.cbProfcompanionacrobacia:setName("cbProfcompanionacrobacia");
    obj.cbProfcompanionacrobacia:setAlign("left");
    obj.cbProfcompanionacrobacia:setField("pericias.companionacrobacia");
    obj.cbProfcompanionacrobacia:setWidth(20);
    obj.cbProfcompanionacrobacia:setHeight(20);
    obj.cbProfcompanionacrobacia:setOptimize(false);
    obj.cbProfcompanionacrobacia:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionacrobacia:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink149 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink149:setParent(obj.flowPart139);
    obj.dataLink149:setField("macroExpertise.companionacrobacia");
    obj.dataLink149:setName("dataLink149");

    obj.dataLink150 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink150:setParent(obj.flowPart139);
    obj.dataLink150:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink150:setName("dataLink150");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.flowPart139);
    obj.layout86:setAlign("left");
    obj.layout86:setWidth(26);
    obj.layout86:setMargins({left=2});
    obj.layout86:setName("layout86");

    obj.labProfcompanionacrobacia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionacrobacia:setParent(obj.layout86);
    obj.labProfcompanionacrobacia:setName("labProfcompanionacrobacia");
    obj.labProfcompanionacrobacia:setField("pericias.bonuscompanionacrobaciastr");
    obj.labProfcompanionacrobacia:setAlign("client");
    obj.labProfcompanionacrobacia:setHorzTextAlign("center");
    obj.labProfcompanionacrobacia:setVertTextAlign("trailing");
    obj.labProfcompanionacrobacia:setTextTrimming("none");
    obj.labProfcompanionacrobacia:setFontColor("white");

    obj.horzLine42 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine42:setParent(obj.layout86);
    obj.horzLine42:setStrokeColor("white");
    obj.horzLine42:setStrokeSize(1);
    obj.horzLine42:setAlign("bottom");
    obj.horzLine42:setName("horzLine42");

    obj.button63 = GUI.fromHandle(_obj_newObject("button"));
    obj.button63:setParent(obj.flowPart139);
    obj.button63:setAlign("left");
    obj.button63:setText("Acrobacia");
    obj.button63:setWidth(122);
    obj.button63:setMargins({left=2});
    obj.button63:setName("button63");

    obj.dataLink151 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink151:setParent(obj.flowLayout30);
    obj.dataLink151:setFields({'atributos.modcompaniondestreza', 'bonusProficiencia', 'pericias.companionacrobacia', 'macroExpertise.companionacrobacia', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink151:setName("dataLink151");

    obj.flowPart140 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart140:setParent(obj.flowLayout30);
    obj.flowPart140:setMinWidth(206);
    obj.flowPart140:setMaxWidth(250);
    obj.flowPart140:setHeight(17);
    obj.flowPart140:setName("flowPart140");
    obj.flowPart140:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart140:setVertAlign("leading");

    obj.cbProfcompanionfurtividade = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionfurtividade:setParent(obj.flowPart140);
    obj.cbProfcompanionfurtividade:setName("cbProfcompanionfurtividade");
    obj.cbProfcompanionfurtividade:setAlign("left");
    obj.cbProfcompanionfurtividade:setField("pericias.companionfurtividade");
    obj.cbProfcompanionfurtividade:setWidth(20);
    obj.cbProfcompanionfurtividade:setHeight(20);
    obj.cbProfcompanionfurtividade:setOptimize(false);
    obj.cbProfcompanionfurtividade:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionfurtividade:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink152 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink152:setParent(obj.flowPart140);
    obj.dataLink152:setField("macroExpertise.companionfurtividade");
    obj.dataLink152:setName("dataLink152");

    obj.dataLink153 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink153:setParent(obj.flowPart140);
    obj.dataLink153:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink153:setName("dataLink153");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.flowPart140);
    obj.layout87:setAlign("left");
    obj.layout87:setWidth(26);
    obj.layout87:setMargins({left=2});
    obj.layout87:setName("layout87");

    obj.labProfcompanionfurtividade = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionfurtividade:setParent(obj.layout87);
    obj.labProfcompanionfurtividade:setName("labProfcompanionfurtividade");
    obj.labProfcompanionfurtividade:setField("pericias.bonuscompanionfurtividadestr");
    obj.labProfcompanionfurtividade:setAlign("client");
    obj.labProfcompanionfurtividade:setHorzTextAlign("center");
    obj.labProfcompanionfurtividade:setVertTextAlign("trailing");
    obj.labProfcompanionfurtividade:setTextTrimming("none");
    obj.labProfcompanionfurtividade:setFontColor("white");

    obj.horzLine43 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine43:setParent(obj.layout87);
    obj.horzLine43:setStrokeColor("white");
    obj.horzLine43:setStrokeSize(1);
    obj.horzLine43:setAlign("bottom");
    obj.horzLine43:setName("horzLine43");

    obj.button64 = GUI.fromHandle(_obj_newObject("button"));
    obj.button64:setParent(obj.flowPart140);
    obj.button64:setAlign("left");
    obj.button64:setText("Furtividade");
    obj.button64:setWidth(122);
    obj.button64:setMargins({left=2});
    obj.button64:setName("button64");

    obj.dataLink154 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink154:setParent(obj.flowLayout30);
    obj.dataLink154:setFields({'atributos.modcompaniondestreza', 'bonusProficiencia', 'pericias.companionfurtividade', 'macroExpertise.companionfurtividade', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink154:setName("dataLink154");

    obj.flowPart141 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart141:setParent(obj.flowLayout30);
    obj.flowPart141:setMinWidth(206);
    obj.flowPart141:setMaxWidth(250);
    obj.flowPart141:setHeight(17);
    obj.flowPart141:setName("flowPart141");
    obj.flowPart141:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart141:setVertAlign("leading");

    obj.cbProfcompanionprestidigitacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionprestidigitacao:setParent(obj.flowPart141);
    obj.cbProfcompanionprestidigitacao:setName("cbProfcompanionprestidigitacao");
    obj.cbProfcompanionprestidigitacao:setAlign("left");
    obj.cbProfcompanionprestidigitacao:setField("pericias.companionprestidigitacao");
    obj.cbProfcompanionprestidigitacao:setWidth(20);
    obj.cbProfcompanionprestidigitacao:setHeight(20);
    obj.cbProfcompanionprestidigitacao:setOptimize(false);
    obj.cbProfcompanionprestidigitacao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionprestidigitacao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink155 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink155:setParent(obj.flowPart141);
    obj.dataLink155:setField("macroExpertise.companionprestidigitacao");
    obj.dataLink155:setName("dataLink155");

    obj.dataLink156 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink156:setParent(obj.flowPart141);
    obj.dataLink156:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink156:setName("dataLink156");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.flowPart141);
    obj.layout88:setAlign("left");
    obj.layout88:setWidth(26);
    obj.layout88:setMargins({left=2});
    obj.layout88:setName("layout88");

    obj.labProfcompanionprestidigitacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionprestidigitacao:setParent(obj.layout88);
    obj.labProfcompanionprestidigitacao:setName("labProfcompanionprestidigitacao");
    obj.labProfcompanionprestidigitacao:setField("pericias.bonuscompanionprestidigitacaostr");
    obj.labProfcompanionprestidigitacao:setAlign("client");
    obj.labProfcompanionprestidigitacao:setHorzTextAlign("center");
    obj.labProfcompanionprestidigitacao:setVertTextAlign("trailing");
    obj.labProfcompanionprestidigitacao:setTextTrimming("none");
    obj.labProfcompanionprestidigitacao:setFontColor("white");

    obj.horzLine44 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine44:setParent(obj.layout88);
    obj.horzLine44:setStrokeColor("white");
    obj.horzLine44:setStrokeSize(1);
    obj.horzLine44:setAlign("bottom");
    obj.horzLine44:setName("horzLine44");

    obj.button65 = GUI.fromHandle(_obj_newObject("button"));
    obj.button65:setParent(obj.flowPart141);
    obj.button65:setAlign("left");
    obj.button65:setText("Prestidigita????o");
    obj.button65:setWidth(122);
    obj.button65:setMargins({left=2});
    obj.button65:setName("button65");

    obj.dataLink157 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink157:setParent(obj.flowLayout30);
    obj.dataLink157:setFields({'atributos.modcompaniondestreza', 'bonusProficiencia', 'pericias.companionprestidigitacao', 'macroExpertise.companionprestidigitacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink157:setName("dataLink157");

    obj.dataLink158 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink158:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink158:setField("atributos.companionconstituicao");
    obj.dataLink158:setName("dataLink158");

    obj.flowPart142 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart142:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart142:setHeight(140);
    obj.flowPart142:setMinWidth(320);
    obj.flowPart142:setMaxWidth(420);
    obj.flowPart142:setMinScaledWidth(305);
    obj.flowPart142:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart142:setName("flowPart142");
    obj.flowPart142:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart142:setVertAlign("leading");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.flowPart142);
    obj.layout89:setLeft(6);
    obj.layout89:setTop(12);
    obj.layout89:setWidth(116);
    obj.layout89:setHeight(115);
    obj.layout89:setName("layout89");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout89);
    obj.edit50:setAlign("top");
    obj.edit50:setMargins({left=30, right=30});
    obj.edit50:setField("atributos.companionconstituicao");
    obj.edit50:setHeight(30);
    obj.edit50:setType("number");
    obj.edit50:setMin(0);
    obj.edit50:setMax(99);
    obj.edit50:setName("edit50");
    obj.edit50:setTransparent(true);
    obj.edit50:setVertTextAlign("center");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setFontSize(15);
    obj.edit50:setFontColor("white");

    obj.label102 = GUI.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.flowPart142);
    obj.label102:setFrameRegion("modificador");
    obj.label102:setField("atributos.modcompanionconstituicaostr");
    obj.label102:setHorzTextAlign("center");
    obj.label102:setVertTextAlign("center");
    obj.label102:setFontSize(46);
    lfm_setPropAsString(obj.label102, "fontStyle",  "bold");
    obj.label102:setName("label102");
    obj.label102:setFontColor("white");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.flowPart142);
    obj.layout90:setFrameRegion("titulo");
    obj.layout90:setName("layout90");

    obj.button66 = GUI.fromHandle(_obj_newObject("button"));
    obj.button66:setParent(obj.layout90);
    obj.button66:setAlign("client");
    obj.button66:setText("CONSTITUI????O");
    obj.button66:setVertTextAlign("center");
    obj.button66:setHorzTextAlign("center");
    obj.button66:setName("button66");

    obj.flowLayout31 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout31:setParent(obj.flowPart142);
    obj.flowLayout31:setFrameRegion("RegiaoDePericias");
    obj.flowLayout31:setAutoHeight(true);
    obj.flowLayout31:setLineSpacing(0);
    obj.flowLayout31:setHorzAlign("leading");
    obj.flowLayout31:setName("flowLayout31");
    obj.flowLayout31:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout31:setVertAlign("leading");

    obj.flowPart143 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart143:setParent(obj.flowLayout31);
    obj.flowPart143:setMinWidth(206);
    obj.flowPart143:setMaxWidth(250);
    obj.flowPart143:setHeight(17);
    obj.flowPart143:setName("flowPart143");
    obj.flowPart143:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart143:setVertAlign("leading");

    obj.cbProfcompanionconstituicao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionconstituicao:setParent(obj.flowPart143);
    obj.cbProfcompanionconstituicao:setName("cbProfcompanionconstituicao");
    obj.cbProfcompanionconstituicao:setAlign("left");
    obj.cbProfcompanionconstituicao:setField("resistencias.companionconstituicao");
    obj.cbProfcompanionconstituicao:setWidth(20);
    obj.cbProfcompanionconstituicao:setHeight(20);
    obj.cbProfcompanionconstituicao:setOptimize(false);
    obj.cbProfcompanionconstituicao:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfcompanionconstituicao:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink159 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink159:setParent(obj.flowPart143);
    obj.dataLink159:setField("macroExpertise.companionconstituicao");
    obj.dataLink159:setName("dataLink159");

    obj.dataLink160 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink160:setParent(obj.flowPart143);
    obj.dataLink160:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink160:setName("dataLink160");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.flowPart143);
    obj.layout91:setAlign("left");
    obj.layout91:setWidth(26);
    obj.layout91:setMargins({left=2});
    obj.layout91:setName("layout91");

    obj.labProfcompanionconstituicao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionconstituicao:setParent(obj.layout91);
    obj.labProfcompanionconstituicao:setName("labProfcompanionconstituicao");
    obj.labProfcompanionconstituicao:setField("resistencias.bonuscompanionconstituicaostr");
    obj.labProfcompanionconstituicao:setAlign("client");
    obj.labProfcompanionconstituicao:setHorzTextAlign("center");
    obj.labProfcompanionconstituicao:setVertTextAlign("trailing");
    obj.labProfcompanionconstituicao:setTextTrimming("none");
    obj.labProfcompanionconstituicao:setFontColor("white");

    obj.horzLine45 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine45:setParent(obj.layout91);
    obj.horzLine45:setStrokeColor("white");
    obj.horzLine45:setStrokeSize(1);
    obj.horzLine45:setAlign("bottom");
    obj.horzLine45:setName("horzLine45");

    obj.button67 = GUI.fromHandle(_obj_newObject("button"));
    obj.button67:setParent(obj.flowPart143);
    obj.button67:setAlign("left");
    obj.button67:setText("Resist??ncia");
    obj.button67:setWidth(122);
    obj.button67:setMargins({left=2});
    obj.button67:setName("button67");

    obj.dataLink161 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink161:setParent(obj.flowLayout31);
    obj.dataLink161:setFields({'atributos.modcompanionconstituicao', 'bonusProficiencia', 'resistencias.companionconstituicao', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink161:setName("dataLink161");

    obj.flowPart144 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart144:setParent(obj.flowLayout31);
    obj.flowPart144:setMinWidth(206);
    obj.flowPart144:setMaxWidth(250);
    obj.flowPart144:setHeight(17);
    obj.flowPart144:setName("flowPart144");
    obj.flowPart144:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart144:setVertAlign("leading");

    obj.cbProfcompanionconcentracao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionconcentracao:setParent(obj.flowPart144);
    obj.cbProfcompanionconcentracao:setName("cbProfcompanionconcentracao");
    obj.cbProfcompanionconcentracao:setAlign("left");
    obj.cbProfcompanionconcentracao:setField("pericias.companionconcentracao");
    obj.cbProfcompanionconcentracao:setWidth(20);
    obj.cbProfcompanionconcentracao:setHeight(20);
    obj.cbProfcompanionconcentracao:setOptimize(false);
    obj.cbProfcompanionconcentracao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionconcentracao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink162 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink162:setParent(obj.flowPart144);
    obj.dataLink162:setField("macroExpertise.companionconcentracao");
    obj.dataLink162:setName("dataLink162");

    obj.dataLink163 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink163:setParent(obj.flowPart144);
    obj.dataLink163:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink163:setName("dataLink163");

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.flowPart144);
    obj.layout92:setAlign("left");
    obj.layout92:setWidth(26);
    obj.layout92:setMargins({left=2});
    obj.layout92:setName("layout92");

    obj.labProfcompanionconcentracao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionconcentracao:setParent(obj.layout92);
    obj.labProfcompanionconcentracao:setName("labProfcompanionconcentracao");
    obj.labProfcompanionconcentracao:setField("pericias.bonuscompanionconcentracaostr");
    obj.labProfcompanionconcentracao:setAlign("client");
    obj.labProfcompanionconcentracao:setHorzTextAlign("center");
    obj.labProfcompanionconcentracao:setVertTextAlign("trailing");
    obj.labProfcompanionconcentracao:setTextTrimming("none");
    obj.labProfcompanionconcentracao:setFontColor("white");

    obj.horzLine46 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine46:setParent(obj.layout92);
    obj.horzLine46:setStrokeColor("white");
    obj.horzLine46:setStrokeSize(1);
    obj.horzLine46:setAlign("bottom");
    obj.horzLine46:setName("horzLine46");

    obj.button68 = GUI.fromHandle(_obj_newObject("button"));
    obj.button68:setParent(obj.flowPart144);
    obj.button68:setAlign("left");
    obj.button68:setText("Concentra????o");
    obj.button68:setWidth(122);
    obj.button68:setMargins({left=2});
    obj.button68:setName("button68");

    obj.dataLink164 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink164:setParent(obj.flowLayout31);
    obj.dataLink164:setFields({'atributos.modcompanionconstituicao', 'bonusProficiencia', 'pericias.companionconcentracao', 'macroExpertise.companionconcentracao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink164:setName("dataLink164");

    obj.flowPart145 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart145:setParent(obj.flowLayout31);
    obj.flowPart145:setMinWidth(206);
    obj.flowPart145:setMaxWidth(250);
    obj.flowPart145:setHeight(17);
    obj.flowPart145:setName("flowPart145");
    obj.flowPart145:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart145:setVertAlign("leading");

    obj.cbProfcompaniontolerancia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompaniontolerancia:setParent(obj.flowPart145);
    obj.cbProfcompaniontolerancia:setName("cbProfcompaniontolerancia");
    obj.cbProfcompaniontolerancia:setAlign("left");
    obj.cbProfcompaniontolerancia:setField("pericias.companiontolerancia");
    obj.cbProfcompaniontolerancia:setWidth(20);
    obj.cbProfcompaniontolerancia:setHeight(20);
    obj.cbProfcompaniontolerancia:setOptimize(false);
    obj.cbProfcompaniontolerancia:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompaniontolerancia:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink165 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink165:setParent(obj.flowPart145);
    obj.dataLink165:setField("macroExpertise.companiontolerancia");
    obj.dataLink165:setName("dataLink165");

    obj.dataLink166 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink166:setParent(obj.flowPart145);
    obj.dataLink166:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink166:setName("dataLink166");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.flowPart145);
    obj.layout93:setAlign("left");
    obj.layout93:setWidth(26);
    obj.layout93:setMargins({left=2});
    obj.layout93:setName("layout93");

    obj.labProfcompaniontolerancia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompaniontolerancia:setParent(obj.layout93);
    obj.labProfcompaniontolerancia:setName("labProfcompaniontolerancia");
    obj.labProfcompaniontolerancia:setField("pericias.bonuscompaniontoleranciastr");
    obj.labProfcompaniontolerancia:setAlign("client");
    obj.labProfcompaniontolerancia:setHorzTextAlign("center");
    obj.labProfcompaniontolerancia:setVertTextAlign("trailing");
    obj.labProfcompaniontolerancia:setTextTrimming("none");
    obj.labProfcompaniontolerancia:setFontColor("white");

    obj.horzLine47 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine47:setParent(obj.layout93);
    obj.horzLine47:setStrokeColor("white");
    obj.horzLine47:setStrokeSize(1);
    obj.horzLine47:setAlign("bottom");
    obj.horzLine47:setName("horzLine47");

    obj.button69 = GUI.fromHandle(_obj_newObject("button"));
    obj.button69:setParent(obj.flowPart145);
    obj.button69:setAlign("left");
    obj.button69:setText("Tolerancia");
    obj.button69:setWidth(122);
    obj.button69:setMargins({left=2});
    obj.button69:setName("button69");

    obj.dataLink167 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink167:setParent(obj.flowLayout31);
    obj.dataLink167:setFields({'atributos.modcompanionconstituicao', 'bonusProficiencia', 'pericias.companiontolerancia', 'macroExpertise.companiontolerancia', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink167:setName("dataLink167");

    obj.dataLink168 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink168:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink168:setField("atributos.companioninteligencia");
    obj.dataLink168:setName("dataLink168");

    obj.flowPart146 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart146:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart146:setHeight(140);
    obj.flowPart146:setMinWidth(320);
    obj.flowPart146:setMaxWidth(420);
    obj.flowPart146:setMinScaledWidth(305);
    obj.flowPart146:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart146:setName("flowPart146");
    obj.flowPart146:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart146:setVertAlign("leading");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.flowPart146);
    obj.layout94:setLeft(6);
    obj.layout94:setTop(12);
    obj.layout94:setWidth(116);
    obj.layout94:setHeight(115);
    obj.layout94:setName("layout94");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout94);
    obj.edit51:setAlign("top");
    obj.edit51:setMargins({left=30, right=30});
    obj.edit51:setField("atributos.companioninteligencia");
    obj.edit51:setHeight(30);
    obj.edit51:setType("number");
    obj.edit51:setMin(0);
    obj.edit51:setMax(99);
    obj.edit51:setName("edit51");
    obj.edit51:setTransparent(true);
    obj.edit51:setVertTextAlign("center");
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setFontSize(15);
    obj.edit51:setFontColor("white");

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.flowPart146);
    obj.label103:setFrameRegion("modificador");
    obj.label103:setField("atributos.modcompanioninteligenciastr");
    obj.label103:setHorzTextAlign("center");
    obj.label103:setVertTextAlign("center");
    obj.label103:setFontSize(46);
    lfm_setPropAsString(obj.label103, "fontStyle",  "bold");
    obj.label103:setName("label103");
    obj.label103:setFontColor("white");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.flowPart146);
    obj.layout95:setFrameRegion("titulo");
    obj.layout95:setName("layout95");

    obj.button70 = GUI.fromHandle(_obj_newObject("button"));
    obj.button70:setParent(obj.layout95);
    obj.button70:setAlign("client");
    obj.button70:setText("INTELIG??NCIA");
    obj.button70:setVertTextAlign("center");
    obj.button70:setHorzTextAlign("center");
    obj.button70:setName("button70");

    obj.flowLayout32 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout32:setParent(obj.flowPart146);
    obj.flowLayout32:setFrameRegion("RegiaoDePericias");
    obj.flowLayout32:setAutoHeight(true);
    obj.flowLayout32:setLineSpacing(0);
    obj.flowLayout32:setHorzAlign("leading");
    obj.flowLayout32:setName("flowLayout32");
    obj.flowLayout32:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout32:setVertAlign("leading");

    obj.flowPart147 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart147:setParent(obj.flowLayout32);
    obj.flowPart147:setMinWidth(206);
    obj.flowPart147:setMaxWidth(250);
    obj.flowPart147:setHeight(17);
    obj.flowPart147:setName("flowPart147");
    obj.flowPart147:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart147:setVertAlign("leading");

    obj.cbProfcompanioninteligencia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanioninteligencia:setParent(obj.flowPart147);
    obj.cbProfcompanioninteligencia:setName("cbProfcompanioninteligencia");
    obj.cbProfcompanioninteligencia:setAlign("left");
    obj.cbProfcompanioninteligencia:setField("resistencias.companioninteligencia");
    obj.cbProfcompanioninteligencia:setWidth(20);
    obj.cbProfcompanioninteligencia:setHeight(20);
    obj.cbProfcompanioninteligencia:setOptimize(false);
    obj.cbProfcompanioninteligencia:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfcompanioninteligencia:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink169 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink169:setParent(obj.flowPart147);
    obj.dataLink169:setField("macroExpertise.companioninteligencia");
    obj.dataLink169:setName("dataLink169");

    obj.dataLink170 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink170:setParent(obj.flowPart147);
    obj.dataLink170:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink170:setName("dataLink170");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.flowPart147);
    obj.layout96:setAlign("left");
    obj.layout96:setWidth(26);
    obj.layout96:setMargins({left=2});
    obj.layout96:setName("layout96");

    obj.labProfcompanioninteligencia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanioninteligencia:setParent(obj.layout96);
    obj.labProfcompanioninteligencia:setName("labProfcompanioninteligencia");
    obj.labProfcompanioninteligencia:setField("resistencias.bonuscompanioninteligenciastr");
    obj.labProfcompanioninteligencia:setAlign("client");
    obj.labProfcompanioninteligencia:setHorzTextAlign("center");
    obj.labProfcompanioninteligencia:setVertTextAlign("trailing");
    obj.labProfcompanioninteligencia:setTextTrimming("none");
    obj.labProfcompanioninteligencia:setFontColor("white");

    obj.horzLine48 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine48:setParent(obj.layout96);
    obj.horzLine48:setStrokeColor("white");
    obj.horzLine48:setStrokeSize(1);
    obj.horzLine48:setAlign("bottom");
    obj.horzLine48:setName("horzLine48");

    obj.button71 = GUI.fromHandle(_obj_newObject("button"));
    obj.button71:setParent(obj.flowPart147);
    obj.button71:setAlign("left");
    obj.button71:setText("Resist??ncia");
    obj.button71:setWidth(122);
    obj.button71:setMargins({left=2});
    obj.button71:setName("button71");

    obj.dataLink171 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink171:setParent(obj.flowLayout32);
    obj.dataLink171:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'resistencias.companioninteligencia', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink171:setName("dataLink171");

    obj.flowPart148 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart148:setParent(obj.flowLayout32);
    obj.flowPart148:setMinWidth(206);
    obj.flowPart148:setMaxWidth(250);
    obj.flowPart148:setHeight(17);
    obj.flowPart148:setName("flowPart148");
    obj.flowPart148:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart148:setVertAlign("leading");

    obj.cbProfcompanionarcanismo = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionarcanismo:setParent(obj.flowPart148);
    obj.cbProfcompanionarcanismo:setName("cbProfcompanionarcanismo");
    obj.cbProfcompanionarcanismo:setAlign("left");
    obj.cbProfcompanionarcanismo:setField("pericias.companionarcanismo");
    obj.cbProfcompanionarcanismo:setWidth(20);
    obj.cbProfcompanionarcanismo:setHeight(20);
    obj.cbProfcompanionarcanismo:setOptimize(false);
    obj.cbProfcompanionarcanismo:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionarcanismo:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink172 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink172:setParent(obj.flowPart148);
    obj.dataLink172:setField("macroExpertise.companionarcanismo");
    obj.dataLink172:setName("dataLink172");

    obj.dataLink173 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink173:setParent(obj.flowPart148);
    obj.dataLink173:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink173:setName("dataLink173");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.flowPart148);
    obj.layout97:setAlign("left");
    obj.layout97:setWidth(26);
    obj.layout97:setMargins({left=2});
    obj.layout97:setName("layout97");

    obj.labProfcompanionarcanismo = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionarcanismo:setParent(obj.layout97);
    obj.labProfcompanionarcanismo:setName("labProfcompanionarcanismo");
    obj.labProfcompanionarcanismo:setField("pericias.bonuscompanionarcanismostr");
    obj.labProfcompanionarcanismo:setAlign("client");
    obj.labProfcompanionarcanismo:setHorzTextAlign("center");
    obj.labProfcompanionarcanismo:setVertTextAlign("trailing");
    obj.labProfcompanionarcanismo:setTextTrimming("none");
    obj.labProfcompanionarcanismo:setFontColor("white");

    obj.horzLine49 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine49:setParent(obj.layout97);
    obj.horzLine49:setStrokeColor("white");
    obj.horzLine49:setStrokeSize(1);
    obj.horzLine49:setAlign("bottom");
    obj.horzLine49:setName("horzLine49");

    obj.button72 = GUI.fromHandle(_obj_newObject("button"));
    obj.button72:setParent(obj.flowPart148);
    obj.button72:setAlign("left");
    obj.button72:setText("Arcanismo");
    obj.button72:setWidth(122);
    obj.button72:setMargins({left=2});
    obj.button72:setName("button72");

    obj.dataLink174 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink174:setParent(obj.flowLayout32);
    obj.dataLink174:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'pericias.companionarcanismo', 'macroExpertise.companionarcanismo', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink174:setName("dataLink174");

    obj.flowPart149 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart149:setParent(obj.flowLayout32);
    obj.flowPart149:setMinWidth(206);
    obj.flowPart149:setMaxWidth(250);
    obj.flowPart149:setHeight(17);
    obj.flowPart149:setName("flowPart149");
    obj.flowPart149:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart149:setVertAlign("leading");

    obj.cbProfcompanionhistoria = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionhistoria:setParent(obj.flowPart149);
    obj.cbProfcompanionhistoria:setName("cbProfcompanionhistoria");
    obj.cbProfcompanionhistoria:setAlign("left");
    obj.cbProfcompanionhistoria:setField("pericias.companionhistoria");
    obj.cbProfcompanionhistoria:setWidth(20);
    obj.cbProfcompanionhistoria:setHeight(20);
    obj.cbProfcompanionhistoria:setOptimize(false);
    obj.cbProfcompanionhistoria:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionhistoria:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink175 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink175:setParent(obj.flowPart149);
    obj.dataLink175:setField("macroExpertise.companionhistoria");
    obj.dataLink175:setName("dataLink175");

    obj.dataLink176 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink176:setParent(obj.flowPart149);
    obj.dataLink176:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink176:setName("dataLink176");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.flowPart149);
    obj.layout98:setAlign("left");
    obj.layout98:setWidth(26);
    obj.layout98:setMargins({left=2});
    obj.layout98:setName("layout98");

    obj.labProfcompanionhistoria = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionhistoria:setParent(obj.layout98);
    obj.labProfcompanionhistoria:setName("labProfcompanionhistoria");
    obj.labProfcompanionhistoria:setField("pericias.bonuscompanionhistoriastr");
    obj.labProfcompanionhistoria:setAlign("client");
    obj.labProfcompanionhistoria:setHorzTextAlign("center");
    obj.labProfcompanionhistoria:setVertTextAlign("trailing");
    obj.labProfcompanionhistoria:setTextTrimming("none");
    obj.labProfcompanionhistoria:setFontColor("white");

    obj.horzLine50 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine50:setParent(obj.layout98);
    obj.horzLine50:setStrokeColor("white");
    obj.horzLine50:setStrokeSize(1);
    obj.horzLine50:setAlign("bottom");
    obj.horzLine50:setName("horzLine50");

    obj.button73 = GUI.fromHandle(_obj_newObject("button"));
    obj.button73:setParent(obj.flowPart149);
    obj.button73:setAlign("left");
    obj.button73:setText("Hist??ria");
    obj.button73:setWidth(122);
    obj.button73:setMargins({left=2});
    obj.button73:setName("button73");

    obj.dataLink177 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink177:setParent(obj.flowLayout32);
    obj.dataLink177:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'pericias.companionhistoria', 'macroExpertise.companionhistoria', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink177:setName("dataLink177");

    obj.flowPart150 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart150:setParent(obj.flowLayout32);
    obj.flowPart150:setMinWidth(206);
    obj.flowPart150:setMaxWidth(250);
    obj.flowPart150:setHeight(17);
    obj.flowPart150:setName("flowPart150");
    obj.flowPart150:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart150:setVertAlign("leading");

    obj.cbProfcompanioninvestigacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanioninvestigacao:setParent(obj.flowPart150);
    obj.cbProfcompanioninvestigacao:setName("cbProfcompanioninvestigacao");
    obj.cbProfcompanioninvestigacao:setAlign("left");
    obj.cbProfcompanioninvestigacao:setField("pericias.companioninvestigacao");
    obj.cbProfcompanioninvestigacao:setWidth(20);
    obj.cbProfcompanioninvestigacao:setHeight(20);
    obj.cbProfcompanioninvestigacao:setOptimize(false);
    obj.cbProfcompanioninvestigacao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanioninvestigacao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink178 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink178:setParent(obj.flowPart150);
    obj.dataLink178:setField("macroExpertise.companioninvestigacao");
    obj.dataLink178:setName("dataLink178");

    obj.dataLink179 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink179:setParent(obj.flowPart150);
    obj.dataLink179:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink179:setName("dataLink179");

    obj.layout99 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.flowPart150);
    obj.layout99:setAlign("left");
    obj.layout99:setWidth(26);
    obj.layout99:setMargins({left=2});
    obj.layout99:setName("layout99");

    obj.labProfcompanioninvestigacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanioninvestigacao:setParent(obj.layout99);
    obj.labProfcompanioninvestigacao:setName("labProfcompanioninvestigacao");
    obj.labProfcompanioninvestigacao:setField("pericias.bonuscompanioninvestigacaostr");
    obj.labProfcompanioninvestigacao:setAlign("client");
    obj.labProfcompanioninvestigacao:setHorzTextAlign("center");
    obj.labProfcompanioninvestigacao:setVertTextAlign("trailing");
    obj.labProfcompanioninvestigacao:setTextTrimming("none");
    obj.labProfcompanioninvestigacao:setFontColor("white");

    obj.horzLine51 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine51:setParent(obj.layout99);
    obj.horzLine51:setStrokeColor("white");
    obj.horzLine51:setStrokeSize(1);
    obj.horzLine51:setAlign("bottom");
    obj.horzLine51:setName("horzLine51");

    obj.button74 = GUI.fromHandle(_obj_newObject("button"));
    obj.button74:setParent(obj.flowPart150);
    obj.button74:setAlign("left");
    obj.button74:setText("Investiga????o");
    obj.button74:setWidth(122);
    obj.button74:setMargins({left=2});
    obj.button74:setName("button74");

    obj.dataLink180 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink180:setParent(obj.flowLayout32);
    obj.dataLink180:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'pericias.companioninvestigacao', 'macroExpertise.companioninvestigacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink180:setName("dataLink180");

    obj.flowPart151 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart151:setParent(obj.flowLayout32);
    obj.flowPart151:setMinWidth(206);
    obj.flowPart151:setMaxWidth(250);
    obj.flowPart151:setHeight(17);
    obj.flowPart151:setName("flowPart151");
    obj.flowPart151:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart151:setVertAlign("leading");

    obj.cbProfcompanionnatureza = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionnatureza:setParent(obj.flowPart151);
    obj.cbProfcompanionnatureza:setName("cbProfcompanionnatureza");
    obj.cbProfcompanionnatureza:setAlign("left");
    obj.cbProfcompanionnatureza:setField("pericias.companionnatureza");
    obj.cbProfcompanionnatureza:setWidth(20);
    obj.cbProfcompanionnatureza:setHeight(20);
    obj.cbProfcompanionnatureza:setOptimize(false);
    obj.cbProfcompanionnatureza:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionnatureza:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink181 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink181:setParent(obj.flowPart151);
    obj.dataLink181:setField("macroExpertise.companionnatureza");
    obj.dataLink181:setName("dataLink181");

    obj.dataLink182 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink182:setParent(obj.flowPart151);
    obj.dataLink182:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink182:setName("dataLink182");

    obj.layout100 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.flowPart151);
    obj.layout100:setAlign("left");
    obj.layout100:setWidth(26);
    obj.layout100:setMargins({left=2});
    obj.layout100:setName("layout100");

    obj.labProfcompanionnatureza = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionnatureza:setParent(obj.layout100);
    obj.labProfcompanionnatureza:setName("labProfcompanionnatureza");
    obj.labProfcompanionnatureza:setField("pericias.bonuscompanionnaturezastr");
    obj.labProfcompanionnatureza:setAlign("client");
    obj.labProfcompanionnatureza:setHorzTextAlign("center");
    obj.labProfcompanionnatureza:setVertTextAlign("trailing");
    obj.labProfcompanionnatureza:setTextTrimming("none");
    obj.labProfcompanionnatureza:setFontColor("white");

    obj.horzLine52 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine52:setParent(obj.layout100);
    obj.horzLine52:setStrokeColor("white");
    obj.horzLine52:setStrokeSize(1);
    obj.horzLine52:setAlign("bottom");
    obj.horzLine52:setName("horzLine52");

    obj.button75 = GUI.fromHandle(_obj_newObject("button"));
    obj.button75:setParent(obj.flowPart151);
    obj.button75:setAlign("left");
    obj.button75:setText("Natureza");
    obj.button75:setWidth(122);
    obj.button75:setMargins({left=2});
    obj.button75:setName("button75");

    obj.dataLink183 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink183:setParent(obj.flowLayout32);
    obj.dataLink183:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'pericias.companionnatureza', 'macroExpertise.companionnatureza', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink183:setName("dataLink183");

    obj.flowPart152 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart152:setParent(obj.flowLayout32);
    obj.flowPart152:setMinWidth(206);
    obj.flowPart152:setMaxWidth(250);
    obj.flowPart152:setHeight(17);
    obj.flowPart152:setName("flowPart152");
    obj.flowPart152:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart152:setVertAlign("leading");

    obj.cbProfcompanionreligiao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionreligiao:setParent(obj.flowPart152);
    obj.cbProfcompanionreligiao:setName("cbProfcompanionreligiao");
    obj.cbProfcompanionreligiao:setAlign("left");
    obj.cbProfcompanionreligiao:setField("pericias.companionreligiao");
    obj.cbProfcompanionreligiao:setWidth(20);
    obj.cbProfcompanionreligiao:setHeight(20);
    obj.cbProfcompanionreligiao:setOptimize(false);
    obj.cbProfcompanionreligiao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionreligiao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink184 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink184:setParent(obj.flowPart152);
    obj.dataLink184:setField("macroExpertise.companionreligiao");
    obj.dataLink184:setName("dataLink184");

    obj.dataLink185 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink185:setParent(obj.flowPart152);
    obj.dataLink185:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink185:setName("dataLink185");

    obj.layout101 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.flowPart152);
    obj.layout101:setAlign("left");
    obj.layout101:setWidth(26);
    obj.layout101:setMargins({left=2});
    obj.layout101:setName("layout101");

    obj.labProfcompanionreligiao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionreligiao:setParent(obj.layout101);
    obj.labProfcompanionreligiao:setName("labProfcompanionreligiao");
    obj.labProfcompanionreligiao:setField("pericias.bonuscompanionreligiaostr");
    obj.labProfcompanionreligiao:setAlign("client");
    obj.labProfcompanionreligiao:setHorzTextAlign("center");
    obj.labProfcompanionreligiao:setVertTextAlign("trailing");
    obj.labProfcompanionreligiao:setTextTrimming("none");
    obj.labProfcompanionreligiao:setFontColor("white");

    obj.horzLine53 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine53:setParent(obj.layout101);
    obj.horzLine53:setStrokeColor("white");
    obj.horzLine53:setStrokeSize(1);
    obj.horzLine53:setAlign("bottom");
    obj.horzLine53:setName("horzLine53");

    obj.button76 = GUI.fromHandle(_obj_newObject("button"));
    obj.button76:setParent(obj.flowPart152);
    obj.button76:setAlign("left");
    obj.button76:setText("Religi??o");
    obj.button76:setWidth(122);
    obj.button76:setMargins({left=2});
    obj.button76:setName("button76");

    obj.dataLink186 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink186:setParent(obj.flowLayout32);
    obj.dataLink186:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'pericias.companionreligiao', 'macroExpertise.companionreligiao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink186:setName("dataLink186");

    obj.dataLink187 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink187:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink187:setField("atributos.companionsabedoria");
    obj.dataLink187:setName("dataLink187");

    obj.flowPart153 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart153:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart153:setHeight(140);
    obj.flowPart153:setMinWidth(320);
    obj.flowPart153:setMaxWidth(420);
    obj.flowPart153:setMinScaledWidth(305);
    obj.flowPart153:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart153:setName("flowPart153");
    obj.flowPart153:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart153:setVertAlign("leading");

    obj.layout102 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.flowPart153);
    obj.layout102:setLeft(6);
    obj.layout102:setTop(12);
    obj.layout102:setWidth(116);
    obj.layout102:setHeight(115);
    obj.layout102:setName("layout102");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout102);
    obj.edit52:setAlign("top");
    obj.edit52:setMargins({left=30, right=30});
    obj.edit52:setField("atributos.companionsabedoria");
    obj.edit52:setHeight(30);
    obj.edit52:setType("number");
    obj.edit52:setMin(0);
    obj.edit52:setMax(99);
    obj.edit52:setName("edit52");
    obj.edit52:setTransparent(true);
    obj.edit52:setVertTextAlign("center");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setFontSize(15);
    obj.edit52:setFontColor("white");

    obj.label104 = GUI.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.flowPart153);
    obj.label104:setFrameRegion("modificador");
    obj.label104:setField("atributos.modcompanionsabedoriastr");
    obj.label104:setHorzTextAlign("center");
    obj.label104:setVertTextAlign("center");
    obj.label104:setFontSize(46);
    lfm_setPropAsString(obj.label104, "fontStyle",  "bold");
    obj.label104:setName("label104");
    obj.label104:setFontColor("white");

    obj.layout103 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.flowPart153);
    obj.layout103:setFrameRegion("titulo");
    obj.layout103:setName("layout103");

    obj.button77 = GUI.fromHandle(_obj_newObject("button"));
    obj.button77:setParent(obj.layout103);
    obj.button77:setAlign("client");
    obj.button77:setText("SABEDORIA");
    obj.button77:setVertTextAlign("center");
    obj.button77:setHorzTextAlign("center");
    obj.button77:setName("button77");

    obj.flowLayout33 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout33:setParent(obj.flowPart153);
    obj.flowLayout33:setFrameRegion("RegiaoDePericias");
    obj.flowLayout33:setAutoHeight(true);
    obj.flowLayout33:setLineSpacing(0);
    obj.flowLayout33:setHorzAlign("leading");
    obj.flowLayout33:setName("flowLayout33");
    obj.flowLayout33:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout33:setVertAlign("leading");

    obj.flowPart154 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart154:setParent(obj.flowLayout33);
    obj.flowPart154:setMinWidth(206);
    obj.flowPart154:setMaxWidth(250);
    obj.flowPart154:setHeight(17);
    obj.flowPart154:setName("flowPart154");
    obj.flowPart154:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart154:setVertAlign("leading");

    obj.cbProfcompanionsabedoria = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionsabedoria:setParent(obj.flowPart154);
    obj.cbProfcompanionsabedoria:setName("cbProfcompanionsabedoria");
    obj.cbProfcompanionsabedoria:setAlign("left");
    obj.cbProfcompanionsabedoria:setField("resistencias.companionsabedoria");
    obj.cbProfcompanionsabedoria:setWidth(20);
    obj.cbProfcompanionsabedoria:setHeight(20);
    obj.cbProfcompanionsabedoria:setOptimize(false);
    obj.cbProfcompanionsabedoria:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfcompanionsabedoria:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink188 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink188:setParent(obj.flowPart154);
    obj.dataLink188:setField("macroExpertise.companionsabedoria");
    obj.dataLink188:setName("dataLink188");

    obj.dataLink189 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink189:setParent(obj.flowPart154);
    obj.dataLink189:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink189:setName("dataLink189");

    obj.layout104 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.flowPart154);
    obj.layout104:setAlign("left");
    obj.layout104:setWidth(26);
    obj.layout104:setMargins({left=2});
    obj.layout104:setName("layout104");

    obj.labProfcompanionsabedoria = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionsabedoria:setParent(obj.layout104);
    obj.labProfcompanionsabedoria:setName("labProfcompanionsabedoria");
    obj.labProfcompanionsabedoria:setField("resistencias.bonuscompanionsabedoriastr");
    obj.labProfcompanionsabedoria:setAlign("client");
    obj.labProfcompanionsabedoria:setHorzTextAlign("center");
    obj.labProfcompanionsabedoria:setVertTextAlign("trailing");
    obj.labProfcompanionsabedoria:setTextTrimming("none");
    obj.labProfcompanionsabedoria:setFontColor("white");

    obj.horzLine54 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine54:setParent(obj.layout104);
    obj.horzLine54:setStrokeColor("white");
    obj.horzLine54:setStrokeSize(1);
    obj.horzLine54:setAlign("bottom");
    obj.horzLine54:setName("horzLine54");

    obj.button78 = GUI.fromHandle(_obj_newObject("button"));
    obj.button78:setParent(obj.flowPart154);
    obj.button78:setAlign("left");
    obj.button78:setText("Resist??ncia");
    obj.button78:setWidth(122);
    obj.button78:setMargins({left=2});
    obj.button78:setName("button78");

    obj.dataLink190 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink190:setParent(obj.flowLayout33);
    obj.dataLink190:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'resistencias.companionsabedoria', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink190:setName("dataLink190");

    obj.flowPart155 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart155:setParent(obj.flowLayout33);
    obj.flowPart155:setMinWidth(206);
    obj.flowPart155:setMaxWidth(250);
    obj.flowPart155:setHeight(17);
    obj.flowPart155:setName("flowPart155");
    obj.flowPart155:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart155:setVertAlign("leading");

    obj.cbProfcompanionadestrarAnimais = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionadestrarAnimais:setParent(obj.flowPart155);
    obj.cbProfcompanionadestrarAnimais:setName("cbProfcompanionadestrarAnimais");
    obj.cbProfcompanionadestrarAnimais:setAlign("left");
    obj.cbProfcompanionadestrarAnimais:setField("pericias.companionadestrarAnimais");
    obj.cbProfcompanionadestrarAnimais:setWidth(20);
    obj.cbProfcompanionadestrarAnimais:setHeight(20);
    obj.cbProfcompanionadestrarAnimais:setOptimize(false);
    obj.cbProfcompanionadestrarAnimais:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionadestrarAnimais:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink191 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink191:setParent(obj.flowPart155);
    obj.dataLink191:setField("macroExpertise.companionadestrarAnimais");
    obj.dataLink191:setName("dataLink191");

    obj.dataLink192 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink192:setParent(obj.flowPart155);
    obj.dataLink192:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink192:setName("dataLink192");

    obj.layout105 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.flowPart155);
    obj.layout105:setAlign("left");
    obj.layout105:setWidth(26);
    obj.layout105:setMargins({left=2});
    obj.layout105:setName("layout105");

    obj.labProfcompanionadestrarAnimais = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionadestrarAnimais:setParent(obj.layout105);
    obj.labProfcompanionadestrarAnimais:setName("labProfcompanionadestrarAnimais");
    obj.labProfcompanionadestrarAnimais:setField("pericias.bonuscompanionadestrarAnimaisstr");
    obj.labProfcompanionadestrarAnimais:setAlign("client");
    obj.labProfcompanionadestrarAnimais:setHorzTextAlign("center");
    obj.labProfcompanionadestrarAnimais:setVertTextAlign("trailing");
    obj.labProfcompanionadestrarAnimais:setTextTrimming("none");
    obj.labProfcompanionadestrarAnimais:setFontColor("white");

    obj.horzLine55 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine55:setParent(obj.layout105);
    obj.horzLine55:setStrokeColor("white");
    obj.horzLine55:setStrokeSize(1);
    obj.horzLine55:setAlign("bottom");
    obj.horzLine55:setName("horzLine55");

    obj.button79 = GUI.fromHandle(_obj_newObject("button"));
    obj.button79:setParent(obj.flowPart155);
    obj.button79:setAlign("left");
    obj.button79:setText("Adestrar Animais");
    obj.button79:setWidth(122);
    obj.button79:setMargins({left=2});
    obj.button79:setName("button79");

    obj.dataLink193 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink193:setParent(obj.flowLayout33);
    obj.dataLink193:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'pericias.companionadestrarAnimais', 'macroExpertise.companionadestrarAnimais', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink193:setName("dataLink193");

    obj.flowPart156 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart156:setParent(obj.flowLayout33);
    obj.flowPart156:setMinWidth(206);
    obj.flowPart156:setMaxWidth(250);
    obj.flowPart156:setHeight(17);
    obj.flowPart156:setName("flowPart156");
    obj.flowPart156:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart156:setVertAlign("leading");

    obj.cbProfcompanionintuicao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionintuicao:setParent(obj.flowPart156);
    obj.cbProfcompanionintuicao:setName("cbProfcompanionintuicao");
    obj.cbProfcompanionintuicao:setAlign("left");
    obj.cbProfcompanionintuicao:setField("pericias.companionintuicao");
    obj.cbProfcompanionintuicao:setWidth(20);
    obj.cbProfcompanionintuicao:setHeight(20);
    obj.cbProfcompanionintuicao:setOptimize(false);
    obj.cbProfcompanionintuicao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionintuicao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink194 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink194:setParent(obj.flowPart156);
    obj.dataLink194:setField("macroExpertise.companionintuicao");
    obj.dataLink194:setName("dataLink194");

    obj.dataLink195 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink195:setParent(obj.flowPart156);
    obj.dataLink195:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink195:setName("dataLink195");

    obj.layout106 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.flowPart156);
    obj.layout106:setAlign("left");
    obj.layout106:setWidth(26);
    obj.layout106:setMargins({left=2});
    obj.layout106:setName("layout106");

    obj.labProfcompanionintuicao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionintuicao:setParent(obj.layout106);
    obj.labProfcompanionintuicao:setName("labProfcompanionintuicao");
    obj.labProfcompanionintuicao:setField("pericias.bonuscompanionintuicaostr");
    obj.labProfcompanionintuicao:setAlign("client");
    obj.labProfcompanionintuicao:setHorzTextAlign("center");
    obj.labProfcompanionintuicao:setVertTextAlign("trailing");
    obj.labProfcompanionintuicao:setTextTrimming("none");
    obj.labProfcompanionintuicao:setFontColor("white");

    obj.horzLine56 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine56:setParent(obj.layout106);
    obj.horzLine56:setStrokeColor("white");
    obj.horzLine56:setStrokeSize(1);
    obj.horzLine56:setAlign("bottom");
    obj.horzLine56:setName("horzLine56");

    obj.button80 = GUI.fromHandle(_obj_newObject("button"));
    obj.button80:setParent(obj.flowPart156);
    obj.button80:setAlign("left");
    obj.button80:setText("Intui????o");
    obj.button80:setWidth(122);
    obj.button80:setMargins({left=2});
    obj.button80:setName("button80");

    obj.dataLink196 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink196:setParent(obj.flowLayout33);
    obj.dataLink196:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'pericias.companionintuicao', 'macroExpertise.companionintuicao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink196:setName("dataLink196");

    obj.flowPart157 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart157:setParent(obj.flowLayout33);
    obj.flowPart157:setMinWidth(206);
    obj.flowPart157:setMaxWidth(250);
    obj.flowPart157:setHeight(17);
    obj.flowPart157:setName("flowPart157");
    obj.flowPart157:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart157:setVertAlign("leading");

    obj.cbProfcompanionmedicina = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionmedicina:setParent(obj.flowPart157);
    obj.cbProfcompanionmedicina:setName("cbProfcompanionmedicina");
    obj.cbProfcompanionmedicina:setAlign("left");
    obj.cbProfcompanionmedicina:setField("pericias.companionmedicina");
    obj.cbProfcompanionmedicina:setWidth(20);
    obj.cbProfcompanionmedicina:setHeight(20);
    obj.cbProfcompanionmedicina:setOptimize(false);
    obj.cbProfcompanionmedicina:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionmedicina:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink197 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink197:setParent(obj.flowPart157);
    obj.dataLink197:setField("macroExpertise.companionmedicina");
    obj.dataLink197:setName("dataLink197");

    obj.dataLink198 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink198:setParent(obj.flowPart157);
    obj.dataLink198:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink198:setName("dataLink198");

    obj.layout107 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.flowPart157);
    obj.layout107:setAlign("left");
    obj.layout107:setWidth(26);
    obj.layout107:setMargins({left=2});
    obj.layout107:setName("layout107");

    obj.labProfcompanionmedicina = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionmedicina:setParent(obj.layout107);
    obj.labProfcompanionmedicina:setName("labProfcompanionmedicina");
    obj.labProfcompanionmedicina:setField("pericias.bonuscompanionmedicinastr");
    obj.labProfcompanionmedicina:setAlign("client");
    obj.labProfcompanionmedicina:setHorzTextAlign("center");
    obj.labProfcompanionmedicina:setVertTextAlign("trailing");
    obj.labProfcompanionmedicina:setTextTrimming("none");
    obj.labProfcompanionmedicina:setFontColor("white");

    obj.horzLine57 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine57:setParent(obj.layout107);
    obj.horzLine57:setStrokeColor("white");
    obj.horzLine57:setStrokeSize(1);
    obj.horzLine57:setAlign("bottom");
    obj.horzLine57:setName("horzLine57");

    obj.button81 = GUI.fromHandle(_obj_newObject("button"));
    obj.button81:setParent(obj.flowPart157);
    obj.button81:setAlign("left");
    obj.button81:setText("Medicina");
    obj.button81:setWidth(122);
    obj.button81:setMargins({left=2});
    obj.button81:setName("button81");

    obj.dataLink199 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink199:setParent(obj.flowLayout33);
    obj.dataLink199:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'pericias.companionmedicina', 'macroExpertise.companionmedicina', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink199:setName("dataLink199");

    obj.flowPart158 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart158:setParent(obj.flowLayout33);
    obj.flowPart158:setMinWidth(206);
    obj.flowPart158:setMaxWidth(250);
    obj.flowPart158:setHeight(17);
    obj.flowPart158:setName("flowPart158");
    obj.flowPart158:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart158:setVertAlign("leading");

    obj.cbProfcompanionpercepcao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionpercepcao:setParent(obj.flowPart158);
    obj.cbProfcompanionpercepcao:setName("cbProfcompanionpercepcao");
    obj.cbProfcompanionpercepcao:setAlign("left");
    obj.cbProfcompanionpercepcao:setField("pericias.companionpercepcao");
    obj.cbProfcompanionpercepcao:setWidth(20);
    obj.cbProfcompanionpercepcao:setHeight(20);
    obj.cbProfcompanionpercepcao:setOptimize(false);
    obj.cbProfcompanionpercepcao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionpercepcao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink200 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink200:setParent(obj.flowPart158);
    obj.dataLink200:setField("macroExpertise.companionpercepcao");
    obj.dataLink200:setName("dataLink200");

    obj.dataLink201 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink201:setParent(obj.flowPart158);
    obj.dataLink201:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink201:setName("dataLink201");

    obj.layout108 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.flowPart158);
    obj.layout108:setAlign("left");
    obj.layout108:setWidth(26);
    obj.layout108:setMargins({left=2});
    obj.layout108:setName("layout108");

    obj.labProfcompanionpercepcao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionpercepcao:setParent(obj.layout108);
    obj.labProfcompanionpercepcao:setName("labProfcompanionpercepcao");
    obj.labProfcompanionpercepcao:setField("pericias.bonuscompanionpercepcaostr");
    obj.labProfcompanionpercepcao:setAlign("client");
    obj.labProfcompanionpercepcao:setHorzTextAlign("center");
    obj.labProfcompanionpercepcao:setVertTextAlign("trailing");
    obj.labProfcompanionpercepcao:setTextTrimming("none");
    obj.labProfcompanionpercepcao:setFontColor("white");

    obj.horzLine58 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine58:setParent(obj.layout108);
    obj.horzLine58:setStrokeColor("white");
    obj.horzLine58:setStrokeSize(1);
    obj.horzLine58:setAlign("bottom");
    obj.horzLine58:setName("horzLine58");

    obj.button82 = GUI.fromHandle(_obj_newObject("button"));
    obj.button82:setParent(obj.flowPart158);
    obj.button82:setAlign("left");
    obj.button82:setText("Percep????o");
    obj.button82:setWidth(122);
    obj.button82:setMargins({left=2});
    obj.button82:setName("button82");

    obj.dataLink202 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink202:setParent(obj.flowLayout33);
    obj.dataLink202:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'pericias.companionpercepcao', 'macroExpertise.companionpercepcao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink202:setName("dataLink202");

    obj.flowPart159 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart159:setParent(obj.flowLayout33);
    obj.flowPart159:setMinWidth(206);
    obj.flowPart159:setMaxWidth(250);
    obj.flowPart159:setHeight(17);
    obj.flowPart159:setName("flowPart159");
    obj.flowPart159:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart159:setVertAlign("leading");

    obj.cbProfcompanionsobrevivencia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionsobrevivencia:setParent(obj.flowPart159);
    obj.cbProfcompanionsobrevivencia:setName("cbProfcompanionsobrevivencia");
    obj.cbProfcompanionsobrevivencia:setAlign("left");
    obj.cbProfcompanionsobrevivencia:setField("pericias.companionsobrevivencia");
    obj.cbProfcompanionsobrevivencia:setWidth(20);
    obj.cbProfcompanionsobrevivencia:setHeight(20);
    obj.cbProfcompanionsobrevivencia:setOptimize(false);
    obj.cbProfcompanionsobrevivencia:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionsobrevivencia:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink203 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink203:setParent(obj.flowPart159);
    obj.dataLink203:setField("macroExpertise.companionsobrevivencia");
    obj.dataLink203:setName("dataLink203");

    obj.dataLink204 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink204:setParent(obj.flowPart159);
    obj.dataLink204:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink204:setName("dataLink204");

    obj.layout109 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.flowPart159);
    obj.layout109:setAlign("left");
    obj.layout109:setWidth(26);
    obj.layout109:setMargins({left=2});
    obj.layout109:setName("layout109");

    obj.labProfcompanionsobrevivencia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionsobrevivencia:setParent(obj.layout109);
    obj.labProfcompanionsobrevivencia:setName("labProfcompanionsobrevivencia");
    obj.labProfcompanionsobrevivencia:setField("pericias.bonuscompanionsobrevivenciastr");
    obj.labProfcompanionsobrevivencia:setAlign("client");
    obj.labProfcompanionsobrevivencia:setHorzTextAlign("center");
    obj.labProfcompanionsobrevivencia:setVertTextAlign("trailing");
    obj.labProfcompanionsobrevivencia:setTextTrimming("none");
    obj.labProfcompanionsobrevivencia:setFontColor("white");

    obj.horzLine59 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine59:setParent(obj.layout109);
    obj.horzLine59:setStrokeColor("white");
    obj.horzLine59:setStrokeSize(1);
    obj.horzLine59:setAlign("bottom");
    obj.horzLine59:setName("horzLine59");

    obj.button83 = GUI.fromHandle(_obj_newObject("button"));
    obj.button83:setParent(obj.flowPart159);
    obj.button83:setAlign("left");
    obj.button83:setText("Sobreviv??ncia");
    obj.button83:setWidth(122);
    obj.button83:setMargins({left=2});
    obj.button83:setName("button83");

    obj.dataLink205 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink205:setParent(obj.flowLayout33);
    obj.dataLink205:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'pericias.companionsobrevivencia', 'macroExpertise.companionsobrevivencia', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink205:setName("dataLink205");

    obj.dataLink206 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink206:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink206:setField("atributos.companioncarisma");
    obj.dataLink206:setName("dataLink206");

    obj.flowPart160 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart160:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart160:setHeight(140);
    obj.flowPart160:setMinWidth(320);
    obj.flowPart160:setMaxWidth(420);
    obj.flowPart160:setMinScaledWidth(305);
    obj.flowPart160:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart160:setName("flowPart160");
    obj.flowPart160:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart160:setVertAlign("leading");

    obj.layout110 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.flowPart160);
    obj.layout110:setLeft(6);
    obj.layout110:setTop(12);
    obj.layout110:setWidth(116);
    obj.layout110:setHeight(115);
    obj.layout110:setName("layout110");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout110);
    obj.edit53:setAlign("top");
    obj.edit53:setMargins({left=30, right=30});
    obj.edit53:setField("atributos.companioncarisma");
    obj.edit53:setHeight(30);
    obj.edit53:setType("number");
    obj.edit53:setMin(0);
    obj.edit53:setMax(99);
    obj.edit53:setName("edit53");
    obj.edit53:setTransparent(true);
    obj.edit53:setVertTextAlign("center");
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setFontSize(15);
    obj.edit53:setFontColor("white");

    obj.label105 = GUI.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.flowPart160);
    obj.label105:setFrameRegion("modificador");
    obj.label105:setField("atributos.modcompanioncarismastr");
    obj.label105:setHorzTextAlign("center");
    obj.label105:setVertTextAlign("center");
    obj.label105:setFontSize(46);
    lfm_setPropAsString(obj.label105, "fontStyle",  "bold");
    obj.label105:setName("label105");
    obj.label105:setFontColor("white");

    obj.layout111 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.flowPart160);
    obj.layout111:setFrameRegion("titulo");
    obj.layout111:setName("layout111");

    obj.button84 = GUI.fromHandle(_obj_newObject("button"));
    obj.button84:setParent(obj.layout111);
    obj.button84:setAlign("client");
    obj.button84:setText("CARISMA");
    obj.button84:setVertTextAlign("center");
    obj.button84:setHorzTextAlign("center");
    obj.button84:setName("button84");

    obj.flowLayout34 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout34:setParent(obj.flowPart160);
    obj.flowLayout34:setFrameRegion("RegiaoDePericias");
    obj.flowLayout34:setAutoHeight(true);
    obj.flowLayout34:setLineSpacing(0);
    obj.flowLayout34:setHorzAlign("leading");
    obj.flowLayout34:setName("flowLayout34");
    obj.flowLayout34:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout34:setVertAlign("leading");

    obj.flowPart161 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart161:setParent(obj.flowLayout34);
    obj.flowPart161:setMinWidth(206);
    obj.flowPart161:setMaxWidth(250);
    obj.flowPart161:setHeight(17);
    obj.flowPart161:setName("flowPart161");
    obj.flowPart161:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart161:setVertAlign("leading");

    obj.cbProfcompanioncarisma = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanioncarisma:setParent(obj.flowPart161);
    obj.cbProfcompanioncarisma:setName("cbProfcompanioncarisma");
    obj.cbProfcompanioncarisma:setAlign("left");
    obj.cbProfcompanioncarisma:setField("resistencias.companioncarisma");
    obj.cbProfcompanioncarisma:setWidth(20);
    obj.cbProfcompanioncarisma:setHeight(20);
    obj.cbProfcompanioncarisma:setOptimize(false);
    obj.cbProfcompanioncarisma:setImageChecked("images/checkbox2_checked.png");
    obj.cbProfcompanioncarisma:setImageUnchecked("images/checkbox2_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink207 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink207:setParent(obj.flowPart161);
    obj.dataLink207:setField("macroExpertise.companioncarisma");
    obj.dataLink207:setName("dataLink207");

    obj.dataLink208 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink208:setParent(obj.flowPart161);
    obj.dataLink208:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink208:setName("dataLink208");

    obj.layout112 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.flowPart161);
    obj.layout112:setAlign("left");
    obj.layout112:setWidth(26);
    obj.layout112:setMargins({left=2});
    obj.layout112:setName("layout112");

    obj.labProfcompanioncarisma = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanioncarisma:setParent(obj.layout112);
    obj.labProfcompanioncarisma:setName("labProfcompanioncarisma");
    obj.labProfcompanioncarisma:setField("resistencias.bonuscompanioncarismastr");
    obj.labProfcompanioncarisma:setAlign("client");
    obj.labProfcompanioncarisma:setHorzTextAlign("center");
    obj.labProfcompanioncarisma:setVertTextAlign("trailing");
    obj.labProfcompanioncarisma:setTextTrimming("none");
    obj.labProfcompanioncarisma:setFontColor("white");

    obj.horzLine60 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine60:setParent(obj.layout112);
    obj.horzLine60:setStrokeColor("white");
    obj.horzLine60:setStrokeSize(1);
    obj.horzLine60:setAlign("bottom");
    obj.horzLine60:setName("horzLine60");

    obj.button85 = GUI.fromHandle(_obj_newObject("button"));
    obj.button85:setParent(obj.flowPart161);
    obj.button85:setAlign("left");
    obj.button85:setText("Resist??ncia");
    obj.button85:setWidth(122);
    obj.button85:setMargins({left=2});
    obj.button85:setName("button85");

    obj.dataLink209 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink209:setParent(obj.flowLayout34);
    obj.dataLink209:setFields({'atributos.modcompanioncarisma', 'bonusProficiencia', 'resistencias.companioncarisma', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink209:setName("dataLink209");

    obj.flowPart162 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart162:setParent(obj.flowLayout34);
    obj.flowPart162:setMinWidth(206);
    obj.flowPart162:setMaxWidth(250);
    obj.flowPart162:setHeight(17);
    obj.flowPart162:setName("flowPart162");
    obj.flowPart162:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart162:setVertAlign("leading");

    obj.cbProfcompanionatuacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionatuacao:setParent(obj.flowPart162);
    obj.cbProfcompanionatuacao:setName("cbProfcompanionatuacao");
    obj.cbProfcompanionatuacao:setAlign("left");
    obj.cbProfcompanionatuacao:setField("pericias.companionatuacao");
    obj.cbProfcompanionatuacao:setWidth(20);
    obj.cbProfcompanionatuacao:setHeight(20);
    obj.cbProfcompanionatuacao:setOptimize(false);
    obj.cbProfcompanionatuacao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionatuacao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink210 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink210:setParent(obj.flowPart162);
    obj.dataLink210:setField("macroExpertise.companionatuacao");
    obj.dataLink210:setName("dataLink210");

    obj.dataLink211 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink211:setParent(obj.flowPart162);
    obj.dataLink211:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink211:setName("dataLink211");

    obj.layout113 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.flowPart162);
    obj.layout113:setAlign("left");
    obj.layout113:setWidth(26);
    obj.layout113:setMargins({left=2});
    obj.layout113:setName("layout113");

    obj.labProfcompanionatuacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionatuacao:setParent(obj.layout113);
    obj.labProfcompanionatuacao:setName("labProfcompanionatuacao");
    obj.labProfcompanionatuacao:setField("pericias.bonuscompanionatuacaostr");
    obj.labProfcompanionatuacao:setAlign("client");
    obj.labProfcompanionatuacao:setHorzTextAlign("center");
    obj.labProfcompanionatuacao:setVertTextAlign("trailing");
    obj.labProfcompanionatuacao:setTextTrimming("none");
    obj.labProfcompanionatuacao:setFontColor("white");

    obj.horzLine61 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine61:setParent(obj.layout113);
    obj.horzLine61:setStrokeColor("white");
    obj.horzLine61:setStrokeSize(1);
    obj.horzLine61:setAlign("bottom");
    obj.horzLine61:setName("horzLine61");

    obj.button86 = GUI.fromHandle(_obj_newObject("button"));
    obj.button86:setParent(obj.flowPart162);
    obj.button86:setAlign("left");
    obj.button86:setText("Atua????o");
    obj.button86:setWidth(122);
    obj.button86:setMargins({left=2});
    obj.button86:setName("button86");

    obj.dataLink212 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink212:setParent(obj.flowLayout34);
    obj.dataLink212:setFields({'atributos.modcompanioncarisma', 'bonusProficiencia', 'pericias.companionatuacao', 'macroExpertise.companionatuacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink212:setName("dataLink212");

    obj.flowPart163 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart163:setParent(obj.flowLayout34);
    obj.flowPart163:setMinWidth(206);
    obj.flowPart163:setMaxWidth(250);
    obj.flowPart163:setHeight(17);
    obj.flowPart163:setName("flowPart163");
    obj.flowPart163:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart163:setVertAlign("leading");

    obj.cbProfcompanionenganacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionenganacao:setParent(obj.flowPart163);
    obj.cbProfcompanionenganacao:setName("cbProfcompanionenganacao");
    obj.cbProfcompanionenganacao:setAlign("left");
    obj.cbProfcompanionenganacao:setField("pericias.companionenganacao");
    obj.cbProfcompanionenganacao:setWidth(20);
    obj.cbProfcompanionenganacao:setHeight(20);
    obj.cbProfcompanionenganacao:setOptimize(false);
    obj.cbProfcompanionenganacao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionenganacao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink213 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink213:setParent(obj.flowPart163);
    obj.dataLink213:setField("macroExpertise.companionenganacao");
    obj.dataLink213:setName("dataLink213");

    obj.dataLink214 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink214:setParent(obj.flowPart163);
    obj.dataLink214:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink214:setName("dataLink214");

    obj.layout114 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.flowPart163);
    obj.layout114:setAlign("left");
    obj.layout114:setWidth(26);
    obj.layout114:setMargins({left=2});
    obj.layout114:setName("layout114");

    obj.labProfcompanionenganacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionenganacao:setParent(obj.layout114);
    obj.labProfcompanionenganacao:setName("labProfcompanionenganacao");
    obj.labProfcompanionenganacao:setField("pericias.bonuscompanionenganacaostr");
    obj.labProfcompanionenganacao:setAlign("client");
    obj.labProfcompanionenganacao:setHorzTextAlign("center");
    obj.labProfcompanionenganacao:setVertTextAlign("trailing");
    obj.labProfcompanionenganacao:setTextTrimming("none");
    obj.labProfcompanionenganacao:setFontColor("white");

    obj.horzLine62 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine62:setParent(obj.layout114);
    obj.horzLine62:setStrokeColor("white");
    obj.horzLine62:setStrokeSize(1);
    obj.horzLine62:setAlign("bottom");
    obj.horzLine62:setName("horzLine62");

    obj.button87 = GUI.fromHandle(_obj_newObject("button"));
    obj.button87:setParent(obj.flowPart163);
    obj.button87:setAlign("left");
    obj.button87:setText("Engana????o");
    obj.button87:setWidth(122);
    obj.button87:setMargins({left=2});
    obj.button87:setName("button87");

    obj.dataLink215 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink215:setParent(obj.flowLayout34);
    obj.dataLink215:setFields({'atributos.modcompanioncarisma', 'bonusProficiencia', 'pericias.companionenganacao', 'macroExpertise.companionenganacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink215:setName("dataLink215");

    obj.flowPart164 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart164:setParent(obj.flowLayout34);
    obj.flowPart164:setMinWidth(206);
    obj.flowPart164:setMaxWidth(250);
    obj.flowPart164:setHeight(17);
    obj.flowPart164:setName("flowPart164");
    obj.flowPart164:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart164:setVertAlign("leading");

    obj.cbProfcompanionintimidacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionintimidacao:setParent(obj.flowPart164);
    obj.cbProfcompanionintimidacao:setName("cbProfcompanionintimidacao");
    obj.cbProfcompanionintimidacao:setAlign("left");
    obj.cbProfcompanionintimidacao:setField("pericias.companionintimidacao");
    obj.cbProfcompanionintimidacao:setWidth(20);
    obj.cbProfcompanionintimidacao:setHeight(20);
    obj.cbProfcompanionintimidacao:setOptimize(false);
    obj.cbProfcompanionintimidacao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionintimidacao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink216 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink216:setParent(obj.flowPart164);
    obj.dataLink216:setField("macroExpertise.companionintimidacao");
    obj.dataLink216:setName("dataLink216");

    obj.dataLink217 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink217:setParent(obj.flowPart164);
    obj.dataLink217:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink217:setName("dataLink217");

    obj.layout115 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.flowPart164);
    obj.layout115:setAlign("left");
    obj.layout115:setWidth(26);
    obj.layout115:setMargins({left=2});
    obj.layout115:setName("layout115");

    obj.labProfcompanionintimidacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionintimidacao:setParent(obj.layout115);
    obj.labProfcompanionintimidacao:setName("labProfcompanionintimidacao");
    obj.labProfcompanionintimidacao:setField("pericias.bonuscompanionintimidacaostr");
    obj.labProfcompanionintimidacao:setAlign("client");
    obj.labProfcompanionintimidacao:setHorzTextAlign("center");
    obj.labProfcompanionintimidacao:setVertTextAlign("trailing");
    obj.labProfcompanionintimidacao:setTextTrimming("none");
    obj.labProfcompanionintimidacao:setFontColor("white");

    obj.horzLine63 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine63:setParent(obj.layout115);
    obj.horzLine63:setStrokeColor("white");
    obj.horzLine63:setStrokeSize(1);
    obj.horzLine63:setAlign("bottom");
    obj.horzLine63:setName("horzLine63");

    obj.button88 = GUI.fromHandle(_obj_newObject("button"));
    obj.button88:setParent(obj.flowPart164);
    obj.button88:setAlign("left");
    obj.button88:setText("Intimida????o");
    obj.button88:setWidth(122);
    obj.button88:setMargins({left=2});
    obj.button88:setName("button88");

    obj.dataLink218 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink218:setParent(obj.flowLayout34);
    obj.dataLink218:setFields({'atributos.modcompanioncarisma', 'bonusProficiencia', 'pericias.companionintimidacao', 'macroExpertise.companionintimidacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink218:setName("dataLink218");

    obj.flowPart165 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart165:setParent(obj.flowLayout34);
    obj.flowPart165:setMinWidth(206);
    obj.flowPart165:setMaxWidth(250);
    obj.flowPart165:setHeight(17);
    obj.flowPart165:setName("flowPart165");
    obj.flowPart165:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart165:setVertAlign("leading");

    obj.cbProfcompanionpersuasao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionpersuasao:setParent(obj.flowPart165);
    obj.cbProfcompanionpersuasao:setName("cbProfcompanionpersuasao");
    obj.cbProfcompanionpersuasao:setAlign("left");
    obj.cbProfcompanionpersuasao:setField("pericias.companionpersuasao");
    obj.cbProfcompanionpersuasao:setWidth(20);
    obj.cbProfcompanionpersuasao:setHeight(20);
    obj.cbProfcompanionpersuasao:setOptimize(false);
    obj.cbProfcompanionpersuasao:setImageChecked("images/checkbox1_checked.png");
    obj.cbProfcompanionpersuasao:setImageUnchecked("images/checkbox1_unchecked.png");


					function updateCbVisibility(pericia)
						if sheet ~= nil then
							if common.pericias[pericia] ~= nil then
								local value;

								value = common.fichaTemEspecializacao(sheet, pericia);

								if value then self["cbProf" .. pericia]:setImageChecked("images/checkbox1_double_checked.png");
								else self["cbProf" .. pericia]:setImageChecked("images/checkbox1_checked.png");
								end;

								value = common.fichaTemPropriedade(sheet, 'jackOfAllTrades');
								if common.fichaTemPropriedade(sheet, 'remarkableAthlete') then
									if pericia == 'atletismo' then value = true; end;
									if pericia == 'acrobacia' then value = true; end;
									if pericia == 'furtividade' then value = true; end;
									if pericia == 'prestidigitacao' then value = true; end;
								end;

								if value then self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_half_checked.png");
								else self["cbProf" .. pericia]:setImageUnchecked("images/checkbox1_unchecked.png");
								end;
							else
								self["cbProf" .. pericia]:setImageChecked("images/checkbox2_checked.png");
								self["cbProf" .. pericia]:setImageUnchecked("images/checkbox2_unchecked.png");
							end;
						end;
					end;
				


    obj.dataLink219 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink219:setParent(obj.flowPart165);
    obj.dataLink219:setField("macroExpertise.companionpersuasao");
    obj.dataLink219:setName("dataLink219");

    obj.dataLink220 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink220:setParent(obj.flowPart165);
    obj.dataLink220:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink220:setName("dataLink220");

    obj.layout116 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.flowPart165);
    obj.layout116:setAlign("left");
    obj.layout116:setWidth(26);
    obj.layout116:setMargins({left=2});
    obj.layout116:setName("layout116");

    obj.labProfcompanionpersuasao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionpersuasao:setParent(obj.layout116);
    obj.labProfcompanionpersuasao:setName("labProfcompanionpersuasao");
    obj.labProfcompanionpersuasao:setField("pericias.bonuscompanionpersuasaostr");
    obj.labProfcompanionpersuasao:setAlign("client");
    obj.labProfcompanionpersuasao:setHorzTextAlign("center");
    obj.labProfcompanionpersuasao:setVertTextAlign("trailing");
    obj.labProfcompanionpersuasao:setTextTrimming("none");
    obj.labProfcompanionpersuasao:setFontColor("white");

    obj.horzLine64 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine64:setParent(obj.layout116);
    obj.horzLine64:setStrokeColor("white");
    obj.horzLine64:setStrokeSize(1);
    obj.horzLine64:setAlign("bottom");
    obj.horzLine64:setName("horzLine64");

    obj.button89 = GUI.fromHandle(_obj_newObject("button"));
    obj.button89:setParent(obj.flowPart165);
    obj.button89:setAlign("left");
    obj.button89:setText("Persuas??o");
    obj.button89:setWidth(122);
    obj.button89:setMargins({left=2});
    obj.button89:setName("button89");

    obj.dataLink221 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink221:setParent(obj.flowLayout34);
    obj.dataLink221:setFields({'atributos.modcompanioncarisma', 'bonusProficiencia', 'pericias.companionpersuasao', 'macroExpertise.companionpersuasao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink221:setName("dataLink221");

    obj.flowLayout35 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout35:setParent(obj.flowLayout28);
    obj.flowLayout35:setAutoHeight(true);
    obj.flowLayout35:setHorzAlign("center");
    obj.flowLayout35:setVertAlign("leading");
    obj.flowLayout35:setMaxControlsPerLine(1);
    obj.flowLayout35:setName("flowLayout35");
    obj.flowLayout35:setStepSizes({310, 360});
    obj.flowLayout35:setMinScaledWidth(300);
    obj.flowLayout35:setMaxScaledWidth(340);
    obj.flowLayout35:setAvoidScale(true);
    obj.flowLayout35:setMargins({left=1, right=1, top=2, bottom=2});

    obj.flowLayout36 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout36:setParent(obj.flowLayout35);
    obj.flowLayout36:setMinWidth(235);
    obj.flowLayout36:setMaxWidth(475);
    obj.flowLayout36:setAutoHeight(true);
    obj.flowLayout36:setAvoidScale(false);
    obj.flowLayout36:setVertAlign("center");
    obj.flowLayout36:setHorzAlign("justify");
    obj.flowLayout36:setName("flowLayout36");
    obj.flowLayout36:setMargins({left=1, right=1, top=2, bottom=2});

    obj.flowPart166 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart166:setParent(obj.flowLayout36);
    obj.flowPart166:setStepSizes({105});
    obj.flowPart166:setMinScaledWidth(75);
    obj.flowPart166:setHeight(120);
    obj.flowPart166:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart166:setName("flowPart166");
    obj.flowPart166:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart166:setVertAlign("leading");

    obj.button90 = GUI.fromHandle(_obj_newObject("button"));
    obj.button90:setParent(obj.flowPart166);
    obj.button90:setAlign("top");
    obj.button90:setText("INICIATIVA");
    obj.button90:setHeight(20);
    obj.button90:setFontSize(9);
    obj.button90:setWordWrap(true);
    obj.button90:setHorzTextAlign("center");
    obj.button90:setMargins({left=5, right=5});
    obj.button90:setTextTrimming("none");
    obj.button90:setName("button90");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.flowPart166);
    obj.edit54:setAlign("client");
    obj.edit54:setField("iniciativacompanion");
    obj.edit54:setFontSize(30);
    obj.edit54:setName("edit54");
    obj.edit54:setTransparent(true);
    obj.edit54:setVertTextAlign("center");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setFontColor("white");

    obj.flowPart167 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart167:setParent(obj.flowLayout36);
    obj.flowPart167:setStepSizes({105});
    obj.flowPart167:setMinScaledWidth(75);
    obj.flowPart167:setHeight(120);
    obj.flowPart167:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart167:setName("flowPart167");
    obj.flowPart167:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart167:setVertAlign("leading");

    obj.label106 = GUI.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.flowPart167);
    obj.label106:setAlign("top");
    obj.label106:setText("DESLOCAMENTO ANDANDO");
    obj.label106:setHeight(20);
    obj.label106:setFontSize(9);
    obj.label106:setWordWrap(true);
    obj.label106:setHorzTextAlign("center");
    obj.label106:setTextTrimming("none");
    obj.label106:setName("label106");
    obj.label106:setFontColor("white");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.flowPart167);
    obj.edit55:setAlign("client");
    obj.edit55:setField("deslocamento andando Companion");
    obj.edit55:setFontSize(30);
    obj.edit55:setName("edit55");
    obj.edit55:setTransparent(true);
    obj.edit55:setVertTextAlign("center");
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setFontColor("white");

    obj.flowPart168 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart168:setParent(obj.flowLayout36);
    obj.flowPart168:setStepSizes({105});
    obj.flowPart168:setMinScaledWidth(75);
    obj.flowPart168:setHeight(120);
    obj.flowPart168:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart168:setName("flowPart168");
    obj.flowPart168:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart168:setVertAlign("leading");

    obj.label107 = GUI.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.flowPart168);
    obj.label107:setAlign("top");
    obj.label107:setText("DESLOCAMENTO NADO / ESCALADA");
    obj.label107:setHeight(20);
    obj.label107:setFontSize(9);
    obj.label107:setWordWrap(true);
    obj.label107:setHorzTextAlign("center");
    obj.label107:setTextTrimming("none");
    obj.label107:setName("label107");
    obj.label107:setFontColor("white");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.flowPart168);
    obj.edit56:setAlign("client");
    obj.edit56:setField("deslocamento nado Companion");
    obj.edit56:setFontSize(30);
    obj.edit56:setName("edit56");
    obj.edit56:setTransparent(true);
    obj.edit56:setVertTextAlign("center");
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setFontColor("white");

    obj.flowPart169 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart169:setParent(obj.flowLayout36);
    obj.flowPart169:setStepSizes({105});
    obj.flowPart169:setMinScaledWidth(75);
    obj.flowPart169:setHeight(120);
    obj.flowPart169:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart169:setName("flowPart169");
    obj.flowPart169:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart169:setVertAlign("leading");

    obj.label108 = GUI.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.flowPart169);
    obj.label108:setAlign("top");
    obj.label108:setText("DESLOCAMENTO VOO");
    obj.label108:setHeight(20);
    obj.label108:setFontSize(9);
    obj.label108:setWordWrap(true);
    obj.label108:setHorzTextAlign("center");
    obj.label108:setTextTrimming("none");
    obj.label108:setName("label108");
    obj.label108:setFontColor("white");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.flowPart169);
    obj.edit57:setAlign("client");
    obj.edit57:setField("deslocamento voo Companion");
    obj.edit57:setFontSize(30);
    obj.edit57:setName("edit57");
    obj.edit57:setTransparent(true);
    obj.edit57:setVertTextAlign("center");
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setFontColor("white");

    obj.flowPart170 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart170:setParent(obj.flowLayout35);
    obj.flowPart170:setMinWidth(235);
    obj.flowPart170:setMaxWidth(475);
    obj.flowPart170:setMinScaledWidth(200);
    obj.flowPart170:setHeight(175);
    obj.flowPart170:setMargins({left=2, right=2, top=4, bottom=8});
    obj.flowPart170:setName("flowPart170");
    obj.flowPart170:setVertAlign("leading");

    obj.frame8 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame8:setParent(obj.flowPart170);
    obj.frame8:setAlign("client");
    obj.frame8:setFrameStyle("frames/panel5/topPanel.xml");
    obj.frame8:setMargins({left = 4, right = 4, bottom=4});
    obj.frame8:setName("frame8");

    obj.layout117 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.frame8);
    obj.layout117:setAlign("client");
    obj.layout117:setMargins({left=5,right=5,bottom=5,top=5});
    obj.layout117:setName("layout117");

    obj.flowLayout37 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout37:setParent(obj.layout117);
    obj.flowLayout37:setAlign("top");
    obj.flowLayout37:setHorzAlign("center");
    obj.flowLayout37:setHeight(30);
    obj.flowLayout37:setMargins({bottom=5});
    obj.flowLayout37:setName("flowLayout37");
    obj.flowLayout37:setVertAlign("leading");

 require("descanso.lua"); 


    obj.button91 = GUI.fromHandle(_obj_newObject("button"));
    obj.button91:setParent(obj.flowLayout37);
    obj.button91:setText("Short Rest");
    obj.button91:setWidth(75);
    obj.button91:setName("button91");

    obj.button92 = GUI.fromHandle(_obj_newObject("button"));
    obj.button92:setParent(obj.flowLayout37);
    obj.button92:setText("Long Rest");
    obj.button92:setWidth(75);
    obj.button92:setName("button92");

    obj.button93 = GUI.fromHandle(_obj_newObject("button"));
    obj.button93:setParent(obj.flowLayout37);
    obj.button93:setText("Dano");
    obj.button93:setWidth(50);
    obj.button93:setName("button93");

    obj.colorComboBox2 = GUI.fromHandle(_obj_newObject("colorComboBox"));
    obj.colorComboBox2:setParent(obj.flowLayout37);
    obj.colorComboBox2:setAlign("right");
    obj.colorComboBox2:setMargins({left=2});
    obj.colorComboBox2:setWidth(50);
    obj.colorComboBox2:setField("barColor2");
    obj.colorComboBox2:setUseAlpha(false);
    obj.colorComboBox2:setName("colorComboBox2");

    obj.dataLink222 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink222:setParent(obj.flowLayout37);
    obj.dataLink222:setField("barColor2");
    obj.dataLink222:setDefaultValue("Red");
    obj.dataLink222:setName("dataLink222");

    obj.layout118 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.layout117);
    obj.layout118:setAlign("client");
    obj.layout118:setMargins({bottom=10});
    obj.layout118:setName("layout118");

    obj.layout119 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.layout118);
    obj.layout119:setAlign("right");
    obj.layout119:setWidth(81);
    obj.layout119:setName("layout119");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout119);
    obj.edit58:setAlign("left");
    obj.edit58:setMargins({left=2});
    obj.edit58:setWidth(35);
    obj.edit58:setField("PV2");
    obj.edit58:setType("number");
    obj.edit58:setMin(0);
    obj.edit58:setName("edit58");
    obj.edit58:setFontSize(15);
    obj.edit58:setFontColor("white");

    obj.label109 = GUI.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.layout119);
    obj.label109:setAlign("left");
    obj.label109:setMargins({left=2});
    obj.label109:setText("/");
    obj.label109:setWidth(5);
    obj.label109:setName("label109");
    obj.label109:setFontColor("white");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout119);
    obj.edit59:setAlign("left");
    obj.edit59:setMargins({left=2});
    obj.edit59:setWidth(35);
    obj.edit59:setField("PVmax2");
    obj.edit59:setType("number");
    obj.edit59:setMin(0);
    obj.edit59:setName("edit59");
    obj.edit59:setFontSize(15);
    obj.edit59:setFontColor("white");

    obj.progBar2 = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.progBar2:setParent(obj.layout118);
    obj.progBar2:setName("progBar2");
    obj.progBar2:setAlign("client");
    obj.progBar2:setColor("yellow");
    obj.progBar2:setMin(0);
    obj.progBar2:setField("PV2");
    obj.progBar2:setFieldMax("PVmax2");

    obj.label110 = GUI.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.layout118);
    obj.label110:setAlign("client");
    obj.label110:setAutoSize(true);
    obj.label110:setText("PONTOS DE VIDA");
    obj.label110:setFontSize(11);
    obj.label110:setVertTextAlign("center");
    obj.label110:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label110, "fontStyle",  "bold");
    obj.label110:setMargins({top=1,left=1});
    obj.label110:setFontColor("black");
    obj.label110:setName("label110");

    obj.label111 = GUI.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.layout118);
    obj.label111:setAlign("client");
    obj.label111:setAutoSize(true);
    obj.label111:setText("PONTOS DE VIDA");
    obj.label111:setFontSize(11);
    obj.label111:setVertTextAlign("center");
    obj.label111:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label111, "fontStyle",  "bold");
    obj.label111:setName("label111");
    obj.label111:setFontColor("white");

    obj.dataLink223 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink223:setParent(obj.layout118);
    obj.dataLink223:setFields({'PV2', 'PVmax2'});
    obj.dataLink223:setName("dataLink223");

    obj.dataLink224 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink224:setParent(obj.layout117);
    obj.dataLink224:setField("descansoLongo");
    obj.dataLink224:setName("dataLink224");

    obj.frame9 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame9:setParent(obj.flowPart170);
    obj.frame9:setAlign("bottom");
    obj.frame9:setHeight(70);
    obj.frame9:setFrameStyle("frames/panel5/bottomPanel.xml");
    obj.frame9:setMargins({left = 4, right = 4});
    obj.frame9:setName("frame9");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.frame9);
    obj.edit60:setAlign("client");
    obj.edit60:setField("PVTemporario");
    obj.edit60:setMargins({top=2});
    obj.edit60:setHorzTextAlign("center");
    obj.edit60:setVertTextAlign("center");
    obj.edit60:setFontSize(36);
    lfm_setPropAsString(obj.edit60, "fontStyle",  "bold");
    obj.edit60:setType("number");
    obj.edit60:setName("edit60");
    obj.edit60:setFontColor("white");
    obj.edit60:setTransparent(true);

    obj.label112 = GUI.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.frame9);
    obj.label112:setAlign("bottom");
    obj.label112:setAutoSize(true);
    obj.label112:setText("PONTOS DE VIDA TEMPOR??RIOS");
    obj.label112:setFontSize(11);
    obj.label112:setVertTextAlign("center");
    obj.label112:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label112, "fontStyle",  "bold");
    obj.label112:setName("label112");
    obj.label112:setFontColor("white");

    obj.flowLayout38 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout38:setParent(obj.flowLayout35);
    obj.flowLayout38:setAutoHeight(true);
    obj.flowLayout38:setMinWidth(235);
    obj.flowLayout38:setMaxWidth(475);
    obj.flowLayout38:setMinScaledWidth(235);
    obj.flowLayout38:setHorzAlign("justify");
    obj.flowLayout38:setName("flowLayout38");
    obj.flowLayout38:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout38:setVertAlign("leading");

    obj.flowPart171 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart171:setParent(obj.flowLayout38);
    obj.flowPart171:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart171:setStepSizes({130, 150, 160});
    obj.flowPart171:setHeight(100);
    obj.flowPart171:setName("flowPart171");
    obj.flowPart171:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart171:setVertAlign("leading");

    obj.layout120 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.flowPart171);
    obj.layout120:setAlign("top");
    obj.layout120:setHeight(25);
    obj.layout120:setName("layout120");

    obj.label113 = GUI.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.layout120);
    obj.label113:setAlign("left");
    obj.label113:setAutoSize(true);
    obj.label113:setText("ACERTO:");
    obj.label113:setTextTrimming("none");
    obj.label113:setWordWrap(false);
    obj.label113:setFontSize(10);
    obj.label113:setHorzTextAlign("trailing");
    obj.label113:setName("label113");
    obj.label113:setFontColor("#D0D0D0");

    obj.layout121 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.layout120);
    obj.layout121:setAlign("client");
    obj.layout121:setMargins({left=5, right=3});
    obj.layout121:setName("layout121");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout121);
    obj.edit61:setAlign("client");
    obj.edit61:setField("DadosDeVidaTotalcompanion");
    obj.edit61:setVertTextAlign("center");
    obj.edit61:setHorzTextAlign("center");
    obj.edit61:setName("edit61");
    obj.edit61:setFontSize(15);
    obj.edit61:setFontColor("white");
    obj.edit61:setTransparent(true);

    obj.horzLine65 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine65:setParent(obj.layout121);
    obj.horzLine65:setAlign("bottom");
    obj.horzLine65:setStrokeColor("gray");
    obj.horzLine65:setName("horzLine65");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.flowPart171);
    obj.edit62:setAlign("client");
    obj.edit62:setField("DadosDeVidacompanion");
    obj.edit62:setMargins({top=2});
    obj.edit62:setHorzTextAlign("center");
    obj.edit62:setVertTextAlign("center");
    obj.edit62:setFontSize(21);
    obj.edit62:setName("edit62");
    obj.edit62:setFontColor("white");
    obj.edit62:setTransparent(true);

    obj.label114 = GUI.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.flowPart171);
    obj.label114:setAlign("bottom");
    obj.label114:setAutoSize(true);
    obj.label114:setText("DANO DO COMPANION");
    obj.label114:setFontSize(11);
    obj.label114:setVertTextAlign("center");
    obj.label114:setHorzTextAlign("center");
    obj.label114:setName("label114");
    obj.label114:setFontColor("white");

    obj.flowPart172 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart172:setParent(obj.flowLayout38);
    obj.flowPart172:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart172:setStepSizes({170, 170});
    obj.flowPart172:setHeight(100);
    obj.flowPart172:setName("flowPart172");
    obj.flowPart172:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart172:setVertAlign("leading");

    obj.layout122 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.flowPart172);
    obj.layout122:setAlign("top");
    obj.layout122:setHeight(25);
    obj.layout122:setMargins({left=2});
    obj.layout122:setName("layout122");

    obj.label115 = GUI.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.layout122);
    obj.label115:setAlign("client");
    obj.label115:setAutoSize(true);
    obj.label115:setFontSize(10);
    obj.label115:setText("SUCESSOS");
    obj.label115:setWordWrap(false);
    obj.label115:setVertTextAlign("center");
    obj.label115:setHorzTextAlign("trailing");
    obj.label115:setMargins({right=6});
    obj.label115:setName("label115");
    obj.label115:setFontColor("white");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout122);
    obj.imageCheckBox7:setAlign("right");
    obj.imageCheckBox7:setWidth(25);
    obj.imageCheckBox7:setMargins({right=2});
    obj.imageCheckBox7:setField("testesContraMorte.s0");
    obj.imageCheckBox7:setOptimize(false);
    obj.imageCheckBox7:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox7:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox7:setName("imageCheckBox7");
    obj.imageCheckBox7:setHeight(20);
    obj.imageCheckBox7:setVisible(true);

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout122);
    obj.imageCheckBox8:setAlign("right");
    obj.imageCheckBox8:setWidth(25);
    obj.imageCheckBox8:setMargins({right=2});
    obj.imageCheckBox8:setField("testesContraMorte.s1");
    obj.imageCheckBox8:setOptimize(false);
    obj.imageCheckBox8:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox8:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox8:setName("imageCheckBox8");
    obj.imageCheckBox8:setHeight(20);
    obj.imageCheckBox8:setVisible(true);

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout122);
    obj.imageCheckBox9:setAlign("right");
    obj.imageCheckBox9:setWidth(25);
    obj.imageCheckBox9:setMargins({right=6});
    obj.imageCheckBox9:setField("testesContraMorte.s2");
    obj.imageCheckBox9:setOptimize(false);
    obj.imageCheckBox9:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox9:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox9:setName("imageCheckBox9");
    obj.imageCheckBox9:setHeight(20);
    obj.imageCheckBox9:setVisible(true);

    obj.layout123 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.flowPart172);
    obj.layout123:setAlign("top");
    obj.layout123:setHeight(25);
    obj.layout123:setMargins({left=2, top = 4});
    obj.layout123:setName("layout123");

    obj.label116 = GUI.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.layout123);
    obj.label116:setAlign("client");
    obj.label116:setAutoSize(true);
    obj.label116:setFontSize(10);
    obj.label116:setText("FALHAS");
    obj.label116:setVertTextAlign("center");
    obj.label116:setHorzTextAlign("trailing");
    obj.label116:setMargins({right=6});
    obj.label116:setName("label116");
    obj.label116:setFontColor("white");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout123);
    obj.imageCheckBox10:setAlign("right");
    obj.imageCheckBox10:setWidth(25);
    obj.imageCheckBox10:setMargins({right=2});
    obj.imageCheckBox10:setField("testesContraMorte.f0");
    obj.imageCheckBox10:setOptimize(false);
    obj.imageCheckBox10:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox10:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox10:setName("imageCheckBox10");
    obj.imageCheckBox10:setHeight(20);
    obj.imageCheckBox10:setVisible(true);

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout123);
    obj.imageCheckBox11:setAlign("right");
    obj.imageCheckBox11:setWidth(25);
    obj.imageCheckBox11:setMargins({right=2});
    obj.imageCheckBox11:setField("testesContraMorte.f1");
    obj.imageCheckBox11:setOptimize(false);
    obj.imageCheckBox11:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox11:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox11:setName("imageCheckBox11");
    obj.imageCheckBox11:setHeight(20);
    obj.imageCheckBox11:setVisible(true);

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout123);
    obj.imageCheckBox12:setAlign("right");
    obj.imageCheckBox12:setWidth(25);
    obj.imageCheckBox12:setMargins({right=6});
    obj.imageCheckBox12:setField("testesContraMorte.f2");
    obj.imageCheckBox12:setOptimize(false);
    obj.imageCheckBox12:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox12:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox12:setName("imageCheckBox12");
    obj.imageCheckBox12:setHeight(20);
    obj.imageCheckBox12:setVisible(true);

    obj.button94 = GUI.fromHandle(_obj_newObject("button"));
    obj.button94:setParent(obj.flowPart172);
    obj.button94:setAlign("bottom");
    obj.button94:setText("TESTE CONTRA MORTE");
    obj.button94:setFontSize(11);
    obj.button94:setVertTextAlign("center");
    obj.button94:setHorzTextAlign("center");
    obj.button94:setName("button94");

    obj.tab12 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab12:setParent(obj.pgcPrincipal);
    obj.tab12:setTitle("C.ANOTA????ES");
    obj.tab12:setName("tab12");

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.tab12);
    obj.rectangle26:setAlign("client");
    obj.rectangle26:setStrokeColor("white");
    obj.rectangle26:setStrokeSize(1);
    obj.rectangle26:setName("rectangle26");
    obj.rectangle26:setColor("#40000000");
    obj.rectangle26:setXradius(10);
    obj.rectangle26:setYradius(10);

    obj.checkBox10 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox10:setParent(obj.rectangle26);
    obj.checkBox10:setAlign("right");
    obj.checkBox10:setWidth(15);
    obj.checkBox10:setField("companion.anotacoes_melhorado");
    obj.checkBox10:setName("checkBox10");

    obj.companionanotacoesFancy = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.companionanotacoesFancy:setParent(obj.rectangle26);
    obj.companionanotacoesFancy:setName("companionanotacoesFancy");
    obj.companionanotacoesFancy:setAlign("client");
    lfm_setPropAsString(obj.companionanotacoesFancy, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.companionanotacoesFancy, "defaultFontColor",  "white");
    obj.companionanotacoesFancy:setField("companion.anotacoes2");
    lfm_setPropAsString(obj.companionanotacoesFancy, "hideSelection",  "false");
    lfm_setPropAsString(obj.companionanotacoesFancy, "defaultFontSize",  "15");
    lfm_setPropAsString(obj.companionanotacoesFancy, "animateImages",  "true");
    obj.companionanotacoesFancy:setMargins({left=2, right=2, top=2, bottom=2});
    obj.companionanotacoesFancy:setVisible(false);

    obj.companionanotacoesMerda = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.companionanotacoesMerda:setParent(obj.rectangle26);
    obj.companionanotacoesMerda:setName("companionanotacoesMerda");
    obj.companionanotacoesMerda:setAlign("client");
    obj.companionanotacoesMerda:setField("companion.anotacoes");
    obj.companionanotacoesMerda:setMargins({left=2, right=2, top=2, bottom=2});
    obj.companionanotacoesMerda:setVisible(true);
    obj.companionanotacoesMerda:setTransparent(true);

    obj.tab13 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab13:setParent(obj.pgcPrincipal);
    obj.tab13:setTitle("ANOTA????ES");
    obj.tab13:setName("tab13");

    obj.rectangle27 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.tab13);
    obj.rectangle27:setAlign("client");
    obj.rectangle27:setStrokeColor("white");
    obj.rectangle27:setStrokeSize(1);
    obj.rectangle27:setName("rectangle27");
    obj.rectangle27:setColor("#40000000");
    obj.rectangle27:setXradius(10);
    obj.rectangle27:setYradius(10);

    obj.checkBox11 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox11:setParent(obj.rectangle27);
    obj.checkBox11:setAlign("right");
    obj.checkBox11:setWidth(15);
    obj.checkBox11:setField("outros.anotacoes_melhorado");
    obj.checkBox11:setName("checkBox11");

    obj.anotacoesFancy = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.anotacoesFancy:setParent(obj.rectangle27);
    obj.anotacoesFancy:setName("anotacoesFancy");
    obj.anotacoesFancy:setAlign("client");
    lfm_setPropAsString(obj.anotacoesFancy, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.anotacoesFancy, "defaultFontColor",  "white");
    obj.anotacoesFancy:setField("outros.anotacoes2");
    lfm_setPropAsString(obj.anotacoesFancy, "hideSelection",  "false");
    lfm_setPropAsString(obj.anotacoesFancy, "defaultFontSize",  "15");
    lfm_setPropAsString(obj.anotacoesFancy, "animateImages",  "true");
    obj.anotacoesFancy:setMargins({left=2, right=2, top=2, bottom=2});
    obj.anotacoesFancy:setVisible(false);

    obj.anotacoesMerda = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.anotacoesMerda:setParent(obj.rectangle27);
    obj.anotacoesMerda:setName("anotacoesMerda");
    obj.anotacoesMerda:setAlign("client");
    obj.anotacoesMerda:setField("outros.anotacoes");
    obj.anotacoesMerda:setMargins({left=2, right=2, top=2, bottom=2});
    obj.anotacoesMerda:setVisible(true);
    obj.anotacoesMerda:setTransparent(true);

    obj.tab14 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab14:setParent(obj.pgcPrincipal);
    obj.tab14:setTitle("CREDITOS");
    obj.tab14:setName("tab14");

    obj.frmFichaRPGmeister11_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaRPGmeister11_svg:setParent(obj.tab14);
    obj.frmFichaRPGmeister11_svg:setName("frmFichaRPGmeister11_svg");
    obj.frmFichaRPGmeister11_svg:setAlign("client");
    obj.frmFichaRPGmeister11_svg:setTheme("dark");

    obj.rectangle28 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.frmFichaRPGmeister11_svg);
    obj.rectangle28:setAlign("client");
    obj.rectangle28:setColor("black");
    obj.rectangle28:setStrokeColor("white");
    obj.rectangle28:setStrokeSize(1);
    obj.rectangle28:setName("rectangle28");
    obj.rectangle28:setXradius(10);
    obj.rectangle28:setYradius(10);


			local function recursiveFindControls(node, controlsList)
				local children = node:getChildren();
				if node:getClassName() == "recordList" then
					children = rclKids(node);
					--write(children[1]:getClassName());

					children = rclKids(children[1]);
				end;
				for i=1, #children, 1 do
					controlsList[#controlsList+1] = children[i];
					recursiveFindControls(children[i], controlsList);
				end;
			end;

			function rclKids(rcl)
				local ret = {};
				local i;
				local childCount = _obj_getProp(rcl.handle, "ChildrenCount");
				local child;
				local childHandle;
				local idxDest = 1;
					
				for i = 0, childCount - 1, 1 do
					childHandle = _gui_getChild(rcl.handle, i);
					
					if (childHandle ~= nil) then							
						child = GUI.fromHandle(childHandle);
						
						if (type(child) == "table") then							
							ret[idxDest] = child;
							idxDest = idxDest + 1;
						end
					end;	
				end
				
				return ret;
			end;

			local function findAllControls()
				local controlsList = {self};
				recursiveFindControls(self, controlsList);
				
				return controlsList;
			end;

			local function filterByClass(className, controls)
				local controlsFromClass = {};

				for i=1, #controls, 1 do
					if controls[i]:getClassName() == className then
						controlsFromClass[#controlsFromClass + 1] = controls[i];
					end;
				end;

				return controlsFromClass;
			end;

			local function findClass(className)
				local controls = findAllControls();
				return filterByClass(className, controls);
			end;

		


    obj.scrollBox8 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox8:setParent(obj.rectangle28);
    obj.scrollBox8:setAlign("client");
    obj.scrollBox8:setName("scrollBox8");

    obj.layout124 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.scrollBox8);
    obj.layout124:setLeft(10);
    obj.layout124:setTop(10);
    obj.layout124:setWidth(500);
    obj.layout124:setHeight(600);
    obj.layout124:setFrameStyle("frames/panel3transp/frame.xml");
    obj.layout124:setName("layout124");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.layout124);
    obj.image6:setLeft(10);
    obj.image6:setTop(10);
    obj.image6:setWidth(480);
    obj.image6:setHeight(580);
    obj.image6:setSRC("images/Mesa_do_Bolo.png");
    obj.image6:setStyle("stretch");
    obj.image6:setOptimize(true);
    obj.image6:setName("image6");

    obj.layout125 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.scrollBox8);
    obj.layout125:setLeft(525);
    obj.layout125:setTop(10);
    obj.layout125:setWidth(200);
    obj.layout125:setHeight(220);
    obj.layout125:setFrameStyle("frames/panel3transp/frame.xml");
    obj.layout125:setName("layout125");

    obj.label117 = GUI.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.layout125);
    obj.label117:setLeft(0);
    obj.label117:setTop(10);
    obj.label117:setWidth(200);
    obj.label117:setHeight(20);
    obj.label117:setText("Programador e Revis??o:");
    obj.label117:setHorzTextAlign("center");
    obj.label117:setName("label117");
    obj.label117:setFontColor("white");

    obj.label118 = GUI.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.layout125);
    obj.label118:setLeft(0);
    obj.label118:setTop(30);
    obj.label118:setWidth(200);
    obj.label118:setHeight(20);
    obj.label118:setText("Samael (Zambrakas)");
    obj.label118:setHorzTextAlign("center");
    obj.label118:setName("label118");
    obj.label118:setFontColor("white");

    obj.label119 = GUI.fromHandle(_obj_newObject("label"));
    obj.label119:setParent(obj.layout125);
    obj.label119:setLeft(0);
    obj.label119:setTop(50);
    obj.label119:setWidth(200);
    obj.label119:setHeight(20);
    obj.label119:setText("Krampus (Krampus)");
    obj.label119:setHorzTextAlign("center");
    obj.label119:setName("label119");
    obj.label119:setFontColor("white");

    obj.label120 = GUI.fromHandle(_obj_newObject("label"));
    obj.label120:setParent(obj.layout125);
    obj.label120:setLeft(0);
    obj.label120:setTop(80);
    obj.label120:setWidth(200);
    obj.label120:setHeight(20);
    obj.label120:setText("Arte:");
    obj.label120:setHorzTextAlign("center");
    obj.label120:setName("label120");
    obj.label120:setFontColor("white");

    obj.label121 = GUI.fromHandle(_obj_newObject("label"));
    obj.label121:setParent(obj.layout125);
    obj.label121:setLeft(0);
    obj.label121:setTop(100);
    obj.label121:setWidth(200);
    obj.label121:setHeight(20);
    obj.label121:setText("Samael (Zambrakas)");
    obj.label121:setHorzTextAlign("center");
    obj.label121:setName("label121");
    obj.label121:setFontColor("white");

    obj.label122 = GUI.fromHandle(_obj_newObject("label"));
    obj.label122:setParent(obj.layout125);
    obj.label122:setLeft(0);
    obj.label122:setTop(130);
    obj.label122:setWidth(200);
    obj.label122:setHeight(20);
    obj.label122:setText("Ficha feita para a mesa: ");
    obj.label122:setHorzTextAlign("center");
    obj.label122:setName("label122");
    obj.label122:setFontColor("white");

    obj.label123 = GUI.fromHandle(_obj_newObject("label"));
    obj.label123:setParent(obj.layout125);
    obj.label123:setLeft(0);
    obj.label123:setTop(150);
    obj.label123:setWidth(200);
    obj.label123:setHeight(20);
    obj.label123:setText("Mesa do Bolo");
    obj.label123:setHorzTextAlign("center");
    obj.label123:setName("label123");
    obj.label123:setFontColor("white");

    obj.label124 = GUI.fromHandle(_obj_newObject("label"));
    obj.label124:setParent(obj.layout125);
    obj.label124:setLeft(0);
    obj.label124:setTop(170);
    obj.label124:setWidth(200);
    obj.label124:setHeight(20);
    obj.label124:setText("Mesa da Veia");
    obj.label124:setHorzTextAlign("center");
    obj.label124:setName("label124");
    obj.label124:setFontColor("white");

    obj.label125 = GUI.fromHandle(_obj_newObject("label"));
    obj.label125:setParent(obj.layout125);
    obj.label125:setLeft(0);
    obj.label125:setTop(190);
    obj.label125:setWidth(200);
    obj.label125:setHeight(20);
    obj.label125:setText("Tales Of Alpha");
    obj.label125:setHorzTextAlign("center");
    obj.label125:setName("label125");
    obj.label125:setFontColor("white");

    obj.label126 = GUI.fromHandle(_obj_newObject("label"));
    obj.label126:setParent(obj.layout125);
    obj.label126:setLeft(0);
    obj.label126:setTop(210);
    obj.label126:setWidth(200);
    obj.label126:setHeight(20);
    obj.label126:setText(" ");
    obj.label126:setHorzTextAlign("center");
    obj.label126:setName("label126");
    obj.label126:setFontColor("white");

    obj.layout126 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.scrollBox8);
    obj.layout126:setLeft(525);
    obj.layout126:setTop(250);
    obj.layout126:setWidth(200);
    obj.layout126:setHeight(150);
    obj.layout126:setFrameStyle("frames/panel3transp/frame.xml");
    obj.layout126:setName("layout126");

    obj.label127 = GUI.fromHandle(_obj_newObject("label"));
    obj.label127:setParent(obj.layout126);
    obj.label127:setLeft(0);
    obj.label127:setTop(10);
    obj.label127:setWidth(80);
    obj.label127:setHeight(20);
    obj.label127:setText("Tema:");
    obj.label127:setHorzTextAlign("center");
    obj.label127:setName("label127");
    obj.label127:setFontColor("white");

    obj.comboBox13 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox13:setParent(obj.layout126);
    obj.comboBox13:setLeft(95);
    obj.comboBox13:setTop(10);
    obj.comboBox13:setWidth(90);
    obj.comboBox13:setField("theme");
    obj.comboBox13:setFontColor("white");
    obj.comboBox13:setItems({'Escuro',});
    obj.comboBox13:setHorzTextAlign("center");
    obj.comboBox13:setName("comboBox13");

    obj.dataLink225 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink225:setParent(obj.layout126);
    obj.dataLink225:setField("theme");
    obj.dataLink225:setDefaultValue("Escuro");
    obj.dataLink225:setName("dataLink225");

    obj.label128 = GUI.fromHandle(_obj_newObject("label"));
    obj.label128:setParent(obj.layout126);
    obj.label128:setLeft(0);
    obj.label128:setTop(35);
    obj.label128:setWidth(80);
    obj.label128:setHeight(20);
    obj.label128:setText("Cores: ");
    obj.label128:setHorzTextAlign("center");
    obj.label128:setName("label128");
    obj.label128:setFontColor("white");

    obj.label129 = GUI.fromHandle(_obj_newObject("label"));
    obj.label129:setParent(obj.layout126);
    obj.label129:setLeft(0);
    obj.label129:setTop(60);
    obj.label129:setWidth(80);
    obj.label129:setHeight(20);
    obj.label129:setText("Fundo: ");
    obj.label129:setHorzTextAlign("center");
    obj.label129:setName("label129");
    obj.label129:setFontColor("white");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.layout126);
    obj.edit63:setLeft(85);
    obj.edit63:setTop(60);
    obj.edit63:setWidth(90);
    obj.edit63:setField("colorBackground");
    obj.edit63:setTextPrompt("#FFFFFF");
    obj.edit63:setName("edit63");
    obj.edit63:setFontSize(15);
    obj.edit63:setFontColor("white");

    obj.dataLink226 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink226:setParent(obj.layout126);
    obj.dataLink226:setField("colorBackground");
    obj.dataLink226:setDefaultValue("#505050");
    obj.dataLink226:setName("dataLink226");

    obj.label130 = GUI.fromHandle(_obj_newObject("label"));
    obj.label130:setParent(obj.layout126);
    obj.label130:setLeft(0);
    obj.label130:setTop(85);
    obj.label130:setWidth(80);
    obj.label130:setHeight(20);
    obj.label130:setText("Linhas: ");
    obj.label130:setHorzTextAlign("center");
    obj.label130:setName("label130");
    obj.label130:setFontColor("white");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.layout126);
    obj.edit64:setLeft(85);
    obj.edit64:setTop(85);
    obj.edit64:setWidth(90);
    obj.edit64:setField("colorStroke");
    obj.edit64:setTextPrompt("#FFFFFF");
    obj.edit64:setName("edit64");
    obj.edit64:setFontSize(15);
    obj.edit64:setFontColor("white");

    obj.dataLink227 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink227:setParent(obj.layout126);
    obj.dataLink227:setField("colorStroke");
    obj.dataLink227:setDefaultValue("#FFFFFF");
    obj.dataLink227:setName("dataLink227");

    obj.label131 = GUI.fromHandle(_obj_newObject("label"));
    obj.label131:setParent(obj.layout126);
    obj.label131:setLeft(0);
    obj.label131:setTop(110);
    obj.label131:setWidth(80);
    obj.label131:setHeight(20);
    obj.label131:setText("Fonte: ");
    obj.label131:setHorzTextAlign("center");
    obj.label131:setName("label131");
    obj.label131:setFontColor("white");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.layout126);
    obj.edit65:setLeft(85);
    obj.edit65:setTop(110);
    obj.edit65:setWidth(90);
    obj.edit65:setField("colorFont");
    obj.edit65:setTextPrompt("#FFFFFF");
    obj.edit65:setName("edit65");
    obj.edit65:setFontSize(15);
    obj.edit65:setFontColor("white");

    obj.dataLink228 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink228:setParent(obj.layout126);
    obj.dataLink228:setField("colorFont");
    obj.dataLink228:setDefaultValue("#FFFFFF");
    obj.dataLink228:setName("dataLink228");

    obj.layout127 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.scrollBox8);
    obj.layout127:setLeft(740);
    obj.layout127:setTop(10);
    obj.layout127:setWidth(500);
    obj.layout127:setHeight(600);
    obj.layout127:setFrameStyle("frames/panel3transp/frame.xml");
    obj.layout127:setName("layout127");

    obj.label132 = GUI.fromHandle(_obj_newObject("label"));
    obj.label132:setParent(obj.layout127);
    obj.label132:setLeft(0);
    obj.label132:setTop(560);
    obj.label132:setWidth(500);
    obj.label132:setHeight(20);
    obj.label132:setText("ANOTA????ES DO MESTRE");
    obj.label132:setHorzTextAlign("center");
    obj.label132:setName("label132");
    obj.label132:setFontColor("white");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout127);
    obj.textEditor7:setLeft(30);
    obj.textEditor7:setTop(20);
    obj.textEditor7:setWidth(440);
    obj.textEditor7:setHeight(530);
    obj.textEditor7:setField("anotacoes_do_mestre");
    obj.textEditor7:setName("textEditor7");
    obj.textEditor7:setTransparent(true);

    obj.layout128 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.scrollBox8);
    obj.layout128:setLeft(525);
    obj.layout128:setTop(420);
    obj.layout128:setWidth(200);
    obj.layout128:setHeight(190);
    obj.layout128:setFrameStyle("frames/panel3transp/frame.xml");
    obj.layout128:setName("layout128");

    obj.label133 = GUI.fromHandle(_obj_newObject("label"));
    obj.label133:setParent(obj.layout128);
    obj.label133:setLeft(50);
    obj.label133:setTop(30);
    obj.label133:setWidth(200);
    obj.label133:setHeight(20);
    obj.label133:setText("CONHE??A A MESA:");
    obj.label133:setFontSize(11);
    obj.label133:setName("label133");
    obj.label133:setFontColor("white");

    obj.button95 = GUI.fromHandle(_obj_newObject("button"));
    obj.button95:setParent(obj.layout128);
    obj.button95:setLeft(20);
    obj.button95:setTop(70);
    obj.button95:setWidth(80);
    obj.button95:setText("Atualizar");
    obj.button95:setName("button95");

    obj.button96 = GUI.fromHandle(_obj_newObject("button"));
    obj.button96:setParent(obj.layout128);
    obj.button96:setLeft(20);
    obj.button96:setTop(100);
    obj.button96:setWidth(80);
    obj.button96:setText("Discord");
    obj.button96:setName("button96");

    obj.button97 = GUI.fromHandle(_obj_newObject("button"));
    obj.button97:setParent(obj.layout128);
    obj.button97:setLeft(20);
    obj.button97:setTop(130);
    obj.button97:setWidth(80);
    obj.button97:setText("Zap (Mesa)");
    obj.button97:setName("button97");

    obj.button98 = GUI.fromHandle(_obj_newObject("button"));
    obj.button98:setParent(obj.layout128);
    obj.button98:setLeft(100);
    obj.button98:setTop(70);
    obj.button98:setWidth(80);
    obj.button98:setHeight(20);
    obj.button98:setText("Exportar");
    obj.button98:setName("button98");

    obj.button99 = GUI.fromHandle(_obj_newObject("button"));
    obj.button99:setParent(obj.layout128);
    obj.button99:setLeft(100);
    obj.button99:setTop(100);
    obj.button99:setWidth(80);
    obj.button99:setHeight(20);
    obj.button99:setText("Importar");
    obj.button99:setName("button99");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            mudaNick(sheet.nome,sheet);
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local jogador = Firecast.getPersonagemDe(sheet).dono;
            						jogador:requestSetEditableLine(1, sheet.classeENivel)
            						jogador:requestSetEditableLine(2, "CA "..sheet.CA.." | INI "..sheet.iniciativa.." | PP "..sheet.percepicaoPassiva)
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modforca = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modforcastr = "+" .. modificador;
            					else
            						sheet.atributos.modforcastr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modforca = nil;
            					sheet.atributos.modforcastr = nil;
            				end;
        end, obj);

    obj._e_event3 = obj.button1:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event4 = obj.button1:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event5 = obj.button1:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'forca'}, nil, false);
        end, obj);

    obj._e_event6 = obj.button1:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'forca'}, nil, true);
        end, obj);

    obj._e_event7 = obj.cbProfforca:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["forca"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'forca', true);
            						sheet.resistencias.forca = true;
            					end;
        end, obj);

    obj._e_event8 = obj.cbProfforca:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'forca', false);
        end, obj);

    obj._e_event9 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("forca");
        end, obj);

    obj._e_event10 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['forca'] then updateCbVisibility('forca'); end;
        end, obj);

    obj._e_event11 = obj.button2:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event12 = obj.button2:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event13 = obj.button2:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.forca'}, nil, false);
        end, obj);

    obj._e_event14 = obj.button2:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.forca'}, nil, true);
        end, obj);

    obj._e_event15 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'forca');
            
            						sheet.resistencias.bonusforca = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonusforcastr = "+" .. valor;
            						else
            							sheet.resistencias.bonusforcastr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfforca:setHitTest(true);
            						self.labProfforca:setHint(hint);
        end, obj);

    obj._e_event16 = obj.cbProfatletismo:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["atletismo"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'atletismo', true);
            						sheet.pericias.atletismo = true;
            					end;
        end, obj);

    obj._e_event17 = obj.cbProfatletismo:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'atletismo', false);
        end, obj);

    obj._e_event18 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("atletismo");
        end, obj);

    obj._e_event19 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['atletismo'] then updateCbVisibility('atletismo'); end;
        end, obj);

    obj._e_event20 = obj.button3:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event21 = obj.button3:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event22 = obj.button3:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.atletismo'}, nil, false);
        end, obj);

    obj._e_event23 = obj.button3:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.atletismo'}, nil, true);
        end, obj);

    obj._e_event24 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'forca', 'atletismo');
            
            							sheet.pericias.bonusatletismo = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusatletismostr = "+" .. valor;
            							else
            								sheet.pericias.bonusatletismostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfatletismo:setHitTest(true);
            							self.labProfatletismo:setHint(hint);
        end, obj);

    obj._e_event25 = obj.cbProfpericiaforca:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["periciaforca"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'periciaforca', true);
            						sheet.pericias.periciaforca = true;
            					end;
        end, obj);

    obj._e_event26 = obj.cbProfpericiaforca:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'periciaforca', false);
        end, obj);

    obj._e_event27 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("periciaforca");
        end, obj);

    obj._e_event28 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['periciaforca'] then updateCbVisibility('periciaforca'); end;
        end, obj);

    obj._e_event29 = obj.button4:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event30 = obj.button4:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event31 = obj.button4:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciaforca'}, nil, false);
        end, obj);

    obj._e_event32 = obj.button4:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciaforca'}, nil, true);
        end, obj);

    obj._e_event33 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'forca', 'periciaforca');
            
            							sheet.pericias.bonuspericiaforca = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuspericiaforcastr = "+" .. valor;
            							else
            								sheet.pericias.bonuspericiaforcastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfpericiaforca:setHitTest(true);
            							self.labProfpericiaforca:setHint(hint);
        end, obj);

    obj._e_event34 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.moddestreza = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.moddestrezastr = "+" .. modificador;
            					else
            						sheet.atributos.moddestrezastr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.moddestreza = nil;
            					sheet.atributos.moddestrezastr = nil;
            				end;
        end, obj);

    obj._e_event35 = obj.button5:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event36 = obj.button5:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event37 = obj.button5:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'destreza'}, nil, false);
        end, obj);

    obj._e_event38 = obj.button5:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'destreza'}, nil, true);
        end, obj);

    obj._e_event39 = obj.cbProfdestreza:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["destreza"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'destreza', true);
            						sheet.resistencias.destreza = true;
            					end;
        end, obj);

    obj._e_event40 = obj.cbProfdestreza:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'destreza', false);
        end, obj);

    obj._e_event41 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("destreza");
        end, obj);

    obj._e_event42 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['destreza'] then updateCbVisibility('destreza'); end;
        end, obj);

    obj._e_event43 = obj.button6:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event44 = obj.button6:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event45 = obj.button6:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.destreza'}, nil, false);
        end, obj);

    obj._e_event46 = obj.button6:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.destreza'}, nil, true);
        end, obj);

    obj._e_event47 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'destreza');
            
            						sheet.resistencias.bonusdestreza = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonusdestrezastr = "+" .. valor;
            						else
            							sheet.resistencias.bonusdestrezastr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfdestreza:setHitTest(true);
            						self.labProfdestreza:setHint(hint);
        end, obj);

    obj._e_event48 = obj.cbProfacrobacia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["acrobacia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'acrobacia', true);
            						sheet.pericias.acrobacia = true;
            					end;
        end, obj);

    obj._e_event49 = obj.cbProfacrobacia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'acrobacia', false);
        end, obj);

    obj._e_event50 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("acrobacia");
        end, obj);

    obj._e_event51 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['acrobacia'] then updateCbVisibility('acrobacia'); end;
        end, obj);

    obj._e_event52 = obj.button7:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event53 = obj.button7:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event54 = obj.button7:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.acrobacia'}, nil, false);
        end, obj);

    obj._e_event55 = obj.button7:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.acrobacia'}, nil, true);
        end, obj);

    obj._e_event56 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'destreza', 'acrobacia');
            
            							sheet.pericias.bonusacrobacia = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusacrobaciastr = "+" .. valor;
            							else
            								sheet.pericias.bonusacrobaciastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfacrobacia:setHitTest(true);
            							self.labProfacrobacia:setHint(hint);
        end, obj);

    obj._e_event57 = obj.cbProffurtividade:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["furtividade"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'furtividade', true);
            						sheet.pericias.furtividade = true;
            					end;
        end, obj);

    obj._e_event58 = obj.cbProffurtividade:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'furtividade', false);
        end, obj);

    obj._e_event59 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("furtividade");
        end, obj);

    obj._e_event60 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['furtividade'] then updateCbVisibility('furtividade'); end;
        end, obj);

    obj._e_event61 = obj.button8:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event62 = obj.button8:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event63 = obj.button8:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.furtividade'}, nil, false);
        end, obj);

    obj._e_event64 = obj.button8:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.furtividade'}, nil, true);
        end, obj);

    obj._e_event65 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'destreza', 'furtividade');
            
            							sheet.pericias.bonusfurtividade = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusfurtividadestr = "+" .. valor;
            							else
            								sheet.pericias.bonusfurtividadestr = "-" .. math.abs(valor);
            							end;
            
            							self.labProffurtividade:setHitTest(true);
            							self.labProffurtividade:setHint(hint);
        end, obj);

    obj._e_event66 = obj.cbProfiniciativa:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["iniciativa"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'iniciativa', true);
            						sheet.pericias.iniciativa = true;
            					end;
        end, obj);

    obj._e_event67 = obj.cbProfiniciativa:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'iniciativa', false);
        end, obj);

    obj._e_event68 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("iniciativa");
        end, obj);

    obj._e_event69 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['iniciativa'] then updateCbVisibility('iniciativa'); end;
        end, obj);

    obj._e_event70 = obj.button9:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event71 = obj.button9:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event72 = obj.button9:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.iniciativa'}, nil, false);
        end, obj);

    obj._e_event73 = obj.button9:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.iniciativa'}, nil, true);
        end, obj);

    obj._e_event74 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'destreza', 'iniciativa');
            
            							sheet.pericias.bonusiniciativa = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusiniciativastr = "+" .. valor;
            							else
            								sheet.pericias.bonusiniciativastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfiniciativa:setHitTest(true);
            							self.labProfiniciativa:setHint(hint);
        end, obj);

    obj._e_event75 = obj.cbProfprestidigitacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["prestidigitacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'prestidigitacao', true);
            						sheet.pericias.prestidigitacao = true;
            					end;
        end, obj);

    obj._e_event76 = obj.cbProfprestidigitacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'prestidigitacao', false);
        end, obj);

    obj._e_event77 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("prestidigitacao");
        end, obj);

    obj._e_event78 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['prestidigitacao'] then updateCbVisibility('prestidigitacao'); end;
        end, obj);

    obj._e_event79 = obj.button10:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event80 = obj.button10:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event81 = obj.button10:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.prestidigitacao'}, nil, false);
        end, obj);

    obj._e_event82 = obj.button10:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.prestidigitacao'}, nil, true);
        end, obj);

    obj._e_event83 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'destreza', 'prestidigitacao');
            
            							sheet.pericias.bonusprestidigitacao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusprestidigitacaostr = "+" .. valor;
            							else
            								sheet.pericias.bonusprestidigitacaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfprestidigitacao:setHitTest(true);
            							self.labProfprestidigitacao:setHint(hint);
        end, obj);

    obj._e_event84 = obj.cbProfpericiadestreza:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["periciadestreza"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'periciadestreza', true);
            						sheet.pericias.periciadestreza = true;
            					end;
        end, obj);

    obj._e_event85 = obj.cbProfpericiadestreza:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'periciadestreza', false);
        end, obj);

    obj._e_event86 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("periciadestreza");
        end, obj);

    obj._e_event87 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['periciadestreza'] then updateCbVisibility('periciadestreza'); end;
        end, obj);

    obj._e_event88 = obj.button11:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event89 = obj.button11:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event90 = obj.button11:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciadestreza'}, nil, false);
        end, obj);

    obj._e_event91 = obj.button11:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciadestreza'}, nil, true);
        end, obj);

    obj._e_event92 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'destreza', 'periciadestreza');
            
            							sheet.pericias.bonuspericiadestreza = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuspericiadestrezastr = "+" .. valor;
            							else
            								sheet.pericias.bonuspericiadestrezastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfpericiadestreza:setHitTest(true);
            							self.labProfpericiadestreza:setHint(hint);
        end, obj);

    obj._e_event93 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modconstituicao = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modconstituicaostr = "+" .. modificador;
            					else
            						sheet.atributos.modconstituicaostr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modconstituicao = nil;
            					sheet.atributos.modconstituicaostr = nil;
            				end;
        end, obj);

    obj._e_event94 = obj.button12:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event95 = obj.button12:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event96 = obj.button12:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'constituicao'}, nil, false);
        end, obj);

    obj._e_event97 = obj.button12:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'constituicao'}, nil, true);
        end, obj);

    obj._e_event98 = obj.cbProfconstituicao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["constituicao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'constituicao', true);
            						sheet.resistencias.constituicao = true;
            					end;
        end, obj);

    obj._e_event99 = obj.cbProfconstituicao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'constituicao', false);
        end, obj);

    obj._e_event100 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("constituicao");
        end, obj);

    obj._e_event101 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['constituicao'] then updateCbVisibility('constituicao'); end;
        end, obj);

    obj._e_event102 = obj.button13:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event103 = obj.button13:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event104 = obj.button13:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.constituicao'}, nil, false);
        end, obj);

    obj._e_event105 = obj.button13:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.constituicao'}, nil, true);
        end, obj);

    obj._e_event106 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'constituicao');
            
            						sheet.resistencias.bonusconstituicao = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonusconstituicaostr = "+" .. valor;
            						else
            							sheet.resistencias.bonusconstituicaostr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfconstituicao:setHitTest(true);
            						self.labProfconstituicao:setHint(hint);
        end, obj);

    obj._e_event107 = obj.cbProfconcentracao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["concentracao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'concentracao', true);
            						sheet.pericias.concentracao = true;
            					end;
        end, obj);

    obj._e_event108 = obj.cbProfconcentracao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'concentracao', false);
        end, obj);

    obj._e_event109 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("concentracao");
        end, obj);

    obj._e_event110 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['concentracao'] then updateCbVisibility('concentracao'); end;
        end, obj);

    obj._e_event111 = obj.button14:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event112 = obj.button14:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event113 = obj.button14:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.concentracao'}, nil, false);
        end, obj);

    obj._e_event114 = obj.button14:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.concentracao'}, nil, true);
        end, obj);

    obj._e_event115 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'constituicao', 'concentracao');
            
            							sheet.pericias.bonusconcentracao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusconcentracaostr = "+" .. valor;
            							else
            								sheet.pericias.bonusconcentracaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfconcentracao:setHitTest(true);
            							self.labProfconcentracao:setHint(hint);
        end, obj);

    obj._e_event116 = obj.cbProftolerancia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["tolerancia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'tolerancia', true);
            						sheet.pericias.tolerancia = true;
            					end;
        end, obj);

    obj._e_event117 = obj.cbProftolerancia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'tolerancia', false);
        end, obj);

    obj._e_event118 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("tolerancia");
        end, obj);

    obj._e_event119 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['tolerancia'] then updateCbVisibility('tolerancia'); end;
        end, obj);

    obj._e_event120 = obj.button15:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event121 = obj.button15:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event122 = obj.button15:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.tolerancia'}, nil, false);
        end, obj);

    obj._e_event123 = obj.button15:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.tolerancia'}, nil, true);
        end, obj);

    obj._e_event124 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'constituicao', 'tolerancia');
            
            							sheet.pericias.bonustolerancia = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonustoleranciastr = "+" .. valor;
            							else
            								sheet.pericias.bonustoleranciastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProftolerancia:setHitTest(true);
            							self.labProftolerancia:setHint(hint);
        end, obj);

    obj._e_event125 = obj.cbProfpericiaconstituicao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["periciaconstituicao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'periciaconstituicao', true);
            						sheet.pericias.periciaconstituicao = true;
            					end;
        end, obj);

    obj._e_event126 = obj.cbProfpericiaconstituicao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'periciaconstituicao', false);
        end, obj);

    obj._e_event127 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("periciaconstituicao");
        end, obj);

    obj._e_event128 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['periciaconstituicao'] then updateCbVisibility('periciaconstituicao'); end;
        end, obj);

    obj._e_event129 = obj.button16:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event130 = obj.button16:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event131 = obj.button16:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciaconstituicao'}, nil, false);
        end, obj);

    obj._e_event132 = obj.button16:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciaconstituicao'}, nil, true);
        end, obj);

    obj._e_event133 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'constituicao', 'periciaconstituicao');
            
            							sheet.pericias.bonuspericiaconstituicao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuspericiaconstituicaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuspericiaconstituicaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfpericiaconstituicao:setHitTest(true);
            							self.labProfpericiaconstituicao:setHint(hint);
        end, obj);

    obj._e_event134 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modinteligencia = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modinteligenciastr = "+" .. modificador;
            					else
            						sheet.atributos.modinteligenciastr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modinteligencia = nil;
            					sheet.atributos.modinteligenciastr = nil;
            				end;
        end, obj);

    obj._e_event135 = obj.button17:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event136 = obj.button17:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event137 = obj.button17:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'inteligencia'}, nil, false);
        end, obj);

    obj._e_event138 = obj.button17:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'inteligencia'}, nil, true);
        end, obj);

    obj._e_event139 = obj.cbProfinteligencia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["inteligencia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'inteligencia', true);
            						sheet.resistencias.inteligencia = true;
            					end;
        end, obj);

    obj._e_event140 = obj.cbProfinteligencia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'inteligencia', false);
        end, obj);

    obj._e_event141 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("inteligencia");
        end, obj);

    obj._e_event142 = obj.dataLink47:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['inteligencia'] then updateCbVisibility('inteligencia'); end;
        end, obj);

    obj._e_event143 = obj.button18:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event144 = obj.button18:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event145 = obj.button18:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.inteligencia'}, nil, false);
        end, obj);

    obj._e_event146 = obj.button18:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.inteligencia'}, nil, true);
        end, obj);

    obj._e_event147 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'inteligencia');
            
            						sheet.resistencias.bonusinteligencia = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonusinteligenciastr = "+" .. valor;
            						else
            							sheet.resistencias.bonusinteligenciastr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfinteligencia:setHitTest(true);
            						self.labProfinteligencia:setHint(hint);
        end, obj);

    obj._e_event148 = obj.cbProfarcanismo:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["arcanismo"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'arcanismo', true);
            						sheet.pericias.arcanismo = true;
            					end;
        end, obj);

    obj._e_event149 = obj.cbProfarcanismo:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'arcanismo', false);
        end, obj);

    obj._e_event150 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("arcanismo");
        end, obj);

    obj._e_event151 = obj.dataLink50:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['arcanismo'] then updateCbVisibility('arcanismo'); end;
        end, obj);

    obj._e_event152 = obj.button19:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event153 = obj.button19:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event154 = obj.button19:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.arcanismo'}, nil, false);
        end, obj);

    obj._e_event155 = obj.button19:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.arcanismo'}, nil, true);
        end, obj);

    obj._e_event156 = obj.dataLink51:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'inteligencia', 'arcanismo');
            
            							sheet.pericias.bonusarcanismo = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusarcanismostr = "+" .. valor;
            							else
            								sheet.pericias.bonusarcanismostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfarcanismo:setHitTest(true);
            							self.labProfarcanismo:setHint(hint);
        end, obj);

    obj._e_event157 = obj.cbProfhistoria:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["historia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'historia', true);
            						sheet.pericias.historia = true;
            					end;
        end, obj);

    obj._e_event158 = obj.cbProfhistoria:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'historia', false);
        end, obj);

    obj._e_event159 = obj.dataLink52:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("historia");
        end, obj);

    obj._e_event160 = obj.dataLink53:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['historia'] then updateCbVisibility('historia'); end;
        end, obj);

    obj._e_event161 = obj.button20:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event162 = obj.button20:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event163 = obj.button20:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.historia'}, nil, false);
        end, obj);

    obj._e_event164 = obj.button20:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.historia'}, nil, true);
        end, obj);

    obj._e_event165 = obj.dataLink54:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'inteligencia', 'historia');
            
            							sheet.pericias.bonushistoria = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonushistoriastr = "+" .. valor;
            							else
            								sheet.pericias.bonushistoriastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfhistoria:setHitTest(true);
            							self.labProfhistoria:setHint(hint);
        end, obj);

    obj._e_event166 = obj.cbProfnatureza:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["natureza"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'natureza', true);
            						sheet.pericias.natureza = true;
            					end;
        end, obj);

    obj._e_event167 = obj.cbProfnatureza:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'natureza', false);
        end, obj);

    obj._e_event168 = obj.dataLink55:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("natureza");
        end, obj);

    obj._e_event169 = obj.dataLink56:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['natureza'] then updateCbVisibility('natureza'); end;
        end, obj);

    obj._e_event170 = obj.button21:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event171 = obj.button21:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event172 = obj.button21:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.natureza'}, nil, false);
        end, obj);

    obj._e_event173 = obj.button21:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.natureza'}, nil, true);
        end, obj);

    obj._e_event174 = obj.dataLink57:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'inteligencia', 'natureza');
            
            							sheet.pericias.bonusnatureza = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusnaturezastr = "+" .. valor;
            							else
            								sheet.pericias.bonusnaturezastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfnatureza:setHitTest(true);
            							self.labProfnatureza:setHint(hint);
        end, obj);

    obj._e_event175 = obj.cbProfreligiao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["religiao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'religiao', true);
            						sheet.pericias.religiao = true;
            					end;
        end, obj);

    obj._e_event176 = obj.cbProfreligiao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'religiao', false);
        end, obj);

    obj._e_event177 = obj.dataLink58:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("religiao");
        end, obj);

    obj._e_event178 = obj.dataLink59:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['religiao'] then updateCbVisibility('religiao'); end;
        end, obj);

    obj._e_event179 = obj.button22:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event180 = obj.button22:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event181 = obj.button22:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.religiao'}, nil, false);
        end, obj);

    obj._e_event182 = obj.button22:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.religiao'}, nil, true);
        end, obj);

    obj._e_event183 = obj.dataLink60:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'inteligencia', 'religiao');
            
            							sheet.pericias.bonusreligiao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusreligiaostr = "+" .. valor;
            							else
            								sheet.pericias.bonusreligiaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfreligiao:setHitTest(true);
            							self.labProfreligiao:setHint(hint);
        end, obj);

    obj._e_event184 = obj.cbProfpericiainteligencia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["periciainteligencia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'periciainteligencia', true);
            						sheet.pericias.periciainteligencia = true;
            					end;
        end, obj);

    obj._e_event185 = obj.cbProfpericiainteligencia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'periciainteligencia', false);
        end, obj);

    obj._e_event186 = obj.dataLink61:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("periciainteligencia");
        end, obj);

    obj._e_event187 = obj.dataLink62:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['periciainteligencia'] then updateCbVisibility('periciainteligencia'); end;
        end, obj);

    obj._e_event188 = obj.button23:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event189 = obj.button23:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event190 = obj.button23:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciainteligencia'}, nil, false);
        end, obj);

    obj._e_event191 = obj.button23:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciainteligencia'}, nil, true);
        end, obj);

    obj._e_event192 = obj.dataLink63:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'inteligencia', 'periciainteligencia');
            
            							sheet.pericias.bonuspericiainteligencia = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuspericiainteligenciastr = "+" .. valor;
            							else
            								sheet.pericias.bonuspericiainteligenciastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfpericiainteligencia:setHitTest(true);
            							self.labProfpericiainteligencia:setHint(hint);
        end, obj);

    obj._e_event193 = obj.dataLink64:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modsabedoria = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modsabedoriastr = "+" .. modificador;
            					else
            						sheet.atributos.modsabedoriastr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modsabedoria = nil;
            					sheet.atributos.modsabedoriastr = nil;
            				end;
        end, obj);

    obj._e_event194 = obj.button24:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event195 = obj.button24:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event196 = obj.button24:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'sabedoria'}, nil, false);
        end, obj);

    obj._e_event197 = obj.button24:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'sabedoria'}, nil, true);
        end, obj);

    obj._e_event198 = obj.cbProfsabedoria:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["sabedoria"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'sabedoria', true);
            						sheet.resistencias.sabedoria = true;
            					end;
        end, obj);

    obj._e_event199 = obj.cbProfsabedoria:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'sabedoria', false);
        end, obj);

    obj._e_event200 = obj.dataLink65:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("sabedoria");
        end, obj);

    obj._e_event201 = obj.dataLink66:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['sabedoria'] then updateCbVisibility('sabedoria'); end;
        end, obj);

    obj._e_event202 = obj.button25:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event203 = obj.button25:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event204 = obj.button25:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.sabedoria'}, nil, false);
        end, obj);

    obj._e_event205 = obj.button25:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.sabedoria'}, nil, true);
        end, obj);

    obj._e_event206 = obj.dataLink67:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'sabedoria');
            
            						sheet.resistencias.bonussabedoria = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonussabedoriastr = "+" .. valor;
            						else
            							sheet.resistencias.bonussabedoriastr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfsabedoria:setHitTest(true);
            						self.labProfsabedoria:setHint(hint);
        end, obj);

    obj._e_event207 = obj.cbProfadestrarAnimais:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["adestrarAnimais"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'adestrarAnimais', true);
            						sheet.pericias.adestrarAnimais = true;
            					end;
        end, obj);

    obj._e_event208 = obj.cbProfadestrarAnimais:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'adestrarAnimais', false);
        end, obj);

    obj._e_event209 = obj.dataLink68:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("adestrarAnimais");
        end, obj);

    obj._e_event210 = obj.dataLink69:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['adestrarAnimais'] then updateCbVisibility('adestrarAnimais'); end;
        end, obj);

    obj._e_event211 = obj.button26:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event212 = obj.button26:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event213 = obj.button26:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.adestrarAnimais'}, nil, false);
        end, obj);

    obj._e_event214 = obj.button26:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.adestrarAnimais'}, nil, true);
        end, obj);

    obj._e_event215 = obj.dataLink70:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'sabedoria', 'adestrarAnimais');
            
            							sheet.pericias.bonusadestrarAnimais = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusadestrarAnimaisstr = "+" .. valor;
            							else
            								sheet.pericias.bonusadestrarAnimaisstr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfadestrarAnimais:setHitTest(true);
            							self.labProfadestrarAnimais:setHint(hint);
        end, obj);

    obj._e_event216 = obj.cbProfmedicina:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["medicina"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'medicina', true);
            						sheet.pericias.medicina = true;
            					end;
        end, obj);

    obj._e_event217 = obj.cbProfmedicina:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'medicina', false);
        end, obj);

    obj._e_event218 = obj.dataLink71:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("medicina");
        end, obj);

    obj._e_event219 = obj.dataLink72:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['medicina'] then updateCbVisibility('medicina'); end;
        end, obj);

    obj._e_event220 = obj.button27:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event221 = obj.button27:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event222 = obj.button27:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.medicina'}, nil, false);
        end, obj);

    obj._e_event223 = obj.button27:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.medicina'}, nil, true);
        end, obj);

    obj._e_event224 = obj.dataLink73:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'sabedoria', 'medicina');
            
            							sheet.pericias.bonusmedicina = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusmedicinastr = "+" .. valor;
            							else
            								sheet.pericias.bonusmedicinastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfmedicina:setHitTest(true);
            							self.labProfmedicina:setHint(hint);
        end, obj);

    obj._e_event225 = obj.cbProfpercepcao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["percepcao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'percepcao', true);
            						sheet.pericias.percepcao = true;
            					end;
        end, obj);

    obj._e_event226 = obj.cbProfpercepcao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'percepcao', false);
        end, obj);

    obj._e_event227 = obj.dataLink74:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("percepcao");
        end, obj);

    obj._e_event228 = obj.dataLink75:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['percepcao'] then updateCbVisibility('percepcao'); end;
        end, obj);

    obj._e_event229 = obj.button28:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event230 = obj.button28:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event231 = obj.button28:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.percepcao'}, nil, false);
        end, obj);

    obj._e_event232 = obj.button28:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.percepcao'}, nil, true);
        end, obj);

    obj._e_event233 = obj.dataLink76:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'sabedoria', 'percepcao');
            
            							sheet.pericias.bonuspercepcao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuspercepcaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuspercepcaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfpercepcao:setHitTest(true);
            							self.labProfpercepcao:setHint(hint);
        end, obj);

    obj._e_event234 = obj.cbProfsobrevivencia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["sobrevivencia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'sobrevivencia', true);
            						sheet.pericias.sobrevivencia = true;
            					end;
        end, obj);

    obj._e_event235 = obj.cbProfsobrevivencia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'sobrevivencia', false);
        end, obj);

    obj._e_event236 = obj.dataLink77:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("sobrevivencia");
        end, obj);

    obj._e_event237 = obj.dataLink78:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['sobrevivencia'] then updateCbVisibility('sobrevivencia'); end;
        end, obj);

    obj._e_event238 = obj.button29:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event239 = obj.button29:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event240 = obj.button29:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.sobrevivencia'}, nil, false);
        end, obj);

    obj._e_event241 = obj.button29:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.sobrevivencia'}, nil, true);
        end, obj);

    obj._e_event242 = obj.dataLink79:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'sabedoria', 'sobrevivencia');
            
            							sheet.pericias.bonussobrevivencia = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonussobrevivenciastr = "+" .. valor;
            							else
            								sheet.pericias.bonussobrevivenciastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfsobrevivencia:setHitTest(true);
            							self.labProfsobrevivencia:setHint(hint);
        end, obj);

    obj._e_event243 = obj.cbProfbedoria:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["bedoria"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'bedoria', true);
            						sheet.pericias.periciasabedoria = true;
            					end;
        end, obj);

    obj._e_event244 = obj.cbProfbedoria:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'bedoria', false);
        end, obj);

    obj._e_event245 = obj.dataLink80:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("bedoria");
        end, obj);

    obj._e_event246 = obj.dataLink81:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['bedoria'] then updateCbVisibility('bedoria'); end;
        end, obj);

    obj._e_event247 = obj.button30:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event248 = obj.button30:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event249 = obj.button30:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciasabedoria'}, nil, false);
        end, obj);

    obj._e_event250 = obj.button30:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciasabedoria'}, nil, true);
        end, obj);

    obj._e_event251 = obj.dataLink82:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'sabedoria', 'periciasabedoria');
            
            							sheet.pericias.bonuspericiasabedoria = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuspericiasabedoriastr = "+" .. valor;
            							else
            								sheet.pericias.bonuspericiasabedoriastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfpericiasabedoria:setHitTest(true);
            							self.labProfpericiasabedoria:setHint(hint);
        end, obj);

    obj._e_event252 = obj.dataLink83:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modcarisma = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modcarismastr = "+" .. modificador;
            					else
            						sheet.atributos.modcarismastr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modcarisma = nil;
            					sheet.atributos.modcarismastr = nil;
            				end;
        end, obj);

    obj._e_event253 = obj.button31:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event254 = obj.button31:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event255 = obj.button31:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'carisma'}, nil, false);
        end, obj);

    obj._e_event256 = obj.button31:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'carisma'}, nil, true);
        end, obj);

    obj._e_event257 = obj.cbProfcarisma:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["carisma"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'carisma', true);
            						sheet.resistencias.carisma = true;
            					end;
        end, obj);

    obj._e_event258 = obj.cbProfcarisma:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'carisma', false);
        end, obj);

    obj._e_event259 = obj.dataLink84:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("carisma");
        end, obj);

    obj._e_event260 = obj.dataLink85:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['carisma'] then updateCbVisibility('carisma'); end;
        end, obj);

    obj._e_event261 = obj.button32:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event262 = obj.button32:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event263 = obj.button32:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.carisma'}, nil, false);
        end, obj);

    obj._e_event264 = obj.button32:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.carisma'}, nil, true);
        end, obj);

    obj._e_event265 = obj.dataLink86:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'carisma');
            
            						sheet.resistencias.bonuscarisma = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonuscarismastr = "+" .. valor;
            						else
            							sheet.resistencias.bonuscarismastr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfcarisma:setHitTest(true);
            						self.labProfcarisma:setHint(hint);
        end, obj);

    obj._e_event266 = obj.cbProfatuacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["atuacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'atuacao', true);
            						sheet.pericias.atuacao = true;
            					end;
        end, obj);

    obj._e_event267 = obj.cbProfatuacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'atuacao', false);
        end, obj);

    obj._e_event268 = obj.dataLink87:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("atuacao");
        end, obj);

    obj._e_event269 = obj.dataLink88:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['atuacao'] then updateCbVisibility('atuacao'); end;
        end, obj);

    obj._e_event270 = obj.button33:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event271 = obj.button33:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event272 = obj.button33:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.atuacao'}, nil, false);
        end, obj);

    obj._e_event273 = obj.button33:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.atuacao'}, nil, true);
        end, obj);

    obj._e_event274 = obj.dataLink89:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'carisma', 'atuacao');
            
            							sheet.pericias.bonusatuacao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusatuacaostr = "+" .. valor;
            							else
            								sheet.pericias.bonusatuacaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfatuacao:setHitTest(true);
            							self.labProfatuacao:setHint(hint);
        end, obj);

    obj._e_event275 = obj.cbProfenganacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["enganacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'enganacao', true);
            						sheet.pericias.enganacao = true;
            					end;
        end, obj);

    obj._e_event276 = obj.cbProfenganacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'enganacao', false);
        end, obj);

    obj._e_event277 = obj.dataLink90:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("enganacao");
        end, obj);

    obj._e_event278 = obj.dataLink91:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['enganacao'] then updateCbVisibility('enganacao'); end;
        end, obj);

    obj._e_event279 = obj.button34:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event280 = obj.button34:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event281 = obj.button34:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.enganacao'}, nil, false);
        end, obj);

    obj._e_event282 = obj.button34:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.enganacao'}, nil, true);
        end, obj);

    obj._e_event283 = obj.dataLink92:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'carisma', 'enganacao');
            
            							sheet.pericias.bonusenganacao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusenganacaostr = "+" .. valor;
            							else
            								sheet.pericias.bonusenganacaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfenganacao:setHitTest(true);
            							self.labProfenganacao:setHint(hint);
        end, obj);

    obj._e_event284 = obj.cbProfintimidacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["intimidacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'intimidacao', true);
            						sheet.pericias.intimidacao = true;
            					end;
        end, obj);

    obj._e_event285 = obj.cbProfintimidacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'intimidacao', false);
        end, obj);

    obj._e_event286 = obj.dataLink93:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("intimidacao");
        end, obj);

    obj._e_event287 = obj.dataLink94:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['intimidacao'] then updateCbVisibility('intimidacao'); end;
        end, obj);

    obj._e_event288 = obj.button35:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event289 = obj.button35:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event290 = obj.button35:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.intimidacao'}, nil, false);
        end, obj);

    obj._e_event291 = obj.button35:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.intimidacao'}, nil, true);
        end, obj);

    obj._e_event292 = obj.dataLink95:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'carisma', 'intimidacao');
            
            							sheet.pericias.bonusintimidacao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonusintimidacaostr = "+" .. valor;
            							else
            								sheet.pericias.bonusintimidacaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfintimidacao:setHitTest(true);
            							self.labProfintimidacao:setHint(hint);
        end, obj);

    obj._e_event293 = obj.cbProfpersuasao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["persuasao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'persuasao', true);
            						sheet.pericias.persuasao = true;
            					end;
        end, obj);

    obj._e_event294 = obj.cbProfpersuasao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'persuasao', false);
        end, obj);

    obj._e_event295 = obj.dataLink96:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("persuasao");
        end, obj);

    obj._e_event296 = obj.dataLink97:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['persuasao'] then updateCbVisibility('persuasao'); end;
        end, obj);

    obj._e_event297 = obj.button36:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event298 = obj.button36:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event299 = obj.button36:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.persuasao'}, nil, false);
        end, obj);

    obj._e_event300 = obj.button36:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.persuasao'}, nil, true);
        end, obj);

    obj._e_event301 = obj.dataLink98:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'carisma', 'persuasao');
            
            							sheet.pericias.bonuspersuasao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuspersuasaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuspersuasaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfpersuasao:setHitTest(true);
            							self.labProfpersuasao:setHint(hint);
        end, obj);

    obj._e_event302 = obj.cbProfpericiacarisma:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["periciacarisma"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'periciacarisma', true);
            						sheet.pericias.periciacarisma = true;
            					end;
        end, obj);

    obj._e_event303 = obj.cbProfpericiacarisma:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'periciacarisma', false);
        end, obj);

    obj._e_event304 = obj.dataLink99:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("periciacarisma");
        end, obj);

    obj._e_event305 = obj.dataLink100:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['periciacarisma'] then updateCbVisibility('periciacarisma'); end;
        end, obj);

    obj._e_event306 = obj.button37:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event307 = obj.button37:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event308 = obj.button37:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciacarisma'}, nil, false);
        end, obj);

    obj._e_event309 = obj.button37:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciacarisma'}, nil, true);
        end, obj);

    obj._e_event310 = obj.dataLink101:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'carisma', 'periciacarisma');
            
            							sheet.pericias.bonuspericiacarisma = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuspericiacarismastr = "+" .. valor;
            							else
            								sheet.pericias.bonuspericiacarismastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfpericiacarisma:setHitTest(true);
            							self.labProfpericiacarisma:setHint(hint);
        end, obj);

    obj._e_event311 = obj.dataLink102:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modsanidade = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modsanidadestr = "+" .. modificador;
            					else
            						sheet.atributos.modsanidadestr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modsanidade = nil;
            					sheet.atributos.modsanidadestr = nil;
            				end;
        end, obj);

    obj._e_event312 = obj.button38:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event313 = obj.button38:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event314 = obj.button38:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'sanidade'}, nil, false);
        end, obj);

    obj._e_event315 = obj.button38:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'sanidade'}, nil, true);
        end, obj);

    obj._e_event316 = obj.cbProfsanidade:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["sanidade"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'sanidade', true);
            						sheet.resistencias.sanidade = true;
            					end;
        end, obj);

    obj._e_event317 = obj.cbProfsanidade:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'sanidade', false);
        end, obj);

    obj._e_event318 = obj.dataLink103:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("sanidade");
        end, obj);

    obj._e_event319 = obj.dataLink104:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['sanidade'] then updateCbVisibility('sanidade'); end;
        end, obj);

    obj._e_event320 = obj.button39:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event321 = obj.button39:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event322 = obj.button39:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.sanidade'}, nil, false);
        end, obj);

    obj._e_event323 = obj.button39:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.sanidade'}, nil, true);
        end, obj);

    obj._e_event324 = obj.dataLink105:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'sanidade');
            
            						sheet.resistencias.bonussanidade = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonussanidadestr = "+" .. valor;
            						else
            							sheet.resistencias.bonussanidadestr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfsanidade:setHitTest(true);
            						self.labProfsanidade:setHint(hint);
        end, obj);

    obj._e_event325 = obj.cbProfnidade:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["nidade"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'nidade', true);
            						sheet.pericias.periciasanidade = true;
            					end;
        end, obj);

    obj._e_event326 = obj.cbProfnidade:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'nidade', false);
        end, obj);

    obj._e_event327 = obj.dataLink106:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("nidade");
        end, obj);

    obj._e_event328 = obj.dataLink107:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['nidade'] then updateCbVisibility('nidade'); end;
        end, obj);

    obj._e_event329 = obj.button40:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event330 = obj.button40:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event331 = obj.button40:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciasanidade'}, nil, false);
        end, obj);

    obj._e_event332 = obj.button40:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciasanidade'}, nil, true);
        end, obj);

    obj._e_event333 = obj.dataLink108:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'sanidade', 'periciasanidade');
            
            							sheet.pericias.bonuspericiasanidade = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuspericiasanidadestr = "+" .. valor;
            							else
            								sheet.pericias.bonuspericiasanidadestr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfpericiasanidade:setHitTest(true);
            							self.labProfpericiasanidade:setHint(hint);
        end, obj);

    obj._e_event334 = obj.dataLink109:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modhonra = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modhonrastr = "+" .. modificador;
            					else
            						sheet.atributos.modhonrastr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modhonra = nil;
            					sheet.atributos.modhonrastr = nil;
            				end;
        end, obj);

    obj._e_event335 = obj.button41:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event336 = obj.button41:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event337 = obj.button41:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'honra'}, nil, false);
        end, obj);

    obj._e_event338 = obj.button41:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'honra'}, nil, true);
        end, obj);

    obj._e_event339 = obj.cbProfhonra:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["honra"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'honra', true);
            						sheet.resistencias.honra = true;
            					end;
        end, obj);

    obj._e_event340 = obj.cbProfhonra:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'honra', false);
        end, obj);

    obj._e_event341 = obj.dataLink110:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("honra");
        end, obj);

    obj._e_event342 = obj.dataLink111:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['honra'] then updateCbVisibility('honra'); end;
        end, obj);

    obj._e_event343 = obj.button42:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event344 = obj.button42:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event345 = obj.button42:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.honra'}, nil, false);
        end, obj);

    obj._e_event346 = obj.button42:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.honra'}, nil, true);
        end, obj);

    obj._e_event347 = obj.dataLink112:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'honra');
            
            						sheet.resistencias.bonushonra = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonushonrastr = "+" .. valor;
            						else
            							sheet.resistencias.bonushonrastr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfhonra:setHitTest(true);
            						self.labProfhonra:setHint(hint);
        end, obj);

    obj._e_event348 = obj.cbProfpericiahonra:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["periciahonra"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'periciahonra', true);
            						sheet.pericias.periciahonra = true;
            					end;
        end, obj);

    obj._e_event349 = obj.cbProfpericiahonra:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'periciahonra', false);
        end, obj);

    obj._e_event350 = obj.dataLink113:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("periciahonra");
        end, obj);

    obj._e_event351 = obj.dataLink114:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['periciahonra'] then updateCbVisibility('periciahonra'); end;
        end, obj);

    obj._e_event352 = obj.button43:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event353 = obj.button43:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event354 = obj.button43:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciahonra'}, nil, false);
        end, obj);

    obj._e_event355 = obj.button43:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.periciahonra'}, nil, true);
        end, obj);

    obj._e_event356 = obj.dataLink115:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'honra', 'periciahonra');
            
            							sheet.pericias.bonuspericiahonra = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuspericiahonrastr = "+" .. valor;
            							else
            								sheet.pericias.bonuspericiahonrastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfpericiahonra:setHitTest(true);
            							self.labProfpericiahonra:setHint(hint);
        end, obj);

    obj._e_event357 = obj.button44:addEventListener("onClick",
        function (_)
            descanso.curto(sheet);
        end, obj);

    obj._e_event358 = obj.button45:addEventListener("onClick",
        function (_)
            descanso.longo(sheet);
        end, obj);

    obj._e_event359 = obj.button46:addEventListener("onClick",
        function (_)
            levarDano(sheet);
        end, obj);

    obj._e_event360 = obj.dataLink116:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.progBar:setColor(sheet.barColor);
        end, obj);

    obj._e_event361 = obj.dataLink117:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local jogador = Firecast.getPersonagemDe(sheet).dono;
            										if common.isMyChar(sheet) and common.isMainChar(sheet) then jogador:requestSetBarValue(1, sheet.PV, sheet.PVmax); end;
        end, obj);

    obj._e_event362 = obj.dataLink118:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.descansoLongo then sheet.PV = sheet.PVmax; end;
        end, obj);

    obj._e_event363 = obj.button47:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event364 = obj.button47:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event365 = obj.button47:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.deathSave, nil, nil, false);
        end, obj);

    obj._e_event366 = obj.button47:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.deathSave, nil, nil, true);
        end, obj);

    obj._e_event367 = obj.rclEquips:addEventListener("onSelect",
        function (_)
            local node = self.rclEquips.selectedNode;
            								self.dataEquipAttackDetails.node = node;
            								self.dataEquipAttackDetails.enabled = (node ~= nil);
            
            								if self.rclEquips.lastSelectedForm ~= nil then self.rclEquips.lastSelectedForm.editName:setEnabled(false); end;
            								if self.rclEquips.selectedForm ~= nil then self.rclEquips.selectedForm.editName:setEnabled(true); end;
            								self.rclEquips.lastSelectedForm = self.rclEquips.selectedForm;
        end, obj);

    obj._e_event368 = obj.button48:addEventListener("onClick",
        function (_)
            self.rclEquips.selectedNode = self.rclEquips:append(); self.rclEquips.selectedForm.editName:setFocus();
        end, obj);

    obj._e_event369 = obj.dataEquipAttackDetails:addEventListener("onNodeReady",
        function (_)
            self.imgEquipAttackImg:setVisible(false);
            							self.cbOptAtaqueMunicao:setItems(common.getNomeContadores(sheet, {""}));
        end, obj);

    obj._e_event370 = obj.dataEquipAttackDetails:addEventListener("onNodeUnready",
        function (_)
            self.imgEquipAttackImg:setVisible(true);
        end, obj);

    obj._e_event371 = obj.rclProps:addEventListener("onItemRemoved",
        function (_, node, form)
            local equip = self.dataEquipAttackDetails.node;
            									if equip ~= nil then
            										if equip.tabPropriedades == nil then equip.tabPropriedades = {}; end;
            										equip.tabPropriedades[node.texto] = nil;
            
            										equip.propriedades = common.concat(equip.tabPropriedades, ", ");
            									end;
        end, obj);

    obj._e_event372 = obj.button49:addEventListener("onClick",
        function (_)
            local equip = self.dataEquipAttackDetails.node;
            								if equip ~= nil then
            									if equip.tabPropriedades == nil then equip.tabPropriedades = {}; end;
            
            									local choices = {};
            									for prop,_ in pairs(common.armas_propriedades) do if not equip.tabPropriedades[prop] then table.insert(choices, prop); end; end;
            									table.sort(choices)
            
            									Dialogs.choose("Selecione a propriedade:", choices,
            										function(selected, selectedIndex, selectedText)
            											if(selected) then
            												local node = self.rclProps:append()
            												node.texto = selectedText;
            												node.hint = common.armas_propriedades[selectedText];
            
            												equip.tabPropriedades[selectedText] = true;
            												equip.propriedades = common.concat(equip.tabPropriedades, ", ");
            											end;
            										end
            									);
            								end;
        end, obj);

    obj._e_event373 = obj.dataLink119:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local equip = self.dataEquipAttackDetails.node;
            								if equip ~= nil and equip.propriedades ~= nil then
            									if equip.tabPropriedades == nil then equip.tabPropriedades = {}; end;
            
            									if self.rclProps ~= nil and common.concat(equip.tabPropriedades) == "" then
            										for propriedade in string.gmatch((equip.propriedades or ""), "[^,%s]+") do
            											if common.armas_propriedades[propriedade] ~= nil then
            												equip.tabPropriedades[propriedade] = true;
            												local node = self.rclProps:append();
            												node.texto = propriedade;
            												node.hint = common.armas_propriedades[propriedade];
            											end;
            										end;
            									end;
            									equip.propriedades = common.concat(equip.tabPropriedades, ", ");
            								end;
        end, obj);

    obj._e_event374 = obj.dataLink120:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet and sheet.contadoresMudaram then
            							self.cbOptAtaqueMunicao:setItems(common.getNomeContadores(sheet, {""}));
            						end;
        end, obj);

    obj._e_event375 = obj.btnApagar:addEventListener("onClick",
        function (_)
            common.askForDelete(self.sheet);
        end, obj);

    obj._e_event376 = obj.rclOptsAttack:addEventListener("onItemAdded",
        function (_, node, form)
            form.cbOptAtaqueMunicao:setItems(common.getNomeContadores(sheet, {""}));
        end, obj);

    obj._e_event377 = obj.button50:addEventListener("onClick",
        function (_)
            self.rclOptsAttack:append();
        end, obj);

    obj._e_event378 = obj.dataLink121:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet ~= nil and self ~= nil and sheet.contadoresMudaram then
            										local equip = self.dataEquipAttackDetails.node;
            										if equip ~= nil then
            											local optsAttack = NDB.getChildNodes(equip.optsAttack);
            											for i=1,#optsAttack,1 do
            												optsAttack[i].contadoresMudaram = true;
            												optsAttack[i].contadoresMudaram = false;
            											end;
            										end;
            									end;
        end, obj);

    obj._e_event379 = obj.labEquipDefense:addEventListener("onResize",
        function (_)
            recalcularTamanhoEquipsDefesa();
        end, obj);

    obj._e_event380 = obj.rclEquipsDefense:addEventListener("onResize",
        function (_)
            recalcularTamanhoEquipsDefesa();
        end, obj);

    obj._e_event381 = obj.btnEquipDefenseNew:addEventListener("onClick",
        function (_)
            self.rclEquipsDefense:append();
        end, obj);

    obj._e_event382 = obj.checkBox3:addEventListener("onChange",
        function (_)
            if sheet then
            								self.editorFancy:setVisible(sheet.equipamento.outros_melhorado);
            								self.editorMerda:setVisible(not (sheet.equipamento.outros_melhorado));
            							end;
        end, obj);

    obj._e_event383 = obj.label59:addEventListener("onResize",
        function (_)
            recalcularTamanhoEquipsDefesa();
        end, obj);

    obj._e_event384 = obj.dataLink122:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.magias = sheet.magias or {};
            			local niveis = NDB.getChildNodes(sheet.magias.niveis);
            
            			for nvl=1,#niveis do
            				niveis[nvl].descansoLongo = sheet.descansoLongo;
            				niveis[nvl].descansoCurto = sheet.descansoCurto;
            			end;
        end, obj);

    obj._e_event385 = obj.labupperGridMagicBox1:addEventListener("onResize",
        function (_)
            self.upperGridMagicBox1._RecalcSize();
        end, obj);

    obj._e_event386 = obj.labupperGridMagicBox2:addEventListener("onResize",
        function (_)
            self.upperGridMagicBox2._RecalcSize();
        end, obj);

    obj._e_event387 = obj.labupperGridMagicBox3:addEventListener("onResize",
        function (_)
            self.upperGridMagicBox3._RecalcSize();
        end, obj);

    obj._e_event388 = obj.popupEdit:addEventListener("onClose",
        function (_, canceled)
            sheet.magias.selecionada = nil;
        end, obj);

    obj._e_event389 = obj.popupEdit:addEventListener("onNodeUnready",
        function (_)
            sheet.magias.selecionada = nil;
        end, obj);

    obj._e_event390 = obj.popupEdit:addEventListener("onNodeReady",
        function (_)
            self.popupEdit:getNodeObject().cdResistenciaTipo = nil;
        end, obj);

    obj._e_event391 = obj.editPENome:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event392 = obj.editPENome:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event393 = obj.editPENome:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.eventFunc, {tag = 'editPENome', node = sheet, form = self, event='onClick', contexto = ''}, nil, false);
        end, obj);

    obj._e_event394 = obj.editPENome:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.eventFunc, {tag = 'editPENome', node = sheet, form = self, event='onMenu', contexto = ''}, nil, true);
        end, obj);

    obj._e_event395 = obj.labelFieldPENivel:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event396 = obj.labelFieldPENivel:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event397 = obj.labelFieldPEEscola:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event398 = obj.labelFieldPEEscola:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event399 = obj.labelFieldPETempo:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event400 = obj.labelFieldPETempo:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event401 = obj.dataLink123:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            									self.popupEditCompM:setEnabled(node.componentesM or false);
        end, obj);

    obj._e_event402 = obj.dataLink124:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            								self.layPrepValor:setVisible(node.preparadoTipo == 'Preparada' or node.preparadoTipo == 'Sempre Preparada');
            								self.layPrepValor:setEnabled(node.preparadoTipo == 'Preparada');
        end, obj);

    obj._e_event403 = obj.dataLink125:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            									self.popupEditCondAtiv:setEnabled(node.tempoConjuracaoUnidade == 'Rea????o');
        end, obj);

    obj._e_event404 = obj.dataLink126:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            									if node.alcanceUnidade == 'Nenhum' or node.alcanceUnidade == 'Pessoal' or node.alcanceUnidade == 'Toque' then
            										self.popupEditAlcanceCurto:setEnabled(false);
            										self.popupEditAlcanceLongo:setEnabled(false);
            									else
            										self.popupEditAlcanceCurto:setEnabled(true);
            										self.popupEditAlcanceLongo:setEnabled(true);
            									end;
        end, obj);

    obj._e_event405 = obj.dataLink127:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            									if node.duracaoUnidade == 'Instant??nea' or node.duracaoUnidade == 'Permanente' then
            										self.popupEditDuracaoUnidade:setEnabled(false);
            									else
            										self.popupEditDuracaoUnidade:setEnabled(true);
            									end;
        end, obj);

    obj._e_event406 = obj.dataLink128:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            									local contador = common.getContador(node, node.contadorNome or '');
            									if not contador then
            										node.contadorUsosTotal = '-';
            									else
            										node.contadorUsosTotal = contador.valMax;
            									end;
        end, obj);

    obj._e_event407 = obj.dataLink129:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            							self.popupEditAtaqueAtrib:setEnabled(node.ataqueTipo ~= 'Sem Ataque');	
            							self.popupEditAtaqueBonus:setEnabled(node.ataqueTipo ~= 'Sem Ataque');
        end, obj);

    obj._e_event408 = obj.button51:addEventListener("onClick",
        function (_)
            self.popupEditDanoRL:append();
        end, obj);

    obj._e_event409 = obj.popupEditDanoRL:addEventListener("onEndEnumeration",
        function (_)
            local node = self.popupEdit:getNodeObject();
            								local h = 30 + self.popupEditDanoRect.margins.top + self.popupEditDanoRect.margins.bottom;
            								local danos = NDB.getChildNodes(node and node.danos or {});
            								if #danos > 0 then
            									h = h + 24 + #danos * 29;
            									self.popupEditDanoLegenda:setVisible(true);
            								else
            									self.popupEditDanoLegenda:setVisible(false);
            								end;
            								self.popupEditDanoRect:setHeight(h);
        end, obj);

    obj._e_event410 = obj.button52:addEventListener("onClick",
        function (_)
            local formula = self.popupEditFormulaRL:append();
            									if formula then formula.tipoDano = "n??o"; end;
        end, obj);

    obj._e_event411 = obj.popupEditFormulaRL:addEventListener("onEndEnumeration",
        function (_)
            local node = self.popupEdit:getNodeObject();
            								local h = 30 + self.popupEditFormulaRect.margins.top + self.popupEditFormulaRect.margins.bottom;
            								local formulas = NDB.getChildNodes(node and node.formulas or {});
            								if #formulas > 0 then
            									h = h + 24 + #formulas * 29;
            									self.popupEditFormulaLegenda:setVisible(true);
            								else
            									self.popupEditFormulaLegenda:setVisible(false);
            								end;
            								self.popupEditFormulaRect:setHeight(h);
        end, obj);

    obj._e_event412 = obj.dataLink130:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            									if not node.cdResistenciaTipo then
            										node.cdResistenciaTipo = 'conjuracao';
            									elseif node.cdResistenciaTipo == "fixo" then
            										self.popupEditCDvalor:setEnabled(true);
            									else
            										local ficha = common.getTopNode(node);
            										local hab = node.cdResistenciaTipo;
            										local modHab;
            										local modProf = tonumber(ficha.bonusProficiencia) or 0;
            
            										if hab == 'conjuracao' then hab = ficha.magias.habilidadeDeConjuracao; end;
            
            										modHab = tonumber(ficha.atributos['mod' .. common.toCapitalCase(hab)]) or 0;
            
            										self.popupEditCDvalor:setEnabled(false);
            										node.cdResistenciaValor = 8 + modHab + modProf;
            									end;
        end, obj);

    obj._e_event413 = obj.dataLink131:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            							dload.getSourcePath(self, "spells", node.importSourceName, function(path) node.importSourcePath = path; end);
        end, obj);

    obj._e_event414 = obj.dataLink133:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            							dload.spellGetClasses(self, node.importSourcePath, node.importLevel, function(items) self.comboBoxImportClass:setItems(items); end);
        end, obj);

    obj._e_event415 = obj.dataLink134:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            							dload.spellGetNames(self, node.importSourcePath, node.importLevel, node.importClass, function(items) self.comboBoxImportMagia:setItems(items); end);
        end, obj);

    obj._e_event416 = obj.button53:addEventListener("onClick",
        function (_)
            local node = self.popupEdit:getNodeObject();
            						dload.spellImport(self, node.importSourcePath, node.importName, node);
        end, obj);

    obj._e_event417 = obj.dataLink135:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local hab;
            			local bonusProficiencia;
            			local modHab;
            
            			sheet.magias = sheet.magias or {};
            			sheet.atributos = sheet.atributos or {};
            
            			hab = sheet.magias.habilidadeDeConjuracao;
            
            			modHab = tonumber(sheet.atributos['mod' .. common.toCapitalCase(hab)]) or 0;
            
            			bonusProficiencia = tonumber(sheet.bonusProficiencia) or 0;
            
            			sheet.magias.cdDaMagia = 8 + modHab + bonusProficiencia;
            			sheet.magias.bonusAtaque = modHab + bonusProficiencia;
            
            			if sheet.magias.bonusAtaque >= 0 then
            				sheet.magias.bonusAtaqueSTR = "+" .. sheet.magias.bonusAtaque;
            			else
            				sheet.magias.bonusAtaqueSTR = sheet.magias.bonusAtaque;
            			end;
            
            
            			local niveis = NDB.getChildNodes(sheet.magias.niveis);
            
            			if #niveis == 0 then
            				local truques = self.rclMagiasNiveis:append();
            				truques.nome = 'Truques';
            				-- if sheet.magias.magias then
            				-- 	local magias_old = NDB.getChildNodes(sheet.magias.magias);
            				-- 	for i=1, #magias_old do
            				-- 		local magia = truques.rclMagias:append();
            				-- 		local magia_old = magias_old[i];
            				-- 		magia.nome = magia_old.nome;
            				-- 		if magia_old.tempoDeFormulacao then magia.tempoConjuracaoValor = magia_old.tempoDeFormulacao end;
            				-- 		if magia_old.alcance then magia.alvoValor = magia_old.alcance end;
            				-- 		magia.componentesV = string.find(magia_old.componentes, 'V');
            				-- 		magia.componentesS = string.find(magia_old.componentes, 'S');
            				-- 		magia.componentesM = string.find(magia_old.componentes, 'M');
            				-- 		magia.componentesConcentracao = string.find(magia_old.componentes, 'C');
            				-- 		magia.componentesRitual = string.find(magia_old.componentes, 'R');
            				-- 		if magia_old.duracao then magia.duracaoValor = magia_old.duracao end;
            				-- 		if magia_old.ataque == 'Ataque Corpo-a-Corpo' then magia.ataqueTipo = 'Ataque de Magia Corpo-a-Corpo';
            				-- 		elseif magia_old.ataque == 'Ataque a Dist??ncia' then magia.ataqueTipo = 'Ataque de Magia a Dist??ncia';
            				-- 		end;
            				-- 		if magia_old.resistencia == 'For??a' then magia.cdResistenciaAtributo = 'forca';
            				-- 		elseif magia_old.resistencia == 'Destreza' then magia.cdResistenciaAtributo = 'destreza';
            				-- 		elseif magia_old.resistencia == 'Constitui????o' then magia.cdResistenciaAtributo = 'constituicao';
            				-- 		elseif magia_old.resistencia == 'Intelig??ncia' then magia.cdResistenciaAtributo = 'inteligencia';
            				-- 		elseif magia_old.resistencia == 'Sabedoria' then magia.cdResistenciaAtributo = 'sabedoria';
            				-- 		elseif magia_old.resistencia == 'Carisma' then magia.cdResistenciaAtributo = 'carisma';
            				-- 		end;
            				-- 	end;
            				-- end;
            
            				for lvl=1,9 do
            					local node = self.rclMagiasNiveis:append();
            					node.nome = lvl .. '?? N??vel';
            					if sheet.magias.magias then
            						node.espacosTotais = sheet.magias['espacosTotais' .. lvl];
            						node.espacosAtuais = node.espacosTotais - sheet.magias['espacosGastos' .. lvl];
            						-- local magias_old = NDB.getChildNodes(sheet.magias.magias);
            						-- for i=1, #magias_old do
            						-- 	local magia = node.rclMagias:append();
            						-- 	local magia_old = magias_old[i];
            						-- 	magia.nome = magia_old.nome;
            						-- 	if magia_old.tempoDeFormulacao then magia.tempoConjuracaoValor = magia_old.tempoDeFormulacao end;
            						-- 	if magia_old.alcance then magia.alvoValor = magia_old.alcance end;
            						-- 	magia.componentesV = string.find(magia_old.componentes, 'V');
            						-- 	magia.componentesS = string.find(magia_old.componentes, 'S');
            						-- 	magia.componentesM = string.find(magia_old.componentes, 'M');
            						-- 	magia.componentesConcentracao = string.find(magia_old.componentes, 'C');
            						-- 	magia.componentesRitual = string.find(magia_old.componentes, 'R');
            						-- 	if magia_old.duracao then magia.duracaoValor = magia_old.duracao end;
            						-- 	if magia_old.ataque == 'Ataque Corpo-a-Corpo' then magia.ataqueTipo = 'Ataque de Magia Corpo-a-Corpo';
            						-- 	elseif magia_old.ataque == 'Ataque a Dist??ncia' then magia.ataqueTipo = 'Ataque de Magia a Dist??ncia';
            						-- 	end;
            						-- 	if magia_old.resistencia == 'For??a' then magia.cdResistenciaAtributo = 'forca';
            						-- 	elseif magia_old.resistencia == 'Destreza' then magia.cdResistenciaAtributo = 'destreza';
            						-- 	elseif magia_old.resistencia == 'Constitui????o' then magia.cdResistenciaAtributo = 'constituicao';
            						-- 	elseif magia_old.resistencia == 'Intelig??ncia' then magia.cdResistenciaAtributo = 'inteligencia';
            						-- 	elseif magia_old.resistencia == 'Sabedoria' then magia.cdResistenciaAtributo = 'sabedoria';
            						-- 	elseif magia_old.resistencia == 'Carisma' then magia.cdResistenciaAtributo = 'carisma';
            						-- 	end;
            						-- end;
            					end;
            				end;
            			end;
        end, obj);

    obj._e_event418 = obj.dataLink136:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.magias and sheet.magias.selecionada then
            			local node;
            			local niveis = NDB.getChildNodes(sheet.magias.niveis);
            			for i=1,#niveis do
            				local nodes = NDB.getChildNodes(niveis[i].magias);
            				for j=1,#nodes do
            					if nodes[j].id == sheet.magias.selecionada then
            						node = nodes[j];
            					end;
            				end;
            			end;
            
            			if node then
            				self.popupEdit:setNodeObject(node);
            				self.popupEdit:show();
            			else
            				showMessage('nope');
            			end;
            		end;
        end, obj);

    obj._e_event419 = obj.button54:addEventListener("onClick",
        function (_)
            self.rclContadores:append()
        end, obj);

    obj._e_event420 = obj.button55:addEventListener("onClick",
        function (_)
            for key,_ in pairs(sheet.macroSavedSkills) do
            					val = sheet.macroSavedSkills[key];
            					if common.getContador(key) == nil then
            						local contador = self.rclContadores:append();
            						contador.name = val.nome;
            						contador.valCur = val.min;
            						contador.valMax = val.max;
            						if val.reset == "Descanso Curto" then contador["resetsDescanso Curto"] = "Completa"; contador["resetsDescanso Longo"] = "Completa"; end;
            						if val.reset == "Descanso Longo" then contador["resetsDescanso Longo"] = "Completa"; end;
            						if val.reset == "Dado de Vida" then contador["resetsDescanso Longo"] = "Recupera Metade (???)"; end;
            					end;
            				end;
        end, obj);

    obj._e_event421 = obj.rclContadores:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return Utils.compareStringPtBr(nodeA.name, nodeB.name);
        end, obj);

    obj._e_event422 = obj.rclContadores:addEventListener("onItemAdded",
        function (_, node, form)
            if sheet ~= nil then
            					sheet.contadoresMudaram = true;
            					sheet.contadoresMudaram = false;
            				end;
        end, obj);

    obj._e_event423 = obj.rclContadores:addEventListener("onItemRemoved",
        function (_, node, form)
            if sheet ~= nil then
            					sheet.contadoresMudaram = true;
            					sheet.contadoresMudaram = false;
            				end;
        end, obj);

    obj._e_event424 = obj.dataLink137:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local contadores = NDB.getChildNodes(sheet.contadores);
            			for i=1,#contadores,1 do
            				contadores[i].descansoLongo = sheet.descansoLongo;
            				contadores[i].descansoCurto = sheet.descansoCurto;
            			end;
        end, obj);

    obj._e_event425 = obj.button56:addEventListener("onClick",
        function (_)
            Dialogs.confirmYesNo('Voc?? tem certeza que deseja resetar as propriedades da ficha?',
            			function(confirmado)
            				if confirmado then
            					sheet.propriedades = {}; 
            				end;
            			end);
        end, obj);

    obj._e_event426 = obj.button57:addEventListener("onClick",
        function (_)
            if not sheet.propriedades then
            			sheet.propriedades = {};
            		end;
            
            		local choices = {};
            		for key,val in pairs(common.ficha_propriedades) do
            			if sheet.propriedades[key] == nil then table.insert(choices, val.nome); end;
            		end;
            		table.sort(choices);
            		Dialogs.choose('Qual propriedade?', choices, function(selected, choiceIndex, choiceText)
            			for key,val in pairs(common.ficha_propriedades) do
            				if val.nome == choiceText then
            					if sheet.propriedades[key] then return;
            					end;
            
            					local node = self.rclFichaPropriedades:append();
            
            					node.id = key;
            					node.nome = val.nome;
            					node.descricao = val.descricao;
            					node.tipo = val.tipo;
            					node.min = val.min;
            					node.max = val.max;
            					node.default = val.default;
            					node.implementado = val.implementado;
            
            					sheet.propriedades[key] = true;
            					sheet.propriedades.alterou = key;
            					sheet.propriedades.alterou = nil;
            					return;
            				end;
            			end;
            		end);
        end, obj);

    obj._e_event427 = obj.checkBox9:addEventListener("onChange",
        function (_)
            if sheet then
            								self.historiaFancy:setVisible(sheet.historia.usarEditorFancy);
            								self.historiaMerda:setVisible(not (sheet.historia.usarEditorFancy));
            							end;
        end, obj);

    obj._e_event428 = obj.dataLink138:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modcompanionforca = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modcompanionforcastr = "+" .. modificador;
            					else
            						sheet.atributos.modcompanionforcastr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modcompanionforca = nil;
            					sheet.atributos.modcompanionforcastr = nil;
            				end;
        end, obj);

    obj._e_event429 = obj.button58:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event430 = obj.button58:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event431 = obj.button58:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionforca'}, nil, false);
        end, obj);

    obj._e_event432 = obj.button58:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionforca'}, nil, true);
        end, obj);

    obj._e_event433 = obj.cbProfcompanionforca:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionforca"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionforca', true);
            						sheet.resistencias.companionforca = true;
            					end;
        end, obj);

    obj._e_event434 = obj.cbProfcompanionforca:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionforca', false);
        end, obj);

    obj._e_event435 = obj.dataLink139:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionforca");
        end, obj);

    obj._e_event436 = obj.dataLink140:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionforca'] then updateCbVisibility('companionforca'); end;
        end, obj);

    obj._e_event437 = obj.button59:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event438 = obj.button59:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event439 = obj.button59:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionforca'}, nil, false);
        end, obj);

    obj._e_event440 = obj.button59:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionforca'}, nil, true);
        end, obj);

    obj._e_event441 = obj.dataLink141:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'companionforca');
            
            						sheet.resistencias.bonuscompanionforca = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonuscompanionforcastr = "+" .. valor;
            						else
            							sheet.resistencias.bonuscompanionforcastr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfcompanionforca:setHitTest(true);
            						self.labProfcompanionforca:setHint(hint);
        end, obj);

    obj._e_event442 = obj.cbProfcompanionatletismo:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionatletismo"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionatletismo', true);
            						sheet.pericias.companionatletismo = true;
            					end;
        end, obj);

    obj._e_event443 = obj.cbProfcompanionatletismo:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionatletismo', false);
        end, obj);

    obj._e_event444 = obj.dataLink142:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionatletismo");
        end, obj);

    obj._e_event445 = obj.dataLink143:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionatletismo'] then updateCbVisibility('companionatletismo'); end;
        end, obj);

    obj._e_event446 = obj.button60:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event447 = obj.button60:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event448 = obj.button60:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionatletismo'}, nil, false);
        end, obj);

    obj._e_event449 = obj.button60:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionatletismo'}, nil, true);
        end, obj);

    obj._e_event450 = obj.dataLink144:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companionforca', 'companionatletismo');
            
            							sheet.pericias.bonuscompanionatletismo = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionatletismostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionatletismostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionatletismo:setHitTest(true);
            							self.labProfcompanionatletismo:setHint(hint);
        end, obj);

    obj._e_event451 = obj.dataLink145:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modcompaniondestreza = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modcompaniondestrezastr = "+" .. modificador;
            					else
            						sheet.atributos.modcompaniondestrezastr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modcompaniondestreza = nil;
            					sheet.atributos.modcompaniondestrezastr = nil;
            				end;
        end, obj);

    obj._e_event452 = obj.button61:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event453 = obj.button61:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event454 = obj.button61:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companiondestreza'}, nil, false);
        end, obj);

    obj._e_event455 = obj.button61:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companiondestreza'}, nil, true);
        end, obj);

    obj._e_event456 = obj.cbProfcompaniondestreza:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companiondestreza"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companiondestreza', true);
            						sheet.resistencias.companiondestreza = true;
            					end;
        end, obj);

    obj._e_event457 = obj.cbProfcompaniondestreza:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companiondestreza', false);
        end, obj);

    obj._e_event458 = obj.dataLink146:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companiondestreza");
        end, obj);

    obj._e_event459 = obj.dataLink147:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companiondestreza'] then updateCbVisibility('companiondestreza'); end;
        end, obj);

    obj._e_event460 = obj.button62:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event461 = obj.button62:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event462 = obj.button62:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companiondestreza'}, nil, false);
        end, obj);

    obj._e_event463 = obj.button62:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companiondestreza'}, nil, true);
        end, obj);

    obj._e_event464 = obj.dataLink148:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'companiondestreza');
            
            						sheet.resistencias.bonuscompaniondestreza = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonuscompaniondestrezastr = "+" .. valor;
            						else
            							sheet.resistencias.bonuscompaniondestrezastr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfcompaniondestreza:setHitTest(true);
            						self.labProfcompaniondestreza:setHint(hint);
        end, obj);

    obj._e_event465 = obj.cbProfcompanionacrobacia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionacrobacia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionacrobacia', true);
            						sheet.pericias.companionacrobacia = true;
            					end;
        end, obj);

    obj._e_event466 = obj.cbProfcompanionacrobacia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionacrobacia', false);
        end, obj);

    obj._e_event467 = obj.dataLink149:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionacrobacia");
        end, obj);

    obj._e_event468 = obj.dataLink150:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionacrobacia'] then updateCbVisibility('companionacrobacia'); end;
        end, obj);

    obj._e_event469 = obj.button63:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event470 = obj.button63:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event471 = obj.button63:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionacrobacia'}, nil, false);
        end, obj);

    obj._e_event472 = obj.button63:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionacrobacia'}, nil, true);
        end, obj);

    obj._e_event473 = obj.dataLink151:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companiondestreza', 'companionacrobacia');
            
            							sheet.pericias.bonuscompanionacrobacia = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionacrobaciastr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionacrobaciastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionacrobacia:setHitTest(true);
            							self.labProfcompanionacrobacia:setHint(hint);
        end, obj);

    obj._e_event474 = obj.cbProfcompanionfurtividade:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionfurtividade"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionfurtividade', true);
            						sheet.pericias.companionfurtividade = true;
            					end;
        end, obj);

    obj._e_event475 = obj.cbProfcompanionfurtividade:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionfurtividade', false);
        end, obj);

    obj._e_event476 = obj.dataLink152:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionfurtividade");
        end, obj);

    obj._e_event477 = obj.dataLink153:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionfurtividade'] then updateCbVisibility('companionfurtividade'); end;
        end, obj);

    obj._e_event478 = obj.button64:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event479 = obj.button64:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event480 = obj.button64:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionfurtividade'}, nil, false);
        end, obj);

    obj._e_event481 = obj.button64:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionfurtividade'}, nil, true);
        end, obj);

    obj._e_event482 = obj.dataLink154:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companiondestreza', 'companionfurtividade');
            
            							sheet.pericias.bonuscompanionfurtividade = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionfurtividadestr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionfurtividadestr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionfurtividade:setHitTest(true);
            							self.labProfcompanionfurtividade:setHint(hint);
        end, obj);

    obj._e_event483 = obj.cbProfcompanionprestidigitacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionprestidigitacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionprestidigitacao', true);
            						sheet.pericias.companionprestidigitacao = true;
            					end;
        end, obj);

    obj._e_event484 = obj.cbProfcompanionprestidigitacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionprestidigitacao', false);
        end, obj);

    obj._e_event485 = obj.dataLink155:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionprestidigitacao");
        end, obj);

    obj._e_event486 = obj.dataLink156:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionprestidigitacao'] then updateCbVisibility('companionprestidigitacao'); end;
        end, obj);

    obj._e_event487 = obj.button65:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event488 = obj.button65:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event489 = obj.button65:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionprestidigitacao'}, nil, false);
        end, obj);

    obj._e_event490 = obj.button65:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionprestidigitacao'}, nil, true);
        end, obj);

    obj._e_event491 = obj.dataLink157:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companiondestreza', 'companionprestidigitacao');
            
            							sheet.pericias.bonuscompanionprestidigitacao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionprestidigitacaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionprestidigitacaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionprestidigitacao:setHitTest(true);
            							self.labProfcompanionprestidigitacao:setHint(hint);
        end, obj);

    obj._e_event492 = obj.dataLink158:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modcompanionconstituicao = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modcompanionconstituicaostr = "+" .. modificador;
            					else
            						sheet.atributos.modcompanionconstituicaostr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modcompanionconstituicao = nil;
            					sheet.atributos.modcompanionconstituicaostr = nil;
            				end;
        end, obj);

    obj._e_event493 = obj.button66:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event494 = obj.button66:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event495 = obj.button66:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionconstituicao'}, nil, false);
        end, obj);

    obj._e_event496 = obj.button66:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionconstituicao'}, nil, true);
        end, obj);

    obj._e_event497 = obj.cbProfcompanionconstituicao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionconstituicao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionconstituicao', true);
            						sheet.resistencias.companionconstituicao = true;
            					end;
        end, obj);

    obj._e_event498 = obj.cbProfcompanionconstituicao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionconstituicao', false);
        end, obj);

    obj._e_event499 = obj.dataLink159:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionconstituicao");
        end, obj);

    obj._e_event500 = obj.dataLink160:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionconstituicao'] then updateCbVisibility('companionconstituicao'); end;
        end, obj);

    obj._e_event501 = obj.button67:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event502 = obj.button67:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event503 = obj.button67:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionconstituicao'}, nil, false);
        end, obj);

    obj._e_event504 = obj.button67:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionconstituicao'}, nil, true);
        end, obj);

    obj._e_event505 = obj.dataLink161:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'companionconstituicao');
            
            						sheet.resistencias.bonuscompanionconstituicao = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonuscompanionconstituicaostr = "+" .. valor;
            						else
            							sheet.resistencias.bonuscompanionconstituicaostr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfcompanionconstituicao:setHitTest(true);
            						self.labProfcompanionconstituicao:setHint(hint);
        end, obj);

    obj._e_event506 = obj.cbProfcompanionconcentracao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionconcentracao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionconcentracao', true);
            						sheet.pericias.companionconcentracao = true;
            					end;
        end, obj);

    obj._e_event507 = obj.cbProfcompanionconcentracao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionconcentracao', false);
        end, obj);

    obj._e_event508 = obj.dataLink162:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionconcentracao");
        end, obj);

    obj._e_event509 = obj.dataLink163:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionconcentracao'] then updateCbVisibility('companionconcentracao'); end;
        end, obj);

    obj._e_event510 = obj.button68:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event511 = obj.button68:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event512 = obj.button68:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionconcentracao'}, nil, false);
        end, obj);

    obj._e_event513 = obj.button68:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionconcentracao'}, nil, true);
        end, obj);

    obj._e_event514 = obj.dataLink164:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companionconstituicao', 'companionconcentracao');
            
            							sheet.pericias.bonuscompanionconcentracao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionconcentracaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionconcentracaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionconcentracao:setHitTest(true);
            							self.labProfcompanionconcentracao:setHint(hint);
        end, obj);

    obj._e_event515 = obj.cbProfcompaniontolerancia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companiontolerancia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companiontolerancia', true);
            						sheet.pericias.companiontolerancia = true;
            					end;
        end, obj);

    obj._e_event516 = obj.cbProfcompaniontolerancia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companiontolerancia', false);
        end, obj);

    obj._e_event517 = obj.dataLink165:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companiontolerancia");
        end, obj);

    obj._e_event518 = obj.dataLink166:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companiontolerancia'] then updateCbVisibility('companiontolerancia'); end;
        end, obj);

    obj._e_event519 = obj.button69:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event520 = obj.button69:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event521 = obj.button69:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companiontolerancia'}, nil, false);
        end, obj);

    obj._e_event522 = obj.button69:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companiontolerancia'}, nil, true);
        end, obj);

    obj._e_event523 = obj.dataLink167:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companionconstituicao', 'companiontolerancia');
            
            							sheet.pericias.bonuscompaniontolerancia = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompaniontoleranciastr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompaniontoleranciastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompaniontolerancia:setHitTest(true);
            							self.labProfcompaniontolerancia:setHint(hint);
        end, obj);

    obj._e_event524 = obj.dataLink168:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modcompanioninteligencia = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modcompanioninteligenciastr = "+" .. modificador;
            					else
            						sheet.atributos.modcompanioninteligenciastr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modcompanioninteligencia = nil;
            					sheet.atributos.modcompanioninteligenciastr = nil;
            				end;
        end, obj);

    obj._e_event525 = obj.button70:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event526 = obj.button70:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event527 = obj.button70:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companioninteligencia'}, nil, false);
        end, obj);

    obj._e_event528 = obj.button70:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companioninteligencia'}, nil, true);
        end, obj);

    obj._e_event529 = obj.cbProfcompanioninteligencia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companioninteligencia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companioninteligencia', true);
            						sheet.resistencias.companioninteligencia = true;
            					end;
        end, obj);

    obj._e_event530 = obj.cbProfcompanioninteligencia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companioninteligencia', false);
        end, obj);

    obj._e_event531 = obj.dataLink169:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companioninteligencia");
        end, obj);

    obj._e_event532 = obj.dataLink170:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companioninteligencia'] then updateCbVisibility('companioninteligencia'); end;
        end, obj);

    obj._e_event533 = obj.button71:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event534 = obj.button71:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event535 = obj.button71:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companioninteligencia'}, nil, false);
        end, obj);

    obj._e_event536 = obj.button71:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companioninteligencia'}, nil, true);
        end, obj);

    obj._e_event537 = obj.dataLink171:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'companioninteligencia');
            
            						sheet.resistencias.bonuscompanioninteligencia = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonuscompanioninteligenciastr = "+" .. valor;
            						else
            							sheet.resistencias.bonuscompanioninteligenciastr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfcompanioninteligencia:setHitTest(true);
            						self.labProfcompanioninteligencia:setHint(hint);
        end, obj);

    obj._e_event538 = obj.cbProfcompanionarcanismo:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionarcanismo"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionarcanismo', true);
            						sheet.pericias.companionarcanismo = true;
            					end;
        end, obj);

    obj._e_event539 = obj.cbProfcompanionarcanismo:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionarcanismo', false);
        end, obj);

    obj._e_event540 = obj.dataLink172:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionarcanismo");
        end, obj);

    obj._e_event541 = obj.dataLink173:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionarcanismo'] then updateCbVisibility('companionarcanismo'); end;
        end, obj);

    obj._e_event542 = obj.button72:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event543 = obj.button72:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event544 = obj.button72:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionarcanismo'}, nil, false);
        end, obj);

    obj._e_event545 = obj.button72:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionarcanismo'}, nil, true);
        end, obj);

    obj._e_event546 = obj.dataLink174:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companioninteligencia', 'companionarcanismo');
            
            							sheet.pericias.bonuscompanionarcanismo = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionarcanismostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionarcanismostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionarcanismo:setHitTest(true);
            							self.labProfcompanionarcanismo:setHint(hint);
        end, obj);

    obj._e_event547 = obj.cbProfcompanionhistoria:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionhistoria"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionhistoria', true);
            						sheet.pericias.companionhistoria = true;
            					end;
        end, obj);

    obj._e_event548 = obj.cbProfcompanionhistoria:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionhistoria', false);
        end, obj);

    obj._e_event549 = obj.dataLink175:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionhistoria");
        end, obj);

    obj._e_event550 = obj.dataLink176:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionhistoria'] then updateCbVisibility('companionhistoria'); end;
        end, obj);

    obj._e_event551 = obj.button73:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event552 = obj.button73:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event553 = obj.button73:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionhistoria'}, nil, false);
        end, obj);

    obj._e_event554 = obj.button73:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionhistoria'}, nil, true);
        end, obj);

    obj._e_event555 = obj.dataLink177:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companioninteligencia', 'companionhistoria');
            
            							sheet.pericias.bonuscompanionhistoria = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionhistoriastr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionhistoriastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionhistoria:setHitTest(true);
            							self.labProfcompanionhistoria:setHint(hint);
        end, obj);

    obj._e_event556 = obj.cbProfcompanioninvestigacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companioninvestigacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companioninvestigacao', true);
            						sheet.pericias.companioninvestigacao = true;
            					end;
        end, obj);

    obj._e_event557 = obj.cbProfcompanioninvestigacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companioninvestigacao', false);
        end, obj);

    obj._e_event558 = obj.dataLink178:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companioninvestigacao");
        end, obj);

    obj._e_event559 = obj.dataLink179:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companioninvestigacao'] then updateCbVisibility('companioninvestigacao'); end;
        end, obj);

    obj._e_event560 = obj.button74:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event561 = obj.button74:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event562 = obj.button74:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companioninvestigacao'}, nil, false);
        end, obj);

    obj._e_event563 = obj.button74:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companioninvestigacao'}, nil, true);
        end, obj);

    obj._e_event564 = obj.dataLink180:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companioninteligencia', 'companioninvestigacao');
            
            							sheet.pericias.bonuscompanioninvestigacao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanioninvestigacaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanioninvestigacaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanioninvestigacao:setHitTest(true);
            							self.labProfcompanioninvestigacao:setHint(hint);
        end, obj);

    obj._e_event565 = obj.cbProfcompanionnatureza:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionnatureza"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionnatureza', true);
            						sheet.pericias.companionnatureza = true;
            					end;
        end, obj);

    obj._e_event566 = obj.cbProfcompanionnatureza:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionnatureza', false);
        end, obj);

    obj._e_event567 = obj.dataLink181:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionnatureza");
        end, obj);

    obj._e_event568 = obj.dataLink182:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionnatureza'] then updateCbVisibility('companionnatureza'); end;
        end, obj);

    obj._e_event569 = obj.button75:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event570 = obj.button75:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event571 = obj.button75:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionnatureza'}, nil, false);
        end, obj);

    obj._e_event572 = obj.button75:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionnatureza'}, nil, true);
        end, obj);

    obj._e_event573 = obj.dataLink183:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companioninteligencia', 'companionnatureza');
            
            							sheet.pericias.bonuscompanionnatureza = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionnaturezastr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionnaturezastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionnatureza:setHitTest(true);
            							self.labProfcompanionnatureza:setHint(hint);
        end, obj);

    obj._e_event574 = obj.cbProfcompanionreligiao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionreligiao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionreligiao', true);
            						sheet.pericias.companionreligiao = true;
            					end;
        end, obj);

    obj._e_event575 = obj.cbProfcompanionreligiao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionreligiao', false);
        end, obj);

    obj._e_event576 = obj.dataLink184:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionreligiao");
        end, obj);

    obj._e_event577 = obj.dataLink185:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionreligiao'] then updateCbVisibility('companionreligiao'); end;
        end, obj);

    obj._e_event578 = obj.button76:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event579 = obj.button76:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event580 = obj.button76:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionreligiao'}, nil, false);
        end, obj);

    obj._e_event581 = obj.button76:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionreligiao'}, nil, true);
        end, obj);

    obj._e_event582 = obj.dataLink186:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companioninteligencia', 'companionreligiao');
            
            							sheet.pericias.bonuscompanionreligiao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionreligiaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionreligiaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionreligiao:setHitTest(true);
            							self.labProfcompanionreligiao:setHint(hint);
        end, obj);

    obj._e_event583 = obj.dataLink187:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modcompanionsabedoria = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modcompanionsabedoriastr = "+" .. modificador;
            					else
            						sheet.atributos.modcompanionsabedoriastr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modcompanionsabedoria = nil;
            					sheet.atributos.modcompanionsabedoriastr = nil;
            				end;
        end, obj);

    obj._e_event584 = obj.button77:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event585 = obj.button77:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event586 = obj.button77:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionsabedoria'}, nil, false);
        end, obj);

    obj._e_event587 = obj.button77:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionsabedoria'}, nil, true);
        end, obj);

    obj._e_event588 = obj.cbProfcompanionsabedoria:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionsabedoria"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionsabedoria', true);
            						sheet.resistencias.companionsabedoria = true;
            					end;
        end, obj);

    obj._e_event589 = obj.cbProfcompanionsabedoria:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionsabedoria', false);
        end, obj);

    obj._e_event590 = obj.dataLink188:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionsabedoria");
        end, obj);

    obj._e_event591 = obj.dataLink189:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionsabedoria'] then updateCbVisibility('companionsabedoria'); end;
        end, obj);

    obj._e_event592 = obj.button78:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event593 = obj.button78:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event594 = obj.button78:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionsabedoria'}, nil, false);
        end, obj);

    obj._e_event595 = obj.button78:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionsabedoria'}, nil, true);
        end, obj);

    obj._e_event596 = obj.dataLink190:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'companionsabedoria');
            
            						sheet.resistencias.bonuscompanionsabedoria = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonuscompanionsabedoriastr = "+" .. valor;
            						else
            							sheet.resistencias.bonuscompanionsabedoriastr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfcompanionsabedoria:setHitTest(true);
            						self.labProfcompanionsabedoria:setHint(hint);
        end, obj);

    obj._e_event597 = obj.cbProfcompanionadestrarAnimais:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionadestrarAnimais"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionadestrarAnimais', true);
            						sheet.pericias.companionadestrarAnimais = true;
            					end;
        end, obj);

    obj._e_event598 = obj.cbProfcompanionadestrarAnimais:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionadestrarAnimais', false);
        end, obj);

    obj._e_event599 = obj.dataLink191:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionadestrarAnimais");
        end, obj);

    obj._e_event600 = obj.dataLink192:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionadestrarAnimais'] then updateCbVisibility('companionadestrarAnimais'); end;
        end, obj);

    obj._e_event601 = obj.button79:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event602 = obj.button79:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event603 = obj.button79:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionadestrarAnimais'}, nil, false);
        end, obj);

    obj._e_event604 = obj.button79:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionadestrarAnimais'}, nil, true);
        end, obj);

    obj._e_event605 = obj.dataLink193:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companionsabedoria', 'companionadestrarAnimais');
            
            							sheet.pericias.bonuscompanionadestrarAnimais = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionadestrarAnimaisstr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionadestrarAnimaisstr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionadestrarAnimais:setHitTest(true);
            							self.labProfcompanionadestrarAnimais:setHint(hint);
        end, obj);

    obj._e_event606 = obj.cbProfcompanionintuicao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionintuicao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionintuicao', true);
            						sheet.pericias.companionintuicao = true;
            					end;
        end, obj);

    obj._e_event607 = obj.cbProfcompanionintuicao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionintuicao', false);
        end, obj);

    obj._e_event608 = obj.dataLink194:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionintuicao");
        end, obj);

    obj._e_event609 = obj.dataLink195:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionintuicao'] then updateCbVisibility('companionintuicao'); end;
        end, obj);

    obj._e_event610 = obj.button80:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event611 = obj.button80:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event612 = obj.button80:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionintuicao'}, nil, false);
        end, obj);

    obj._e_event613 = obj.button80:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionintuicao'}, nil, true);
        end, obj);

    obj._e_event614 = obj.dataLink196:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companionsabedoria', 'companionintuicao');
            
            							sheet.pericias.bonuscompanionintuicao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionintuicaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionintuicaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionintuicao:setHitTest(true);
            							self.labProfcompanionintuicao:setHint(hint);
        end, obj);

    obj._e_event615 = obj.cbProfcompanionmedicina:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionmedicina"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionmedicina', true);
            						sheet.pericias.companionmedicina = true;
            					end;
        end, obj);

    obj._e_event616 = obj.cbProfcompanionmedicina:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionmedicina', false);
        end, obj);

    obj._e_event617 = obj.dataLink197:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionmedicina");
        end, obj);

    obj._e_event618 = obj.dataLink198:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionmedicina'] then updateCbVisibility('companionmedicina'); end;
        end, obj);

    obj._e_event619 = obj.button81:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event620 = obj.button81:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event621 = obj.button81:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionmedicina'}, nil, false);
        end, obj);

    obj._e_event622 = obj.button81:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionmedicina'}, nil, true);
        end, obj);

    obj._e_event623 = obj.dataLink199:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companionsabedoria', 'companionmedicina');
            
            							sheet.pericias.bonuscompanionmedicina = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionmedicinastr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionmedicinastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionmedicina:setHitTest(true);
            							self.labProfcompanionmedicina:setHint(hint);
        end, obj);

    obj._e_event624 = obj.cbProfcompanionpercepcao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionpercepcao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionpercepcao', true);
            						sheet.pericias.companionpercepcao = true;
            					end;
        end, obj);

    obj._e_event625 = obj.cbProfcompanionpercepcao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionpercepcao', false);
        end, obj);

    obj._e_event626 = obj.dataLink200:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionpercepcao");
        end, obj);

    obj._e_event627 = obj.dataLink201:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionpercepcao'] then updateCbVisibility('companionpercepcao'); end;
        end, obj);

    obj._e_event628 = obj.button82:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event629 = obj.button82:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event630 = obj.button82:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionpercepcao'}, nil, false);
        end, obj);

    obj._e_event631 = obj.button82:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionpercepcao'}, nil, true);
        end, obj);

    obj._e_event632 = obj.dataLink202:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companionsabedoria', 'companionpercepcao');
            
            							sheet.pericias.bonuscompanionpercepcao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionpercepcaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionpercepcaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionpercepcao:setHitTest(true);
            							self.labProfcompanionpercepcao:setHint(hint);
        end, obj);

    obj._e_event633 = obj.cbProfcompanionsobrevivencia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionsobrevivencia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionsobrevivencia', true);
            						sheet.pericias.companionsobrevivencia = true;
            					end;
        end, obj);

    obj._e_event634 = obj.cbProfcompanionsobrevivencia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionsobrevivencia', false);
        end, obj);

    obj._e_event635 = obj.dataLink203:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionsobrevivencia");
        end, obj);

    obj._e_event636 = obj.dataLink204:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionsobrevivencia'] then updateCbVisibility('companionsobrevivencia'); end;
        end, obj);

    obj._e_event637 = obj.button83:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event638 = obj.button83:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event639 = obj.button83:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionsobrevivencia'}, nil, false);
        end, obj);

    obj._e_event640 = obj.button83:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionsobrevivencia'}, nil, true);
        end, obj);

    obj._e_event641 = obj.dataLink205:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companionsabedoria', 'companionsobrevivencia');
            
            							sheet.pericias.bonuscompanionsobrevivencia = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionsobrevivenciastr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionsobrevivenciastr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionsobrevivencia:setHitTest(true);
            							self.labProfcompanionsobrevivencia:setHint(hint);
        end, obj);

    obj._e_event642 = obj.dataLink206:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;
            
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;
            					sheet.atributos.modcompanioncarisma = modificador;
            
            					if modificador >= 0 then
            						sheet.atributos.modcompanioncarismastr = "+" .. modificador;
            					else
            						sheet.atributos.modcompanioncarismastr = "-" .. math.abs(modificador);
            					end;
            				else
            					sheet.atributos.modcompanioncarisma = nil;
            					sheet.atributos.modcompanioncarismastr = nil;
            				end;
        end, obj);

    obj._e_event643 = obj.button84:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event644 = obj.button84:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event645 = obj.button84:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companioncarisma'}, nil, false);
        end, obj);

    obj._e_event646 = obj.button84:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companioncarisma'}, nil, true);
        end, obj);

    obj._e_event647 = obj.cbProfcompanioncarisma:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companioncarisma"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companioncarisma', true);
            						sheet.resistencias.companioncarisma = true;
            					end;
        end, obj);

    obj._e_event648 = obj.cbProfcompanioncarisma:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companioncarisma', false);
        end, obj);

    obj._e_event649 = obj.dataLink207:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companioncarisma");
        end, obj);

    obj._e_event650 = obj.dataLink208:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companioncarisma'] then updateCbVisibility('companioncarisma'); end;
        end, obj);

    obj._e_event651 = obj.button85:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event652 = obj.button85:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event653 = obj.button85:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companioncarisma'}, nil, false);
        end, obj);

    obj._e_event654 = obj.button85:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companioncarisma'}, nil, true);
        end, obj);

    obj._e_event655 = obj.dataLink209:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'resistencia', 'companioncarisma');
            
            						sheet.resistencias.bonuscompanioncarisma = valor;
            
            						if valor >= 0 then
            							sheet.resistencias.bonuscompanioncarismastr = "+" .. valor;
            						else
            							sheet.resistencias.bonuscompanioncarismastr = "-" .. math.abs(valor);
            						end;
            
            						self.labProfcompanioncarisma:setHitTest(true);
            						self.labProfcompanioncarisma:setHint(hint);
        end, obj);

    obj._e_event656 = obj.cbProfcompanionatuacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionatuacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionatuacao', true);
            						sheet.pericias.companionatuacao = true;
            					end;
        end, obj);

    obj._e_event657 = obj.cbProfcompanionatuacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionatuacao', false);
        end, obj);

    obj._e_event658 = obj.dataLink210:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionatuacao");
        end, obj);

    obj._e_event659 = obj.dataLink211:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionatuacao'] then updateCbVisibility('companionatuacao'); end;
        end, obj);

    obj._e_event660 = obj.button86:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event661 = obj.button86:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event662 = obj.button86:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionatuacao'}, nil, false);
        end, obj);

    obj._e_event663 = obj.button86:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionatuacao'}, nil, true);
        end, obj);

    obj._e_event664 = obj.dataLink212:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companioncarisma', 'companionatuacao');
            
            							sheet.pericias.bonuscompanionatuacao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionatuacaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionatuacaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionatuacao:setHitTest(true);
            							self.labProfcompanionatuacao:setHint(hint);
        end, obj);

    obj._e_event665 = obj.cbProfcompanionenganacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionenganacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionenganacao', true);
            						sheet.pericias.companionenganacao = true;
            					end;
        end, obj);

    obj._e_event666 = obj.cbProfcompanionenganacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionenganacao', false);
        end, obj);

    obj._e_event667 = obj.dataLink213:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionenganacao");
        end, obj);

    obj._e_event668 = obj.dataLink214:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionenganacao'] then updateCbVisibility('companionenganacao'); end;
        end, obj);

    obj._e_event669 = obj.button87:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event670 = obj.button87:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event671 = obj.button87:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionenganacao'}, nil, false);
        end, obj);

    obj._e_event672 = obj.button87:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionenganacao'}, nil, true);
        end, obj);

    obj._e_event673 = obj.dataLink215:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companioncarisma', 'companionenganacao');
            
            							sheet.pericias.bonuscompanionenganacao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionenganacaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionenganacaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionenganacao:setHitTest(true);
            							self.labProfcompanionenganacao:setHint(hint);
        end, obj);

    obj._e_event674 = obj.cbProfcompanionintimidacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionintimidacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionintimidacao', true);
            						sheet.pericias.companionintimidacao = true;
            					end;
        end, obj);

    obj._e_event675 = obj.cbProfcompanionintimidacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionintimidacao', false);
        end, obj);

    obj._e_event676 = obj.dataLink216:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionintimidacao");
        end, obj);

    obj._e_event677 = obj.dataLink217:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionintimidacao'] then updateCbVisibility('companionintimidacao'); end;
        end, obj);

    obj._e_event678 = obj.button88:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event679 = obj.button88:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event680 = obj.button88:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionintimidacao'}, nil, false);
        end, obj);

    obj._e_event681 = obj.button88:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionintimidacao'}, nil, true);
        end, obj);

    obj._e_event682 = obj.dataLink218:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companioncarisma', 'companionintimidacao');
            
            							sheet.pericias.bonuscompanionintimidacao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionintimidacaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionintimidacaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionintimidacao:setHitTest(true);
            							self.labProfcompanionintimidacao:setHint(hint);
        end, obj);

    obj._e_event683 = obj.cbProfcompanionpersuasao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionpersuasao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionpersuasao', true);
            						sheet.pericias.companionpersuasao = true;
            					end;
        end, obj);

    obj._e_event684 = obj.cbProfcompanionpersuasao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionpersuasao', false);
        end, obj);

    obj._e_event685 = obj.dataLink219:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionpersuasao");
        end, obj);

    obj._e_event686 = obj.dataLink220:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionpersuasao'] then updateCbVisibility('companionpersuasao'); end;
        end, obj);

    obj._e_event687 = obj.button89:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event688 = obj.button89:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event689 = obj.button89:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionpersuasao'}, nil, false);
        end, obj);

    obj._e_event690 = obj.button89:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionpersuasao'}, nil, true);
        end, obj);

    obj._e_event691 = obj.dataLink221:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valor, hint = common.calculaBonus(sheet, 'pericia', 'companioncarisma', 'companionpersuasao');
            
            							sheet.pericias.bonuscompanionpersuasao = valor;
            
            							if valor >= 0 then
            								sheet.pericias.bonuscompanionpersuasaostr = "+" .. valor;
            							else
            								sheet.pericias.bonuscompanionpersuasaostr = "-" .. math.abs(valor);
            							end;
            
            							self.labProfcompanionpersuasao:setHitTest(true);
            							self.labProfcompanionpersuasao:setHint(hint);
        end, obj);

    obj._e_event692 = obj.button90:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event693 = obj.button90:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event694 = obj.button90:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaIniciativa, nil, nil, false);
        end, obj);

    obj._e_event695 = obj.button90:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaIniciativa, nil, nil, true);
        end, obj);

    obj._e_event696 = obj.button91:addEventListener("onClick",
        function (_)
            descanso.curto(sheet);
        end, obj);

    obj._e_event697 = obj.button92:addEventListener("onClick",
        function (_)
            descanso.longo(sheet);
        end, obj);

    obj._e_event698 = obj.button93:addEventListener("onClick",
        function (_)
            levarDano(sheet);
        end, obj);

    obj._e_event699 = obj.dataLink222:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.progBar2:setColor(sheet.barColor2);
        end, obj);

    obj._e_event700 = obj.dataLink223:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local jogador = Firecast.getPersonagemDe(sheet).dono;
            										if common.isMyChar(sheet) and common.isMainChar(sheet) then jogador:requestSetBarValue(1, sheet.PV2, sheet.PVmax2); end;
        end, obj);

    obj._e_event701 = obj.dataLink224:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.descansoLongo then sheet.PV2 = sheet.PVmax2; end;
        end, obj);

    obj._e_event702 = obj.button94:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event703 = obj.button94:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event704 = obj.button94:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.deathSave, nil, nil, false);
        end, obj);

    obj._e_event705 = obj.button94:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.deathSave, nil, nil, true);
        end, obj);

    obj._e_event706 = obj.checkBox10:addEventListener("onChange",
        function (_)
            if sheet then
            							self.companionanotacoesFancy:setVisible(sheet.companion.anotacoes_melhorado);
            							self.companionanotacoesMerda:setVisible(not (sheet.companion.anotacoes_melhorado));
            						end;
        end, obj);

    obj._e_event707 = obj.checkBox11:addEventListener("onChange",
        function (_)
            if sheet then
            							self.anotacoesFancy:setVisible(sheet.outros.anotacoes_melhorado);
            							self.anotacoesMerda:setVisible(not (sheet.outros.anotacoes_melhorado));
            						end;
        end, obj);

    obj._e_event708 = obj.dataLink225:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;
            					local theme = sheet.theme;
            					if theme == "Claro" then
            						theme = "light";
            					else
            						theme = "dark";
            					end;
            
            					local forms = findClass("form");
            
            					for i=1, #forms, 1 do 
            						forms[i].theme = theme;
            					end;
        end, obj);

    obj._e_event709 = obj.dataLink226:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            					local color = sheet.colorBackground or "#505050";
            
            		            local rectangles = findClass("rectangle");
            
            					for i=1, #rectangles, 1 do 
            						rectangles[i].color = color;
            					end;
        end, obj);

    obj._e_event710 = obj.dataLink227:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            					local strokeColor = sheet.colorStroke or "#FFFFFF";
            
            		            local rectangles = findClass("rectangle");
            		            local horzLines = findClass("horzLine");
            
            					for i=1, #rectangles, 1 do 
            						rectangles[i].strokeColor = strokeColor;
            					end;
            					for i=1, #horzLines, 1 do 
            						horzLines[i].strokeColor = strokeColor;
            					end;
        end, obj);

    obj._e_event711 = obj.dataLink228:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            					local fontColor = sheet.colorFont or "#FFFFFF";
            
            					local controls = findAllControls();
            					
            					local edits = filterByClass("edit", controls);
            					for i=1, #edits, 1 do 
            						edits[i].fontColor = fontColor;
            					end;
            
            					local labels = filterByClass("label", controls);
            					for i=1, #labels, 1 do 
            						labels[i].fontColor = fontColor;
            					end;
            
            					local comboBoxs = filterByClass("comboBox", controls);
            					for i=1, #comboBoxs, 1 do 
            						comboBoxs[i].fontColor = fontColor;
            					end;
            
            					local textEditors = filterByClass("textEditor", controls);
            					for i=1, #textEditors, 1 do 
            						textEditors[i].fontColor = fontColor;
            					end;
            
            					local checkBoxs = filterByClass("checkBox", controls);
            					for i=1, #checkBoxs, 1 do 
            						checkBoxs[i].fontColor = fontColor;
            					end;
            
            					local buttons = filterByClass("button", controls);
            					for i=1, #buttons, 1 do 
            						buttons[i].fontColor = fontColor;
            					end;
        end, obj);

    obj._e_event712 = obj.button95:addEventListener("onClick",
        function (_)
            GUI.openInBrowser(' ')
        end, obj);

    obj._e_event713 = obj.button96:addEventListener("onClick",
        function (_)
            GUI.openInBrowser('https://discord.gg/yc9jCvKE3t');
        end, obj);

    obj._e_event714 = obj.button97:addEventListener("onClick",
        function (_)
            GUI.openInBrowser('https://chat.whatsapp.com/BuFcGPgSRNqGwHlMHmFxE5');
        end, obj);

    obj._e_event715 = obj.button98:addEventListener("onClick",
        function (_)
            local xml = NDB.exportXML(sheet);
            
            					local export = {};
            					local bytes = Utils.binaryEncode(export, "utf8", xml);
            
            					local stream = Utils.newMemoryStream();
            					local bytes = stream:write(export);
            
            					Dialogs.saveFile("Salvar Ficha como XML", stream, "ficha.xml", "application/xml",
            						function()
            							stream:close();
            							showMessage("Ficha Exportada.");
            						end);
        end, obj);

    obj._e_event716 = obj.button99:addEventListener("onClick",
        function (_)
            Dialogs.openFile("Importar Ficha", "application/xml", false, 
            						function(arquivos)
            							local arq = arquivos[1];
            
            							local import = {};
            							local bytes = arq.stream:read(import, arq.stream.size);
            
            							local xml = Utils.binaryDecode(import, "utf8");
            
            							NDB.importXML(sheet, xml);
            						end);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event716);
        __o_rrpgObjs.removeEventListenerById(self._e_event715);
        __o_rrpgObjs.removeEventListenerById(self._e_event714);
        __o_rrpgObjs.removeEventListenerById(self._e_event713);
        __o_rrpgObjs.removeEventListenerById(self._e_event712);
        __o_rrpgObjs.removeEventListenerById(self._e_event711);
        __o_rrpgObjs.removeEventListenerById(self._e_event710);
        __o_rrpgObjs.removeEventListenerById(self._e_event709);
        __o_rrpgObjs.removeEventListenerById(self._e_event708);
        __o_rrpgObjs.removeEventListenerById(self._e_event707);
        __o_rrpgObjs.removeEventListenerById(self._e_event706);
        __o_rrpgObjs.removeEventListenerById(self._e_event705);
        __o_rrpgObjs.removeEventListenerById(self._e_event704);
        __o_rrpgObjs.removeEventListenerById(self._e_event703);
        __o_rrpgObjs.removeEventListenerById(self._e_event702);
        __o_rrpgObjs.removeEventListenerById(self._e_event701);
        __o_rrpgObjs.removeEventListenerById(self._e_event700);
        __o_rrpgObjs.removeEventListenerById(self._e_event699);
        __o_rrpgObjs.removeEventListenerById(self._e_event698);
        __o_rrpgObjs.removeEventListenerById(self._e_event697);
        __o_rrpgObjs.removeEventListenerById(self._e_event696);
        __o_rrpgObjs.removeEventListenerById(self._e_event695);
        __o_rrpgObjs.removeEventListenerById(self._e_event694);
        __o_rrpgObjs.removeEventListenerById(self._e_event693);
        __o_rrpgObjs.removeEventListenerById(self._e_event692);
        __o_rrpgObjs.removeEventListenerById(self._e_event691);
        __o_rrpgObjs.removeEventListenerById(self._e_event690);
        __o_rrpgObjs.removeEventListenerById(self._e_event689);
        __o_rrpgObjs.removeEventListenerById(self._e_event688);
        __o_rrpgObjs.removeEventListenerById(self._e_event687);
        __o_rrpgObjs.removeEventListenerById(self._e_event686);
        __o_rrpgObjs.removeEventListenerById(self._e_event685);
        __o_rrpgObjs.removeEventListenerById(self._e_event684);
        __o_rrpgObjs.removeEventListenerById(self._e_event683);
        __o_rrpgObjs.removeEventListenerById(self._e_event682);
        __o_rrpgObjs.removeEventListenerById(self._e_event681);
        __o_rrpgObjs.removeEventListenerById(self._e_event680);
        __o_rrpgObjs.removeEventListenerById(self._e_event679);
        __o_rrpgObjs.removeEventListenerById(self._e_event678);
        __o_rrpgObjs.removeEventListenerById(self._e_event677);
        __o_rrpgObjs.removeEventListenerById(self._e_event676);
        __o_rrpgObjs.removeEventListenerById(self._e_event675);
        __o_rrpgObjs.removeEventListenerById(self._e_event674);
        __o_rrpgObjs.removeEventListenerById(self._e_event673);
        __o_rrpgObjs.removeEventListenerById(self._e_event672);
        __o_rrpgObjs.removeEventListenerById(self._e_event671);
        __o_rrpgObjs.removeEventListenerById(self._e_event670);
        __o_rrpgObjs.removeEventListenerById(self._e_event669);
        __o_rrpgObjs.removeEventListenerById(self._e_event668);
        __o_rrpgObjs.removeEventListenerById(self._e_event667);
        __o_rrpgObjs.removeEventListenerById(self._e_event666);
        __o_rrpgObjs.removeEventListenerById(self._e_event665);
        __o_rrpgObjs.removeEventListenerById(self._e_event664);
        __o_rrpgObjs.removeEventListenerById(self._e_event663);
        __o_rrpgObjs.removeEventListenerById(self._e_event662);
        __o_rrpgObjs.removeEventListenerById(self._e_event661);
        __o_rrpgObjs.removeEventListenerById(self._e_event660);
        __o_rrpgObjs.removeEventListenerById(self._e_event659);
        __o_rrpgObjs.removeEventListenerById(self._e_event658);
        __o_rrpgObjs.removeEventListenerById(self._e_event657);
        __o_rrpgObjs.removeEventListenerById(self._e_event656);
        __o_rrpgObjs.removeEventListenerById(self._e_event655);
        __o_rrpgObjs.removeEventListenerById(self._e_event654);
        __o_rrpgObjs.removeEventListenerById(self._e_event653);
        __o_rrpgObjs.removeEventListenerById(self._e_event652);
        __o_rrpgObjs.removeEventListenerById(self._e_event651);
        __o_rrpgObjs.removeEventListenerById(self._e_event650);
        __o_rrpgObjs.removeEventListenerById(self._e_event649);
        __o_rrpgObjs.removeEventListenerById(self._e_event648);
        __o_rrpgObjs.removeEventListenerById(self._e_event647);
        __o_rrpgObjs.removeEventListenerById(self._e_event646);
        __o_rrpgObjs.removeEventListenerById(self._e_event645);
        __o_rrpgObjs.removeEventListenerById(self._e_event644);
        __o_rrpgObjs.removeEventListenerById(self._e_event643);
        __o_rrpgObjs.removeEventListenerById(self._e_event642);
        __o_rrpgObjs.removeEventListenerById(self._e_event641);
        __o_rrpgObjs.removeEventListenerById(self._e_event640);
        __o_rrpgObjs.removeEventListenerById(self._e_event639);
        __o_rrpgObjs.removeEventListenerById(self._e_event638);
        __o_rrpgObjs.removeEventListenerById(self._e_event637);
        __o_rrpgObjs.removeEventListenerById(self._e_event636);
        __o_rrpgObjs.removeEventListenerById(self._e_event635);
        __o_rrpgObjs.removeEventListenerById(self._e_event634);
        __o_rrpgObjs.removeEventListenerById(self._e_event633);
        __o_rrpgObjs.removeEventListenerById(self._e_event632);
        __o_rrpgObjs.removeEventListenerById(self._e_event631);
        __o_rrpgObjs.removeEventListenerById(self._e_event630);
        __o_rrpgObjs.removeEventListenerById(self._e_event629);
        __o_rrpgObjs.removeEventListenerById(self._e_event628);
        __o_rrpgObjs.removeEventListenerById(self._e_event627);
        __o_rrpgObjs.removeEventListenerById(self._e_event626);
        __o_rrpgObjs.removeEventListenerById(self._e_event625);
        __o_rrpgObjs.removeEventListenerById(self._e_event624);
        __o_rrpgObjs.removeEventListenerById(self._e_event623);
        __o_rrpgObjs.removeEventListenerById(self._e_event622);
        __o_rrpgObjs.removeEventListenerById(self._e_event621);
        __o_rrpgObjs.removeEventListenerById(self._e_event620);
        __o_rrpgObjs.removeEventListenerById(self._e_event619);
        __o_rrpgObjs.removeEventListenerById(self._e_event618);
        __o_rrpgObjs.removeEventListenerById(self._e_event617);
        __o_rrpgObjs.removeEventListenerById(self._e_event616);
        __o_rrpgObjs.removeEventListenerById(self._e_event615);
        __o_rrpgObjs.removeEventListenerById(self._e_event614);
        __o_rrpgObjs.removeEventListenerById(self._e_event613);
        __o_rrpgObjs.removeEventListenerById(self._e_event612);
        __o_rrpgObjs.removeEventListenerById(self._e_event611);
        __o_rrpgObjs.removeEventListenerById(self._e_event610);
        __o_rrpgObjs.removeEventListenerById(self._e_event609);
        __o_rrpgObjs.removeEventListenerById(self._e_event608);
        __o_rrpgObjs.removeEventListenerById(self._e_event607);
        __o_rrpgObjs.removeEventListenerById(self._e_event606);
        __o_rrpgObjs.removeEventListenerById(self._e_event605);
        __o_rrpgObjs.removeEventListenerById(self._e_event604);
        __o_rrpgObjs.removeEventListenerById(self._e_event603);
        __o_rrpgObjs.removeEventListenerById(self._e_event602);
        __o_rrpgObjs.removeEventListenerById(self._e_event601);
        __o_rrpgObjs.removeEventListenerById(self._e_event600);
        __o_rrpgObjs.removeEventListenerById(self._e_event599);
        __o_rrpgObjs.removeEventListenerById(self._e_event598);
        __o_rrpgObjs.removeEventListenerById(self._e_event597);
        __o_rrpgObjs.removeEventListenerById(self._e_event596);
        __o_rrpgObjs.removeEventListenerById(self._e_event595);
        __o_rrpgObjs.removeEventListenerById(self._e_event594);
        __o_rrpgObjs.removeEventListenerById(self._e_event593);
        __o_rrpgObjs.removeEventListenerById(self._e_event592);
        __o_rrpgObjs.removeEventListenerById(self._e_event591);
        __o_rrpgObjs.removeEventListenerById(self._e_event590);
        __o_rrpgObjs.removeEventListenerById(self._e_event589);
        __o_rrpgObjs.removeEventListenerById(self._e_event588);
        __o_rrpgObjs.removeEventListenerById(self._e_event587);
        __o_rrpgObjs.removeEventListenerById(self._e_event586);
        __o_rrpgObjs.removeEventListenerById(self._e_event585);
        __o_rrpgObjs.removeEventListenerById(self._e_event584);
        __o_rrpgObjs.removeEventListenerById(self._e_event583);
        __o_rrpgObjs.removeEventListenerById(self._e_event582);
        __o_rrpgObjs.removeEventListenerById(self._e_event581);
        __o_rrpgObjs.removeEventListenerById(self._e_event580);
        __o_rrpgObjs.removeEventListenerById(self._e_event579);
        __o_rrpgObjs.removeEventListenerById(self._e_event578);
        __o_rrpgObjs.removeEventListenerById(self._e_event577);
        __o_rrpgObjs.removeEventListenerById(self._e_event576);
        __o_rrpgObjs.removeEventListenerById(self._e_event575);
        __o_rrpgObjs.removeEventListenerById(self._e_event574);
        __o_rrpgObjs.removeEventListenerById(self._e_event573);
        __o_rrpgObjs.removeEventListenerById(self._e_event572);
        __o_rrpgObjs.removeEventListenerById(self._e_event571);
        __o_rrpgObjs.removeEventListenerById(self._e_event570);
        __o_rrpgObjs.removeEventListenerById(self._e_event569);
        __o_rrpgObjs.removeEventListenerById(self._e_event568);
        __o_rrpgObjs.removeEventListenerById(self._e_event567);
        __o_rrpgObjs.removeEventListenerById(self._e_event566);
        __o_rrpgObjs.removeEventListenerById(self._e_event565);
        __o_rrpgObjs.removeEventListenerById(self._e_event564);
        __o_rrpgObjs.removeEventListenerById(self._e_event563);
        __o_rrpgObjs.removeEventListenerById(self._e_event562);
        __o_rrpgObjs.removeEventListenerById(self._e_event561);
        __o_rrpgObjs.removeEventListenerById(self._e_event560);
        __o_rrpgObjs.removeEventListenerById(self._e_event559);
        __o_rrpgObjs.removeEventListenerById(self._e_event558);
        __o_rrpgObjs.removeEventListenerById(self._e_event557);
        __o_rrpgObjs.removeEventListenerById(self._e_event556);
        __o_rrpgObjs.removeEventListenerById(self._e_event555);
        __o_rrpgObjs.removeEventListenerById(self._e_event554);
        __o_rrpgObjs.removeEventListenerById(self._e_event553);
        __o_rrpgObjs.removeEventListenerById(self._e_event552);
        __o_rrpgObjs.removeEventListenerById(self._e_event551);
        __o_rrpgObjs.removeEventListenerById(self._e_event550);
        __o_rrpgObjs.removeEventListenerById(self._e_event549);
        __o_rrpgObjs.removeEventListenerById(self._e_event548);
        __o_rrpgObjs.removeEventListenerById(self._e_event547);
        __o_rrpgObjs.removeEventListenerById(self._e_event546);
        __o_rrpgObjs.removeEventListenerById(self._e_event545);
        __o_rrpgObjs.removeEventListenerById(self._e_event544);
        __o_rrpgObjs.removeEventListenerById(self._e_event543);
        __o_rrpgObjs.removeEventListenerById(self._e_event542);
        __o_rrpgObjs.removeEventListenerById(self._e_event541);
        __o_rrpgObjs.removeEventListenerById(self._e_event540);
        __o_rrpgObjs.removeEventListenerById(self._e_event539);
        __o_rrpgObjs.removeEventListenerById(self._e_event538);
        __o_rrpgObjs.removeEventListenerById(self._e_event537);
        __o_rrpgObjs.removeEventListenerById(self._e_event536);
        __o_rrpgObjs.removeEventListenerById(self._e_event535);
        __o_rrpgObjs.removeEventListenerById(self._e_event534);
        __o_rrpgObjs.removeEventListenerById(self._e_event533);
        __o_rrpgObjs.removeEventListenerById(self._e_event532);
        __o_rrpgObjs.removeEventListenerById(self._e_event531);
        __o_rrpgObjs.removeEventListenerById(self._e_event530);
        __o_rrpgObjs.removeEventListenerById(self._e_event529);
        __o_rrpgObjs.removeEventListenerById(self._e_event528);
        __o_rrpgObjs.removeEventListenerById(self._e_event527);
        __o_rrpgObjs.removeEventListenerById(self._e_event526);
        __o_rrpgObjs.removeEventListenerById(self._e_event525);
        __o_rrpgObjs.removeEventListenerById(self._e_event524);
        __o_rrpgObjs.removeEventListenerById(self._e_event523);
        __o_rrpgObjs.removeEventListenerById(self._e_event522);
        __o_rrpgObjs.removeEventListenerById(self._e_event521);
        __o_rrpgObjs.removeEventListenerById(self._e_event520);
        __o_rrpgObjs.removeEventListenerById(self._e_event519);
        __o_rrpgObjs.removeEventListenerById(self._e_event518);
        __o_rrpgObjs.removeEventListenerById(self._e_event517);
        __o_rrpgObjs.removeEventListenerById(self._e_event516);
        __o_rrpgObjs.removeEventListenerById(self._e_event515);
        __o_rrpgObjs.removeEventListenerById(self._e_event514);
        __o_rrpgObjs.removeEventListenerById(self._e_event513);
        __o_rrpgObjs.removeEventListenerById(self._e_event512);
        __o_rrpgObjs.removeEventListenerById(self._e_event511);
        __o_rrpgObjs.removeEventListenerById(self._e_event510);
        __o_rrpgObjs.removeEventListenerById(self._e_event509);
        __o_rrpgObjs.removeEventListenerById(self._e_event508);
        __o_rrpgObjs.removeEventListenerById(self._e_event507);
        __o_rrpgObjs.removeEventListenerById(self._e_event506);
        __o_rrpgObjs.removeEventListenerById(self._e_event505);
        __o_rrpgObjs.removeEventListenerById(self._e_event504);
        __o_rrpgObjs.removeEventListenerById(self._e_event503);
        __o_rrpgObjs.removeEventListenerById(self._e_event502);
        __o_rrpgObjs.removeEventListenerById(self._e_event501);
        __o_rrpgObjs.removeEventListenerById(self._e_event500);
        __o_rrpgObjs.removeEventListenerById(self._e_event499);
        __o_rrpgObjs.removeEventListenerById(self._e_event498);
        __o_rrpgObjs.removeEventListenerById(self._e_event497);
        __o_rrpgObjs.removeEventListenerById(self._e_event496);
        __o_rrpgObjs.removeEventListenerById(self._e_event495);
        __o_rrpgObjs.removeEventListenerById(self._e_event494);
        __o_rrpgObjs.removeEventListenerById(self._e_event493);
        __o_rrpgObjs.removeEventListenerById(self._e_event492);
        __o_rrpgObjs.removeEventListenerById(self._e_event491);
        __o_rrpgObjs.removeEventListenerById(self._e_event490);
        __o_rrpgObjs.removeEventListenerById(self._e_event489);
        __o_rrpgObjs.removeEventListenerById(self._e_event488);
        __o_rrpgObjs.removeEventListenerById(self._e_event487);
        __o_rrpgObjs.removeEventListenerById(self._e_event486);
        __o_rrpgObjs.removeEventListenerById(self._e_event485);
        __o_rrpgObjs.removeEventListenerById(self._e_event484);
        __o_rrpgObjs.removeEventListenerById(self._e_event483);
        __o_rrpgObjs.removeEventListenerById(self._e_event482);
        __o_rrpgObjs.removeEventListenerById(self._e_event481);
        __o_rrpgObjs.removeEventListenerById(self._e_event480);
        __o_rrpgObjs.removeEventListenerById(self._e_event479);
        __o_rrpgObjs.removeEventListenerById(self._e_event478);
        __o_rrpgObjs.removeEventListenerById(self._e_event477);
        __o_rrpgObjs.removeEventListenerById(self._e_event476);
        __o_rrpgObjs.removeEventListenerById(self._e_event475);
        __o_rrpgObjs.removeEventListenerById(self._e_event474);
        __o_rrpgObjs.removeEventListenerById(self._e_event473);
        __o_rrpgObjs.removeEventListenerById(self._e_event472);
        __o_rrpgObjs.removeEventListenerById(self._e_event471);
        __o_rrpgObjs.removeEventListenerById(self._e_event470);
        __o_rrpgObjs.removeEventListenerById(self._e_event469);
        __o_rrpgObjs.removeEventListenerById(self._e_event468);
        __o_rrpgObjs.removeEventListenerById(self._e_event467);
        __o_rrpgObjs.removeEventListenerById(self._e_event466);
        __o_rrpgObjs.removeEventListenerById(self._e_event465);
        __o_rrpgObjs.removeEventListenerById(self._e_event464);
        __o_rrpgObjs.removeEventListenerById(self._e_event463);
        __o_rrpgObjs.removeEventListenerById(self._e_event462);
        __o_rrpgObjs.removeEventListenerById(self._e_event461);
        __o_rrpgObjs.removeEventListenerById(self._e_event460);
        __o_rrpgObjs.removeEventListenerById(self._e_event459);
        __o_rrpgObjs.removeEventListenerById(self._e_event458);
        __o_rrpgObjs.removeEventListenerById(self._e_event457);
        __o_rrpgObjs.removeEventListenerById(self._e_event456);
        __o_rrpgObjs.removeEventListenerById(self._e_event455);
        __o_rrpgObjs.removeEventListenerById(self._e_event454);
        __o_rrpgObjs.removeEventListenerById(self._e_event453);
        __o_rrpgObjs.removeEventListenerById(self._e_event452);
        __o_rrpgObjs.removeEventListenerById(self._e_event451);
        __o_rrpgObjs.removeEventListenerById(self._e_event450);
        __o_rrpgObjs.removeEventListenerById(self._e_event449);
        __o_rrpgObjs.removeEventListenerById(self._e_event448);
        __o_rrpgObjs.removeEventListenerById(self._e_event447);
        __o_rrpgObjs.removeEventListenerById(self._e_event446);
        __o_rrpgObjs.removeEventListenerById(self._e_event445);
        __o_rrpgObjs.removeEventListenerById(self._e_event444);
        __o_rrpgObjs.removeEventListenerById(self._e_event443);
        __o_rrpgObjs.removeEventListenerById(self._e_event442);
        __o_rrpgObjs.removeEventListenerById(self._e_event441);
        __o_rrpgObjs.removeEventListenerById(self._e_event440);
        __o_rrpgObjs.removeEventListenerById(self._e_event439);
        __o_rrpgObjs.removeEventListenerById(self._e_event438);
        __o_rrpgObjs.removeEventListenerById(self._e_event437);
        __o_rrpgObjs.removeEventListenerById(self._e_event436);
        __o_rrpgObjs.removeEventListenerById(self._e_event435);
        __o_rrpgObjs.removeEventListenerById(self._e_event434);
        __o_rrpgObjs.removeEventListenerById(self._e_event433);
        __o_rrpgObjs.removeEventListenerById(self._e_event432);
        __o_rrpgObjs.removeEventListenerById(self._e_event431);
        __o_rrpgObjs.removeEventListenerById(self._e_event430);
        __o_rrpgObjs.removeEventListenerById(self._e_event429);
        __o_rrpgObjs.removeEventListenerById(self._e_event428);
        __o_rrpgObjs.removeEventListenerById(self._e_event427);
        __o_rrpgObjs.removeEventListenerById(self._e_event426);
        __o_rrpgObjs.removeEventListenerById(self._e_event425);
        __o_rrpgObjs.removeEventListenerById(self._e_event424);
        __o_rrpgObjs.removeEventListenerById(self._e_event423);
        __o_rrpgObjs.removeEventListenerById(self._e_event422);
        __o_rrpgObjs.removeEventListenerById(self._e_event421);
        __o_rrpgObjs.removeEventListenerById(self._e_event420);
        __o_rrpgObjs.removeEventListenerById(self._e_event419);
        __o_rrpgObjs.removeEventListenerById(self._e_event418);
        __o_rrpgObjs.removeEventListenerById(self._e_event417);
        __o_rrpgObjs.removeEventListenerById(self._e_event416);
        __o_rrpgObjs.removeEventListenerById(self._e_event415);
        __o_rrpgObjs.removeEventListenerById(self._e_event414);
        __o_rrpgObjs.removeEventListenerById(self._e_event413);
        __o_rrpgObjs.removeEventListenerById(self._e_event412);
        __o_rrpgObjs.removeEventListenerById(self._e_event411);
        __o_rrpgObjs.removeEventListenerById(self._e_event410);
        __o_rrpgObjs.removeEventListenerById(self._e_event409);
        __o_rrpgObjs.removeEventListenerById(self._e_event408);
        __o_rrpgObjs.removeEventListenerById(self._e_event407);
        __o_rrpgObjs.removeEventListenerById(self._e_event406);
        __o_rrpgObjs.removeEventListenerById(self._e_event405);
        __o_rrpgObjs.removeEventListenerById(self._e_event404);
        __o_rrpgObjs.removeEventListenerById(self._e_event403);
        __o_rrpgObjs.removeEventListenerById(self._e_event402);
        __o_rrpgObjs.removeEventListenerById(self._e_event401);
        __o_rrpgObjs.removeEventListenerById(self._e_event400);
        __o_rrpgObjs.removeEventListenerById(self._e_event399);
        __o_rrpgObjs.removeEventListenerById(self._e_event398);
        __o_rrpgObjs.removeEventListenerById(self._e_event397);
        __o_rrpgObjs.removeEventListenerById(self._e_event396);
        __o_rrpgObjs.removeEventListenerById(self._e_event395);
        __o_rrpgObjs.removeEventListenerById(self._e_event394);
        __o_rrpgObjs.removeEventListenerById(self._e_event393);
        __o_rrpgObjs.removeEventListenerById(self._e_event392);
        __o_rrpgObjs.removeEventListenerById(self._e_event391);
        __o_rrpgObjs.removeEventListenerById(self._e_event390);
        __o_rrpgObjs.removeEventListenerById(self._e_event389);
        __o_rrpgObjs.removeEventListenerById(self._e_event388);
        __o_rrpgObjs.removeEventListenerById(self._e_event387);
        __o_rrpgObjs.removeEventListenerById(self._e_event386);
        __o_rrpgObjs.removeEventListenerById(self._e_event385);
        __o_rrpgObjs.removeEventListenerById(self._e_event384);
        __o_rrpgObjs.removeEventListenerById(self._e_event383);
        __o_rrpgObjs.removeEventListenerById(self._e_event382);
        __o_rrpgObjs.removeEventListenerById(self._e_event381);
        __o_rrpgObjs.removeEventListenerById(self._e_event380);
        __o_rrpgObjs.removeEventListenerById(self._e_event379);
        __o_rrpgObjs.removeEventListenerById(self._e_event378);
        __o_rrpgObjs.removeEventListenerById(self._e_event377);
        __o_rrpgObjs.removeEventListenerById(self._e_event376);
        __o_rrpgObjs.removeEventListenerById(self._e_event375);
        __o_rrpgObjs.removeEventListenerById(self._e_event374);
        __o_rrpgObjs.removeEventListenerById(self._e_event373);
        __o_rrpgObjs.removeEventListenerById(self._e_event372);
        __o_rrpgObjs.removeEventListenerById(self._e_event371);
        __o_rrpgObjs.removeEventListenerById(self._e_event370);
        __o_rrpgObjs.removeEventListenerById(self._e_event369);
        __o_rrpgObjs.removeEventListenerById(self._e_event368);
        __o_rrpgObjs.removeEventListenerById(self._e_event367);
        __o_rrpgObjs.removeEventListenerById(self._e_event366);
        __o_rrpgObjs.removeEventListenerById(self._e_event365);
        __o_rrpgObjs.removeEventListenerById(self._e_event364);
        __o_rrpgObjs.removeEventListenerById(self._e_event363);
        __o_rrpgObjs.removeEventListenerById(self._e_event362);
        __o_rrpgObjs.removeEventListenerById(self._e_event361);
        __o_rrpgObjs.removeEventListenerById(self._e_event360);
        __o_rrpgObjs.removeEventListenerById(self._e_event359);
        __o_rrpgObjs.removeEventListenerById(self._e_event358);
        __o_rrpgObjs.removeEventListenerById(self._e_event357);
        __o_rrpgObjs.removeEventListenerById(self._e_event356);
        __o_rrpgObjs.removeEventListenerById(self._e_event355);
        __o_rrpgObjs.removeEventListenerById(self._e_event354);
        __o_rrpgObjs.removeEventListenerById(self._e_event353);
        __o_rrpgObjs.removeEventListenerById(self._e_event352);
        __o_rrpgObjs.removeEventListenerById(self._e_event351);
        __o_rrpgObjs.removeEventListenerById(self._e_event350);
        __o_rrpgObjs.removeEventListenerById(self._e_event349);
        __o_rrpgObjs.removeEventListenerById(self._e_event348);
        __o_rrpgObjs.removeEventListenerById(self._e_event347);
        __o_rrpgObjs.removeEventListenerById(self._e_event346);
        __o_rrpgObjs.removeEventListenerById(self._e_event345);
        __o_rrpgObjs.removeEventListenerById(self._e_event344);
        __o_rrpgObjs.removeEventListenerById(self._e_event343);
        __o_rrpgObjs.removeEventListenerById(self._e_event342);
        __o_rrpgObjs.removeEventListenerById(self._e_event341);
        __o_rrpgObjs.removeEventListenerById(self._e_event340);
        __o_rrpgObjs.removeEventListenerById(self._e_event339);
        __o_rrpgObjs.removeEventListenerById(self._e_event338);
        __o_rrpgObjs.removeEventListenerById(self._e_event337);
        __o_rrpgObjs.removeEventListenerById(self._e_event336);
        __o_rrpgObjs.removeEventListenerById(self._e_event335);
        __o_rrpgObjs.removeEventListenerById(self._e_event334);
        __o_rrpgObjs.removeEventListenerById(self._e_event333);
        __o_rrpgObjs.removeEventListenerById(self._e_event332);
        __o_rrpgObjs.removeEventListenerById(self._e_event331);
        __o_rrpgObjs.removeEventListenerById(self._e_event330);
        __o_rrpgObjs.removeEventListenerById(self._e_event329);
        __o_rrpgObjs.removeEventListenerById(self._e_event328);
        __o_rrpgObjs.removeEventListenerById(self._e_event327);
        __o_rrpgObjs.removeEventListenerById(self._e_event326);
        __o_rrpgObjs.removeEventListenerById(self._e_event325);
        __o_rrpgObjs.removeEventListenerById(self._e_event324);
        __o_rrpgObjs.removeEventListenerById(self._e_event323);
        __o_rrpgObjs.removeEventListenerById(self._e_event322);
        __o_rrpgObjs.removeEventListenerById(self._e_event321);
        __o_rrpgObjs.removeEventListenerById(self._e_event320);
        __o_rrpgObjs.removeEventListenerById(self._e_event319);
        __o_rrpgObjs.removeEventListenerById(self._e_event318);
        __o_rrpgObjs.removeEventListenerById(self._e_event317);
        __o_rrpgObjs.removeEventListenerById(self._e_event316);
        __o_rrpgObjs.removeEventListenerById(self._e_event315);
        __o_rrpgObjs.removeEventListenerById(self._e_event314);
        __o_rrpgObjs.removeEventListenerById(self._e_event313);
        __o_rrpgObjs.removeEventListenerById(self._e_event312);
        __o_rrpgObjs.removeEventListenerById(self._e_event311);
        __o_rrpgObjs.removeEventListenerById(self._e_event310);
        __o_rrpgObjs.removeEventListenerById(self._e_event309);
        __o_rrpgObjs.removeEventListenerById(self._e_event308);
        __o_rrpgObjs.removeEventListenerById(self._e_event307);
        __o_rrpgObjs.removeEventListenerById(self._e_event306);
        __o_rrpgObjs.removeEventListenerById(self._e_event305);
        __o_rrpgObjs.removeEventListenerById(self._e_event304);
        __o_rrpgObjs.removeEventListenerById(self._e_event303);
        __o_rrpgObjs.removeEventListenerById(self._e_event302);
        __o_rrpgObjs.removeEventListenerById(self._e_event301);
        __o_rrpgObjs.removeEventListenerById(self._e_event300);
        __o_rrpgObjs.removeEventListenerById(self._e_event299);
        __o_rrpgObjs.removeEventListenerById(self._e_event298);
        __o_rrpgObjs.removeEventListenerById(self._e_event297);
        __o_rrpgObjs.removeEventListenerById(self._e_event296);
        __o_rrpgObjs.removeEventListenerById(self._e_event295);
        __o_rrpgObjs.removeEventListenerById(self._e_event294);
        __o_rrpgObjs.removeEventListenerById(self._e_event293);
        __o_rrpgObjs.removeEventListenerById(self._e_event292);
        __o_rrpgObjs.removeEventListenerById(self._e_event291);
        __o_rrpgObjs.removeEventListenerById(self._e_event290);
        __o_rrpgObjs.removeEventListenerById(self._e_event289);
        __o_rrpgObjs.removeEventListenerById(self._e_event288);
        __o_rrpgObjs.removeEventListenerById(self._e_event287);
        __o_rrpgObjs.removeEventListenerById(self._e_event286);
        __o_rrpgObjs.removeEventListenerById(self._e_event285);
        __o_rrpgObjs.removeEventListenerById(self._e_event284);
        __o_rrpgObjs.removeEventListenerById(self._e_event283);
        __o_rrpgObjs.removeEventListenerById(self._e_event282);
        __o_rrpgObjs.removeEventListenerById(self._e_event281);
        __o_rrpgObjs.removeEventListenerById(self._e_event280);
        __o_rrpgObjs.removeEventListenerById(self._e_event279);
        __o_rrpgObjs.removeEventListenerById(self._e_event278);
        __o_rrpgObjs.removeEventListenerById(self._e_event277);
        __o_rrpgObjs.removeEventListenerById(self._e_event276);
        __o_rrpgObjs.removeEventListenerById(self._e_event275);
        __o_rrpgObjs.removeEventListenerById(self._e_event274);
        __o_rrpgObjs.removeEventListenerById(self._e_event273);
        __o_rrpgObjs.removeEventListenerById(self._e_event272);
        __o_rrpgObjs.removeEventListenerById(self._e_event271);
        __o_rrpgObjs.removeEventListenerById(self._e_event270);
        __o_rrpgObjs.removeEventListenerById(self._e_event269);
        __o_rrpgObjs.removeEventListenerById(self._e_event268);
        __o_rrpgObjs.removeEventListenerById(self._e_event267);
        __o_rrpgObjs.removeEventListenerById(self._e_event266);
        __o_rrpgObjs.removeEventListenerById(self._e_event265);
        __o_rrpgObjs.removeEventListenerById(self._e_event264);
        __o_rrpgObjs.removeEventListenerById(self._e_event263);
        __o_rrpgObjs.removeEventListenerById(self._e_event262);
        __o_rrpgObjs.removeEventListenerById(self._e_event261);
        __o_rrpgObjs.removeEventListenerById(self._e_event260);
        __o_rrpgObjs.removeEventListenerById(self._e_event259);
        __o_rrpgObjs.removeEventListenerById(self._e_event258);
        __o_rrpgObjs.removeEventListenerById(self._e_event257);
        __o_rrpgObjs.removeEventListenerById(self._e_event256);
        __o_rrpgObjs.removeEventListenerById(self._e_event255);
        __o_rrpgObjs.removeEventListenerById(self._e_event254);
        __o_rrpgObjs.removeEventListenerById(self._e_event253);
        __o_rrpgObjs.removeEventListenerById(self._e_event252);
        __o_rrpgObjs.removeEventListenerById(self._e_event251);
        __o_rrpgObjs.removeEventListenerById(self._e_event250);
        __o_rrpgObjs.removeEventListenerById(self._e_event249);
        __o_rrpgObjs.removeEventListenerById(self._e_event248);
        __o_rrpgObjs.removeEventListenerById(self._e_event247);
        __o_rrpgObjs.removeEventListenerById(self._e_event246);
        __o_rrpgObjs.removeEventListenerById(self._e_event245);
        __o_rrpgObjs.removeEventListenerById(self._e_event244);
        __o_rrpgObjs.removeEventListenerById(self._e_event243);
        __o_rrpgObjs.removeEventListenerById(self._e_event242);
        __o_rrpgObjs.removeEventListenerById(self._e_event241);
        __o_rrpgObjs.removeEventListenerById(self._e_event240);
        __o_rrpgObjs.removeEventListenerById(self._e_event239);
        __o_rrpgObjs.removeEventListenerById(self._e_event238);
        __o_rrpgObjs.removeEventListenerById(self._e_event237);
        __o_rrpgObjs.removeEventListenerById(self._e_event236);
        __o_rrpgObjs.removeEventListenerById(self._e_event235);
        __o_rrpgObjs.removeEventListenerById(self._e_event234);
        __o_rrpgObjs.removeEventListenerById(self._e_event233);
        __o_rrpgObjs.removeEventListenerById(self._e_event232);
        __o_rrpgObjs.removeEventListenerById(self._e_event231);
        __o_rrpgObjs.removeEventListenerById(self._e_event230);
        __o_rrpgObjs.removeEventListenerById(self._e_event229);
        __o_rrpgObjs.removeEventListenerById(self._e_event228);
        __o_rrpgObjs.removeEventListenerById(self._e_event227);
        __o_rrpgObjs.removeEventListenerById(self._e_event226);
        __o_rrpgObjs.removeEventListenerById(self._e_event225);
        __o_rrpgObjs.removeEventListenerById(self._e_event224);
        __o_rrpgObjs.removeEventListenerById(self._e_event223);
        __o_rrpgObjs.removeEventListenerById(self._e_event222);
        __o_rrpgObjs.removeEventListenerById(self._e_event221);
        __o_rrpgObjs.removeEventListenerById(self._e_event220);
        __o_rrpgObjs.removeEventListenerById(self._e_event219);
        __o_rrpgObjs.removeEventListenerById(self._e_event218);
        __o_rrpgObjs.removeEventListenerById(self._e_event217);
        __o_rrpgObjs.removeEventListenerById(self._e_event216);
        __o_rrpgObjs.removeEventListenerById(self._e_event215);
        __o_rrpgObjs.removeEventListenerById(self._e_event214);
        __o_rrpgObjs.removeEventListenerById(self._e_event213);
        __o_rrpgObjs.removeEventListenerById(self._e_event212);
        __o_rrpgObjs.removeEventListenerById(self._e_event211);
        __o_rrpgObjs.removeEventListenerById(self._e_event210);
        __o_rrpgObjs.removeEventListenerById(self._e_event209);
        __o_rrpgObjs.removeEventListenerById(self._e_event208);
        __o_rrpgObjs.removeEventListenerById(self._e_event207);
        __o_rrpgObjs.removeEventListenerById(self._e_event206);
        __o_rrpgObjs.removeEventListenerById(self._e_event205);
        __o_rrpgObjs.removeEventListenerById(self._e_event204);
        __o_rrpgObjs.removeEventListenerById(self._e_event203);
        __o_rrpgObjs.removeEventListenerById(self._e_event202);
        __o_rrpgObjs.removeEventListenerById(self._e_event201);
        __o_rrpgObjs.removeEventListenerById(self._e_event200);
        __o_rrpgObjs.removeEventListenerById(self._e_event199);
        __o_rrpgObjs.removeEventListenerById(self._e_event198);
        __o_rrpgObjs.removeEventListenerById(self._e_event197);
        __o_rrpgObjs.removeEventListenerById(self._e_event196);
        __o_rrpgObjs.removeEventListenerById(self._e_event195);
        __o_rrpgObjs.removeEventListenerById(self._e_event194);
        __o_rrpgObjs.removeEventListenerById(self._e_event193);
        __o_rrpgObjs.removeEventListenerById(self._e_event192);
        __o_rrpgObjs.removeEventListenerById(self._e_event191);
        __o_rrpgObjs.removeEventListenerById(self._e_event190);
        __o_rrpgObjs.removeEventListenerById(self._e_event189);
        __o_rrpgObjs.removeEventListenerById(self._e_event188);
        __o_rrpgObjs.removeEventListenerById(self._e_event187);
        __o_rrpgObjs.removeEventListenerById(self._e_event186);
        __o_rrpgObjs.removeEventListenerById(self._e_event185);
        __o_rrpgObjs.removeEventListenerById(self._e_event184);
        __o_rrpgObjs.removeEventListenerById(self._e_event183);
        __o_rrpgObjs.removeEventListenerById(self._e_event182);
        __o_rrpgObjs.removeEventListenerById(self._e_event181);
        __o_rrpgObjs.removeEventListenerById(self._e_event180);
        __o_rrpgObjs.removeEventListenerById(self._e_event179);
        __o_rrpgObjs.removeEventListenerById(self._e_event178);
        __o_rrpgObjs.removeEventListenerById(self._e_event177);
        __o_rrpgObjs.removeEventListenerById(self._e_event176);
        __o_rrpgObjs.removeEventListenerById(self._e_event175);
        __o_rrpgObjs.removeEventListenerById(self._e_event174);
        __o_rrpgObjs.removeEventListenerById(self._e_event173);
        __o_rrpgObjs.removeEventListenerById(self._e_event172);
        __o_rrpgObjs.removeEventListenerById(self._e_event171);
        __o_rrpgObjs.removeEventListenerById(self._e_event170);
        __o_rrpgObjs.removeEventListenerById(self._e_event169);
        __o_rrpgObjs.removeEventListenerById(self._e_event168);
        __o_rrpgObjs.removeEventListenerById(self._e_event167);
        __o_rrpgObjs.removeEventListenerById(self._e_event166);
        __o_rrpgObjs.removeEventListenerById(self._e_event165);
        __o_rrpgObjs.removeEventListenerById(self._e_event164);
        __o_rrpgObjs.removeEventListenerById(self._e_event163);
        __o_rrpgObjs.removeEventListenerById(self._e_event162);
        __o_rrpgObjs.removeEventListenerById(self._e_event161);
        __o_rrpgObjs.removeEventListenerById(self._e_event160);
        __o_rrpgObjs.removeEventListenerById(self._e_event159);
        __o_rrpgObjs.removeEventListenerById(self._e_event158);
        __o_rrpgObjs.removeEventListenerById(self._e_event157);
        __o_rrpgObjs.removeEventListenerById(self._e_event156);
        __o_rrpgObjs.removeEventListenerById(self._e_event155);
        __o_rrpgObjs.removeEventListenerById(self._e_event154);
        __o_rrpgObjs.removeEventListenerById(self._e_event153);
        __o_rrpgObjs.removeEventListenerById(self._e_event152);
        __o_rrpgObjs.removeEventListenerById(self._e_event151);
        __o_rrpgObjs.removeEventListenerById(self._e_event150);
        __o_rrpgObjs.removeEventListenerById(self._e_event149);
        __o_rrpgObjs.removeEventListenerById(self._e_event148);
        __o_rrpgObjs.removeEventListenerById(self._e_event147);
        __o_rrpgObjs.removeEventListenerById(self._e_event146);
        __o_rrpgObjs.removeEventListenerById(self._e_event145);
        __o_rrpgObjs.removeEventListenerById(self._e_event144);
        __o_rrpgObjs.removeEventListenerById(self._e_event143);
        __o_rrpgObjs.removeEventListenerById(self._e_event142);
        __o_rrpgObjs.removeEventListenerById(self._e_event141);
        __o_rrpgObjs.removeEventListenerById(self._e_event140);
        __o_rrpgObjs.removeEventListenerById(self._e_event139);
        __o_rrpgObjs.removeEventListenerById(self._e_event138);
        __o_rrpgObjs.removeEventListenerById(self._e_event137);
        __o_rrpgObjs.removeEventListenerById(self._e_event136);
        __o_rrpgObjs.removeEventListenerById(self._e_event135);
        __o_rrpgObjs.removeEventListenerById(self._e_event134);
        __o_rrpgObjs.removeEventListenerById(self._e_event133);
        __o_rrpgObjs.removeEventListenerById(self._e_event132);
        __o_rrpgObjs.removeEventListenerById(self._e_event131);
        __o_rrpgObjs.removeEventListenerById(self._e_event130);
        __o_rrpgObjs.removeEventListenerById(self._e_event129);
        __o_rrpgObjs.removeEventListenerById(self._e_event128);
        __o_rrpgObjs.removeEventListenerById(self._e_event127);
        __o_rrpgObjs.removeEventListenerById(self._e_event126);
        __o_rrpgObjs.removeEventListenerById(self._e_event125);
        __o_rrpgObjs.removeEventListenerById(self._e_event124);
        __o_rrpgObjs.removeEventListenerById(self._e_event123);
        __o_rrpgObjs.removeEventListenerById(self._e_event122);
        __o_rrpgObjs.removeEventListenerById(self._e_event121);
        __o_rrpgObjs.removeEventListenerById(self._e_event120);
        __o_rrpgObjs.removeEventListenerById(self._e_event119);
        __o_rrpgObjs.removeEventListenerById(self._e_event118);
        __o_rrpgObjs.removeEventListenerById(self._e_event117);
        __o_rrpgObjs.removeEventListenerById(self._e_event116);
        __o_rrpgObjs.removeEventListenerById(self._e_event115);
        __o_rrpgObjs.removeEventListenerById(self._e_event114);
        __o_rrpgObjs.removeEventListenerById(self._e_event113);
        __o_rrpgObjs.removeEventListenerById(self._e_event112);
        __o_rrpgObjs.removeEventListenerById(self._e_event111);
        __o_rrpgObjs.removeEventListenerById(self._e_event110);
        __o_rrpgObjs.removeEventListenerById(self._e_event109);
        __o_rrpgObjs.removeEventListenerById(self._e_event108);
        __o_rrpgObjs.removeEventListenerById(self._e_event107);
        __o_rrpgObjs.removeEventListenerById(self._e_event106);
        __o_rrpgObjs.removeEventListenerById(self._e_event105);
        __o_rrpgObjs.removeEventListenerById(self._e_event104);
        __o_rrpgObjs.removeEventListenerById(self._e_event103);
        __o_rrpgObjs.removeEventListenerById(self._e_event102);
        __o_rrpgObjs.removeEventListenerById(self._e_event101);
        __o_rrpgObjs.removeEventListenerById(self._e_event100);
        __o_rrpgObjs.removeEventListenerById(self._e_event99);
        __o_rrpgObjs.removeEventListenerById(self._e_event98);
        __o_rrpgObjs.removeEventListenerById(self._e_event97);
        __o_rrpgObjs.removeEventListenerById(self._e_event96);
        __o_rrpgObjs.removeEventListenerById(self._e_event95);
        __o_rrpgObjs.removeEventListenerById(self._e_event94);
        __o_rrpgObjs.removeEventListenerById(self._e_event93);
        __o_rrpgObjs.removeEventListenerById(self._e_event92);
        __o_rrpgObjs.removeEventListenerById(self._e_event91);
        __o_rrpgObjs.removeEventListenerById(self._e_event90);
        __o_rrpgObjs.removeEventListenerById(self._e_event89);
        __o_rrpgObjs.removeEventListenerById(self._e_event88);
        __o_rrpgObjs.removeEventListenerById(self._e_event87);
        __o_rrpgObjs.removeEventListenerById(self._e_event86);
        __o_rrpgObjs.removeEventListenerById(self._e_event85);
        __o_rrpgObjs.removeEventListenerById(self._e_event84);
        __o_rrpgObjs.removeEventListenerById(self._e_event83);
        __o_rrpgObjs.removeEventListenerById(self._e_event82);
        __o_rrpgObjs.removeEventListenerById(self._e_event81);
        __o_rrpgObjs.removeEventListenerById(self._e_event80);
        __o_rrpgObjs.removeEventListenerById(self._e_event79);
        __o_rrpgObjs.removeEventListenerById(self._e_event78);
        __o_rrpgObjs.removeEventListenerById(self._e_event77);
        __o_rrpgObjs.removeEventListenerById(self._e_event76);
        __o_rrpgObjs.removeEventListenerById(self._e_event75);
        __o_rrpgObjs.removeEventListenerById(self._e_event74);
        __o_rrpgObjs.removeEventListenerById(self._e_event73);
        __o_rrpgObjs.removeEventListenerById(self._e_event72);
        __o_rrpgObjs.removeEventListenerById(self._e_event71);
        __o_rrpgObjs.removeEventListenerById(self._e_event70);
        __o_rrpgObjs.removeEventListenerById(self._e_event69);
        __o_rrpgObjs.removeEventListenerById(self._e_event68);
        __o_rrpgObjs.removeEventListenerById(self._e_event67);
        __o_rrpgObjs.removeEventListenerById(self._e_event66);
        __o_rrpgObjs.removeEventListenerById(self._e_event65);
        __o_rrpgObjs.removeEventListenerById(self._e_event64);
        __o_rrpgObjs.removeEventListenerById(self._e_event63);
        __o_rrpgObjs.removeEventListenerById(self._e_event62);
        __o_rrpgObjs.removeEventListenerById(self._e_event61);
        __o_rrpgObjs.removeEventListenerById(self._e_event60);
        __o_rrpgObjs.removeEventListenerById(self._e_event59);
        __o_rrpgObjs.removeEventListenerById(self._e_event58);
        __o_rrpgObjs.removeEventListenerById(self._e_event57);
        __o_rrpgObjs.removeEventListenerById(self._e_event56);
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
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

        if self.button89 ~= nil then self.button89:destroy(); self.button89 = nil; end;
        if self.linUpperGridCampo1 ~= nil then self.linUpperGridCampo1:destroy(); self.linUpperGridCampo1 = nil; end;
        if self.labProfpericiaforca ~= nil then self.labProfpericiaforca:destroy(); self.labProfpericiaforca = nil; end;
        if self.dataLink71 ~= nil then self.dataLink71:destroy(); self.dataLink71 = nil; end;
        if self.dataLink142 ~= nil then self.dataLink142:destroy(); self.dataLink142 = nil; end;
        if self.flowPart33 ~= nil then self.flowPart33:destroy(); self.flowPart33 = nil; end;
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.horzLine48 ~= nil then self.horzLine48:destroy(); self.horzLine48 = nil; end;
        if self.dataLink206 ~= nil then self.dataLink206:destroy(); self.dataLink206 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.label119 ~= nil then self.label119:destroy(); self.label119 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.labProfcompanionsobrevivencia ~= nil then self.labProfcompanionsobrevivencia:destroy(); self.labProfcompanionsobrevivencia = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.horzLine7 ~= nil then self.horzLine7:destroy(); self.horzLine7 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.button96 ~= nil then self.button96:destroy(); self.button96 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.flowPart129 ~= nil then self.flowPart129:destroy(); self.flowPart129 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.button67 ~= nil then self.button67:destroy(); self.button67 = nil; end;
        if self.fraUpperGridCompanion ~= nil then self.fraUpperGridCompanion:destroy(); self.fraUpperGridCompanion = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.label128 ~= nil then self.label128:destroy(); self.label128 = nil; end;
        if self.dataLink92 ~= nil then self.dataLink92:destroy(); self.dataLink92 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.horzLine47 ~= nil then self.horzLine47:destroy(); self.horzLine47 = nil; end;
        if self.labProfacrobacia ~= nil then self.labProfacrobacia:destroy(); self.labProfacrobacia = nil; end;
        if self.flowPart106 ~= nil then self.flowPart106:destroy(); self.flowPart106 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.fpPEEscola ~= nil then self.fpPEEscola:destroy(); self.fpPEEscola = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.dataLink141 ~= nil then self.dataLink141:destroy(); self.dataLink141 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.layout123 ~= nil then self.layout123:destroy(); self.layout123 = nil; end;
        if self.flowPart66 ~= nil then self.flowPart66:destroy(); self.flowPart66 = nil; end;
        if self.button35 ~= nil then self.button35:destroy(); self.button35 = nil; end;
        if self.dataLink68 ~= nil then self.dataLink68:destroy(); self.dataLink68 = nil; end;
        if self.flowPart55 ~= nil then self.flowPart55:destroy(); self.flowPart55 = nil; end;
        if self.flowPart95 ~= nil then self.flowPart95:destroy(); self.flowPart95 = nil; end;
        if self.horzLine19 ~= nil then self.horzLine19:destroy(); self.horzLine19 = nil; end;
        if self.comboBoxImportClass ~= nil then self.comboBoxImportClass:destroy(); self.comboBoxImportClass = nil; end;
        if self.button93 ~= nil then self.button93:destroy(); self.button93 = nil; end;
        if self.cbProfforca ~= nil then self.cbProfforca:destroy(); self.cbProfforca = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.flowPart51 ~= nil then self.flowPart51:destroy(); self.flowPart51 = nil; end;
        if self.flowLayout16 ~= nil then self.flowLayout16:destroy(); self.flowLayout16 = nil; end;
        if self.cbProfreligiao ~= nil then self.cbProfreligiao:destroy(); self.cbProfreligiao = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.flowPart107 ~= nil then self.flowPart107:destroy(); self.flowPart107 = nil; end;
        if self.linUpperGridCampo7 ~= nil then self.linUpperGridCampo7:destroy(); self.linUpperGridCampo7 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.labUpperGridCampo11 ~= nil then self.labUpperGridCampo11:destroy(); self.labUpperGridCampo11 = nil; end;
        if self.rclMagiasNiveis ~= nil then self.rclMagiasNiveis:destroy(); self.rclMagiasNiveis = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.flowPart94 ~= nil then self.flowPart94:destroy(); self.flowPart94 = nil; end;
        if self.dataLink174 ~= nil then self.dataLink174:destroy(); self.dataLink174 = nil; end;
        if self.cbProfcompanionsobrevivencia ~= nil then self.cbProfcompanionsobrevivencia:destroy(); self.cbProfcompanionsobrevivencia = nil; end;
        if self.tab13 ~= nil then self.tab13:destroy(); self.tab13 = nil; end;
        if self.label125 ~= nil then self.label125:destroy(); self.label125 = nil; end;
        if self.labProffurtividade ~= nil then self.labProffurtividade:destroy(); self.labProffurtividade = nil; end;
        if self.flowPart79 ~= nil then self.flowPart79:destroy(); self.flowPart79 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.comboBox10 ~= nil then self.comboBox10:destroy(); self.comboBox10 = nil; end;
        if self.cbProfcompanionarcanismo ~= nil then self.cbProfcompanionarcanismo:destroy(); self.cbProfcompanionarcanismo = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.horzLine37 ~= nil then self.horzLine37:destroy(); self.horzLine37 = nil; end;
        if self.cbProfprestidigitacao ~= nil then self.cbProfprestidigitacao:destroy(); self.cbProfprestidigitacao = nil; end;
        if self.upperGridMagicBox3 ~= nil then self.upperGridMagicBox3:destroy(); self.upperGridMagicBox3 = nil; end;
        if self.dataLink186 ~= nil then self.dataLink186:destroy(); self.dataLink186 = nil; end;
        if self.dataLink84 ~= nil then self.dataLink84:destroy(); self.dataLink84 = nil; end;
        if self.dataLink225 ~= nil then self.dataLink225:destroy(); self.dataLink225 = nil; end;
        if self.dataLink102 ~= nil then self.dataLink102:destroy(); self.dataLink102 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.flowPart103 ~= nil then self.flowPart103:destroy(); self.flowPart103 = nil; end;
        if self.dataLink94 ~= nil then self.dataLink94:destroy(); self.dataLink94 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.flowPart43 ~= nil then self.flowPart43:destroy(); self.flowPart43 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.comboBox11 ~= nil then self.comboBox11:destroy(); self.comboBox11 = nil; end;
        if self.labProfcompanionprestidigitacao ~= nil then self.labProfcompanionprestidigitacao:destroy(); self.labProfcompanionprestidigitacao = nil; end;
        if self.popupEdit ~= nil then self.popupEdit:destroy(); self.popupEdit = nil; end;
        if self.labProfcompanionnatureza ~= nil then self.labProfcompanionnatureza:destroy(); self.labProfcompanionnatureza = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.horzLine41 ~= nil then self.horzLine41:destroy(); self.horzLine41 = nil; end;
        if self.dataLink188 ~= nil then self.dataLink188:destroy(); self.dataLink188 = nil; end;
        if self.layout106 ~= nil then self.layout106:destroy(); self.layout106 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.fraUpperGridFrente ~= nil then self.fraUpperGridFrente:destroy(); self.fraUpperGridFrente = nil; end;
        if self.flowPart128 ~= nil then self.flowPart128:destroy(); self.flowPart128 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.dataLink160 ~= nil then self.dataLink160:destroy(); self.dataLink160 = nil; end;
        if self.dataLink183 ~= nil then self.dataLink183:destroy(); self.dataLink183 = nil; end;
        if self.flowLineBreak5 ~= nil then self.flowLineBreak5:destroy(); self.flowLineBreak5 = nil; end;
        if self.button66 ~= nil then self.button66:destroy(); self.button66 = nil; end;
        if self.dataLink172 ~= nil then self.dataLink172:destroy(); self.dataLink172 = nil; end;
        if self.flowPart22 ~= nil then self.flowPart22:destroy(); self.flowPart22 = nil; end;
        if self.button73 ~= nil then self.button73:destroy(); self.button73 = nil; end;
        if self.dataLink208 ~= nil then self.dataLink208:destroy(); self.dataLink208 = nil; end;
        if self.cbProfcompanionreligiao ~= nil then self.cbProfcompanionreligiao:destroy(); self.cbProfcompanionreligiao = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout126 ~= nil then self.layout126:destroy(); self.layout126 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.dataLink200 ~= nil then self.dataLink200:destroy(); self.dataLink200 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.flowPart78 ~= nil then self.flowPart78:destroy(); self.flowPart78 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.UpperGridCampo3 ~= nil then self.UpperGridCampo3:destroy(); self.UpperGridCampo3 = nil; end;
        if self.progBar ~= nil then self.progBar:destroy(); self.progBar = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.panupperGridMagicBox3 ~= nil then self.panupperGridMagicBox3:destroy(); self.panupperGridMagicBox3 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.tab10 ~= nil then self.tab10:destroy(); self.tab10 = nil; end;
        if self.flowLayout31 ~= nil then self.flowLayout31:destroy(); self.flowLayout31 = nil; end;
        if self.cbProfcompanionsabedoria ~= nil then self.cbProfcompanionsabedoria:destroy(); self.cbProfcompanionsabedoria = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.horzLine54 ~= nil then self.horzLine54:destroy(); self.horzLine54 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.button45 ~= nil then self.button45:destroy(); self.button45 = nil; end;
        if self.dataLink227 ~= nil then self.dataLink227:destroy(); self.dataLink227 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.cbProfcompanionadestrarAnimais ~= nil then self.cbProfcompanionadestrarAnimais:destroy(); self.cbProfcompanionadestrarAnimais = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.dataLink76 ~= nil then self.dataLink76:destroy(); self.dataLink76 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.button44 ~= nil then self.button44:destroy(); self.button44 = nil; end;
        if self.cbProfcompanionhistoria ~= nil then self.cbProfcompanionhistoria:destroy(); self.cbProfcompanionhistoria = nil; end;
        if self.dataLink107 ~= nil then self.dataLink107:destroy(); self.dataLink107 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.dataLink97 ~= nil then self.dataLink97:destroy(); self.dataLink97 = nil; end;
        if self.cbProfcompanionenganacao ~= nil then self.cbProfcompanionenganacao:destroy(); self.cbProfcompanionenganacao = nil; end;
        if self.linUpperGridCampo4 ~= nil then self.linUpperGridCampo4:destroy(); self.linUpperGridCampo4 = nil; end;
        if self.flowPart145 ~= nil then self.flowPart145:destroy(); self.flowPart145 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.dataLink223 ~= nil then self.dataLink223:destroy(); self.dataLink223 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.flowPart125 ~= nil then self.flowPart125:destroy(); self.flowPart125 = nil; end;
        if self.panupperGridMagicBox1 ~= nil then self.panupperGridMagicBox1:destroy(); self.panupperGridMagicBox1 = nil; end;
        if self.flowPart142 ~= nil then self.flowPart142:destroy(); self.flowPart142 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.labupperGridMagicBox3 ~= nil then self.labupperGridMagicBox3:destroy(); self.labupperGridMagicBox3 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.button72 ~= nil then self.button72:destroy(); self.button72 = nil; end;
        if self.dataLink111 ~= nil then self.dataLink111:destroy(); self.dataLink111 = nil; end;
        if self.dataLink80 ~= nil then self.dataLink80:destroy(); self.dataLink80 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.flowLineBreak2 ~= nil then self.flowLineBreak2:destroy(); self.flowLineBreak2 = nil; end;
        if self.cbProfnatureza ~= nil then self.cbProfnatureza:destroy(); self.cbProfnatureza = nil; end;
        if self.flowPart152 ~= nil then self.flowPart152:destroy(); self.flowPart152 = nil; end;
        if self.flowPart169 ~= nil then self.flowPart169:destroy(); self.flowPart169 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.flowLayout8 ~= nil then self.flowLayout8:destroy(); self.flowLayout8 = nil; end;
        if self.labProfreligiao ~= nil then self.labProfreligiao:destroy(); self.labProfreligiao = nil; end;
        if self.flowPart113 ~= nil then self.flowPart113:destroy(); self.flowPart113 = nil; end;
        if self.cbProfpersuasao ~= nil then self.cbProfpersuasao:destroy(); self.cbProfpersuasao = nil; end;
        if self.UpperGridCampo10 ~= nil then self.UpperGridCampo10:destroy(); self.UpperGridCampo10 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.frmFichaRPGmeister9_svg ~= nil then self.frmFichaRPGmeister9_svg:destroy(); self.frmFichaRPGmeister9_svg = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.flowPart96 ~= nil then self.flowPart96:destroy(); self.flowPart96 = nil; end;
        if self.button68 ~= nil then self.button68:destroy(); self.button68 = nil; end;
        if self.labProfdestreza ~= nil then self.labProfdestreza:destroy(); self.labProfdestreza = nil; end;
        if self.horzLine63 ~= nil then self.horzLine63:destroy(); self.horzLine63 = nil; end;
        if self.button28 ~= nil then self.button28:destroy(); self.button28 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.fpPETempo ~= nil then self.fpPETempo:destroy(); self.fpPETempo = nil; end;
        if self.flowPart80 ~= nil then self.flowPart80:destroy(); self.flowPart80 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.labUpperGridCampo12 ~= nil then self.labUpperGridCampo12:destroy(); self.labUpperGridCampo12 = nil; end;
        if self.flowPart72 ~= nil then self.flowPart72:destroy(); self.flowPart72 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.flowLayout18 ~= nil then self.flowLayout18:destroy(); self.flowLayout18 = nil; end;
        if self.flowPart40 ~= nil then self.flowPart40:destroy(); self.flowPart40 = nil; end;
        if self.comboBoxImportLevel ~= nil then self.comboBoxImportLevel:destroy(); self.comboBoxImportLevel = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.edtUpperGridCampo8 ~= nil then self.edtUpperGridCampo8:destroy(); self.edtUpperGridCampo8 = nil; end;
        if self.labProfsobrevivencia ~= nil then self.labProfsobrevivencia:destroy(); self.labProfsobrevivencia = nil; end;
        if self.flowPart144 ~= nil then self.flowPart144:destroy(); self.flowPart144 = nil; end;
        if self.dataLink201 ~= nil then self.dataLink201:destroy(); self.dataLink201 = nil; end;
        if self.flowLayout15 ~= nil then self.flowLayout15:destroy(); self.flowLayout15 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.horzLine38 ~= nil then self.horzLine38:destroy(); self.horzLine38 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.flowPart18 ~= nil then self.flowPart18:destroy(); self.flowPart18 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.dataLink128 ~= nil then self.dataLink128:destroy(); self.dataLink128 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.edtNome1 ~= nil then self.edtNome1:destroy(); self.edtNome1 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.flowPart118 ~= nil then self.flowPart118:destroy(); self.flowPart118 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.labProfpericiadestreza ~= nil then self.labProfpericiadestreza:destroy(); self.labProfpericiadestreza = nil; end;
        if self.flowPart116 ~= nil then self.flowPart116:destroy(); self.flowPart116 = nil; end;
        if self.horzLine22 ~= nil then self.horzLine22:destroy(); self.horzLine22 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.popupEditCompM ~= nil then self.popupEditCompM:destroy(); self.popupEditCompM = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.labProfhistoria ~= nil then self.labProfhistoria:destroy(); self.labProfhistoria = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.dataLink189 ~= nil then self.dataLink189:destroy(); self.dataLink189 = nil; end;
        if self.tab12 ~= nil then self.tab12:destroy(); self.tab12 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.cbProfenganacao ~= nil then self.cbProfenganacao:destroy(); self.cbProfenganacao = nil; end;
        if self.labProfnidade ~= nil then self.labProfnidade:destroy(); self.labProfnidade = nil; end;
        if self.flowPart48 ~= nil then self.flowPart48:destroy(); self.flowPart48 = nil; end;
        if self.dataLink120 ~= nil then self.dataLink120:destroy(); self.dataLink120 = nil; end;
        if self.label129 ~= nil then self.label129:destroy(); self.label129 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.dataLink113 ~= nil then self.dataLink113:destroy(); self.dataLink113 = nil; end;
        if self.cbProfsabedoria ~= nil then self.cbProfsabedoria:destroy(); self.cbProfsabedoria = nil; end;
        if self.button74 ~= nil then self.button74:destroy(); self.button74 = nil; end;
        if self.popupEditFormulaRL ~= nil then self.popupEditFormulaRL:destroy(); self.popupEditFormulaRL = nil; end;
        if self.dataLink173 ~= nil then self.dataLink173:destroy(); self.dataLink173 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.labProfcompanioninvestigacao ~= nil then self.labProfcompanioninvestigacao:destroy(); self.labProfcompanioninvestigacao = nil; end;
        if self.flowPart35 ~= nil then self.flowPart35:destroy(); self.flowPart35 = nil; end;
        if self.flowPart90 ~= nil then self.flowPart90:destroy(); self.flowPart90 = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.flowPart91 ~= nil then self.flowPart91:destroy(); self.flowPart91 = nil; end;
        if self.cbProfiniciativa ~= nil then self.cbProfiniciativa:destroy(); self.cbProfiniciativa = nil; end;
        if self.button32 ~= nil then self.button32:destroy(); self.button32 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.flowLayout10 ~= nil then self.flowLayout10:destroy(); self.flowLayout10 = nil; end;
        if self.labProfforca ~= nil then self.labProfforca:destroy(); self.labProfforca = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.popupEditCondAtiv ~= nil then self.popupEditCondAtiv:destroy(); self.popupEditCondAtiv = nil; end;
        if self.labProfarcanismo ~= nil then self.labProfarcanismo:destroy(); self.labProfarcanismo = nil; end;
        if self.label133 ~= nil then self.label133:destroy(); self.label133 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.horzLine64 ~= nil then self.horzLine64:destroy(); self.horzLine64 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.frame9 ~= nil then self.frame9:destroy(); self.frame9 = nil; end;
        if self.cbProfpericiaconstituicao ~= nil then self.cbProfpericiaconstituicao:destroy(); self.cbProfpericiaconstituicao = nil; end;
        if self.flowLayout27 ~= nil then self.flowLayout27:destroy(); self.flowLayout27 = nil; end;
        if self.labUpperGridCampo3 ~= nil then self.labUpperGridCampo3:destroy(); self.labUpperGridCampo3 = nil; end;
        if self.labProfconstituicao ~= nil then self.labProfconstituicao:destroy(); self.labProfconstituicao = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.dataLink161 ~= nil then self.dataLink161:destroy(); self.dataLink161 = nil; end;
        if self.layEquipDefenseBottom ~= nil then self.layEquipDefenseBottom:destroy(); self.layEquipDefenseBottom = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.flowPart71 ~= nil then self.flowPart71:destroy(); self.flowPart71 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.dataLink69 ~= nil then self.dataLink69:destroy(); self.dataLink69 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.button77 ~= nil then self.button77:destroy(); self.button77 = nil; end;
        if self.frame2 ~= nil then self.frame2:destroy(); self.frame2 = nil; end;
        if self.cbProfarcanismo ~= nil then self.cbProfarcanismo:destroy(); self.cbProfarcanismo = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.dataLink169 ~= nil then self.dataLink169:destroy(); self.dataLink169 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.dataLink98 ~= nil then self.dataLink98:destroy(); self.dataLink98 = nil; end;
        if self.labProfcompanionacrobacia ~= nil then self.labProfcompanionacrobacia:destroy(); self.labProfcompanionacrobacia = nil; end;
        if self.labProfcompaniontolerancia ~= nil then self.labProfcompaniontolerancia:destroy(); self.labProfcompaniontolerancia = nil; end;
        if self.cbProfinteligencia ~= nil then self.cbProfinteligencia:destroy(); self.cbProfinteligencia = nil; end;
        if self.dataLink155 ~= nil then self.dataLink155:destroy(); self.dataLink155 = nil; end;
        if self.dataLink83 ~= nil then self.dataLink83:destroy(); self.dataLink83 = nil; end;
        if self.button90 ~= nil then self.button90:destroy(); self.button90 = nil; end;
        if self.dataLink187 ~= nil then self.dataLink187:destroy(); self.dataLink187 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.fraLayAtributos ~= nil then self.fraLayAtributos:destroy(); self.fraLayAtributos = nil; end;
        if self.cbProfatletismo ~= nil then self.cbProfatletismo:destroy(); self.cbProfatletismo = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.optAtaqueLegenda ~= nil then self.optAtaqueLegenda:destroy(); self.optAtaqueLegenda = nil; end;
        if self.labUpperGridCampo6 ~= nil then self.labUpperGridCampo6:destroy(); self.labUpperGridCampo6 = nil; end;
        if self.frame5 ~= nil then self.frame5:destroy(); self.frame5 = nil; end;
        if self.layPrepValorChb ~= nil then self.layPrepValorChb:destroy(); self.layPrepValorChb = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.dataLink209 ~= nil then self.dataLink209:destroy(); self.dataLink209 = nil; end;
        if self.button99 ~= nil then self.button99:destroy(); self.button99 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.cbProfcompaniontolerancia ~= nil then self.cbProfcompaniontolerancia:destroy(); self.cbProfcompaniontolerancia = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.horzLine26 ~= nil then self.horzLine26:destroy(); self.horzLine26 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.flowPart124 ~= nil then self.flowPart124:destroy(); self.flowPart124 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.cbProfbedoria ~= nil then self.cbProfbedoria:destroy(); self.cbProfbedoria = nil; end;
        if self.button54 ~= nil then self.button54:destroy(); self.button54 = nil; end;
        if self.flowPart141 ~= nil then self.flowPart141:destroy(); self.flowPart141 = nil; end;
        if self.dataLink207 ~= nil then self.dataLink207:destroy(); self.dataLink207 = nil; end;
        if self.dataLink67 ~= nil then self.dataLink67:destroy(); self.dataLink67 = nil; end;
        if self.flowLayout36 ~= nil then self.flowLayout36:destroy(); self.flowLayout36 = nil; end;
        if self.flowPart37 ~= nil then self.flowPart37:destroy(); self.flowPart37 = nil; end;
        if self.flowPart45 ~= nil then self.flowPart45:destroy(); self.flowPart45 = nil; end;
        if self.labProfcompanionhistoria ~= nil then self.labProfcompanionhistoria:destroy(); self.labProfcompanionhistoria = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.dataLink57 ~= nil then self.dataLink57:destroy(); self.dataLink57 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.cbProfhistoria ~= nil then self.cbProfhistoria:destroy(); self.cbProfhistoria = nil; end;
        if self.dataLink220 ~= nil then self.dataLink220:destroy(); self.dataLink220 = nil; end;
        if self.colorComboBox2 ~= nil then self.colorComboBox2:destroy(); self.colorComboBox2 = nil; end;
        if self.btnApagar ~= nil then self.btnApagar:destroy(); self.btnApagar = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.dataLink193 ~= nil then self.dataLink193:destroy(); self.dataLink193 = nil; end;
        if self.button82 ~= nil then self.button82:destroy(); self.button82 = nil; end;
        if self.frame4 ~= nil then self.frame4:destroy(); self.frame4 = nil; end;
        if self.button71 ~= nil then self.button71:destroy(); self.button71 = nil; end;
        if self.dataLink133 ~= nil then self.dataLink133:destroy(); self.dataLink133 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.button86 ~= nil then self.button86:destroy(); self.button86 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.button97 ~= nil then self.button97:destroy(); self.button97 = nil; end;
        if self.dataLink199 ~= nil then self.dataLink199:destroy(); self.dataLink199 = nil; end;
        if self.cbProfpericiadestreza ~= nil then self.cbProfpericiadestreza:destroy(); self.cbProfpericiadestreza = nil; end;
        if self.flowLayout37 ~= nil then self.flowLayout37:destroy(); self.flowLayout37 = nil; end;
        if self.flowLayout22 ~= nil then self.flowLayout22:destroy(); self.flowLayout22 = nil; end;
        if self.flowPart108 ~= nil then self.flowPart108:destroy(); self.flowPart108 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.dataLink182 ~= nil then self.dataLink182:destroy(); self.dataLink182 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.fraFrenteLayout ~= nil then self.fraFrenteLayout:destroy(); self.fraFrenteLayout = nil; end;
        if self.layout110 ~= nil then self.layout110:destroy(); self.layout110 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.flowPart73 ~= nil then self.flowPart73:destroy(); self.flowPart73 = nil; end;
        if self.UpperGridCampo1 ~= nil then self.UpperGridCampo1:destroy(); self.UpperGridCampo1 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.flowPart155 ~= nil then self.flowPart155:destroy(); self.flowPart155 = nil; end;
        if self.layout114 ~= nil then self.layout114:destroy(); self.layout114 = nil; end;
        if self.dataLink73 ~= nil then self.dataLink73:destroy(); self.dataLink73 = nil; end;
        if self.flowLayout13 ~= nil then self.flowLayout13:destroy(); self.flowLayout13 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.flowPart42 ~= nil then self.flowPart42:destroy(); self.flowPart42 = nil; end;
        if self.button47 ~= nil then self.button47:destroy(); self.button47 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.fpPENome ~= nil then self.fpPENome:destroy(); self.fpPENome = nil; end;
        if self.dataLink117 ~= nil then self.dataLink117:destroy(); self.dataLink117 = nil; end;
        if self.horzLine45 ~= nil then self.horzLine45:destroy(); self.horzLine45 = nil; end;
        if self.button56 ~= nil then self.button56:destroy(); self.button56 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.button70 ~= nil then self.button70:destroy(); self.button70 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.linUpperGridCampo9 ~= nil then self.linUpperGridCampo9:destroy(); self.linUpperGridCampo9 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.cbProfnidade ~= nil then self.cbProfnidade:destroy(); self.cbProfnidade = nil; end;
        if self.dataLink108 ~= nil then self.dataLink108:destroy(); self.dataLink108 = nil; end;
        if self.edtUpperGridCampo5 ~= nil then self.edtUpperGridCampo5:destroy(); self.edtUpperGridCampo5 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.dataLink150 ~= nil then self.dataLink150:destroy(); self.dataLink150 = nil; end;
        if self.flowPart16 ~= nil then self.flowPart16:destroy(); self.flowPart16 = nil; end;
        if self.layout105 ~= nil then self.layout105:destroy(); self.layout105 = nil; end;
        if self.dataLink123 ~= nil then self.dataLink123:destroy(); self.dataLink123 = nil; end;
        if self.frmFichaRPGmeister11_svg ~= nil then self.frmFichaRPGmeister11_svg:destroy(); self.frmFichaRPGmeister11_svg = nil; end;
        if self.cbProfcompanionacrobacia ~= nil then self.cbProfcompanionacrobacia:destroy(); self.cbProfcompanionacrobacia = nil; end;
        if self.dataLink53 ~= nil then self.dataLink53:destroy(); self.dataLink53 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.labProfcompanionreligiao ~= nil then self.labProfcompanionreligiao:destroy(); self.labProfcompanionreligiao = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.dataLink93 ~= nil then self.dataLink93:destroy(); self.dataLink93 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.horzLine40 ~= nil then self.horzLine40:destroy(); self.horzLine40 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.flowPart131 ~= nil then self.flowPart131:destroy(); self.flowPart131 = nil; end;
        if self.linUpperGridCampo5 ~= nil then self.linUpperGridCampo5:destroy(); self.linUpperGridCampo5 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.label131 ~= nil then self.label131:destroy(); self.label131 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.button29 ~= nil then self.button29:destroy(); self.button29 = nil; end;
        if self.flowLayout29 ~= nil then self.flowLayout29:destroy(); self.flowLayout29 = nil; end;
        if self.horzLine44 ~= nil then self.horzLine44:destroy(); self.horzLine44 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.horzLine28 ~= nil then self.horzLine28:destroy(); self.horzLine28 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.dataLink112 ~= nil then self.dataLink112:destroy(); self.dataLink112 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.flowPart105 ~= nil then self.flowPart105:destroy(); self.flowPart105 = nil; end;
        if self.cbProfcompanioninteligencia ~= nil then self.cbProfcompanioninteligencia:destroy(); self.cbProfcompanioninteligencia = nil; end;
        if self.dataLink74 ~= nil then self.dataLink74:destroy(); self.dataLink74 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.flowPart9 ~= nil then self.flowPart9:destroy(); self.flowPart9 = nil; end;
        if self.rclOptsAttack ~= nil then self.rclOptsAttack:destroy(); self.rclOptsAttack = nil; end;
        if self.dataLink127 ~= nil then self.dataLink127:destroy(); self.dataLink127 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.labProfcompanioninteligencia ~= nil then self.labProfcompanioninteligencia:destroy(); self.labProfcompanioninteligencia = nil; end;
        if self.dataLink166 ~= nil then self.dataLink166:destroy(); self.dataLink166 = nil; end;
        if self.horzLine57 ~= nil then self.horzLine57:destroy(); self.horzLine57 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.tab9 ~= nil then self.tab9:destroy(); self.tab9 = nil; end;
        if self.labProfatletismo ~= nil then self.labProfatletismo:destroy(); self.labProfatletismo = nil; end;
        if self.horzLine33 ~= nil then self.horzLine33:destroy(); self.horzLine33 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label120 ~= nil then self.label120:destroy(); self.label120 = nil; end;
        if self.linUpperGridCampo2 ~= nil then self.linUpperGridCampo2:destroy(); self.linUpperGridCampo2 = nil; end;
        if self.flowPart56 ~= nil then self.flowPart56:destroy(); self.flowPart56 = nil; end;
        if self.dataLink154 ~= nil then self.dataLink154:destroy(); self.dataLink154 = nil; end;
        if self.flowPart26 ~= nil then self.flowPart26:destroy(); self.flowPart26 = nil; end;
        if self.dataLink181 ~= nil then self.dataLink181:destroy(); self.dataLink181 = nil; end;
        if self.dataLink135 ~= nil then self.dataLink135:destroy(); self.dataLink135 = nil; end;
        if self.dataLink145 ~= nil then self.dataLink145:destroy(); self.dataLink145 = nil; end;
        if self.flowPart136 ~= nil then self.flowPart136:destroy(); self.flowPart136 = nil; end;
        if self.dataLink116 ~= nil then self.dataLink116:destroy(); self.dataLink116 = nil; end;
        if self.horzLine25 ~= nil then self.horzLine25:destroy(); self.horzLine25 = nil; end;
        if self.pgcPrincipal ~= nil then self.pgcPrincipal:destroy(); self.pgcPrincipal = nil; end;
        if self.flowPart41 ~= nil then self.flowPart41:destroy(); self.flowPart41 = nil; end;
        if self.button84 ~= nil then self.button84:destroy(); self.button84 = nil; end;
        if self.progBar2 ~= nil then self.progBar2:destroy(); self.progBar2 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.upperGridMagicBox1 ~= nil then self.upperGridMagicBox1:destroy(); self.upperGridMagicBox1 = nil; end;
        if self.layout117 ~= nil then self.layout117:destroy(); self.layout117 = nil; end;
        if self.horzLine52 ~= nil then self.horzLine52:destroy(); self.horzLine52 = nil; end;
        if self.cbOptAtaqueMunicao ~= nil then self.cbOptAtaqueMunicao:destroy(); self.cbOptAtaqueMunicao = nil; end;
        if self.flowPart139 ~= nil then self.flowPart139:destroy(); self.flowPart139 = nil; end;
        if self.labProfatuacao ~= nil then self.labProfatuacao:destroy(); self.labProfatuacao = nil; end;
        if self.flowPart88 ~= nil then self.flowPart88:destroy(); self.flowPart88 = nil; end;
        if self.linUpperGridCampo11 ~= nil then self.linUpperGridCampo11:destroy(); self.linUpperGridCampo11 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.flowPart138 ~= nil then self.flowPart138:destroy(); self.flowPart138 = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.flowPart123 ~= nil then self.flowPart123:destroy(); self.flowPart123 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.dataLink58 ~= nil then self.dataLink58:destroy(); self.dataLink58 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.dataLink152 ~= nil then self.dataLink152:destroy(); self.dataLink152 = nil; end;
        if self.popupEditFormulaLegenda ~= nil then self.popupEditFormulaLegenda:destroy(); self.popupEditFormulaLegenda = nil; end;
        if self.cbProfintimidacao ~= nil then self.cbProfintimidacao:destroy(); self.cbProfintimidacao = nil; end;
        if self.dataEquipAttackDetails ~= nil then self.dataEquipAttackDetails:destroy(); self.dataEquipAttackDetails = nil; end;
        if self.dataLink77 ~= nil then self.dataLink77:destroy(); self.dataLink77 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.cbProfcompanioninvestigacao ~= nil then self.cbProfcompanioninvestigacao:destroy(); self.cbProfcompanioninvestigacao = nil; end;
        if self.cbProffurtividade ~= nil then self.cbProffurtividade:destroy(); self.cbProffurtividade = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.UpperGridCampo11 ~= nil then self.UpperGridCampo11:destroy(); self.UpperGridCampo11 = nil; end;
        if self.dataLink171 ~= nil then self.dataLink171:destroy(); self.dataLink171 = nil; end;
        if self.frame8 ~= nil then self.frame8:destroy(); self.frame8 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.cmbupperGridMagicBox1 ~= nil then self.cmbupperGridMagicBox1:destroy(); self.cmbupperGridMagicBox1 = nil; end;
        if self.horzLine43 ~= nil then self.horzLine43:destroy(); self.horzLine43 = nil; end;
        if self.scrollBox8 ~= nil then self.scrollBox8:destroy(); self.scrollBox8 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.flowPart117 ~= nil then self.flowPart117:destroy(); self.flowPart117 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.dataLink99 ~= nil then self.dataLink99:destroy(); self.dataLink99 = nil; end;
        if self.flowPart46 ~= nil then self.flowPart46:destroy(); self.flowPart46 = nil; end;
        if self.editorMerda ~= nil then self.editorMerda:destroy(); self.editorMerda = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.labupperGridMagicBox3val ~= nil then self.labupperGridMagicBox3val:destroy(); self.labupperGridMagicBox3val = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.button76 ~= nil then self.button76:destroy(); self.button76 = nil; end;
        if self.editPENome ~= nil then self.editPENome:destroy(); self.editPENome = nil; end;
        if self.dataLink136 ~= nil then self.dataLink136:destroy(); self.dataLink136 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.dataLink105 ~= nil then self.dataLink105:destroy(); self.dataLink105 = nil; end;
        if self.flowPart109 ~= nil then self.flowPart109:destroy(); self.flowPart109 = nil; end;
        if self.dataLink184 ~= nil then self.dataLink184:destroy(); self.dataLink184 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.dataLink75 ~= nil then self.dataLink75:destroy(); self.dataLink75 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.horzLine21 ~= nil then self.horzLine21:destroy(); self.horzLine21 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.horzLine17 ~= nil then self.horzLine17:destroy(); self.horzLine17 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.horzLine27 ~= nil then self.horzLine27:destroy(); self.horzLine27 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.flowPart156 ~= nil then self.flowPart156:destroy(); self.flowPart156 = nil; end;
        if self.horzLine46 ~= nil then self.horzLine46:destroy(); self.horzLine46 = nil; end;
        if self.dataLink164 ~= nil then self.dataLink164:destroy(); self.dataLink164 = nil; end;
        if self.popupEditFormulaRect ~= nil then self.popupEditFormulaRect:destroy(); self.popupEditFormulaRect = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.cbProfpericiainteligencia ~= nil then self.cbProfpericiainteligencia:destroy(); self.cbProfpericiainteligencia = nil; end;
        if self.UpperGridCampo8 ~= nil then self.UpperGridCampo8:destroy(); self.UpperGridCampo8 = nil; end;
        if self.horzLine51 ~= nil then self.horzLine51:destroy(); self.horzLine51 = nil; end;
        if self.button63 ~= nil then self.button63:destroy(); self.button63 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.dataLink65 ~= nil then self.dataLink65:destroy(); self.dataLink65 = nil; end;
        if self.linUpperGridCampo12 ~= nil then self.linUpperGridCampo12:destroy(); self.linUpperGridCampo12 = nil; end;
        if self.UpperGridCampo7 ~= nil then self.UpperGridCampo7:destroy(); self.UpperGridCampo7 = nil; end;
        if self.labProfcompanionenganacao ~= nil then self.labProfcompanionenganacao:destroy(); self.labProfcompanionenganacao = nil; end;
        if self.dataLink228 ~= nil then self.dataLink228:destroy(); self.dataLink228 = nil; end;
        if self.cbProfcompanionpercepcao ~= nil then self.cbProfcompanionpercepcao:destroy(); self.cbProfcompanionpercepcao = nil; end;
        if self.cbProfmedicina ~= nil then self.cbProfmedicina:destroy(); self.cbProfmedicina = nil; end;
        if self.flowPart148 ~= nil then self.flowPart148:destroy(); self.flowPart148 = nil; end;
        if self.cbProfcompanionconstituicao ~= nil then self.cbProfcompanionconstituicao:destroy(); self.cbProfcompanionconstituicao = nil; end;
        if self.dataLink101 ~= nil then self.dataLink101:destroy(); self.dataLink101 = nil; end;
        if self.flowPart64 ~= nil then self.flowPart64:destroy(); self.flowPart64 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.labProfpericiainteligencia ~= nil then self.labProfpericiainteligencia:destroy(); self.labProfpericiainteligencia = nil; end;
        if self.dataLink211 ~= nil then self.dataLink211:destroy(); self.dataLink211 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.dataLink60 ~= nil then self.dataLink60:destroy(); self.dataLink60 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.flowLayout9 ~= nil then self.flowLayout9:destroy(); self.flowLayout9 = nil; end;
        if self.fraEquipamentoLayout ~= nil then self.fraEquipamentoLayout:destroy(); self.fraEquipamentoLayout = nil; end;
        if self.dataLink144 ~= nil then self.dataLink144:destroy(); self.dataLink144 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.dataLink96 ~= nil then self.dataLink96:destroy(); self.dataLink96 = nil; end;
        if self.flowPart153 ~= nil then self.flowPart153:destroy(); self.flowPart153 = nil; end;
        if self.labProfconcentracao ~= nil then self.labProfconcentracao:destroy(); self.labProfconcentracao = nil; end;
        if self.button42 ~= nil then self.button42:destroy(); self.button42 = nil; end;
        if self.flwPartEquipDefense ~= nil then self.flwPartEquipDefense:destroy(); self.flwPartEquipDefense = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.horzLine12 ~= nil then self.horzLine12:destroy(); self.horzLine12 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.labUpperGridCampo7 ~= nil then self.labUpperGridCampo7:destroy(); self.labUpperGridCampo7 = nil; end;
        if self.layPrincipal ~= nil then self.layPrincipal:destroy(); self.layPrincipal = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.flowPart167 ~= nil then self.flowPart167:destroy(); self.flowPart167 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.dataLink170 ~= nil then self.dataLink170:destroy(); self.dataLink170 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.dataLink157 ~= nil then self.dataLink157:destroy(); self.dataLink157 = nil; end;
        if self.dataLink159 ~= nil then self.dataLink159:destroy(); self.dataLink159 = nil; end;
        if self.flowLayout11 ~= nil then self.flowLayout11:destroy(); self.flowLayout11 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.flowPart134 ~= nil then self.flowPart134:destroy(); self.flowPart134 = nil; end;
        if self.dataLink218 ~= nil then self.dataLink218:destroy(); self.dataLink218 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.popupEditDanoLegenda ~= nil then self.popupEditDanoLegenda:destroy(); self.popupEditDanoLegenda = nil; end;
        if self.horzLine18 ~= nil then self.horzLine18:destroy(); self.horzLine18 = nil; end;
        if self.dataLink118 ~= nil then self.dataLink118:destroy(); self.dataLink118 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.flowPart36 ~= nil then self.flowPart36:destroy(); self.flowPart36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.edtUpperGridCampo6 ~= nil then self.edtUpperGridCampo6:destroy(); self.edtUpperGridCampo6 = nil; end;
        if self.flowPart137 ~= nil then self.flowPart137:destroy(); self.flowPart137 = nil; end;
        if self.flowPart151 ~= nil then self.flowPart151:destroy(); self.flowPart151 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.flowPart82 ~= nil then self.flowPart82:destroy(); self.flowPart82 = nil; end;
        if self.linUpperGridCampo10 ~= nil then self.linUpperGridCampo10:destroy(); self.linUpperGridCampo10 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.flowPart84 ~= nil then self.flowPart84:destroy(); self.flowPart84 = nil; end;
        if self.cbProfcompanionintuicao ~= nil then self.cbProfcompanionintuicao:destroy(); self.cbProfcompanionintuicao = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.UpperGridCampo12 ~= nil then self.UpperGridCampo12:destroy(); self.UpperGridCampo12 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.popupEditCDvalor ~= nil then self.popupEditCDvalor:destroy(); self.popupEditCDvalor = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.button61 ~= nil then self.button61:destroy(); self.button61 = nil; end;
        if self.cbProfacrobacia ~= nil then self.cbProfacrobacia:destroy(); self.cbProfacrobacia = nil; end;
        if self.dataLink85 ~= nil then self.dataLink85:destroy(); self.dataLink85 = nil; end;
        if self.labProfcompanionatletismo ~= nil then self.labProfcompanionatletismo:destroy(); self.labProfcompanionatletismo = nil; end;
        if self.flowPart115 ~= nil then self.flowPart115:destroy(); self.flowPart115 = nil; end;
        if self.flowPart65 ~= nil then self.flowPart65:destroy(); self.flowPart65 = nil; end;
        if self.linUpperGridCampo3 ~= nil then self.linUpperGridCampo3:destroy(); self.linUpperGridCampo3 = nil; end;
        if self.horzLine55 ~= nil then self.horzLine55:destroy(); self.horzLine55 = nil; end;
        if self.flwNome1 ~= nil then self.flwNome1:destroy(); self.flwNome1 = nil; end;
        if self.dataLink158 ~= nil then self.dataLink158:destroy(); self.dataLink158 = nil; end;
        if self.flowPart112 ~= nil then self.flowPart112:destroy(); self.flowPart112 = nil; end;
        if self.button75 ~= nil then self.button75:destroy(); self.button75 = nil; end;
        if self.flowPart165 ~= nil then self.flowPart165:destroy(); self.flowPart165 = nil; end;
        if self.labProfsabedoria ~= nil then self.labProfsabedoria:destroy(); self.labProfsabedoria = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.horzLine65 ~= nil then self.horzLine65:destroy(); self.horzLine65 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
        if self.flowLineBreak4 ~= nil then self.flowLineBreak4:destroy(); self.flowLineBreak4 = nil; end;
        if self.cbProfhonra ~= nil then self.cbProfhonra:destroy(); self.cbProfhonra = nil; end;
        if self.edtUpperGridCampo12 ~= nil then self.edtUpperGridCampo12:destroy(); self.edtUpperGridCampo12 = nil; end;
        if self.dataLink95 ~= nil then self.dataLink95:destroy(); self.dataLink95 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.flowPart100 ~= nil then self.flowPart100:destroy(); self.flowPart100 = nil; end;
        if self.dataLink205 ~= nil then self.dataLink205:destroy(); self.dataLink205 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.labUpperGridCampo2 ~= nil then self.labUpperGridCampo2:destroy(); self.labUpperGridCampo2 = nil; end;
        if self.horzLine11 ~= nil then self.horzLine11:destroy(); self.horzLine11 = nil; end;
        if self.dataLink86 ~= nil then self.dataLink86:destroy(); self.dataLink86 = nil; end;
        if self.flowLayout24 ~= nil then self.flowLayout24:destroy(); self.flowLayout24 = nil; end;
        if self.dataLink149 ~= nil then self.dataLink149:destroy(); self.dataLink149 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.horzLine35 ~= nil then self.horzLine35:destroy(); self.horzLine35 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.flowPart121 ~= nil then self.flowPart121:destroy(); self.flowPart121 = nil; end;
        if self.button85 ~= nil then self.button85:destroy(); self.button85 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.dataLink89 ~= nil then self.dataLink89:destroy(); self.dataLink89 = nil; end;
        if self.labProfpericiaconstituicao ~= nil then self.labProfpericiaconstituicao:destroy(); self.labProfpericiaconstituicao = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.cbProfcompanionconcentracao ~= nil then self.cbProfcompanionconcentracao:destroy(); self.cbProfcompanionconcentracao = nil; end;
        if self.upperGridMagicBox2 ~= nil then self.upperGridMagicBox2:destroy(); self.upperGridMagicBox2 = nil; end;
        if self.labUpperGridCampo1 ~= nil then self.labUpperGridCampo1:destroy(); self.labUpperGridCampo1 = nil; end;
        if self.flowPart32 ~= nil then self.flowPart32:destroy(); self.flowPart32 = nil; end;
        if self.flowLayout19 ~= nil then self.flowLayout19:destroy(); self.flowLayout19 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.dataLink185 ~= nil then self.dataLink185:destroy(); self.dataLink185 = nil; end;
        if self.dataLink210 ~= nil then self.dataLink210:destroy(); self.dataLink210 = nil; end;
        if self.flowPart13 ~= nil then self.flowPart13:destroy(); self.flowPart13 = nil; end;
        if self.dataLink215 ~= nil then self.dataLink215:destroy(); self.dataLink215 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.horzLine14 ~= nil then self.horzLine14:destroy(); self.horzLine14 = nil; end;
        if self.rclEquips ~= nil then self.rclEquips:destroy(); self.rclEquips = nil; end;
        if self.flowPart157 ~= nil then self.flowPart157:destroy(); self.flowPart157 = nil; end;
        if self.flowPart25 ~= nil then self.flowPart25:destroy(); self.flowPart25 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.flowPart69 ~= nil then self.flowPart69:destroy(); self.flowPart69 = nil; end;
        if self.flowPart74 ~= nil then self.flowPart74:destroy(); self.flowPart74 = nil; end;
        if self.colorComboBox1 ~= nil then self.colorComboBox1:destroy(); self.colorComboBox1 = nil; end;
        if self.flowPart76 ~= nil then self.flowPart76:destroy(); self.flowPart76 = nil; end;
        if self.flowPart101 ~= nil then self.flowPart101:destroy(); self.flowPart101 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.flowPart19 ~= nil then self.flowPart19:destroy(); self.flowPart19 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.dataLink213 ~= nil then self.dataLink213:destroy(); self.dataLink213 = nil; end;
        if self.layout125 ~= nil then self.layout125:destroy(); self.layout125 = nil; end;
        if self.flowPart161 ~= nil then self.flowPart161:destroy(); self.flowPart161 = nil; end;
        if self.label122 ~= nil then self.label122:destroy(); self.label122 = nil; end;
        if self.cbProfpericiaforca ~= nil then self.cbProfpericiaforca:destroy(); self.cbProfpericiaforca = nil; end;
        if self.cbProfadestrarAnimais ~= nil then self.cbProfadestrarAnimais:destroy(); self.cbProfadestrarAnimais = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.dataLink100 ~= nil then self.dataLink100:destroy(); self.dataLink100 = nil; end;
        if self.button40 ~= nil then self.button40:destroy(); self.button40 = nil; end;
        if self.cbProfsobrevivencia ~= nil then self.cbProfsobrevivencia:destroy(); self.cbProfsobrevivencia = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.dataLink179 ~= nil then self.dataLink179:destroy(); self.dataLink179 = nil; end;
        if self.flowLayout30 ~= nil then self.flowLayout30:destroy(); self.flowLayout30 = nil; end;
        if self.dataLink147 ~= nil then self.dataLink147:destroy(); self.dataLink147 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.labProfmedicina ~= nil then self.labProfmedicina:destroy(); self.labProfmedicina = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.flowPart89 ~= nil then self.flowPart89:destroy(); self.flowPart89 = nil; end;
        if self.horzLine30 ~= nil then self.horzLine30:destroy(); self.horzLine30 = nil; end;
        if self.dataLink196 ~= nil then self.dataLink196:destroy(); self.dataLink196 = nil; end;
        if self.flowPart68 ~= nil then self.flowPart68:destroy(); self.flowPart68 = nil; end;
        if self.button79 ~= nil then self.button79:destroy(); self.button79 = nil; end;
        if self.dataLink202 ~= nil then self.dataLink202:destroy(); self.dataLink202 = nil; end;
        if self.button37 ~= nil then self.button37:destroy(); self.button37 = nil; end;
        if self.flowLineBreak6 ~= nil then self.flowLineBreak6:destroy(); self.flowLineBreak6 = nil; end;
        if self.button36 ~= nil then self.button36:destroy(); self.button36 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.labUpperGridCampo5 ~= nil then self.labUpperGridCampo5:destroy(); self.labUpperGridCampo5 = nil; end;
        if self.cbProfpericiahonra ~= nil then self.cbProfpericiahonra:destroy(); self.cbProfpericiahonra = nil; end;
        if self.flowPart140 ~= nil then self.flowPart140:destroy(); self.flowPart140 = nil; end;
        if self.flowPart150 ~= nil then self.flowPart150:destroy(); self.flowPart150 = nil; end;
        if self.flowPart34 ~= nil then self.flowPart34:destroy(); self.flowPart34 = nil; end;
        if self.layout119 ~= nil then self.layout119:destroy(); self.layout119 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.flowPart54 ~= nil then self.flowPart54:destroy(); self.flowPart54 = nil; end;
        if self.flowLayout23 ~= nil then self.flowLayout23:destroy(); self.flowLayout23 = nil; end;
        if self.labProfnatureza ~= nil then self.labProfnatureza:destroy(); self.labProfnatureza = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.dataLink63 ~= nil then self.dataLink63:destroy(); self.dataLink63 = nil; end;
        if self.flowPart53 ~= nil then self.flowPart53:destroy(); self.flowPart53 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.labProfadestrarAnimais ~= nil then self.labProfadestrarAnimais:destroy(); self.labProfadestrarAnimais = nil; end;
        if self.optAtaquePadrao ~= nil then self.optAtaquePadrao:destroy(); self.optAtaquePadrao = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.labProfsanidade ~= nil then self.labProfsanidade:destroy(); self.labProfsanidade = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.flowPart57 ~= nil then self.flowPart57:destroy(); self.flowPart57 = nil; end;
        if self.comboBoxImportMagia ~= nil then self.comboBoxImportMagia:destroy(); self.comboBoxImportMagia = nil; end;
        if self.cbProfcompanionforca ~= nil then self.cbProfcompanionforca:destroy(); self.cbProfcompanionforca = nil; end;
        if self.cbProfatuacao ~= nil then self.cbProfatuacao:destroy(); self.cbProfatuacao = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.comboBoxImportSource ~= nil then self.comboBoxImportSource:destroy(); self.comboBoxImportSource = nil; end;
        if self.flowLayout33 ~= nil then self.flowLayout33:destroy(); self.flowLayout33 = nil; end;
        if self.horzLine56 ~= nil then self.horzLine56:destroy(); self.horzLine56 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.dataLink114 ~= nil then self.dataLink114:destroy(); self.dataLink114 = nil; end;
        if self.imgEquipAttackImg ~= nil then self.imgEquipAttackImg:destroy(); self.imgEquipAttackImg = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.flowPart59 ~= nil then self.flowPart59:destroy(); self.flowPart59 = nil; end;
        if self.dataLink148 ~= nil then self.dataLink148:destroy(); self.dataLink148 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink72 ~= nil then self.dataLink72:destroy(); self.dataLink72 = nil; end;
        if self.labupperGridMagicBox2val ~= nil then self.labupperGridMagicBox2val:destroy(); self.labupperGridMagicBox2val = nil; end;
        if self.flowLayout14 ~= nil then self.flowLayout14:destroy(); self.flowLayout14 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.layEquipPropriedades ~= nil then self.layEquipPropriedades:destroy(); self.layEquipPropriedades = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.flowPart39 ~= nil then self.flowPart39:destroy(); self.flowPart39 = nil; end;
        if self.labProfcompanionatuacao ~= nil then self.labProfcompanionatuacao:destroy(); self.labProfcompanionatuacao = nil; end;
        if self.button43 ~= nil then self.button43:destroy(); self.button43 = nil; end;
        if self.horzLine62 ~= nil then self.horzLine62:destroy(); self.horzLine62 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.labUpperGridCampo10 ~= nil then self.labUpperGridCampo10:destroy(); self.labUpperGridCampo10 = nil; end;
        if self.flowPart60 ~= nil then self.flowPart60:destroy(); self.flowPart60 = nil; end;
        if self.labProfcompanionpercepcao ~= nil then self.labProfcompanionpercepcao:destroy(); self.labProfcompanionpercepcao = nil; end;
        if self.rclProps ~= nil then self.rclProps:destroy(); self.rclProps = nil; end;
        if self.flowPart28 ~= nil then self.flowPart28:destroy(); self.flowPart28 = nil; end;
        if self.button98 ~= nil then self.button98:destroy(); self.button98 = nil; end;
        if self.editorFancy ~= nil then self.editorFancy:destroy(); self.editorFancy = nil; end;
        if self.layout108 ~= nil then self.layout108:destroy(); self.layout108 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.dataLink81 ~= nil then self.dataLink81:destroy(); self.dataLink81 = nil; end;
        if self.flowPart87 ~= nil then self.flowPart87:destroy(); self.flowPart87 = nil; end;
        if self.dataLink165 ~= nil then self.dataLink165:destroy(); self.dataLink165 = nil; end;
        if self.layEquipAttackImg ~= nil then self.layEquipAttackImg:destroy(); self.layEquipAttackImg = nil; end;
        if self.dataLink82 ~= nil then self.dataLink82:destroy(); self.dataLink82 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.button33 ~= nil then self.button33:destroy(); self.button33 = nil; end;
        if self.dataLink138 ~= nil then self.dataLink138:destroy(); self.dataLink138 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.UpperGridCampo6 ~= nil then self.UpperGridCampo6:destroy(); self.UpperGridCampo6 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.dataLink153 ~= nil then self.dataLink153:destroy(); self.dataLink153 = nil; end;
        if self.layout100 ~= nil then self.layout100:destroy(); self.layout100 = nil; end;
        if self.button92 ~= nil then self.button92:destroy(); self.button92 = nil; end;
        if self.flowPart15 ~= nil then self.flowPart15:destroy(); self.flowPart15 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.UpperGridCampo5 ~= nil then self.UpperGridCampo5:destroy(); self.UpperGridCampo5 = nil; end;
        if self.dataLink175 ~= nil then self.dataLink175:destroy(); self.dataLink175 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.flowPart104 ~= nil then self.flowPart104:destroy(); self.flowPart104 = nil; end;
        if self.label127 ~= nil then self.label127:destroy(); self.label127 = nil; end;
        if self.dataLink151 ~= nil then self.dataLink151:destroy(); self.dataLink151 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.labupperGridMagicBox1 ~= nil then self.labupperGridMagicBox1:destroy(); self.labupperGridMagicBox1 = nil; end;
        if self.flowPart132 ~= nil then self.flowPart132:destroy(); self.flowPart132 = nil; end;
        if self.flowPart10 ~= nil then self.flowPart10:destroy(); self.flowPart10 = nil; end;
        if self.horzLine29 ~= nil then self.horzLine29:destroy(); self.horzLine29 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.flowLayout32 ~= nil then self.flowLayout32:destroy(); self.flowLayout32 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.dataLink194 ~= nil then self.dataLink194:destroy(); self.dataLink194 = nil; end;
        if self.button51 ~= nil then self.button51:destroy(); self.button51 = nil; end;
        if self.dataLink55 ~= nil then self.dataLink55:destroy(); self.dataLink55 = nil; end;
        if self.fpPENivel ~= nil then self.fpPENivel:destroy(); self.fpPENivel = nil; end;
        if self.flowPart122 ~= nil then self.flowPart122:destroy(); self.flowPart122 = nil; end;
        if self.dataLink167 ~= nil then self.dataLink167:destroy(); self.dataLink167 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.flowPart92 ~= nil then self.flowPart92:destroy(); self.flowPart92 = nil; end;
        if self.dataLink78 ~= nil then self.dataLink78:destroy(); self.dataLink78 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.dataLink121 ~= nil then self.dataLink121:destroy(); self.dataLink121 = nil; end;
        if self.edtNomeCompanion1 ~= nil then self.edtNomeCompanion1:destroy(); self.edtNomeCompanion1 = nil; end;
        if self.labProfcompanionintuicao ~= nil then self.labProfcompanionintuicao:destroy(); self.labProfcompanionintuicao = nil; end;
        if self.flowPart75 ~= nil then self.flowPart75:destroy(); self.flowPart75 = nil; end;
        if self.horzLine39 ~= nil then self.horzLine39:destroy(); self.horzLine39 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.dataLink79 ~= nil then self.dataLink79:destroy(); self.dataLink79 = nil; end;
        if self.button39 ~= nil then self.button39:destroy(); self.button39 = nil; end;
        if self.flowLayout12 ~= nil then self.flowLayout12:destroy(); self.flowLayout12 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.flowPart97 ~= nil then self.flowPart97:destroy(); self.flowPart97 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.rclFichaPropriedades ~= nil then self.rclFichaPropriedades:destroy(); self.rclFichaPropriedades = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.flowPart102 ~= nil then self.flowPart102:destroy(); self.flowPart102 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.horzLine23 ~= nil then self.horzLine23:destroy(); self.horzLine23 = nil; end;
        if self.button30 ~= nil then self.button30:destroy(); self.button30 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.layout118 ~= nil then self.layout118:destroy(); self.layout118 = nil; end;
        if self.labProfcompaniondestreza ~= nil then self.labProfcompaniondestreza:destroy(); self.labProfcompaniondestreza = nil; end;
        if self.layout111 ~= nil then self.layout111:destroy(); self.layout111 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.labProfpericiahonra ~= nil then self.labProfpericiahonra:destroy(); self.labProfpericiahonra = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.labelFieldPETempo ~= nil then self.labelFieldPETempo:destroy(); self.labelFieldPETempo = nil; end;
        if self.cbProfcompanionmedicina ~= nil then self.cbProfcompanionmedicina:destroy(); self.cbProfcompanionmedicina = nil; end;
        if self.horzLine53 ~= nil then self.horzLine53:destroy(); self.horzLine53 = nil; end;
        if self.dataLink204 ~= nil then self.dataLink204:destroy(); self.dataLink204 = nil; end;
        if self.labelFieldPENivel ~= nil then self.labelFieldPENivel:destroy(); self.labelFieldPENivel = nil; end;
        if self.flowLayout20 ~= nil then self.flowLayout20:destroy(); self.flowLayout20 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.layout107 ~= nil then self.layout107:destroy(); self.layout107 = nil; end;
        if self.flwPartEquipAttack ~= nil then self.flwPartEquipAttack:destroy(); self.flwPartEquipAttack = nil; end;
        if self.frame7 ~= nil then self.frame7:destroy(); self.frame7 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.frame1 ~= nil then self.frame1:destroy(); self.frame1 = nil; end;
        if self.layout116 ~= nil then self.layout116:destroy(); self.layout116 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.flwNomeCompanion1 ~= nil then self.flwNomeCompanion1:destroy(); self.flwNomeCompanion1 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.dataLink119 ~= nil then self.dataLink119:destroy(); self.dataLink119 = nil; end;
        if self.flowLayout25 ~= nil then self.flowLayout25:destroy(); self.flowLayout25 = nil; end;
        if self.flowLayout26 ~= nil then self.flowLayout26:destroy(); self.flowLayout26 = nil; end;
        if self.button88 ~= nil then self.button88:destroy(); self.button88 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.flowPart127 ~= nil then self.flowPart127:destroy(); self.flowPart127 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.button55 ~= nil then self.button55:destroy(); self.button55 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.button91 ~= nil then self.button91:destroy(); self.button91 = nil; end;
        if self.flowPart147 ~= nil then self.flowPart147:destroy(); self.flowPart147 = nil; end;
        if self.dataLink226 ~= nil then self.dataLink226:destroy(); self.dataLink226 = nil; end;
        if self.popupEditContadorNome ~= nil then self.popupEditContadorNome:destroy(); self.popupEditContadorNome = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.popupEditDanoRL ~= nil then self.popupEditDanoRL:destroy(); self.popupEditDanoRL = nil; end;
        if self.flowPart93 ~= nil then self.flowPart93:destroy(); self.flowPart93 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.fraLayAtributosCompanion ~= nil then self.fraLayAtributosCompanion:destroy(); self.fraLayAtributosCompanion = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.flowPart158 ~= nil then self.flowPart158:destroy(); self.flowPart158 = nil; end;
        if self.flowPart110 ~= nil then self.flowPart110:destroy(); self.flowPart110 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.labProfcompanionarcanismo ~= nil then self.labProfcompanionarcanismo:destroy(); self.labProfcompanionarcanismo = nil; end;
        if self.labProfcompanionadestrarAnimais ~= nil then self.labProfcompanionadestrarAnimais:destroy(); self.labProfcompanionadestrarAnimais = nil; end;
        if self.labelFieldPEEscola ~= nil then self.labelFieldPEEscola:destroy(); self.labelFieldPEEscola = nil; end;
        if self.horzLine9 ~= nil then self.horzLine9:destroy(); self.horzLine9 = nil; end;
        if self.tab11 ~= nil then self.tab11:destroy(); self.tab11 = nil; end;
        if self.horzLine60 ~= nil then self.horzLine60:destroy(); self.horzLine60 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.dataLink64 ~= nil then self.dataLink64:destroy(); self.dataLink64 = nil; end;
        if self.dataLink217 ~= nil then self.dataLink217:destroy(); self.dataLink217 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.labUpperGridCampo4 ~= nil then self.labUpperGridCampo4:destroy(); self.labUpperGridCampo4 = nil; end;
        if self.layNomeHolderCompanion ~= nil then self.layNomeHolderCompanion:destroy(); self.layNomeHolderCompanion = nil; end;
        if self.dataLink162 ~= nil then self.dataLink162:destroy(); self.dataLink162 = nil; end;
        if self.flowPart162 ~= nil then self.flowPart162:destroy(); self.flowPart162 = nil; end;
        if self.fraCompanionLayout ~= nil then self.fraCompanionLayout:destroy(); self.fraCompanionLayout = nil; end;
        if self.button94 ~= nil then self.button94:destroy(); self.button94 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.cbProfdestreza ~= nil then self.cbProfdestreza:destroy(); self.cbProfdestreza = nil; end;
        if self.dataLink54 ~= nil then self.dataLink54:destroy(); self.dataLink54 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.dataLink163 ~= nil then self.dataLink163:destroy(); self.dataLink163 = nil; end;
        if self.label132 ~= nil then self.label132:destroy(); self.label132 = nil; end;
        if self.flowPart126 ~= nil then self.flowPart126:destroy(); self.flowPart126 = nil; end;
        if self.edtUpperGridCampo10 ~= nil then self.edtUpperGridCampo10:destroy(); self.edtUpperGridCampo10 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.dataLink70 ~= nil then self.dataLink70:destroy(); self.dataLink70 = nil; end;
        if self.dataLink137 ~= nil then self.dataLink137:destroy(); self.dataLink137 = nil; end;
        if self.edtUpperGridCampo7 ~= nil then self.edtUpperGridCampo7:destroy(); self.edtUpperGridCampo7 = nil; end;
        if self.button58 ~= nil then self.button58:destroy(); self.button58 = nil; end;
        if self.horzLine20 ~= nil then self.horzLine20:destroy(); self.horzLine20 = nil; end;
        if self.cbProfpercepcao ~= nil then self.cbProfpercepcao:destroy(); self.cbProfpercepcao = nil; end;
        if self.horzLine31 ~= nil then self.horzLine31:destroy(); self.horzLine31 = nil; end;
        if self.dataLink61 ~= nil then self.dataLink61:destroy(); self.dataLink61 = nil; end;
        if self.labProfcompanionfurtividade ~= nil then self.labProfcompanionfurtividade:destroy(); self.labProfcompanionfurtividade = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.button78 ~= nil then self.button78:destroy(); self.button78 = nil; end;
        if self.cbProfcompanionfurtividade ~= nil then self.cbProfcompanionfurtividade:destroy(); self.cbProfcompanionfurtividade = nil; end;
        if self.horzLine58 ~= nil then self.horzLine58:destroy(); self.horzLine58 = nil; end;
        if self.labProfhonra ~= nil then self.labProfhonra:destroy(); self.labProfhonra = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.layNomeHolderFrente ~= nil then self.layNomeHolderFrente:destroy(); self.layNomeHolderFrente = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.companionanotacoesMerda ~= nil then self.companionanotacoesMerda:destroy(); self.companionanotacoesMerda = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.labProfintimidacao ~= nil then self.labProfintimidacao:destroy(); self.labProfintimidacao = nil; end;
        if self.button41 ~= nil then self.button41:destroy(); self.button41 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout120 ~= nil then self.layout120:destroy(); self.layout120 = nil; end;
        if self.dataLink212 ~= nil then self.dataLink212:destroy(); self.dataLink212 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.flowPart149 ~= nil then self.flowPart149:destroy(); self.flowPart149 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.layout113 ~= nil then self.layout113:destroy(); self.layout113 = nil; end;
        if self.cbProfconstituicao ~= nil then self.cbProfconstituicao:destroy(); self.cbProfconstituicao = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.flowPart163 ~= nil then self.flowPart163:destroy(); self.flowPart163 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.UpperGridCampo2 ~= nil then self.UpperGridCampo2:destroy(); self.UpperGridCampo2 = nil; end;
        if self.button31 ~= nil then self.button31:destroy(); self.button31 = nil; end;
        if self.flowLayout38 ~= nil then self.flowLayout38:destroy(); self.flowLayout38 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.button65 ~= nil then self.button65:destroy(); self.button65 = nil; end;
        if self.labProfinteligencia ~= nil then self.labProfinteligencia:destroy(); self.labProfinteligencia = nil; end;
        if self.layout109 ~= nil then self.layout109:destroy(); self.layout109 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.flowPart85 ~= nil then self.flowPart85:destroy(); self.flowPart85 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.label124 ~= nil then self.label124:destroy(); self.label124 = nil; end;
        if self.dataLink110 ~= nil then self.dataLink110:destroy(); self.dataLink110 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.cbProfsanidade ~= nil then self.cbProfsanidade:destroy(); self.cbProfsanidade = nil; end;
        if self.layout115 ~= nil then self.layout115:destroy(); self.layout115 = nil; end;
        if self.dataLink190 ~= nil then self.dataLink190:destroy(); self.dataLink190 = nil; end;
        if self.edtUpperGridCampo1 ~= nil then self.edtUpperGridCampo1:destroy(); self.edtUpperGridCampo1 = nil; end;
        if self.flowPart24 ~= nil then self.flowPart24:destroy(); self.flowPart24 = nil; end;
        if self.dataLink126 ~= nil then self.dataLink126:destroy(); self.dataLink126 = nil; end;
        if self.flowPart77 ~= nil then self.flowPart77:destroy(); self.flowPart77 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.frame3 ~= nil then self.frame3:destroy(); self.frame3 = nil; end;
        if self.dataLink62 ~= nil then self.dataLink62:destroy(); self.dataLink62 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.labProfcompanionintimidacao ~= nil then self.labProfcompanionintimidacao:destroy(); self.labProfcompanionintimidacao = nil; end;
        if self.flowPart133 ~= nil then self.flowPart133:destroy(); self.flowPart133 = nil; end;
        if self.flowPart154 ~= nil then self.flowPart154:destroy(); self.flowPart154 = nil; end;
        if self.companionanotacoesFancy ~= nil then self.companionanotacoesFancy:destroy(); self.companionanotacoesFancy = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.dataLink214 ~= nil then self.dataLink214:destroy(); self.dataLink214 = nil; end;
        if self.button64 ~= nil then self.button64:destroy(); self.button64 = nil; end;
        if self.comboBox13 ~= nil then self.comboBox13:destroy(); self.comboBox13 = nil; end;
        if self.linUpperGridCampo8 ~= nil then self.linUpperGridCampo8:destroy(); self.linUpperGridCampo8 = nil; end;
        if self.UpperGridCampo4 ~= nil then self.UpperGridCampo4:destroy(); self.UpperGridCampo4 = nil; end;
        if self.dataLink87 ~= nil then self.dataLink87:destroy(); self.dataLink87 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.dataLink203 ~= nil then self.dataLink203:destroy(); self.dataLink203 = nil; end;
        if self.popupEditAlcanceCurto ~= nil then self.popupEditAlcanceCurto:destroy(); self.popupEditAlcanceCurto = nil; end;
        if self.flowLineBreak7 ~= nil then self.flowLineBreak7:destroy(); self.flowLineBreak7 = nil; end;
        if self.horzLine10 ~= nil then self.horzLine10:destroy(); self.horzLine10 = nil; end;
        if self.labNomeCompanion1 ~= nil then self.labNomeCompanion1:destroy(); self.labNomeCompanion1 = nil; end;
        if self.checkBox11 ~= nil then self.checkBox11:destroy(); self.checkBox11 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.labProfenganacao ~= nil then self.labProfenganacao:destroy(); self.labProfenganacao = nil; end;
        if self.cbProfcompanionatuacao ~= nil then self.cbProfcompanionatuacao:destroy(); self.cbProfcompanionatuacao = nil; end;
        if self.dataLink130 ~= nil then self.dataLink130:destroy(); self.dataLink130 = nil; end;
        if self.flowPart166 ~= nil then self.flowPart166:destroy(); self.flowPart166 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.button38 ~= nil then self.button38:destroy(); self.button38 = nil; end;
        if self.dataLink131 ~= nil then self.dataLink131:destroy(); self.dataLink131 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.dataLink122 ~= nil then self.dataLink122:destroy(); self.dataLink122 = nil; end;
        if self.button52 ~= nil then self.button52:destroy(); self.button52 = nil; end;
        if self.flowPart135 ~= nil then self.flowPart135:destroy(); self.flowPart135 = nil; end;
        if self.horzLine59 ~= nil then self.horzLine59:destroy(); self.horzLine59 = nil; end;
        if self.button53 ~= nil then self.button53:destroy(); self.button53 = nil; end;
        if self.horzLine36 ~= nil then self.horzLine36:destroy(); self.horzLine36 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.labProfprestidigitacao ~= nil then self.labProfprestidigitacao:destroy(); self.labProfprestidigitacao = nil; end;
        if self.dataLink103 ~= nil then self.dataLink103:destroy(); self.dataLink103 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.labProfcompanionforca ~= nil then self.labProfcompanionforca:destroy(); self.labProfcompanionforca = nil; end;
        if self.dataLink143 ~= nil then self.dataLink143:destroy(); self.dataLink143 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.tab8 ~= nil then self.tab8:destroy(); self.tab8 = nil; end;
        if self.dataLink195 ~= nil then self.dataLink195:destroy(); self.dataLink195 = nil; end;
        if self.flowPart52 ~= nil then self.flowPart52:destroy(); self.flowPart52 = nil; end;
        if self.flowPart170 ~= nil then self.flowPart170:destroy(); self.flowPart170 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.comboBox12 ~= nil then self.comboBox12:destroy(); self.comboBox12 = nil; end;
        if self.label126 ~= nil then self.label126:destroy(); self.label126 = nil; end;
        if self.flowPart38 ~= nil then self.flowPart38:destroy(); self.flowPart38 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.layout127 ~= nil then self.layout127:destroy(); self.layout127 = nil; end;
        if self.dataLink115 ~= nil then self.dataLink115:destroy(); self.dataLink115 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.dataLink134 ~= nil then self.dataLink134:destroy(); self.dataLink134 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.layPrepValor ~= nil then self.layPrepValor:destroy(); self.layPrepValor = nil; end;
        if self.flowPart160 ~= nil then self.flowPart160:destroy(); self.flowPart160 = nil; end;
        if self.cbProftolerancia ~= nil then self.cbProftolerancia:destroy(); self.cbProftolerancia = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.flowPart143 ~= nil then self.flowPart143:destroy(); self.flowPart143 = nil; end;
        if self.flowPart20 ~= nil then self.flowPart20:destroy(); self.flowPart20 = nil; end;
        if self.flowPart44 ~= nil then self.flowPart44:destroy(); self.flowPart44 = nil; end;
        if self.labProfcompanioncarisma ~= nil then self.labProfcompanioncarisma:destroy(); self.labProfcompanioncarisma = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.popupEditDanoRect ~= nil then self.popupEditDanoRect:destroy(); self.popupEditDanoRect = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.labProfcompanionconstituicao ~= nil then self.labProfcompanionconstituicao:destroy(); self.labProfcompanionconstituicao = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.dataLink139 ~= nil then self.dataLink139:destroy(); self.dataLink139 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.horzLine34 ~= nil then self.horzLine34:destroy(); self.horzLine34 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.labUpperGridCampo9 ~= nil then self.labUpperGridCampo9:destroy(); self.labUpperGridCampo9 = nil; end;
        if self.dataLink104 ~= nil then self.dataLink104:destroy(); self.dataLink104 = nil; end;
        if self.frame6 ~= nil then self.frame6:destroy(); self.frame6 = nil; end;
        if self.button59 ~= nil then self.button59:destroy(); self.button59 = nil; end;
        if self.button80 ~= nil then self.button80:destroy(); self.button80 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.dataLink192 ~= nil then self.dataLink192:destroy(); self.dataLink192 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.labProfcompanionpersuasao ~= nil then self.labProfcompanionpersuasao:destroy(); self.labProfcompanionpersuasao = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.edtUpperGridCampo9 ~= nil then self.edtUpperGridCampo9:destroy(); self.edtUpperGridCampo9 = nil; end;
        if self.flowLayout35 ~= nil then self.flowLayout35:destroy(); self.flowLayout35 = nil; end;
        if self.edtUpperGridCampo3 ~= nil then self.edtUpperGridCampo3:destroy(); self.edtUpperGridCampo3 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.historiaFancy ~= nil then self.historiaFancy:destroy(); self.historiaFancy = nil; end;
        if self.tab7 ~= nil then self.tab7:destroy(); self.tab7 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.flowPart29 ~= nil then self.flowPart29:destroy(); self.flowPart29 = nil; end;
        if self.layout112 ~= nil then self.layout112:destroy(); self.layout112 = nil; end;
        if self.labProfpercepcao ~= nil then self.labProfpercepcao:destroy(); self.labProfpercepcao = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.dataLink49 ~= nil then self.dataLink49:destroy(); self.dataLink49 = nil; end;
        if self.dataLink177 ~= nil then self.dataLink177:destroy(); self.dataLink177 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.layPrepValorLab ~= nil then self.layPrepValorLab:destroy(); self.layPrepValorLab = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.horzLine50 ~= nil then self.horzLine50:destroy(); self.horzLine50 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.button60 ~= nil then self.button60:destroy(); self.button60 = nil; end;
        if self.labProfpersuasao ~= nil then self.labProfpersuasao:destroy(); self.labProfpersuasao = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.flowPart23 ~= nil then self.flowPart23:destroy(); self.flowPart23 = nil; end;
        if self.dataLink191 ~= nil then self.dataLink191:destroy(); self.dataLink191 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.dataLink198 ~= nil then self.dataLink198:destroy(); self.dataLink198 = nil; end;
        if self.button87 ~= nil then self.button87:destroy(); self.button87 = nil; end;
        if self.label130 ~= nil then self.label130:destroy(); self.label130 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.horzLine16 ~= nil then self.horzLine16:destroy(); self.horzLine16 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.button83 ~= nil then self.button83:destroy(); self.button83 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.flowPart30 ~= nil then self.flowPart30:destroy(); self.flowPart30 = nil; end;
        if self.horzLine49 ~= nil then self.horzLine49:destroy(); self.horzLine49 = nil; end;
        if self.cbProfcompaniondestreza ~= nil then self.cbProfcompaniondestreza:destroy(); self.cbProfcompaniondestreza = nil; end;
        if self.dataLink56 ~= nil then self.dataLink56:destroy(); self.dataLink56 = nil; end;
        if self.dataLink129 ~= nil then self.dataLink129:destroy(); self.dataLink129 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.labProfcompanionsabedoria ~= nil then self.labProfcompanionsabedoria:destroy(); self.labProfcompanionsabedoria = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.dataLink91 ~= nil then self.dataLink91:destroy(); self.dataLink91 = nil; end;
        if self.popupEditAtaqueBonus ~= nil then self.popupEditAtaqueBonus:destroy(); self.popupEditAtaqueBonus = nil; end;
        if self.layout102 ~= nil then self.layout102:destroy(); self.layout102 = nil; end;
        if self.cbProfconcentracao ~= nil then self.cbProfconcentracao:destroy(); self.cbProfconcentracao = nil; end;
        if self.flowPart99 ~= nil then self.flowPart99:destroy(); self.flowPart99 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.horzLine42 ~= nil then self.horzLine42:destroy(); self.horzLine42 = nil; end;
        if self.dataLink156 ~= nil then self.dataLink156:destroy(); self.dataLink156 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.cbProfcompanionpersuasao ~= nil then self.cbProfcompanionpersuasao:destroy(); self.cbProfcompanionpersuasao = nil; end;
        if self.flowPart62 ~= nil then self.flowPart62:destroy(); self.flowPart62 = nil; end;
        if self.edtUpperGridCampo4 ~= nil then self.edtUpperGridCampo4:destroy(); self.edtUpperGridCampo4 = nil; end;
        if self.flowPart49 ~= nil then self.flowPart49:destroy(); self.flowPart49 = nil; end;
        if self.popupEditAtaqueAtrib ~= nil then self.popupEditAtaqueAtrib:destroy(); self.popupEditAtaqueAtrib = nil; end;
        if self.flowPart120 ~= nil then self.flowPart120:destroy(); self.flowPart120 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.dataLink140 ~= nil then self.dataLink140:destroy(); self.dataLink140 = nil; end;
        if self.dataLink219 ~= nil then self.dataLink219:destroy(); self.dataLink219 = nil; end;
        if self.anotacoesFancy ~= nil then self.anotacoesFancy:destroy(); self.anotacoesFancy = nil; end;
        if self.flowPart14 ~= nil then self.flowPart14:destroy(); self.flowPart14 = nil; end;
        if self.button62 ~= nil then self.button62:destroy(); self.button62 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.label123 ~= nil then self.label123:destroy(); self.label123 = nil; end;
        if self.labupperGridMagicBox2 ~= nil then self.labupperGridMagicBox2:destroy(); self.labupperGridMagicBox2 = nil; end;
        if self.labProfiniciativa ~= nil then self.labProfiniciativa:destroy(); self.labProfiniciativa = nil; end;
        if self.horzLine61 ~= nil then self.horzLine61:destroy(); self.horzLine61 = nil; end;
        if self.layEquipAttackLeft ~= nil then self.layEquipAttackLeft:destroy(); self.layEquipAttackLeft = nil; end;
        if self.cbProfcompanionatletismo ~= nil then self.cbProfcompanionatletismo:destroy(); self.cbProfcompanionatletismo = nil; end;
        if self.dataLink168 ~= nil then self.dataLink168:destroy(); self.dataLink168 = nil; end;
        if self.flowPart164 ~= nil then self.flowPart164:destroy(); self.flowPart164 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.button49 ~= nil then self.button49:destroy(); self.button49 = nil; end;
        if self.flowPart83 ~= nil then self.flowPart83:destroy(); self.flowPart83 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.labProfcompanionmedicina ~= nil then self.labProfcompanionmedicina:destroy(); self.labProfcompanionmedicina = nil; end;
        if self.dataLink106 ~= nil then self.dataLink106:destroy(); self.dataLink106 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.dataLink197 ~= nil then self.dataLink197:destroy(); self.dataLink197 = nil; end;
        if self.panupperGridMagicBox2 ~= nil then self.panupperGridMagicBox2:destroy(); self.panupperGridMagicBox2 = nil; end;
        if self.cbProfcompanioncarisma ~= nil then self.cbProfcompanioncarisma:destroy(); self.cbProfcompanioncarisma = nil; end;
        if self.flowPart172 ~= nil then self.flowPart172:destroy(); self.flowPart172 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.dataLink132 ~= nil then self.dataLink132:destroy(); self.dataLink132 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.cbProfcompanionprestidigitacao ~= nil then self.cbProfcompanionprestidigitacao:destroy(); self.cbProfcompanionprestidigitacao = nil; end;
        if self.dataLink59 ~= nil then self.dataLink59:destroy(); self.dataLink59 = nil; end;
        if self.flowPart130 ~= nil then self.flowPart130:destroy(); self.flowPart130 = nil; end;
        if self.edtUpperGridCampo2 ~= nil then self.edtUpperGridCampo2:destroy(); self.edtUpperGridCampo2 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.cbProfpericiacarisma ~= nil then self.cbProfpericiacarisma:destroy(); self.cbProfpericiacarisma = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.labProfcompanionconcentracao ~= nil then self.labProfcompanionconcentracao:destroy(); self.labProfcompanionconcentracao = nil; end;
        if self.layout99 ~= nil then self.layout99:destroy(); self.layout99 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.flowPart50 ~= nil then self.flowPart50:destroy(); self.flowPart50 = nil; end;
        if self.dataLink221 ~= nil then self.dataLink221:destroy(); self.dataLink221 = nil; end;
        if self.label121 ~= nil then self.label121:destroy(); self.label121 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.rclEquipsDefense ~= nil then self.rclEquipsDefense:destroy(); self.rclEquipsDefense = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.flowPart47 ~= nil then self.flowPart47:destroy(); self.flowPart47 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.flowPart67 ~= nil then self.flowPart67:destroy(); self.flowPart67 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.flowPart31 ~= nil then self.flowPart31:destroy(); self.flowPart31 = nil; end;
        if self.dataLink146 ~= nil then self.dataLink146:destroy(); self.dataLink146 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.labProfbedoria ~= nil then self.labProfbedoria:destroy(); self.labProfbedoria = nil; end;
        if self.horzLine8 ~= nil then self.horzLine8:destroy(); self.horzLine8 = nil; end;
        if self.labUpperGridCampo8 ~= nil then self.labUpperGridCampo8:destroy(); self.labUpperGridCampo8 = nil; end;
        if self.button34 ~= nil then self.button34:destroy(); self.button34 = nil; end;
        if self.dataLink125 ~= nil then self.dataLink125:destroy(); self.dataLink125 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.flowPart12 ~= nil then self.flowPart12:destroy(); self.flowPart12 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.flowPart168 ~= nil then self.flowPart168:destroy(); self.flowPart168 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.dataLink224 ~= nil then self.dataLink224:destroy(); self.dataLink224 = nil; end;
        if self.btnEquipDefenseNew ~= nil then self.btnEquipDefenseNew:destroy(); self.btnEquipDefenseNew = nil; end;
        if self.button50 ~= nil then self.button50:destroy(); self.button50 = nil; end;
        if self.button69 ~= nil then self.button69:destroy(); self.button69 = nil; end;
        if self.button48 ~= nil then self.button48:destroy(); self.button48 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.flowPart114 ~= nil then self.flowPart114:destroy(); self.flowPart114 = nil; end;
        if self.edtUpperGridCampo11 ~= nil then self.edtUpperGridCampo11:destroy(); self.edtUpperGridCampo11 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.popupEditDuracaoUnidade ~= nil then self.popupEditDuracaoUnidade:destroy(); self.popupEditDuracaoUnidade = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.labEquipDefense ~= nil then self.labEquipDefense:destroy(); self.labEquipDefense = nil; end;
        if self.flowLayout17 ~= nil then self.flowLayout17:destroy(); self.flowLayout17 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.flowLineBreak1 ~= nil then self.flowLineBreak1:destroy(); self.flowLineBreak1 = nil; end;
        if self.flowPart81 ~= nil then self.flowPart81:destroy(); self.flowPart81 = nil; end;
        if self.dataLink176 ~= nil then self.dataLink176:destroy(); self.dataLink176 = nil; end;
        if self.button95 ~= nil then self.button95:destroy(); self.button95 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.flowPart159 ~= nil then self.flowPart159:destroy(); self.flowPart159 = nil; end;
        if self.button57 ~= nil then self.button57:destroy(); self.button57 = nil; end;
        if self.flowLayout21 ~= nil then self.flowLayout21:destroy(); self.flowLayout21 = nil; end;
        if self.rclContadores ~= nil then self.rclContadores:destroy(); self.rclContadores = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.flowLineBreak3 ~= nil then self.flowLineBreak3:destroy(); self.flowLineBreak3 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.horzLine32 ~= nil then self.horzLine32:destroy(); self.horzLine32 = nil; end;
        if self.dataLink66 ~= nil then self.dataLink66:destroy(); self.dataLink66 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.flowPart63 ~= nil then self.flowPart63:destroy(); self.flowPart63 = nil; end;
        if self.labNome1 ~= nil then self.labNome1:destroy(); self.labNome1 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.flowPart98 ~= nil then self.flowPart98:destroy(); self.flowPart98 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.flowPart70 ~= nil then self.flowPart70:destroy(); self.flowPart70 = nil; end;
        if self.flowPart11 ~= nil then self.flowPart11:destroy(); self.flowPart11 = nil; end;
        if self.dataLink124 ~= nil then self.dataLink124:destroy(); self.dataLink124 = nil; end;
        if self.dataLink180 ~= nil then self.dataLink180:destroy(); self.dataLink180 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.dataLink52 ~= nil then self.dataLink52:destroy(); self.dataLink52 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.popupEditAlcanceLongo ~= nil then self.popupEditAlcanceLongo:destroy(); self.popupEditAlcanceLongo = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.horzLine15 ~= nil then self.horzLine15:destroy(); self.horzLine15 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.cbProfcompanionnatureza ~= nil then self.cbProfcompanionnatureza:destroy(); self.cbProfcompanionnatureza = nil; end;
        if self.flowPart86 ~= nil then self.flowPart86:destroy(); self.flowPart86 = nil; end;
        if self.flowPart111 ~= nil then self.flowPart111:destroy(); self.flowPart111 = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.tcPopupEdit ~= nil then self.tcPopupEdit:destroy(); self.tcPopupEdit = nil; end;
        if self.flowLayout34 ~= nil then self.flowLayout34:destroy(); self.flowLayout34 = nil; end;
        if self.flowPart146 ~= nil then self.flowPart146:destroy(); self.flowPart146 = nil; end;
        if self.linUpperGridCampo6 ~= nil then self.linUpperGridCampo6:destroy(); self.linUpperGridCampo6 = nil; end;
        if self.flowPart17 ~= nil then self.flowPart17:destroy(); self.flowPart17 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.flowPart61 ~= nil then self.flowPart61:destroy(); self.flowPart61 = nil; end;
        if self.flowPart27 ~= nil then self.flowPart27:destroy(); self.flowPart27 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.popupEditContadorUsosTotal ~= nil then self.popupEditContadorUsosTotal:destroy(); self.popupEditContadorUsosTotal = nil; end;
        if self.flowLineBreak8 ~= nil then self.flowLineBreak8:destroy(); self.flowLineBreak8 = nil; end;
        if self.flowPart171 ~= nil then self.flowPart171:destroy(); self.flowPart171 = nil; end;
        if self.historiaMerda ~= nil then self.historiaMerda:destroy(); self.historiaMerda = nil; end;
        if self.dataLink216 ~= nil then self.dataLink216:destroy(); self.dataLink216 = nil; end;
        if self.flowPart58 ~= nil then self.flowPart58:destroy(); self.flowPart58 = nil; end;
        if self.cbProfcarisma ~= nil then self.cbProfcarisma:destroy(); self.cbProfcarisma = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.button81 ~= nil then self.button81:destroy(); self.button81 = nil; end;
        if self.cbProfcompanionintimidacao ~= nil then self.cbProfcompanionintimidacao:destroy(); self.cbProfcompanionintimidacao = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.dataLink109 ~= nil then self.dataLink109:destroy(); self.dataLink109 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.labProfcarisma ~= nil then self.labProfcarisma:destroy(); self.labProfcarisma = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.UpperGridCampo9 ~= nil then self.UpperGridCampo9:destroy(); self.UpperGridCampo9 = nil; end;
        if self.dataLink90 ~= nil then self.dataLink90:destroy(); self.dataLink90 = nil; end;
        if self.flowPart119 ~= nil then self.flowPart119:destroy(); self.flowPart119 = nil; end;
        if self.flowLayout28 ~= nil then self.flowLayout28:destroy(); self.flowLayout28 = nil; end;
        if self.button46 ~= nil then self.button46:destroy(); self.button46 = nil; end;
        if self.flowPart21 ~= nil then self.flowPart21:destroy(); self.flowPart21 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.dataLink88 ~= nil then self.dataLink88:destroy(); self.dataLink88 = nil; end;
        if self.labProfpericiacarisma ~= nil then self.labProfpericiacarisma:destroy(); self.labProfpericiacarisma = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.horzLine13 ~= nil then self.horzLine13:destroy(); self.horzLine13 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.dataLink222 ~= nil then self.dataLink222:destroy(); self.dataLink222 = nil; end;
        if self.horzLine24 ~= nil then self.horzLine24:destroy(); self.horzLine24 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.dataLink178 ~= nil then self.dataLink178:destroy(); self.dataLink178 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.labProftolerancia ~= nil then self.labProftolerancia:destroy(); self.labProftolerancia = nil; end;
        if self.tab14 ~= nil then self.tab14:destroy(); self.tab14 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.anotacoesMerda ~= nil then self.anotacoesMerda:destroy(); self.anotacoesMerda = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmMdB()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmMdB();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmMdB = {
    newEditor = newfrmMdB, 
    new = newfrmMdB, 
    name = "frmMdB", 
    dataType = "MultiVerso_MdBe", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ficha Mesa do Bolo", 
    description=""};

frmMdB = _frmMdB;
Firecast.registrarForm(_frmMdB);
Firecast.registrarDataType(_frmMdB);

return _frmMdB;
