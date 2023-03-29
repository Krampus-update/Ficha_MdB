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
    obj.tab1:setTitle("CARACTERISTICAS");
    obj.tab1:setName("tab1");

    obj.frmFichaRPGmeister9_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaRPGmeister9_svg:setParent(obj.tab1);
    obj.frmFichaRPGmeister9_svg:setName("frmFichaRPGmeister9_svg");
    obj.frmFichaRPGmeister9_svg:setAlign("client");
    obj.frmFichaRPGmeister9_svg:setMargins({top=1});

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.frmFichaRPGmeister9_svg);
    obj.rectangle1:setStrokeColor("white");
    obj.rectangle1:setStrokeSize(1);
    obj.rectangle1:setName("rectangle1");
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#40000000");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.rectangle1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.scrollBox1);
    obj.flowLayout1:setAutoHeight(true);
    obj.flowLayout1:setMinScaledWidth(290);
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setLineSpacing(10);
    obj.flowLayout1:setName("flowLayout1");
    obj.flowLayout1:setStepSizes({310, 420, 640, 760, 860, 960, 1150, 1200, 1600});
    obj.flowLayout1:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout1:setVertAlign("leading");

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.flowLayout1);
    obj.flowLayout2:setMaxControlsPerLine(1);
    obj.flowLayout2:setAutoHeight(true);
    obj.flowLayout2:setLineSpacing(10);
    obj.flowLayout2:setMargins({left = 4, right = 4});
    obj.flowLayout2:setName("flowLayout2");
    obj.flowLayout2:setStepSizes({});
    obj.flowLayout2:setMinWidth(300);
    obj.flowLayout2:setMaxWidth(1600);
    obj.flowLayout2:setMinScaledWidth(300);
    obj.flowLayout2:setVertAlign("leading");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.flowLayout2);
    obj.layout1:setLeft(10);
    obj.layout1:setTop(10);
    obj.layout1:setWidth(1205);
    obj.layout1:setHeight(105);
    obj.layout1:setFrameStyle("frames/panel4transp/frame.xml");
    obj.layout1:setName("layout1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(10);
    obj.label1:setTop(10);
    obj.label1:setWidth(90);
    obj.label1:setHeight(20);
    obj.label1:setText("TAMANHO");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");
    obj.label1:setFontColor("white");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.layout1);
    obj.comboBox1:setLeft(100);
    obj.comboBox1:setTop(10);
    obj.comboBox1:setWidth(100);
    obj.comboBox1:setField("caracteristicas.tamanho");
    obj.comboBox1:setFontColor("white");
    obj.comboBox1:setItems({'Minúsculo', 'Diminuto', 'Miúdo', 'Pequeno', 'Médio', 'Grande', 'Enorme', 'Imenso', 'Colossal'});
    obj.comboBox1:setValues({'-4','-3','-2','-1','0','1','2','3','4'});
    obj.comboBox1:setHorzTextAlign("center");
    obj.comboBox1:setName("comboBox1");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout1);
    obj.checkBox1:setLeft(200);
    obj.checkBox1:setTop(10);
    obj.checkBox1:setWidth(100);
    obj.checkBox1:setField("caracteristicas.quadrupede");
    obj.checkBox1:setText("Quadrúpede");
    obj.checkBox1:setName("checkBox1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(10);
    obj.label2:setTop(38);
    obj.label2:setWidth(90);
    obj.label2:setHeight(20);
    obj.label2:setText("SEXO");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");
    obj.label2:setFontColor("white");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setLeft(110);
    obj.edit1:setTop(38);
    obj.edit1:setWidth(200);
    obj.edit1:setHeight(25);
    obj.edit1:setField("caracteristicas.sexo");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setName("edit1");
    obj.edit1:setFontSize(15);
    obj.edit1:setFontColor("white");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout1);
    obj.label3:setLeft(10);
    obj.label3:setTop(65);
    obj.label3:setWidth(90);
    obj.label3:setHeight(20);
    obj.label3:setText("OUTROS");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setName("label3");
    obj.label3:setFontColor("white");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setLeft(110);
    obj.edit2:setTop(65);
    obj.edit2:setWidth(200);
    obj.edit2:setHeight(25);
    obj.edit2:setField("caracteristicas.aparenciaOutros");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setName("edit2");
    obj.edit2:setFontSize(15);
    obj.edit2:setFontColor("white");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout1);
    obj.label4:setLeft(320);
    obj.label4:setTop(10);
    obj.label4:setWidth(90);
    obj.label4:setHeight(20);
    obj.label4:setText("PLANO");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setName("label4");
    obj.label4:setFontColor("white");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setLeft(420);
    obj.edit3:setTop(10);
    obj.edit3:setWidth(200);
    obj.edit3:setHeight(25);
    obj.edit3:setField("caracteristicas.plano");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setName("edit3");
    obj.edit3:setFontSize(15);
    obj.edit3:setFontColor("white");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout1);
    obj.label5:setLeft(320);
    obj.label5:setTop(38);
    obj.label5:setWidth(90);
    obj.label5:setHeight(20);
    obj.label5:setText("REGIÃO");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setName("label5");
    obj.label5:setFontColor("white");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setLeft(420);
    obj.edit4:setTop(38);
    obj.edit4:setWidth(200);
    obj.edit4:setHeight(25);
    obj.edit4:setField("caracteristicas.regiao");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setName("edit4");
    obj.edit4:setFontSize(15);
    obj.edit4:setFontColor("white");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout1);
    obj.label6:setLeft(320);
    obj.label6:setTop(65);
    obj.label6:setWidth(90);
    obj.label6:setHeight(20);
    obj.label6:setText("REINO");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setName("label6");
    obj.label6:setFontColor("white");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout1);
    obj.edit5:setLeft(420);
    obj.edit5:setTop(65);
    obj.edit5:setWidth(200);
    obj.edit5:setHeight(25);
    obj.edit5:setField("caracteristicas.reino");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setName("edit5");
    obj.edit5:setFontSize(15);
    obj.edit5:setFontColor("white");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout1);
    obj.label7:setLeft(620);
    obj.label7:setTop(10);
    obj.label7:setWidth(90);
    obj.label7:setHeight(20);
    obj.label7:setText("OLHOS");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setName("label7");
    obj.label7:setFontColor("white");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout1);
    obj.edit6:setLeft(710);
    obj.edit6:setTop(10);
    obj.edit6:setWidth(200);
    obj.edit6:setHeight(25);
    obj.edit6:setField("caracteristicas.aparenciaOlhos");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setName("edit6");
    obj.edit6:setFontSize(15);
    obj.edit6:setFontColor("white");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout1);
    obj.label8:setLeft(620);
    obj.label8:setTop(38);
    obj.label8:setWidth(90);
    obj.label8:setHeight(20);
    obj.label8:setText("PELE");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setName("label8");
    obj.label8:setFontColor("white");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout1);
    obj.edit7:setLeft(710);
    obj.edit7:setTop(38);
    obj.edit7:setWidth(200);
    obj.edit7:setHeight(25);
    obj.edit7:setField("caracteristicas.pele");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setName("edit7");
    obj.edit7:setFontSize(15);
    obj.edit7:setFontColor("white");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout1);
    obj.label9:setLeft(620);
    obj.label9:setTop(65);
    obj.label9:setWidth(90);
    obj.label9:setHeight(20);
    obj.label9:setText("CABELO");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");
    obj.label9:setFontColor("white");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout1);
    obj.edit8:setLeft(710);
    obj.edit8:setTop(65);
    obj.edit8:setWidth(200);
    obj.edit8:setHeight(25);
    obj.edit8:setField("caracteristicas.cabelo");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setName("edit8");
    obj.edit8:setFontSize(15);
    obj.edit8:setFontColor("white");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout1);
    obj.label10:setLeft(900);
    obj.label10:setTop(10);
    obj.label10:setWidth(90);
    obj.label10:setHeight(20);
    obj.label10:setText("IDADE");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setName("label10");
    obj.label10:setFontColor("white");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout1);
    obj.edit9:setLeft(990);
    obj.edit9:setTop(10);
    obj.edit9:setWidth(200);
    obj.edit9:setHeight(25);
    obj.edit9:setField("caracteristicas.idade");
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setName("edit9");
    obj.edit9:setFontSize(15);
    obj.edit9:setFontColor("white");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout1);
    obj.label11:setLeft(900);
    obj.label11:setTop(38);
    obj.label11:setWidth(90);
    obj.label11:setHeight(20);
    obj.label11:setText("ALTURA");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setName("label11");
    obj.label11:setFontColor("white");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout1);
    obj.edit10:setLeft(990);
    obj.edit10:setTop(38);
    obj.edit10:setWidth(200);
    obj.edit10:setHeight(25);
    obj.edit10:setField("caracteristicas.altura");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setName("edit10");
    obj.edit10:setFontSize(15);
    obj.edit10:setFontColor("white");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout1);
    obj.label12:setLeft(900);
    obj.label12:setTop(65);
    obj.label12:setWidth(90);
    obj.label12:setHeight(20);
    obj.label12:setText("PESO");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setName("label12");
    obj.label12:setFontColor("white");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout1);
    obj.edit11:setLeft(990);
    obj.edit11:setTop(65);
    obj.edit11:setWidth(200);
    obj.edit11:setHeight(25);
    obj.edit11:setField("caracteristicas.peso");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setName("edit11");
    obj.edit11:setFontSize(15);
    obj.edit11:setFontColor("white");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setLeft(10);
    obj.flowPart1:setTop(120);
    obj.flowPart1:setWidth(375);
    obj.flowPart1:setHeight(400);
    obj.flowPart1:setFrameStyle("frames/panel4/frame.xml");
    obj.flowPart1:setMargins({left = 0, right = 4});
    obj.flowPart1:setName("flowPart1");
    obj.flowPart1:setVertAlign("leading");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.flowPart1);
    obj.image1:setAlign("client");
    obj.image1:setStyle("proportional");
    obj.image1:setField("imagens.aparencia");
    obj.image1:setMargins({top=2});
    obj.image1:setEditable(true);
    lfm_setPropAsString(obj.image1, "animate",  "true");
    obj.image1:setName("image1");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.flowPart1);
    obj.label13:setAlign("bottom");
    obj.label13:setAutoSize(true);
    obj.label13:setText("APARENCIA");
    obj.label13:setVertTextAlign("center");
    obj.label13:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setName("label13");
    obj.label13:setFontColor("white");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.flowLayout1);
    obj.flowLayout3:setHeight(515);
    obj.flowLayout3:setFrameStyle("frames/panel4/frame.xml");
    obj.flowLayout3:setMargins({left = 4, right = 4});
    obj.flowLayout3:setAdjustHeightToLine(true);
    obj.flowLayout3:setName("flowLayout3");
    obj.flowLayout3:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout3:setMinScaledWidth(300);
    obj.flowLayout3:setVertAlign("leading");

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout3);
    obj.flowPart2:setLeft(10);
    obj.flowPart2:setTop(530);
    obj.flowPart2:setWidth(375);
    obj.flowPart2:setHeight(315);
    obj.flowPart2:setFrameStyle("frames/panel4/frame.xml");
    obj.flowPart2:setMargins({left = 4, right = 4});
    obj.flowPart2:setName("flowPart2");
    obj.flowPart2:setVertAlign("leading");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.flowPart2);
    obj.label14:setAlign("top");
    obj.label14:setAutoSize(true);
    obj.label14:setVertTextAlign("center");
    obj.label14:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setText("TRAÇOS");
    obj.label14:setName("label14");
    obj.label14:setFontColor("white");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.flowPart2);
    obj.textEditor1:setLeft(10);
    obj.textEditor1:setTop(30);
    obj.textEditor1:setWidth(355);
    obj.textEditor1:setHeight(265);
    obj.textEditor1:setField("caracteristicas.caracteristicasETracoes");
    obj.textEditor1:setName("textEditor1");
    obj.textEditor1:setTransparent(true);

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.flowLayout3);
    obj.flowLayout4:setMaxControlsPerLine(1);
    obj.flowLayout4:setAutoHeight(true);
    obj.flowLayout4:setLineSpacing(10);
    obj.flowLayout4:setMargins({left=4, right=4});
    obj.flowLayout4:setName("flowLayout4");
    obj.flowLayout4:setStepSizes({});
    obj.flowLayout4:setMinWidth(300);
    obj.flowLayout4:setMaxWidth(1600);
    obj.flowLayout4:setMinScaledWidth(300);
    obj.flowLayout4:setVertAlign("leading");

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout4);
    obj.flowPart3:setLeft(390);
    obj.flowPart3:setTop(120);
    obj.flowPart3:setWidth(412);
    obj.flowPart3:setHeight(123);
    obj.flowPart3:setFrameStyle("frames/panel4/frame.xml");
    obj.flowPart3:setName("flowPart3");
    obj.flowPart3:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart3:setVertAlign("leading");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.flowPart3);
    obj.label15:setAlign("bottom");
    obj.label15:setAutoSize(true);
    obj.label15:setVertTextAlign("center");
    obj.label15:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setText("IDIOMAS");
    obj.label15:setName("label15");
    obj.label15:setFontColor("white");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.flowPart3);
    obj.textEditor2:setLeft(10);
    obj.textEditor2:setTop(20);
    obj.textEditor2:setWidth(392);
    obj.textEditor2:setHeight(61);
    obj.textEditor2:setField("idiomas");
    obj.textEditor2:setName("textEditor2");
    obj.textEditor2:setTransparent(true);

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.flowLayout4);
    obj.flowPart4:setLeft(802);
    obj.flowPart4:setTop(120);
    obj.flowPart4:setWidth(412);
    obj.flowPart4:setHeight(125);
    obj.flowPart4:setFrameStyle("frames/panel4/frame.xml");
    obj.flowPart4:setName("flowPart4");
    obj.flowPart4:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart4:setVertAlign("leading");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.flowPart4);
    obj.label16:setAlign("bottom");
    obj.label16:setAutoSize(true);
    obj.label16:setVertTextAlign("center");
    obj.label16:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setText("VÍNCULOS");
    obj.label16:setName("label16");
    obj.label16:setFontColor("white");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.flowPart4);
    obj.textEditor3:setLeft(10);
    obj.textEditor3:setTop(20);
    obj.textEditor3:setWidth(392);
    obj.textEditor3:setHeight(61);
    obj.textEditor3:setField("vinculos");
    obj.textEditor3:setName("textEditor3");
    obj.textEditor3:setTransparent(true);

    obj.flowPart5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout4);
    obj.flowPart5:setLeft(390);
    obj.flowPart5:setTop(248);
    obj.flowPart5:setWidth(412);
    obj.flowPart5:setHeight(123);
    obj.flowPart5:setFrameStyle("frames/panel4/frame.xml");
    obj.flowPart5:setName("flowPart5");
    obj.flowPart5:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart5:setVertAlign("leading");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.flowPart5);
    obj.label17:setAlign("bottom");
    obj.label17:setAutoSize(true);
    obj.label17:setVertTextAlign("center");
    obj.label17:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setText("PERSONALIDADE");
    obj.label17:setName("label17");
    obj.label17:setFontColor("white");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.flowPart5);
    obj.textEditor4:setLeft(10);
    obj.textEditor4:setTop(20);
    obj.textEditor4:setWidth(392);
    obj.textEditor4:setHeight(61);
    obj.textEditor4:setField("personalidade");
    obj.textEditor4:setName("textEditor4");
    obj.textEditor4:setTransparent(true);

    obj.flowPart6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout4);
    obj.flowPart6:setLeft(802);
    obj.flowPart6:setTop(248);
    obj.flowPart6:setWidth(412);
    obj.flowPart6:setHeight(125);
    obj.flowPart6:setFrameStyle("frames/panel4/frame.xml");
    obj.flowPart6:setName("flowPart6");
    obj.flowPart6:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart6:setVertAlign("leading");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.flowPart6);
    obj.label18:setAlign("bottom");
    obj.label18:setAutoSize(true);
    obj.label18:setVertTextAlign("center");
    obj.label18:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setText("FRAQUEZAS");
    obj.label18:setName("label18");
    obj.label18:setFontColor("white");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.flowPart6);
    obj.textEditor5:setLeft(10);
    obj.textEditor5:setTop(20);
    obj.textEditor5:setWidth(392);
    obj.textEditor5:setHeight(61);
    obj.textEditor5:setField("fraquezas");
    obj.textEditor5:setName("textEditor5");
    obj.textEditor5:setTransparent(true);

    obj.flowPart7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.flowLayout4);
    obj.flowPart7:setLeft(390);
    obj.flowPart7:setTop(375);
    obj.flowPart7:setWidth(825);
    obj.flowPart7:setHeight(475);
    obj.flowPart7:setFrameStyle("frames/panel4/frame.xml");
    obj.flowPart7:setName("flowPart7");
    obj.flowPart7:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart7:setVertAlign("leading");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.flowPart7);
    obj.label19:setAlign("bottom");
    obj.label19:setAutoSize(true);
    obj.label19:setVertTextAlign("center");
    obj.label19:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setText("HISTORIA");
    obj.label19:setName("label19");
    obj.label19:setFontColor("white");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.flowPart7);
    obj.richEdit1:setLeft(10);
    obj.richEdit1:setTop(20);
    obj.richEdit1:setWidth(805);
    obj.richEdit1:setHeight(420);
    obj.richEdit1:setField("background");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit1, "defaultFontSize",  "12");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setName("richEdit1");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.pgcPrincipal);
    obj.tab2:setTitle("EQUIPAMENTOS");
    obj.tab2:setName("tab2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.tab2);
    obj.rectangle2:setStrokeColor("white");
    obj.rectangle2:setStrokeSize(1);
    obj.rectangle2:setName("rectangle2");
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("#40000000");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.rectangle2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.fraEquipamentoLayout = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraEquipamentoLayout:setParent(obj.scrollBox2);
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

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.flwPartEquipAttack);
    obj.layout2:setAlign("client");
    obj.layout2:setMargins({top=10, bottom=10});
    obj.layout2:setName("layout2");

    obj.layEquipAttackLeft = GUI.fromHandle(_obj_newObject("layout"));
    obj.layEquipAttackLeft:setParent(obj.layout2);
    obj.layEquipAttackLeft:setName("layEquipAttackLeft");
    obj.layEquipAttackLeft:setAlign("left");
    obj.layEquipAttackLeft:setWidth(240);

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layEquipAttackLeft);
    obj.label20:setAlign("top");
    obj.label20:setAutoSize(true);
    obj.label20:setText("EQUIPAMENTOS E ATAQUES");
    obj.label20:setFontSize(12);
    obj.label20:setVertTextAlign("center");
    obj.label20:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");
    obj.label20:setName("label20");
    obj.label20:setFontColor("white");

    obj.rclEquips = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclEquips:setParent(obj.layEquipAttackLeft);
    obj.rclEquips:setName("rclEquips");
    obj.rclEquips:setAlign("client");
    obj.rclEquips:setField("equipamentos.ataques");
    obj.rclEquips:setTemplateForm("frmEquipamentoItem2");
    obj.rclEquips:setMinQt(1);
    obj.rclEquips:setHitTest(true);
    obj.rclEquips:setMargins({top=5, bottom=5});

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layEquipAttackLeft);
    obj.button1:setAlign("bottom");
    obj.button1:setText("Novo Item");
    obj.button1:setName("button1");

    obj.dataEquipAttackDetails = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.dataEquipAttackDetails:setParent(obj.layout2);
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

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.layEquipAttackImg);
    obj.image2:setAlign("client");
    obj.image2:setField("imagem");
    obj.image2:setShowProgress(false);
    obj.image2:setEditable(true);
    lfm_setPropAsString(obj.image2, "animate",  "true");
    obj.image2:setName("image2");

    obj.layEquipPropriedades = GUI.fromHandle(_obj_newObject("layout"));
    obj.layEquipPropriedades:setParent(obj.dataEquipAttackDetails);
    obj.layEquipPropriedades:setName("layEquipPropriedades");
    obj.layEquipPropriedades:setAlign("left");
    obj.layEquipPropriedades:setWidth(150);
    obj.layEquipPropriedades:setMargins({left=5});

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layEquipPropriedades);
    obj.label21:setText("PROPRIEDADES");
    obj.label21:setAlign("top");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setName("label21");
    obj.label21:setFontSize(12);
    obj.label21:setFontColor("#D0D0D0");

    obj.rclProps = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclProps:setParent(obj.layEquipPropriedades);
    obj.rclProps:setName("rclProps");
    obj.rclProps:setAlign("client");
    obj.rclProps:setField("listaPropriedades");
    obj.rclProps:setTemplateForm("frmText");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layEquipPropriedades);
    obj.button2:setAlign("bottom");
    obj.button2:setText("Adicionar Propriedade");
    obj.button2:setName("button2");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layEquipPropriedades);
    obj.dataLink2:setField("propriedades");
    obj.dataLink2:setName("dataLink2");

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.dataEquipAttackDetails);
    obj.horzLine1:setLeft(153);
    obj.horzLine1:setTop(120);
    obj.horzLine1:setRotationAngle(90);
    obj.horzLine1:setWidth(240);
    obj.horzLine1:setStrokeColor("lightGray");
    obj.horzLine1:setOpacity(0.5);
    obj.horzLine1:setName("horzLine1");

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

    obj.flowPart8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart8:setParent(obj.optAtaqueLegenda);
    obj.flowPart8:setHeight(15);
    obj.flowPart8:setMinWidth(20);
    obj.flowPart8:setMaxWidth(20);
    obj.flowPart8:setName("flowPart8");
    obj.flowPart8:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart8:setVertAlign("leading");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.flowPart8);
    obj.label22:setAlign("client");
    obj.label22:setText("");
    obj.label22:setHorzTextAlign("center");
    obj.label22:setVertTextAlign("leading");
    obj.label22:setWordWrap(true);
    obj.label22:setTextTrimming("none");
    obj.label22:setName("label22");
    obj.label22:setFontSize(12);
    obj.label22:setFontColor("#D0D0D0");

    obj.flowPart9 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart9:setParent(obj.optAtaqueLegenda);
    obj.flowPart9:setHeight(15);
    obj.flowPart9:setMinWidth(80);
    obj.flowPart9:setMaxWidth(150);
    obj.flowPart9:setName("flowPart9");
    obj.flowPart9:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart9:setVertAlign("leading");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.flowPart9);
    obj.label23:setAlign("client");
    obj.label23:setText("ALCANCE");
    obj.label23:setHorzTextAlign("center");
    obj.label23:setVertTextAlign("leading");
    obj.label23:setWordWrap(true);
    obj.label23:setTextTrimming("none");
    obj.label23:setName("label23");
    obj.label23:setFontSize(12);
    obj.label23:setFontColor("#D0D0D0");

    obj.flowPart10 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart10:setParent(obj.optAtaqueLegenda);
    obj.flowPart10:setHeight(15);
    obj.flowPart10:setMinWidth(110);
    obj.flowPart10:setMaxWidth(200);
    obj.flowPart10:setName("flowPart10");
    obj.flowPart10:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart10:setVertAlign("leading");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.flowPart10);
    obj.label24:setAlign("client");
    obj.label24:setText("ACERTO");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setVertTextAlign("leading");
    obj.label24:setWordWrap(true);
    obj.label24:setTextTrimming("none");
    obj.label24:setName("label24");
    obj.label24:setFontSize(12);
    obj.label24:setFontColor("#D0D0D0");

    obj.flowPart11 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart11:setParent(obj.optAtaqueLegenda);
    obj.flowPart11:setHeight(15);
    obj.flowPart11:setMinWidth(80);
    obj.flowPart11:setMaxWidth(170);
    obj.flowPart11:setName("flowPart11");
    obj.flowPart11:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart11:setVertAlign("leading");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.flowPart11);
    obj.label25:setAlign("client");
    obj.label25:setText("DANO");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setVertTextAlign("leading");
    obj.label25:setWordWrap(true);
    obj.label25:setTextTrimming("none");
    obj.label25:setName("label25");
    obj.label25:setFontSize(12);
    obj.label25:setFontColor("#D0D0D0");

    obj.flowPart12 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart12:setParent(obj.optAtaqueLegenda);
    obj.flowPart12:setHeight(15);
    obj.flowPart12:setMinWidth(80);
    obj.flowPart12:setMaxWidth(180);
    obj.flowPart12:setName("flowPart12");
    obj.flowPart12:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart12:setVertAlign("leading");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.flowPart12);
    obj.label26:setAlign("client");
    obj.label26:setText("TIPO");
    obj.label26:setHorzTextAlign("center");
    obj.label26:setVertTextAlign("leading");
    obj.label26:setWordWrap(true);
    obj.label26:setTextTrimming("none");
    obj.label26:setName("label26");
    obj.label26:setFontSize(12);
    obj.label26:setFontColor("#D0D0D0");

    obj.flowPart13 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart13:setParent(obj.optAtaqueLegenda);
    obj.flowPart13:setHeight(15);
    obj.flowPart13:setMinWidth(100);
    obj.flowPart13:setMaxWidth(200);
    obj.flowPart13:setName("flowPart13");
    obj.flowPart13:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart13:setVertAlign("leading");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.flowPart13);
    obj.label27:setAlign("client");
    obj.label27:setText("MUNICAO");
    obj.label27:setHorzTextAlign("center");
    obj.label27:setVertTextAlign("leading");
    obj.label27:setWordWrap(true);
    obj.label27:setTextTrimming("none");
    obj.label27:setName("label27");
    obj.label27:setFontSize(12);
    obj.label27:setFontColor("#D0D0D0");

    obj.flowPart14 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart14:setParent(obj.optAtaqueLegenda);
    obj.flowPart14:setHeight(15);
    obj.flowPart14:setMinWidth(25);
    obj.flowPart14:setMaxWidth(50);
    obj.flowPart14:setName("flowPart14");
    obj.flowPart14:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart14:setVertAlign("leading");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.flowPart14);
    obj.label28:setAlign("client");
    obj.label28:setText("QTD");
    obj.label28:setHorzTextAlign("center");
    obj.label28:setVertTextAlign("leading");
    obj.label28:setWordWrap(true);
    obj.label28:setTextTrimming("none");
    obj.label28:setName("label28");
    obj.label28:setFontSize(12);
    obj.label28:setFontColor("#D0D0D0");

    obj.flowPart15 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart15:setParent(obj.optAtaqueLegenda);
    obj.flowPart15:setHeight(25);
    obj.flowPart15:setMinWidth(25);
    obj.flowPart15:setMaxWidth(25);
    obj.flowPart15:setName("flowPart15");
    obj.flowPart15:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart15:setVertAlign("leading");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.flowPart15);
    obj.label29:setAlign("client");
    obj.label29:setText("");
    obj.label29:setHorzTextAlign("center");
    obj.label29:setVertTextAlign("leading");
    obj.label29:setWordWrap(true);
    obj.label29:setTextTrimming("none");
    obj.label29:setName("label29");
    obj.label29:setFontSize(12);
    obj.label29:setFontColor("#D0D0D0");

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

    obj.flowPart16 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart16:setParent(obj.optAtaquePadrao);
    obj.flowPart16:setHeight(30);
    obj.flowPart16:setWidth(20);
    obj.flowPart16:setName("flowPart16");
    obj.flowPart16:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart16:setVertAlign("leading");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.flowPart16);
    obj.checkBox2:setAlign("client");
    obj.checkBox2:setChecked(true);
    obj.checkBox2:setEnabled(false);
    obj.checkBox2:setName("checkBox2");

    obj.flowPart17 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart17:setParent(obj.optAtaquePadrao);
    obj.flowPart17:setHeight(30);
    obj.flowPart17:setMinWidth(80);
    obj.flowPart17:setMaxWidth(150);
    obj.flowPart17:setAvoidScale(true);
    obj.flowPart17:setName("flowPart17");
    obj.flowPart17:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart17:setVertAlign("leading");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.flowPart17);
    obj.edit12:setAlign("client");
    obj.edit12:setField("alcance");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setFontSize(13);
    obj.edit12:setTransparent(false);
    obj.edit12:setHitTest(true);
    obj.edit12:setName("edit12");
    obj.edit12:setHeight(30);
    obj.edit12:setWidth(195);
    obj.edit12:setFontColor("white");

    obj.flowPart18 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart18:setParent(obj.optAtaquePadrao);
    obj.flowPart18:setHeight(30);
    obj.flowPart18:setMinWidth(110);
    obj.flowPart18:setMaxWidth(200);
    obj.flowPart18:setAvoidScale(true);
    obj.flowPart18:setName("flowPart18");
    obj.flowPart18:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart18:setVertAlign("leading");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.flowPart18);
    obj.edit13:setAlign("client");
    obj.edit13:setField("ataque");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setFontSize(13);
    obj.edit13:setTransparent(false);
    obj.edit13:setHitTest(true);
    obj.edit13:setName("edit13");
    obj.edit13:setHeight(30);
    obj.edit13:setWidth(195);
    obj.edit13:setFontColor("white");

    obj.flowPart19 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart19:setParent(obj.optAtaquePadrao);
    obj.flowPart19:setHeight(30);
    obj.flowPart19:setMinWidth(80);
    obj.flowPart19:setMaxWidth(170);
    obj.flowPart19:setAvoidScale(true);
    obj.flowPart19:setName("flowPart19");
    obj.flowPart19:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart19:setVertAlign("leading");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.flowPart19);
    obj.edit14:setAlign("client");
    obj.edit14:setField("dano");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setFontSize(13);
    obj.edit14:setTransparent(false);
    obj.edit14:setHitTest(true);
    obj.edit14:setName("edit14");
    obj.edit14:setHeight(30);
    obj.edit14:setWidth(195);
    obj.edit14:setFontColor("white");

    obj.flowPart20 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart20:setParent(obj.optAtaquePadrao);
    obj.flowPart20:setHeight(30);
    obj.flowPart20:setMinWidth(80);
    obj.flowPart20:setMaxWidth(180);
    obj.flowPart20:setAvoidScale(true);
    obj.flowPart20:setName("flowPart20");
    obj.flowPart20:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart20:setVertAlign("leading");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.flowPart20);
    obj.edit15:setAlign("client");
    obj.edit15:setField("tipo");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setFontSize(13);
    obj.edit15:setTransparent(false);
    obj.edit15:setHitTest(true);
    obj.edit15:setName("edit15");
    obj.edit15:setHeight(30);
    obj.edit15:setWidth(195);
    obj.edit15:setFontColor("white");

    obj.flowPart21 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart21:setParent(obj.optAtaquePadrao);
    obj.flowPart21:setHeight(30);
    obj.flowPart21:setMinWidth(100);
    obj.flowPart21:setMaxWidth(200);
    obj.flowPart21:setAvoidScale(true);
    obj.flowPart21:setName("flowPart21");
    obj.flowPart21:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart21:setVertAlign("leading");

    obj.cbOptAtaqueMunicao = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cbOptAtaqueMunicao:setParent(obj.flowPart21);
    obj.cbOptAtaqueMunicao:setName("cbOptAtaqueMunicao");
    obj.cbOptAtaqueMunicao:setAlign("client");
    obj.cbOptAtaqueMunicao:setField("municao");
    obj.cbOptAtaqueMunicao:setHint("Qual 'contador' deve ser gasto");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.flowPart21);
    obj.dataLink3:setField("contadoresMudaram");
    obj.dataLink3:setName("dataLink3");

    obj.flowPart22 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart22:setParent(obj.optAtaquePadrao);
    obj.flowPart22:setHeight(30);
    obj.flowPart22:setMinWidth(25);
    obj.flowPart22:setMaxWidth(50);
    obj.flowPart22:setAvoidScale(true);
    obj.flowPart22:setName("flowPart22");
    obj.flowPart22:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart22:setVertAlign("leading");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.flowPart22);
    obj.edit16:setAlign("client");
    obj.edit16:setField("qtMunicao");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setFontSize(13);
    obj.edit16:setTransparent(false);
    obj.edit16:setHitTest(true);
    obj.edit16:setName("edit16");
    obj.edit16:setHeight(30);
    obj.edit16:setWidth(195);
    obj.edit16:setFontColor("white");

    obj.flowPart23 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart23:setParent(obj.optAtaquePadrao);
    obj.flowPart23:setHeight(30);
    obj.flowPart23:setWidth(25);
    obj.flowPart23:setName("flowPart23");
    obj.flowPart23:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart23:setVertAlign("leading");

    obj.btnApagar = GUI.fromHandle(_obj_newObject("button"));
    obj.btnApagar:setParent(obj.flowPart23);
    obj.btnApagar:setName("btnApagar");
    obj.btnApagar:setAlign("client");
    obj.btnApagar:setText("✖");
    obj.btnApagar:setEnabled(false);

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.layPrincipal);
    obj.horzLine2:setAlign("top");
    obj.horzLine2:setStrokeColor("lightGray");
    obj.horzLine2:setOpacity(0.3);
    obj.horzLine2:setMargins({top=2});
    obj.horzLine2:setName("horzLine2");

    obj.rclOptsAttack = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclOptsAttack:setParent(obj.layPrincipal);
    obj.rclOptsAttack:setName("rclOptsAttack");
    obj.rclOptsAttack:setAlign("client");
    obj.rclOptsAttack:setField("optsAttack");
    obj.rclOptsAttack:setTemplateForm("frmOptAtaque");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layPrincipal);
    obj.button3:setAlign("bottom");
    obj.button3:setText("Add Attack Option");
    obj.button3:setMargins({left=200, right=200});
    obj.button3:setName("button3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.layPrincipal);
    obj.dataLink4:setField("contadoresMudaram");
    obj.dataLink4:setName("dataLink4");

    obj.flowLineBreak1 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak1:setParent(obj.fraEquipamentoLayout);
    obj.flowLineBreak1:setName("flowLineBreak1");

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

    obj.flowLineBreak2 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak2:setParent(obj.fraEquipamentoLayout);
    obj.flowLineBreak2:setName("flowLineBreak2");

    obj.flowPart24 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart24:setParent(obj.fraEquipamentoLayout);
    obj.flowPart24:setHeight(400);
    obj.flowPart24:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart24:setMinScaledWidth(290);
    obj.flowPart24:setName("flowPart24");
    obj.flowPart24:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowPart24:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart24:setVertAlign("leading");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.flowPart24);
    obj.layout3:setAlign("left");
    obj.layout3:setWidth(200);
    obj.layout3:setMargins({left=3});
    obj.layout3:setName("layout3");

    obj.frame1 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame1:setParent(obj.layout3);
    obj.frame1:setFrameStyle("frames/dinheiro/pecaCobre.xml");
    obj.frame1:setWidth(228);
    obj.frame1:setHeight(64);
    obj.frame1:setAlign("top");
    obj.frame1:setMargins({});
    obj.frame1:setName("frame1");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.frame1);
    obj.label30:setFrameRegion("RegiaoSmallTitulo");
    obj.label30:setHorzTextAlign("center");
    obj.label30:setVertTextAlign("center");
    obj.label30:setText("1");
    obj.label30:setTextTrimming("none");
    obj.label30:setWordWrap(false);
    obj.label30:setName("label30");
    obj.label30:setFontSize(12);
    obj.label30:setFontColor("#D0D0D0");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.frame1);
    obj.edit17:setFrameRegion("RegiaoValor");
    obj.edit17:setField("equipamento.dinheiro.1");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setFontSize(19);
    obj.edit17:setName("edit17");
    obj.edit17:setFontColor("white");
    obj.edit17:setTransparent(true);

    obj.frame2 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame2:setParent(obj.layout3);
    obj.frame2:setFrameStyle("frames/dinheiro/pecaCobre.xml");
    obj.frame2:setWidth(228);
    obj.frame2:setHeight(64);
    obj.frame2:setAlign("top");
    obj.frame2:setMargins({});
    obj.frame2:setName("frame2");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.frame2);
    obj.label31:setFrameRegion("RegiaoSmallTitulo");
    obj.label31:setHorzTextAlign("center");
    obj.label31:setVertTextAlign("center");
    obj.label31:setText("2");
    obj.label31:setTextTrimming("none");
    obj.label31:setWordWrap(false);
    obj.label31:setName("label31");
    obj.label31:setFontSize(12);
    obj.label31:setFontColor("#D0D0D0");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.frame2);
    obj.edit18:setFrameRegion("RegiaoValor");
    obj.edit18:setField("equipamento.dinheiro.2");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setFontSize(19);
    obj.edit18:setName("edit18");
    obj.edit18:setFontColor("white");
    obj.edit18:setTransparent(true);

    obj.frame3 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame3:setParent(obj.layout3);
    obj.frame3:setFrameStyle("frames/dinheiro/pecaCobre.xml");
    obj.frame3:setWidth(228);
    obj.frame3:setHeight(64);
    obj.frame3:setAlign("top");
    obj.frame3:setMargins({});
    obj.frame3:setName("frame3");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.frame3);
    obj.label32:setFrameRegion("RegiaoSmallTitulo");
    obj.label32:setHorzTextAlign("center");
    obj.label32:setVertTextAlign("center");
    obj.label32:setText("3");
    obj.label32:setTextTrimming("none");
    obj.label32:setWordWrap(false);
    obj.label32:setName("label32");
    obj.label32:setFontSize(12);
    obj.label32:setFontColor("#D0D0D0");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.frame3);
    obj.edit19:setFrameRegion("RegiaoValor");
    obj.edit19:setField("equipamento.dinheiro.3");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setFontSize(19);
    obj.edit19:setName("edit19");
    obj.edit19:setFontColor("white");
    obj.edit19:setTransparent(true);

    obj.frame4 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame4:setParent(obj.layout3);
    obj.frame4:setFrameStyle("frames/dinheiro/pecaCobre.xml");
    obj.frame4:setWidth(228);
    obj.frame4:setHeight(64);
    obj.frame4:setAlign("top");
    obj.frame4:setMargins({});
    obj.frame4:setName("frame4");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.frame4);
    obj.label33:setFrameRegion("RegiaoSmallTitulo");
    obj.label33:setHorzTextAlign("center");
    obj.label33:setVertTextAlign("center");
    obj.label33:setText("4");
    obj.label33:setTextTrimming("none");
    obj.label33:setWordWrap(false);
    obj.label33:setName("label33");
    obj.label33:setFontSize(12);
    obj.label33:setFontColor("#D0D0D0");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.frame4);
    obj.edit20:setFrameRegion("RegiaoValor");
    obj.edit20:setField("equipamento.dinheiro.4");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setFontSize(19);
    obj.edit20:setName("edit20");
    obj.edit20:setFontColor("white");
    obj.edit20:setTransparent(true);

    obj.frame5 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame5:setParent(obj.layout3);
    obj.frame5:setFrameStyle("frames/dinheiro/pecaCobre.xml");
    obj.frame5:setWidth(228);
    obj.frame5:setHeight(64);
    obj.frame5:setAlign("top");
    obj.frame5:setMargins({});
    obj.frame5:setName("frame5");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.frame5);
    obj.label34:setFrameRegion("RegiaoSmallTitulo");
    obj.label34:setHorzTextAlign("center");
    obj.label34:setVertTextAlign("center");
    obj.label34:setText("5");
    obj.label34:setTextTrimming("none");
    obj.label34:setWordWrap(false);
    obj.label34:setName("label34");
    obj.label34:setFontSize(12);
    obj.label34:setFontColor("#D0D0D0");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.frame5);
    obj.edit21:setFrameRegion("RegiaoValor");
    obj.edit21:setField("equipamento.dinheiro.5");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setFontSize(19);
    obj.edit21:setName("edit21");
    obj.edit21:setFontColor("white");
    obj.edit21:setTransparent(true);

    obj.checkBox3 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.layout3);
    obj.checkBox3:setAlign("top");
    obj.checkBox3:setField("equipamento.outros_melhorado");
    obj.checkBox3:setMargins({left=75, top=15});
    obj.checkBox3:setName("checkBox3");

    obj.editorFancy = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.editorFancy:setParent(obj.flowPart24);
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
    obj.editorMerda:setParent(obj.flowPart24);
    obj.editorMerda:setName("editorMerda");
    obj.editorMerda:setAlign("client");
    obj.editorMerda:setMargins({left=10, right=10});
    obj.editorMerda:setField("equipamento.outros");
    obj.editorMerda:setFontSize(15);
    obj.editorMerda:setVisible(true);

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.flowPart24);
    obj.label35:setAlign("bottom");
    obj.label35:setAutoSize(true);
    obj.label35:setText("OUTROS EQUIPAMENTOS");
    obj.label35:setFontSize(12);
    obj.label35:setVertTextAlign("center");
    obj.label35:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label35, "fontStyle",  "bold");
    obj.label35:setName("label35");
    obj.label35:setFontColor("white");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.pgcPrincipal);
    obj.tab3:setTitle("MAGIA");
    obj.tab3:setName("tab3");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.tab3);
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

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.rectangle3);
    obj.dataLink5:setFields({'descansoLongo', 'descansoCurto'});
    obj.dataLink5:setName("dataLink5");

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.rectangle3);
    obj.flowLayout5:setAlign("bottom");
    obj.flowLayout5:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowLayout5:setAutoHeight(true);
    obj.flowLayout5:setHorzAlign("justify");
    obj.flowLayout5:setName("flowLayout5");
    obj.flowLayout5:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout5:setVertAlign("leading");

    obj.flowPart25 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart25:setParent(obj.flowLayout5);
    obj.flowPart25:setWidth(1);
    obj.flowPart25:setName("flowPart25");
    obj.flowPart25:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart25:setVertAlign("leading");

    obj.upperGridMagicBox1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.upperGridMagicBox1:setParent(obj.flowLayout5);
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
    obj.cmbupperGridMagicBox1:setItems({'', 'FORÇA', 'DESTREZA', 'CONSTITUIÇÃO', 'INTELIGÊNCIA', 'SABEDORIA', 'CARISMA','SANIDADE' ,' '});
    obj.cmbupperGridMagicBox1:setValues({'', 'forca', 'destreza', 'constituicao', 'inteligencia', 'sabedoria', 'carisma','sanidade' ,'honra'});
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
    obj.labupperGridMagicBox1:setText("HABILIDADE DE CONJURAÇÃO");
    obj.labupperGridMagicBox1:setHorzTextAlign("center");
    obj.labupperGridMagicBox1:setVertTextAlign("leading");
    obj.labupperGridMagicBox1:setFontSize(12);
    obj.labupperGridMagicBox1:setFontColor("#D0D0D0");

self.upperGridMagicBox1._RecalcSize();	


    obj.upperGridMagicBox2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.upperGridMagicBox2:setParent(obj.flowLayout5);
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
    obj.upperGridMagicBox3:setParent(obj.flowLayout5);
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
    obj.labupperGridMagicBox3:setText("BÔNUS DE ATAQUE DE MAGIA");
    obj.labupperGridMagicBox3:setHorzTextAlign("center");
    obj.labupperGridMagicBox3:setVertTextAlign("leading");
    obj.labupperGridMagicBox3:setFontSize(12);
    obj.labupperGridMagicBox3:setFontColor("#D0D0D0");

self.upperGridMagicBox3._RecalcSize();	


    obj.flowPart26 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart26:setParent(obj.flowLayout5);
    obj.flowPart26:setWidth(1);
    obj.flowPart26:setName("flowPart26");
    obj.flowPart26:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart26:setVertAlign("leading");

  require("common.lua"); 


    obj.popupEdit = GUI.fromHandle(_obj_newObject("popup"));
    obj.popupEdit:setParent(obj.rectangle3);
    obj.popupEdit:setName("popupEdit");
    obj.popupEdit:setVisible(false);
    obj.popupEdit:setWidth(700);
    obj.popupEdit:setHeight(600);
    lfm_setPropAsString(obj.popupEdit, "autoScopeNode",  "false");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.popupEdit);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(100);
    obj.layout4:setName("layout4");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.layout4);
    obj.image3:setAlign("left");
    obj.image3:setField("icone");
    obj.image3:setEditable(true);
    obj.image3:setName("image3");

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.layout4);
    obj.flowLayout6:setAlign("client");
    obj.flowLayout6:setName("flowLayout6");
    obj.flowLayout6:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout6:setVertAlign("leading");

    obj.fpPENome = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.fpPENome:setParent(obj.flowLayout6);
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

    obj.flowLineBreak3 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak3:setParent(obj.flowLayout6);
    obj.flowLineBreak3:setName("flowLineBreak3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.flowLayout6);
    obj.rectangle4:setWidth(10000);
    obj.rectangle4:setColor("grey");
    obj.rectangle4:setHeight(1);
    obj.rectangle4:setName("rectangle4");

    obj.flowLineBreak4 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak4:setParent(obj.flowLayout6);
    obj.flowLineBreak4:setName("flowLineBreak4");

    obj.fpPENivel = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.fpPENivel:setParent(obj.flowLayout6);
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

    obj.flowPart27 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart27:setParent(obj.flowLayout6);
    obj.flowPart27:setWidth(1);
    obj.flowPart27:setAdjustHeightToLine(true);
    obj.flowPart27:setName("flowPart27");
    obj.flowPart27:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart27:setVertAlign("leading");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.flowPart27);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("gray");
    obj.rectangle5:setName("rectangle5");

    obj.fpPEEscola = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.fpPEEscola:setParent(obj.flowLayout6);
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

    obj.flowPart28 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart28:setParent(obj.flowLayout6);
    obj.flowPart28:setWidth(1);
    obj.flowPart28:setAdjustHeightToLine(true);
    obj.flowPart28:setName("flowPart28");
    obj.flowPart28:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart28:setVertAlign("leading");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.flowPart28);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("gray");
    obj.rectangle6:setName("rectangle6");

    obj.fpPETempo = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.fpPETempo:setParent(obj.flowLayout6);
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

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tcPopupEdit);
    obj.tab4:setTitle("Descrição");
    obj.tab4:setName("tab4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.tab4);
    obj.layout5:setAlign("client");
    obj.layout5:setMargins({top=5, bottom=5, left=5, right=5});
    obj.layout5:setName("layout5");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout5);
    obj.label36:setText("Mecânicas / Flavour");
    obj.label36:setName("label36");
    obj.label36:setAlign("top");
    obj.label36:setFontSize(16.0);
    obj.label36:setHeight(30);
    lfm_setPropAsString(obj.label36, "fontStyle",  "bold");
    obj.label36:setFontColor("white");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout5);
    obj.textEditor6:setAlign("client");
    obj.textEditor6:setField("descricao");
    obj.textEditor6:setName("textEditor6");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tcPopupEdit);
    obj.tab5:setTitle("Detalhes");
    obj.tab5:setName("tab5");

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.tab5);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setPadding({top=5, bottom=5, left=5, right=5});
    obj.scrollBox3:setName("scrollBox3");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.scrollBox3);
    obj.label37:setText("Detalhes da Magia");
    obj.label37:setName("label37");
    obj.label37:setAlign("top");
    obj.label37:setFontSize(16.0);
    obj.label37:setHeight(30);
    lfm_setPropAsString(obj.label37, "fontStyle",  "bold");
    obj.label37:setFontColor("white");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.scrollBox3);
    obj.rectangle7:setHeight(30);
    obj.rectangle7:setName("rectangle7");
    obj.rectangle7:setAlign("top");
    obj.rectangle7:setColor("DimGray");
    obj.rectangle7:setMargins({top=2, bottom=2});
    obj.rectangle7:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.rectangle7);
    obj.label38:setAlign("left");
    lfm_setPropAsString(obj.label38, "fontStyle",  "bold");
    obj.label38:setText("Nível da Magia");
    obj.label38:setName("label38");
    obj.label38:setFontColor("white");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.rectangle7);
    obj.comboBox2:setAlign("right");
    obj.comboBox2:setWidth(115);
    obj.comboBox2:setField("nivel");
    obj.comboBox2:setItems({'Truque', '1º nível', '2º nível', '3º nível', '4º nível', '5º nível', '6º nível', '7º nível', '8º nível', '9º nível', 'Runas'});
    obj.comboBox2:setValues({'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'});
    obj.comboBox2:setName("comboBox2");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.scrollBox3);
    obj.rectangle8:setHeight(30);
    obj.rectangle8:setName("rectangle8");
    obj.rectangle8:setAlign("top");
    obj.rectangle8:setColor("DimGray");
    obj.rectangle8:setMargins({top=2, bottom=2});
    obj.rectangle8:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.rectangle8);
    obj.label39:setAlign("left");
    lfm_setPropAsString(obj.label39, "fontStyle",  "bold");
    obj.label39:setText("Escola de Magia");
    obj.label39:setName("label39");
    obj.label39:setFontColor("white");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.rectangle8);
    obj.comboBox3:setAlign("right");
    obj.comboBox3:setWidth(115);
    obj.comboBox3:setField("escolaDeMagia");
    obj.comboBox3:setItems({'', 'Abjuração', 'Conjuração', 'Adivinhação', 'Encantamento', 'Evocação', 'Ilusão', 'Necromância', 'Transmutação'});
    obj.comboBox3:setName("comboBox3");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.scrollBox3);
    obj.rectangle9:setHeight(90);
    obj.rectangle9:setName("rectangle9");
    obj.rectangle9:setAlign("top");
    obj.rectangle9:setColor("DimGray");
    obj.rectangle9:setMargins({top=2, bottom=2});
    obj.rectangle9:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.rectangle9);
    obj.label40:setAlign("top");
    lfm_setPropAsString(obj.label40, "fontStyle",  "bold");
    obj.label40:setText("Componentes da Magia");
    obj.label40:setHeight(24);
    obj.label40:setName("label40");
    obj.label40:setFontColor("white");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle9);
    obj.layout6:setAlign("top");
    obj.layout6:setHeight(30);
    obj.layout6:setName("layout6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout6);
    obj.layout7:setAlign("left");
    obj.layout7:setWidth(34);
    obj.layout7:setName("layout7");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout7);
    obj.label41:setAlign("client");
    obj.label41:setHorzTextAlign("trailing");
    obj.label41:setText("V");
    obj.label41:setName("label41");
    obj.label41:setFontColor("white");

    obj.checkBox4 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.layout7);
    obj.checkBox4:setAlign("right");
    obj.checkBox4:setWidth(20);
    obj.checkBox4:setField("componentesV");
    obj.checkBox4:setName("checkBox4");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout6);
    obj.layout8:setAlign("left");
    obj.layout8:setWidth(30);
    obj.layout8:setName("layout8");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout8);
    obj.label42:setAlign("client");
    obj.label42:setHorzTextAlign("trailing");
    obj.label42:setText("S");
    obj.label42:setName("label42");
    obj.label42:setFontColor("white");

    obj.checkBox5 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.layout8);
    obj.checkBox5:setAlign("right");
    obj.checkBox5:setWidth(20);
    obj.checkBox5:setField("componentesS");
    obj.checkBox5:setName("checkBox5");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout6);
    obj.layout9:setAlign("left");
    obj.layout9:setWidth(32);
    obj.layout9:setName("layout9");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout9);
    obj.label43:setAlign("client");
    obj.label43:setHorzTextAlign("trailing");
    obj.label43:setText("M");
    obj.label43:setName("label43");
    obj.label43:setFontColor("white");

    obj.checkBox6 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.layout9);
    obj.checkBox6:setAlign("right");
    obj.checkBox6:setWidth(20);
    obj.checkBox6:setField("componentesM");
    obj.checkBox6:setName("checkBox6");

    obj.popupEditCompM = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditCompM:setParent(obj.layout6);
    obj.popupEditCompM:setName("popupEditCompM");
    obj.popupEditCompM:setAlign("client");
    obj.popupEditCompM:setField("componentesMaterial");
    obj.popupEditCompM:setEnabled(false);
    obj.popupEditCompM:setFontSize(15);
    obj.popupEditCompM:setFontColor("white");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.layout6);
    obj.dataLink6:setField("componentesM");
    obj.dataLink6:setName("dataLink6");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle9);
    obj.layout10:setAlign("top");
    obj.layout10:setHeight(30);
    obj.layout10:setName("layout10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout10);
    obj.layout11:setAlign("left");
    obj.layout11:setWidth(100);
    obj.layout11:setName("layout11");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout11);
    obj.label44:setAlign("client");
    obj.label44:setHorzTextAlign("trailing");
    obj.label44:setText("Concentração");
    obj.label44:setName("label44");
    obj.label44:setFontColor("white");

    obj.checkBox7 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.layout11);
    obj.checkBox7:setAlign("right");
    obj.checkBox7:setWidth(20);
    obj.checkBox7:setField("componentesConcentracao");
    obj.checkBox7:setName("checkBox7");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout10);
    obj.layout12:setAlign("left");
    obj.layout12:setWidth(55);
    obj.layout12:setName("layout12");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout12);
    obj.label45:setAlign("client");
    obj.label45:setHorzTextAlign("trailing");
    obj.label45:setText("Ritual");
    obj.label45:setName("label45");
    obj.label45:setFontColor("white");

    obj.checkBox8 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.layout12);
    obj.checkBox8:setAlign("right");
    obj.checkBox8:setWidth(20);
    obj.checkBox8:setField("componentesRitual");
    obj.checkBox8:setName("checkBox8");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.scrollBox3);
    obj.rectangle10:setHeight(30);
    obj.rectangle10:setName("rectangle10");
    obj.rectangle10:setAlign("top");
    obj.rectangle10:setColor("DimGray");
    obj.rectangle10:setMargins({top=2, bottom=2});
    obj.rectangle10:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.rectangle10);
    obj.label46:setAlign("left");
    lfm_setPropAsString(obj.label46, "fontStyle",  "bold");
    obj.label46:setText("Tipo de Magia");
    obj.label46:setName("label46");
    obj.label46:setFontColor("white");

    obj.flowLayout7 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.rectangle10);
    obj.flowLayout7:setAlign("client");
    obj.flowLayout7:setHorzAlign("trailing");
    obj.flowLayout7:setName("flowLayout7");
    obj.flowLayout7:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout7:setVertAlign("leading");

    obj.layPrepValor = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.layPrepValor:setParent(obj.flowLayout7);
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

    obj.flowPart29 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart29:setParent(obj.flowLayout7);
    obj.flowPart29:setWidth(140);
    obj.flowPart29:setMinScaledWidth(70);
    obj.flowPart29:setHeight(24);
    obj.flowPart29:setName("flowPart29");
    obj.flowPart29:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart29:setVertAlign("leading");

    obj.comboBox4 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.flowPart29);
    obj.comboBox4:setAlign("client");
    obj.comboBox4:setField("preparadoTipo");
    obj.comboBox4:setItems({'Preparada', 'Sempre Preparada', 'Conhecida', 'A vontade', 'Inata'});
    obj.comboBox4:setName("comboBox4");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.rectangle10);
    obj.dataLink7:setField("preparadoTipo");
    obj.dataLink7:setName("dataLink7");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.scrollBox3);
    obj.label47:setText("Detalhes de Conjuração");
    obj.label47:setName("label47");
    obj.label47:setAlign("top");
    obj.label47:setFontSize(16.0);
    obj.label47:setHeight(30);
    lfm_setPropAsString(obj.label47, "fontStyle",  "bold");
    obj.label47:setFontColor("white");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.scrollBox3);
    obj.rectangle11:setHeight(30);
    obj.rectangle11:setName("rectangle11");
    obj.rectangle11:setAlign("top");
    obj.rectangle11:setColor("DimGray");
    obj.rectangle11:setMargins({top=2, bottom=2});
    obj.rectangle11:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);

    obj.flowLayout8 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout8:setParent(obj.rectangle11);
    obj.flowLayout8:setAlign("client");
    obj.flowLayout8:setName("flowLayout8");
    obj.flowLayout8:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout8:setVertAlign("leading");

    obj.flowPart30 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart30:setParent(obj.flowLayout8);
    obj.flowPart30:setMinWidth(173);
    obj.flowPart30:setMaxWidth(865);
    obj.flowPart30:setHeight(24);
    obj.flowPart30:setName("flowPart30");
    obj.flowPart30:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart30:setVertAlign("leading");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.flowPart30);
    obj.label48:setAlign("client");
    lfm_setPropAsString(obj.label48, "fontStyle",  "bold");
    obj.label48:setText("Tempo de Conjuração");
    obj.label48:setName("label48");
    obj.label48:setFontColor("white");

    obj.flowPart31 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart31:setParent(obj.flowLayout8);
    obj.flowPart31:setMinWidth(3);
    obj.flowPart31:setHeight(24);
    obj.flowPart31:setName("flowPart31");
    obj.flowPart31:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart31:setVertAlign("leading");

    obj.flowPart32 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart32:setParent(obj.flowLayout8);
    obj.flowPart32:setMinWidth(97);
    obj.flowPart32:setMaxWidth(485);
    obj.flowPart32:setHeight(24);
    obj.flowPart32:setName("flowPart32");
    obj.flowPart32:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart32:setVertAlign("leading");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.flowPart32);
    obj.edit22:setAlign("client");
    obj.edit22:setField("tempoConjuracaoValor");
    obj.edit22:setHorzTextAlign("trailing");
    obj.edit22:setType("number");
    obj.edit22:setName("edit22");
    obj.edit22:setFontSize(15);
    obj.edit22:setFontColor("white");

    obj.flowPart33 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart33:setParent(obj.flowLayout8);
    obj.flowPart33:setMinWidth(3);
    obj.flowPart33:setHeight(24);
    obj.flowPart33:setName("flowPart33");
    obj.flowPart33:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart33:setVertAlign("leading");

    obj.flowPart34 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart34:setParent(obj.flowLayout8);
    obj.flowPart34:setMinWidth(158);
    obj.flowPart34:setMaxWidth(790);
    obj.flowPart34:setHeight(24);
    obj.flowPart34:setName("flowPart34");
    obj.flowPart34:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart34:setVertAlign("leading");

    obj.comboBox5 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.flowPart34);
    obj.comboBox5:setAlign("client");
    obj.comboBox5:setField("tempoConjuracaoUnidade");
    obj.comboBox5:setItems({'', 'Ação', 'Ação Bônus', 'Ação de Tripulação', 'Dias', 'Horas', 'Ação Lendária', 'Minutos', 'Nada', 'Reação', 'Especial', 'Ação de Lar'});
    obj.comboBox5:setName("comboBox5");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.scrollBox3);
    obj.rectangle12:setHeight(30);
    obj.rectangle12:setName("rectangle12");
    obj.rectangle12:setAlign("top");
    obj.rectangle12:setColor("DimGray");
    obj.rectangle12:setMargins({top=2, bottom=2});
    obj.rectangle12:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);

    obj.flowLayout9 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout9:setParent(obj.rectangle12);
    obj.flowLayout9:setAlign("client");
    obj.flowLayout9:setName("flowLayout9");
    obj.flowLayout9:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout9:setVertAlign("leading");

    obj.flowPart35 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart35:setParent(obj.flowLayout9);
    obj.flowPart35:setMinWidth(173);
    obj.flowPart35:setMaxWidth(865);
    obj.flowPart35:setHeight(24);
    obj.flowPart35:setName("flowPart35");
    obj.flowPart35:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart35:setVertAlign("leading");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.flowPart35);
    obj.label49:setAlign("client");
    lfm_setPropAsString(obj.label49, "fontStyle",  "bold");
    obj.label49:setText("Condição de Ativação (Reação)");
    obj.label49:setName("label49");
    obj.label49:setFontColor("white");

    obj.flowPart36 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart36:setParent(obj.flowLayout9);
    obj.flowPart36:setMinWidth(3);
    obj.flowPart36:setHeight(24);
    obj.flowPart36:setName("flowPart36");
    obj.flowPart36:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart36:setVertAlign("leading");

    obj.flowPart37 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart37:setParent(obj.flowLayout9);
    obj.flowPart37:setMinWidth(258);
    obj.flowPart37:setMaxWidth(1290);
    obj.flowPart37:setHeight(24);
    obj.flowPart37:setName("flowPart37");
    obj.flowPart37:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart37:setVertAlign("leading");

    obj.popupEditCondAtiv = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditCondAtiv:setParent(obj.flowPart37);
    obj.popupEditCondAtiv:setName("popupEditCondAtiv");
    obj.popupEditCondAtiv:setAlign("client");
    obj.popupEditCondAtiv:setField("condicaoAtivacao");
    obj.popupEditCondAtiv:setFontSize(15);
    obj.popupEditCondAtiv:setFontColor("white");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.flowLayout9);
    obj.dataLink8:setField("tempoConjuracaoUnidade");
    obj.dataLink8:setName("dataLink8");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.scrollBox3);
    obj.rectangle13:setHeight(30);
    obj.rectangle13:setName("rectangle13");
    obj.rectangle13:setAlign("top");
    obj.rectangle13:setColor("DimGray");
    obj.rectangle13:setMargins({top=2, bottom=2});
    obj.rectangle13:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle13:setXradius(2);
    obj.rectangle13:setYradius(2);

    obj.flowLayout10 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout10:setParent(obj.rectangle13);
    obj.flowLayout10:setAlign("client");
    obj.flowLayout10:setName("flowLayout10");
    obj.flowLayout10:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout10:setVertAlign("leading");

    obj.flowPart38 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart38:setParent(obj.flowLayout10);
    obj.flowPart38:setMinWidth(173);
    obj.flowPart38:setMaxWidth(865);
    obj.flowPart38:setHeight(24);
    obj.flowPart38:setName("flowPart38");
    obj.flowPart38:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart38:setVertAlign("leading");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.flowPart38);
    obj.label50:setAlign("client");
    lfm_setPropAsString(obj.label50, "fontStyle",  "bold");
    obj.label50:setText("Alvo");
    obj.label50:setName("label50");
    obj.label50:setFontColor("white");

    obj.flowPart39 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart39:setParent(obj.flowLayout10);
    obj.flowPart39:setMinWidth(3);
    obj.flowPart39:setHeight(24);
    obj.flowPart39:setName("flowPart39");
    obj.flowPart39:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart39:setVertAlign("leading");

    obj.flowPart40 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart40:setParent(obj.flowLayout10);
    obj.flowPart40:setMinWidth(69);
    obj.flowPart40:setMaxWidth(345);
    obj.flowPart40:setHeight(24);
    obj.flowPart40:setName("flowPart40");
    obj.flowPart40:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart40:setVertAlign("leading");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.flowPart40);
    obj.edit23:setAlign("client");
    obj.edit23:setField("alvoValor");
    obj.edit23:setHorzTextAlign("trailing");
    obj.edit23:setType("number");
    obj.edit23:setName("edit23");
    obj.edit23:setFontSize(15);
    obj.edit23:setFontColor("white");

    obj.flowPart41 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart41:setParent(obj.flowLayout10);
    obj.flowPart41:setMinWidth(3);
    obj.flowPart41:setHeight(24);
    obj.flowPart41:setName("flowPart41");
    obj.flowPart41:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart41:setVertAlign("leading");

    obj.flowPart42 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart42:setParent(obj.flowLayout10);
    obj.flowPart42:setMinWidth(92);
    obj.flowPart42:setMaxWidth(460);
    obj.flowPart42:setHeight(24);
    obj.flowPart42:setName("flowPart42");
    obj.flowPart42:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart42:setVertAlign("leading");

    obj.comboBox6 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.flowPart42);
    obj.comboBox6:setAlign("client");
    obj.comboBox6:setField("alvoUnidade");
    obj.comboBox6:setItems({'', 'Nenhum', 'Pessoal', 'Toque', 'Especial', 'Qualquer', 'Pés', 'Milhas', 'Metros', 'Kilômetros'});
    obj.comboBox6:setName("comboBox6");

    obj.flowPart43 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart43:setParent(obj.flowLayout10);
    obj.flowPart43:setMinWidth(3);
    obj.flowPart43:setHeight(24);
    obj.flowPart43:setName("flowPart43");
    obj.flowPart43:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart43:setVertAlign("leading");

    obj.flowPart44 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart44:setParent(obj.flowLayout10);
    obj.flowPart44:setMinWidth(91);
    obj.flowPart44:setMaxWidth(455);
    obj.flowPart44:setHeight(24);
    obj.flowPart44:setName("flowPart44");
    obj.flowPart44:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart44:setVertAlign("leading");

    obj.comboBox7 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.flowPart44);
    obj.comboBox7:setAlign("client");
    obj.comboBox7:setField("alvoTipo");
    obj.comboBox7:setItems({'', 'Aliado', 'Cone', 'Criatura', 'Cubo', 'Cilindro', 'Inimigo', 'Linha', 'Nenhum', 'Objeto', 'Raio', 'Pessoal', 'Espaço', 'Esfera', 'Quadrado', 'Parede'});
    obj.comboBox7:setName("comboBox7");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.scrollBox3);
    obj.rectangle14:setHeight(30);
    obj.rectangle14:setName("rectangle14");
    obj.rectangle14:setAlign("top");
    obj.rectangle14:setColor("DimGray");
    obj.rectangle14:setMargins({top=2, bottom=2});
    obj.rectangle14:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle14:setXradius(2);
    obj.rectangle14:setYradius(2);

    obj.flowLayout11 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout11:setParent(obj.rectangle14);
    obj.flowLayout11:setAlign("client");
    obj.flowLayout11:setName("flowLayout11");
    obj.flowLayout11:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout11:setVertAlign("leading");

    obj.flowPart45 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart45:setParent(obj.flowLayout11);
    obj.flowPart45:setMinWidth(173);
    obj.flowPart45:setMaxWidth(865);
    obj.flowPart45:setHeight(24);
    obj.flowPart45:setName("flowPart45");
    obj.flowPart45:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart45:setVertAlign("leading");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.flowPart45);
    obj.label51:setAlign("client");
    lfm_setPropAsString(obj.label51, "fontStyle",  "bold");
    obj.label51:setText("Alcance");
    obj.label51:setName("label51");
    obj.label51:setFontColor("white");

    obj.flowPart46 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart46:setParent(obj.flowLayout11);
    obj.flowPart46:setMinWidth(3);
    obj.flowPart46:setHeight(24);
    obj.flowPart46:setName("flowPart46");
    obj.flowPart46:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart46:setVertAlign("leading");

    obj.flowPart47 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart47:setParent(obj.flowLayout11);
    obj.flowPart47:setMinWidth(68);
    obj.flowPart47:setMaxWidth(340);
    obj.flowPart47:setHeight(24);
    obj.flowPart47:setName("flowPart47");
    obj.flowPart47:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart47:setVertAlign("leading");

    obj.popupEditAlcanceCurto = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditAlcanceCurto:setParent(obj.flowPart47);
    obj.popupEditAlcanceCurto:setName("popupEditAlcanceCurto");
    obj.popupEditAlcanceCurto:setAlign("client");
    obj.popupEditAlcanceCurto:setField("alcanceCurto");
    obj.popupEditAlcanceCurto:setHorzTextAlign("trailing");
    obj.popupEditAlcanceCurto:setType("number");
    obj.popupEditAlcanceCurto:setFontSize(15);
    obj.popupEditAlcanceCurto:setFontColor("white");

    obj.flowPart48 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart48:setParent(obj.flowLayout11);
    obj.flowPart48:setMinWidth(13);
    obj.flowPart48:setMaxWidth(65);
    obj.flowPart48:setHeight(24);
    obj.flowPart48:setName("flowPart48");
    obj.flowPart48:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart48:setVertAlign("leading");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.flowPart48);
    obj.label52:setAlign("client");
    obj.label52:setText("/");
    obj.label52:setHorzTextAlign("center");
    obj.label52:setName("label52");
    obj.label52:setFontColor("white");

    obj.flowPart49 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart49:setParent(obj.flowLayout11);
    obj.flowPart49:setMinWidth(68);
    obj.flowPart49:setMaxWidth(340);
    obj.flowPart49:setHeight(24);
    obj.flowPart49:setName("flowPart49");
    obj.flowPart49:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart49:setVertAlign("leading");

    obj.popupEditAlcanceLongo = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditAlcanceLongo:setParent(obj.flowPart49);
    obj.popupEditAlcanceLongo:setName("popupEditAlcanceLongo");
    obj.popupEditAlcanceLongo:setAlign("client");
    obj.popupEditAlcanceLongo:setField("alcanceLongo");
    obj.popupEditAlcanceLongo:setHorzTextAlign("leading");
    obj.popupEditAlcanceLongo:setType("number");
    obj.popupEditAlcanceLongo:setFontSize(15);
    obj.popupEditAlcanceLongo:setFontColor("white");

    obj.flowPart50 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart50:setParent(obj.flowLayout11);
    obj.flowPart50:setMinWidth(3);
    obj.flowPart50:setHeight(24);
    obj.flowPart50:setName("flowPart50");
    obj.flowPart50:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart50:setVertAlign("leading");

    obj.flowPart51 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart51:setParent(obj.flowLayout11);
    obj.flowPart51:setMinWidth(106);
    obj.flowPart51:setMaxWidth(530);
    obj.flowPart51:setHeight(24);
    obj.flowPart51:setName("flowPart51");
    obj.flowPart51:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart51:setVertAlign("leading");

    obj.comboBox8 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.flowPart51);
    obj.comboBox8:setAlign("client");
    obj.comboBox8:setField("alcanceUnidade");
    obj.comboBox8:setItems({'', 'Nenhum', 'Pessoal', 'Toque', 'Especial', 'Qualquer', 'Pés', 'Milhas', 'Metros', 'Kilômetros'});
    obj.comboBox8:setName("comboBox8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.flowLayout11);
    obj.dataLink9:setField("alcanceUnidade");
    obj.dataLink9:setName("dataLink9");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.scrollBox3);
    obj.rectangle15:setHeight(30);
    obj.rectangle15:setName("rectangle15");
    obj.rectangle15:setAlign("top");
    obj.rectangle15:setColor("DimGray");
    obj.rectangle15:setMargins({top=2, bottom=2});
    obj.rectangle15:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle15:setXradius(2);
    obj.rectangle15:setYradius(2);

    obj.flowLayout12 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout12:setParent(obj.rectangle15);
    obj.flowLayout12:setAlign("client");
    obj.flowLayout12:setName("flowLayout12");
    obj.flowLayout12:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout12:setVertAlign("leading");

    obj.flowPart52 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart52:setParent(obj.flowLayout12);
    obj.flowPart52:setMinWidth(173);
    obj.flowPart52:setMaxWidth(865);
    obj.flowPart52:setHeight(24);
    obj.flowPart52:setName("flowPart52");
    obj.flowPart52:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart52:setVertAlign("leading");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.flowPart52);
    obj.label53:setAlign("client");
    lfm_setPropAsString(obj.label53, "fontStyle",  "bold");
    obj.label53:setText("Duração");
    obj.label53:setName("label53");
    obj.label53:setFontColor("white");

    obj.flowPart53 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart53:setParent(obj.flowLayout12);
    obj.flowPart53:setMinWidth(3);
    obj.flowPart53:setHeight(24);
    obj.flowPart53:setName("flowPart53");
    obj.flowPart53:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart53:setVertAlign("leading");

    obj.flowPart54 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart54:setParent(obj.flowLayout12);
    obj.flowPart54:setMinWidth(97);
    obj.flowPart54:setMaxWidth(485);
    obj.flowPart54:setHeight(24);
    obj.flowPart54:setName("flowPart54");
    obj.flowPart54:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart54:setVertAlign("leading");

    obj.popupEditDuracaoUnidade = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditDuracaoUnidade:setParent(obj.flowPart54);
    obj.popupEditDuracaoUnidade:setName("popupEditDuracaoUnidade");
    obj.popupEditDuracaoUnidade:setAlign("client");
    obj.popupEditDuracaoUnidade:setField("duracaoValor");
    obj.popupEditDuracaoUnidade:setHorzTextAlign("trailing");
    obj.popupEditDuracaoUnidade:setType("number");
    obj.popupEditDuracaoUnidade:setFontSize(15);
    obj.popupEditDuracaoUnidade:setFontColor("white");

    obj.flowPart55 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart55:setParent(obj.flowLayout12);
    obj.flowPart55:setMinWidth(3);
    obj.flowPart55:setHeight(24);
    obj.flowPart55:setName("flowPart55");
    obj.flowPart55:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart55:setVertAlign("leading");

    obj.flowPart56 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart56:setParent(obj.flowLayout12);
    obj.flowPart56:setMinWidth(158);
    obj.flowPart56:setMaxWidth(790);
    obj.flowPart56:setHeight(24);
    obj.flowPart56:setName("flowPart56");
    obj.flowPart56:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart56:setVertAlign("leading");

    obj.comboBox9 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.flowPart56);
    obj.comboBox9:setAlign("client");
    obj.comboBox9:setField("duracaoUnidade");
    obj.comboBox9:setItems({'', 'Dias', 'Horas', 'Instantânea', 'Minutos', 'Meses', 'Permanente', 'Rodadas', 'Especial', 'Turnos', 'Anos'});
    obj.comboBox9:setName("comboBox9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.flowLayout12);
    obj.dataLink10:setField("duracaoUnidade");
    obj.dataLink10:setName("dataLink10");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.scrollBox3);
    obj.rectangle16:setHeight(30);
    obj.rectangle16:setName("rectangle16");
    obj.rectangle16:setAlign("top");
    obj.rectangle16:setColor("DimGray");
    obj.rectangle16:setMargins({top=2, bottom=2});
    obj.rectangle16:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle16:setXradius(2);
    obj.rectangle16:setYradius(2);

    obj.flowLayout13 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout13:setParent(obj.rectangle16);
    obj.flowLayout13:setAlign("client");
    obj.flowLayout13:setName("flowLayout13");
    obj.flowLayout13:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout13:setVertAlign("leading");

    obj.flowPart57 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart57:setParent(obj.flowLayout13);
    obj.flowPart57:setMinWidth(173);
    obj.flowPart57:setMaxWidth(865);
    obj.flowPart57:setHeight(24);
    obj.flowPart57:setName("flowPart57");
    obj.flowPart57:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart57:setVertAlign("leading");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.flowPart57);
    obj.label54:setAlign("client");
    lfm_setPropAsString(obj.label54, "fontStyle",  "bold");
    obj.label54:setText("Recurso Necessário");
    obj.label54:setName("label54");
    obj.label54:setFontColor("white");

    obj.flowPart58 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart58:setParent(obj.flowLayout13);
    obj.flowPart58:setMinWidth(3);
    obj.flowPart58:setHeight(24);
    obj.flowPart58:setName("flowPart58");
    obj.flowPart58:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart58:setVertAlign("leading");

    obj.flowPart59 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart59:setParent(obj.flowLayout13);
    obj.flowPart59:setMinWidth(44);
    obj.flowPart59:setMaxWidth(220);
    obj.flowPart59:setHeight(24);
    obj.flowPart59:setName("flowPart59");
    obj.flowPart59:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart59:setVertAlign("leading");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.flowPart59);
    obj.edit24:setAlign("client");
    obj.edit24:setField("contadorUsos");
    obj.edit24:setHorzTextAlign("trailing");
    obj.edit24:setType("number");
    obj.edit24:setName("edit24");
    obj.edit24:setFontSize(15);
    obj.edit24:setFontColor("white");

    obj.flowPart60 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart60:setParent(obj.flowLayout13);
    obj.flowPart60:setMinWidth(23);
    obj.flowPart60:setMaxWidth(115);
    obj.flowPart60:setHeight(24);
    obj.flowPart60:setName("flowPart60");
    obj.flowPart60:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart60:setVertAlign("leading");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.flowPart60);
    obj.label55:setAlign("client");
    obj.label55:setText("de");
    obj.label55:setHorzTextAlign("center");
    obj.label55:setName("label55");
    obj.label55:setFontColor("white");

    obj.flowPart61 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart61:setParent(obj.flowLayout13);
    obj.flowPart61:setMinWidth(44);
    obj.flowPart61:setMaxWidth(220);
    obj.flowPart61:setHeight(24);
    obj.flowPart61:setName("flowPart61");
    obj.flowPart61:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart61:setVertAlign("leading");

    obj.popupEditContadorUsosTotal = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditContadorUsosTotal:setParent(obj.flowPart61);
    obj.popupEditContadorUsosTotal:setName("popupEditContadorUsosTotal");
    obj.popupEditContadorUsosTotal:setAlign("client");
    obj.popupEditContadorUsosTotal:setField("contadorUsosTotal");
    obj.popupEditContadorUsosTotal:setEnabled(false);
    obj.popupEditContadorUsosTotal:setFontSize(15);
    obj.popupEditContadorUsosTotal:setFontColor("white");

    obj.flowPart62 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart62:setParent(obj.flowLayout13);
    obj.flowPart62:setMinWidth(3);
    obj.flowPart62:setHeight(24);
    obj.flowPart62:setName("flowPart62");
    obj.flowPart62:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart62:setVertAlign("leading");

    obj.flowPart63 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart63:setParent(obj.flowLayout13);
    obj.flowPart63:setMinWidth(146);
    obj.flowPart63:setMaxWidth(730);
    obj.flowPart63:setHeight(24);
    obj.flowPart63:setName("flowPart63");
    obj.flowPart63:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart63:setVertAlign("leading");

    obj.popupEditContadorNome = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.popupEditContadorNome:setParent(obj.flowPart63);
    obj.popupEditContadorNome:setName("popupEditContadorNome");
    obj.popupEditContadorNome:setAlign("client");
    obj.popupEditContadorNome:setField("contadorNome");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.flowLayout13);
    obj.dataLink11:setField("contadorNome");
    obj.dataLink11:setName("dataLink11");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.scrollBox3);
    obj.label56:setText("Efeitos da Magia");
    obj.label56:setName("label56");
    obj.label56:setAlign("top");
    obj.label56:setFontSize(16.0);
    obj.label56:setHeight(30);
    lfm_setPropAsString(obj.label56, "fontStyle",  "bold");
    obj.label56:setFontColor("white");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.scrollBox3);
    obj.rectangle17:setHeight(30);
    obj.rectangle17:setName("rectangle17");
    obj.rectangle17:setAlign("top");
    obj.rectangle17:setColor("DimGray");
    obj.rectangle17:setMargins({top=2, bottom=2});
    obj.rectangle17:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle17:setXradius(2);
    obj.rectangle17:setYradius(2);

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.rectangle17);
    obj.label57:setAlign("left");
    lfm_setPropAsString(obj.label57, "fontStyle",  "bold");
    obj.label57:setText("Tipo de Ataque");
    obj.label57:setName("label57");
    obj.label57:setFontColor("white");

    obj.comboBox10 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox10:setParent(obj.rectangle17);
    obj.comboBox10:setAlign("right");
    obj.comboBox10:setWidth(230);
    obj.comboBox10:setField("ataqueTipo");
    obj.comboBox10:setItems({'Sem Ataque', 'Ataque com Arma Corpo-a-Corpo', 'Ataque com Arma a Distância', 'Ataque de Magia Corpo-a-Corpo', 'Ataque de Magia a Distância'});
    obj.comboBox10:setName("comboBox10");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.scrollBox3);
    obj.rectangle18:setHeight(30);
    obj.rectangle18:setName("rectangle18");
    obj.rectangle18:setAlign("top");
    obj.rectangle18:setColor("DimGray");
    obj.rectangle18:setMargins({top=2, bottom=2});
    obj.rectangle18:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle18:setXradius(2);
    obj.rectangle18:setYradius(2);

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.rectangle18);
    obj.label58:setAlign("left");
    lfm_setPropAsString(obj.label58, "fontStyle",  "bold");
    obj.label58:setText("Atributo de Ataque");
    obj.label58:setName("label58");
    obj.label58:setFontColor("white");

    obj.popupEditAtaqueAtrib = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.popupEditAtaqueAtrib:setParent(obj.rectangle18);
    obj.popupEditAtaqueAtrib:setName("popupEditAtaqueAtrib");
    obj.popupEditAtaqueAtrib:setAlign("right");
    obj.popupEditAtaqueAtrib:setWidth(230);
    obj.popupEditAtaqueAtrib:setField("ataqueAtributo");
    obj.popupEditAtaqueAtrib:setItems({'Conjuração', 'Força', 'Destreza', 'Constituição', 'Inteligência', 'Sabedoria', 'Carisma'});
    obj.popupEditAtaqueAtrib:setValues({'conjuracao', 'forca', 'destreza', 'constituicao', 'inteligencia', 'sabedoria', 'carisma'});

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.scrollBox3);
    obj.rectangle19:setHeight(30);
    obj.rectangle19:setName("rectangle19");
    obj.rectangle19:setAlign("top");
    obj.rectangle19:setColor("DimGray");
    obj.rectangle19:setMargins({top=2, bottom=2});
    obj.rectangle19:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle19:setXradius(2);
    obj.rectangle19:setYradius(2);

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.rectangle19);
    obj.label59:setAlign("left");
    lfm_setPropAsString(obj.label59, "fontStyle",  "bold");
    obj.label59:setText("Bônus de Ataque");
    obj.label59:setName("label59");
    obj.label59:setFontColor("white");

    obj.popupEditAtaqueBonus = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditAtaqueBonus:setParent(obj.rectangle19);
    obj.popupEditAtaqueBonus:setName("popupEditAtaqueBonus");
    obj.popupEditAtaqueBonus:setAlign("right");
    obj.popupEditAtaqueBonus:setWidth(230);
    obj.popupEditAtaqueBonus:setField("ataqueBonus");
    obj.popupEditAtaqueBonus:setFontSize(15);
    obj.popupEditAtaqueBonus:setFontColor("white");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.scrollBox3);
    obj.dataLink12:setField("ataqueTipo");
    obj.dataLink12:setName("dataLink12");

    obj.popupEditDanoRect = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.popupEditDanoRect:setParent(obj.scrollBox3);
    obj.popupEditDanoRect:setName("popupEditDanoRect");
    obj.popupEditDanoRect:setHeight(30);
    obj.popupEditDanoRect:setAlign("top");
    obj.popupEditDanoRect:setColor("DimGray");
    obj.popupEditDanoRect:setMargins({top=2, bottom=2});
    obj.popupEditDanoRect:setPadding({top=3, bottom=3, left=3, right=3});
    obj.popupEditDanoRect:setXradius(2);
    obj.popupEditDanoRect:setYradius(2);

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.popupEditDanoRect);
    obj.layout13:setAlign("top");
    obj.layout13:setHeight(30);
    obj.layout13:setName("layout13");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout13);
    obj.label60:setAlign("left");
    lfm_setPropAsString(obj.label60, "fontStyle",  "bold");
    obj.label60:setText("Fórmulas de Dano");
    obj.label60:setName("label60");
    obj.label60:setFontColor("white");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout13);
    obj.button4:setAlign("right");
    obj.button4:setWidth(140);
    obj.button4:setText("+ Adicionar Fórmula");
    obj.button4:setName("button4");

    obj.popupEditDanoLegenda = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.popupEditDanoLegenda:setParent(obj.popupEditDanoRect);
    obj.popupEditDanoLegenda:setName("popupEditDanoLegenda");
    obj.popupEditDanoLegenda:setAlign("bottom");
    obj.popupEditDanoLegenda:setHeight(22);
    obj.popupEditDanoLegenda:setPadding({top=2});
    obj.popupEditDanoLegenda:setVisible(false);
    obj.popupEditDanoLegenda:setMargins({left=1, right=1, top=2, bottom=2});
    obj.popupEditDanoLegenda:setVertAlign("leading");

    obj.flowPart64 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart64:setParent(obj.popupEditDanoLegenda);
    obj.flowPart64:setWidth(34);
    obj.flowPart64:setMaxWidth(835);
    obj.flowPart64:setHeight(20);
    obj.flowPart64:setName("flowPart64");
    obj.flowPart64:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart64:setVertAlign("leading");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.flowPart64);
    obj.label61:setAlign("client");
    obj.label61:setText("Fórmula");
    obj.label61:setName("label61");
    obj.label61:setFontColor("white");

    obj.flowPart65 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart65:setParent(obj.popupEditDanoLegenda);
    obj.flowPart65:setWidth(5);
    obj.flowPart65:setHeight(20);
    obj.flowPart65:setName("flowPart65");
    obj.flowPart65:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart65:setVertAlign("leading");

    obj.flowPart66 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart66:setParent(obj.popupEditDanoLegenda);
    obj.flowPart66:setWidth(33);
    obj.flowPart66:setMaxWidth(830);
    obj.flowPart66:setHeight(20);
    obj.flowPart66:setName("flowPart66");
    obj.flowPart66:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart66:setVertAlign("leading");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.flowPart66);
    obj.label62:setAlign("client");
    obj.label62:setText("Contexto");
    obj.label62:setName("label62");
    obj.label62:setFontColor("white");

    obj.flowPart67 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart67:setParent(obj.popupEditDanoLegenda);
    obj.flowPart67:setWidth(5);
    obj.flowPart67:setHeight(20);
    obj.flowPart67:setName("flowPart67");
    obj.flowPart67:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart67:setVertAlign("leading");

    obj.flowPart68 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart68:setParent(obj.popupEditDanoLegenda);
    obj.flowPart68:setWidth(27);
    obj.flowPart68:setMaxWidth(685);
    obj.flowPart68:setHeight(20);
    obj.flowPart68:setName("flowPart68");
    obj.flowPart68:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart68:setVertAlign("leading");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.flowPart68);
    obj.label63:setAlign("client");
    obj.label63:setText("Tipo");
    obj.label63:setName("label63");
    obj.label63:setFontColor("white");

    obj.flowPart69 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart69:setParent(obj.popupEditDanoLegenda);
    obj.flowPart69:setWidth(5);
    obj.flowPart69:setHeight(20);
    obj.flowPart69:setName("flowPart69");
    obj.flowPart69:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart69:setVertAlign("leading");

    obj.flowPart70 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart70:setParent(obj.popupEditDanoLegenda);
    obj.flowPart70:setWidth(20);
    obj.flowPart70:setMaxWidth(35);
    obj.flowPart70:setHeight(20);
    obj.flowPart70:setName("flowPart70");
    obj.flowPart70:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart70:setVertAlign("leading");

    obj.popupEditDanoRL = GUI.fromHandle(_obj_newObject("recordList"));
    obj.popupEditDanoRL:setParent(obj.popupEditDanoRect);
    obj.popupEditDanoRL:setName("popupEditDanoRL");
    obj.popupEditDanoRL:setAlign("bottom");
    obj.popupEditDanoRL:setAutoHeight(true);
    obj.popupEditDanoRL:setTemplateForm("frmItemFormula");
    obj.popupEditDanoRL:setField("danos");

    obj.popupEditFormulaRect = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.popupEditFormulaRect:setParent(obj.scrollBox3);
    obj.popupEditFormulaRect:setName("popupEditFormulaRect");
    obj.popupEditFormulaRect:setHeight(30);
    obj.popupEditFormulaRect:setAlign("top");
    obj.popupEditFormulaRect:setColor("DimGray");
    obj.popupEditFormulaRect:setMargins({top=2, bottom=2});
    obj.popupEditFormulaRect:setPadding({top=3, bottom=3, left=3, right=3});
    obj.popupEditFormulaRect:setXradius(2);
    obj.popupEditFormulaRect:setYradius(2);

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.popupEditFormulaRect);
    obj.layout14:setAlign("top");
    obj.layout14:setHeight(30);
    obj.layout14:setName("layout14");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout14);
    obj.label64:setAlign("left");
    lfm_setPropAsString(obj.label64, "fontStyle",  "bold");
    obj.label64:setText("Outras Fórmulas");
    obj.label64:setName("label64");
    obj.label64:setFontColor("white");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout14);
    obj.button5:setAlign("right");
    obj.button5:setWidth(140);
    obj.button5:setText("+ Adicionar Fórmula");
    obj.button5:setName("button5");

    obj.popupEditFormulaLegenda = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.popupEditFormulaLegenda:setParent(obj.popupEditFormulaRect);
    obj.popupEditFormulaLegenda:setName("popupEditFormulaLegenda");
    obj.popupEditFormulaLegenda:setAlign("bottom");
    obj.popupEditFormulaLegenda:setHeight(22);
    obj.popupEditFormulaLegenda:setPadding({top=2});
    obj.popupEditFormulaLegenda:setVisible(false);
    obj.popupEditFormulaLegenda:setMargins({left=1, right=1, top=2, bottom=2});
    obj.popupEditFormulaLegenda:setVertAlign("leading");

    obj.flowPart71 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart71:setParent(obj.popupEditFormulaLegenda);
    obj.flowPart71:setWidth(34);
    obj.flowPart71:setMaxWidth(835);
    obj.flowPart71:setHeight(20);
    obj.flowPart71:setName("flowPart71");
    obj.flowPart71:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart71:setVertAlign("leading");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.flowPart71);
    obj.label65:setAlign("client");
    obj.label65:setText("Fórmula");
    obj.label65:setName("label65");
    obj.label65:setFontColor("white");

    obj.flowPart72 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart72:setParent(obj.popupEditFormulaLegenda);
    obj.flowPart72:setWidth(5);
    obj.flowPart72:setHeight(20);
    obj.flowPart72:setName("flowPart72");
    obj.flowPart72:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart72:setVertAlign("leading");

    obj.flowPart73 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart73:setParent(obj.popupEditFormulaLegenda);
    obj.flowPart73:setWidth(33);
    obj.flowPart73:setMaxWidth(830);
    obj.flowPart73:setHeight(20);
    obj.flowPart73:setName("flowPart73");
    obj.flowPart73:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart73:setVertAlign("leading");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.flowPart73);
    obj.label66:setAlign("client");
    obj.label66:setText("Contexto");
    obj.label66:setName("label66");
    obj.label66:setFontColor("white");

    obj.flowPart74 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart74:setParent(obj.popupEditFormulaLegenda);
    obj.flowPart74:setWidth(5);
    obj.flowPart74:setHeight(20);
    obj.flowPart74:setName("flowPart74");
    obj.flowPart74:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart74:setVertAlign("leading");

    obj.flowPart75 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart75:setParent(obj.popupEditFormulaLegenda);
    obj.flowPart75:setWidth(20);
    obj.flowPart75:setMaxWidth(35);
    obj.flowPart75:setHeight(20);
    obj.flowPart75:setName("flowPart75");
    obj.flowPart75:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart75:setVertAlign("leading");

    obj.popupEditFormulaRL = GUI.fromHandle(_obj_newObject("recordList"));
    obj.popupEditFormulaRL:setParent(obj.popupEditFormulaRect);
    obj.popupEditFormulaRL:setName("popupEditFormulaRL");
    obj.popupEditFormulaRL:setAlign("bottom");
    obj.popupEditFormulaRL:setAutoHeight(true);
    obj.popupEditFormulaRL:setTemplateForm("frmItemFormula");
    obj.popupEditFormulaRL:setField("formulas");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.scrollBox3);
    obj.rectangle20:setHeight(30);
    obj.rectangle20:setName("rectangle20");
    obj.rectangle20:setAlign("top");
    obj.rectangle20:setColor("DimGray");
    obj.rectangle20:setMargins({top=2, bottom=2});
    obj.rectangle20:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle20:setXradius(2);
    obj.rectangle20:setYradius(2);

    obj.flowLayout14 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout14:setParent(obj.rectangle20);
    obj.flowLayout14:setAlign("client");
    obj.flowLayout14:setName("flowLayout14");
    obj.flowLayout14:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout14:setVertAlign("leading");

    obj.flowPart76 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart76:setParent(obj.flowLayout14);
    obj.flowPart76:setMinWidth(173);
    obj.flowPart76:setMaxWidth(865);
    obj.flowPart76:setHeight(24);
    obj.flowPart76:setName("flowPart76");
    obj.flowPart76:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart76:setVertAlign("leading");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.flowPart76);
    obj.label67:setAlign("client");
    lfm_setPropAsString(obj.label67, "fontStyle",  "bold");
    obj.label67:setText("Teste de Resistência");
    obj.label67:setName("label67");
    obj.label67:setFontColor("white");

    obj.flowPart77 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart77:setParent(obj.flowLayout14);
    obj.flowPart77:setMinWidth(3);
    obj.flowPart77:setHeight(24);
    obj.flowPart77:setName("flowPart77");
    obj.flowPart77:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart77:setVertAlign("leading");

    obj.flowPart78 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart78:setParent(obj.flowLayout14);
    obj.flowPart78:setMinWidth(106);
    obj.flowPart78:setMaxWidth(530);
    obj.flowPart78:setHeight(24);
    obj.flowPart78:setName("flowPart78");
    obj.flowPart78:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart78:setVertAlign("leading");

    obj.comboBox11 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox11:setParent(obj.flowPart78);
    obj.comboBox11:setAlign("client");
    obj.comboBox11:setField("cdResistenciaAtributo");
    obj.comboBox11:setItems({'', 'Força', 'Destreza', 'Constituição', 'Inteligência', 'Sabedoria', 'Carisma'});
    obj.comboBox11:setValues({'', 'forca', 'destreza', 'constituicao', 'inteligencia', 'sabedoria', 'carisma'});
    obj.comboBox11:setName("comboBox11");

    obj.flowPart79 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart79:setParent(obj.flowLayout14);
    obj.flowPart79:setMinWidth(61);
    obj.flowPart79:setMaxWidth(305);
    obj.flowPart79:setHeight(24);
    obj.flowPart79:setName("flowPart79");
    obj.flowPart79:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart79:setVertAlign("leading");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.flowPart79);
    obj.label68:setAlign("client");
    obj.label68:setText("contra CD.");
    obj.label68:setHorzTextAlign("center");
    obj.label68:setName("label68");
    obj.label68:setFontColor("white");

    obj.flowPart80 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart80:setParent(obj.flowLayout14);
    obj.flowPart80:setMinWidth(30);
    obj.flowPart80:setMaxWidth(150);
    obj.flowPart80:setHeight(24);
    obj.flowPart80:setName("flowPart80");
    obj.flowPart80:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart80:setVertAlign("leading");

    obj.popupEditCDvalor = GUI.fromHandle(_obj_newObject("edit"));
    obj.popupEditCDvalor:setParent(obj.flowPart80);
    obj.popupEditCDvalor:setName("popupEditCDvalor");
    obj.popupEditCDvalor:setAlign("client");
    obj.popupEditCDvalor:setType("number");
    obj.popupEditCDvalor:setField("cdResistenciaValor");
    obj.popupEditCDvalor:setEnabled(false);
    obj.popupEditCDvalor:setFontSize(15);
    obj.popupEditCDvalor:setFontColor("white");

    obj.flowPart81 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart81:setParent(obj.flowLayout14);
    obj.flowPart81:setMinWidth(3);
    obj.flowPart81:setHeight(24);
    obj.flowPart81:setName("flowPart81");
    obj.flowPart81:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart81:setVertAlign("leading");

    obj.flowPart82 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart82:setParent(obj.flowLayout14);
    obj.flowPart82:setMinWidth(106);
    obj.flowPart82:setMaxWidth(630);
    obj.flowPart82:setHeight(24);
    obj.flowPart82:setName("flowPart82");
    obj.flowPart82:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart82:setVertAlign("leading");

    obj.comboBox12 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox12:setParent(obj.flowPart82);
    obj.comboBox12:setAlign("client");
    obj.comboBox12:setField("cdResistenciaTipo");
    obj.comboBox12:setItems({'Conjuração', 'Força', 'Destreza', 'Constituição', 'Inteligência', 'Sabedoria', 'Carisma', 'Fixo'});
    obj.comboBox12:setValues({'conjuracao', 'forca', 'destreza', 'constituicao', 'inteligencia', 'sabedoria', 'carisma', 'fixo'});
    obj.comboBox12:setName("comboBox12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.flowLayout14);
    obj.dataLink13:setField("cdResistenciaTipo");
    obj.dataLink13:setName("dataLink13");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.scrollBox3);
    obj.rectangle21:setHeight(60);
    obj.rectangle21:setName("rectangle21");
    obj.rectangle21:setAlign("top");
    obj.rectangle21:setColor("DimGray");
    obj.rectangle21:setMargins({top=2, bottom=2});
    obj.rectangle21:setPadding({top=3, bottom=3, left=3, right=3});
    obj.rectangle21:setXradius(2);
    obj.rectangle21:setYradius(2);

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.rectangle21);
    obj.label69:setAlign("top");
    obj.label69:setText("Mensagem");
    obj.label69:setHeight(27);
    obj.label69:setName("label69");
    obj.label69:setFontColor("white");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.rectangle21);
    obj.edit25:setAlign("top");
    obj.edit25:setField("mensagem");
    obj.edit25:setHeight(27);
    obj.edit25:setName("edit25");
    obj.edit25:setFontSize(15);
    obj.edit25:setFontColor("white");

    obj.tab6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tcPopupEdit);
    obj.tab6:setTitle("Importar");
    obj.tab6:setName("tab6");

 


 require("import5etools.lua"); 


 


    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.tab6);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setPadding({top=5, bottom=5, left=5, right=5});
    obj.scrollBox4:setName("scrollBox4");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.scrollBox4);
    obj.label70:setText("Qual a fonte da magia?");
    obj.label70:setName("label70");
    obj.label70:setAlign("top");
    obj.label70:setFontSize(16.0);
    obj.label70:setHeight(30);
    lfm_setPropAsString(obj.label70, "fontStyle",  "bold");
    obj.label70:setFontColor("white");

    obj.comboBoxImportSource = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBoxImportSource:setParent(obj.scrollBox4);
    obj.comboBoxImportSource:setName("comboBoxImportSource");
    obj.comboBoxImportSource:setAlign("top");
    obj.comboBoxImportSource:setField("importSourceName");

 


 dload.getSourceNames(self, "spells", function(items) self.comboBoxImportSource:setItems(items); end); 


 


    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.scrollBox4);
    obj.dataLink14:setField("importSourceName");
    obj.dataLink14:setDefaultValue("PHB");
    obj.dataLink14:setName("dataLink14");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.scrollBox4);
    obj.edit26:setAlign("top");
    obj.edit26:setField("importSourcePath");
    obj.edit26:setReadOnly(true);
    obj.edit26:setName("edit26");
    obj.edit26:setFontSize(15);
    obj.edit26:setFontColor("white");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.scrollBox4);
    obj.label71:setText("Qual o nível da magia?");
    obj.label71:setName("label71");
    obj.label71:setAlign("top");
    obj.label71:setFontSize(16.0);
    obj.label71:setHeight(30);
    lfm_setPropAsString(obj.label71, "fontStyle",  "bold");
    obj.label71:setFontColor("white");

    obj.comboBoxImportLevel = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBoxImportLevel:setParent(obj.scrollBox4);
    obj.comboBoxImportLevel:setName("comboBoxImportLevel");
    obj.comboBoxImportLevel:setAlign("top");
    obj.comboBoxImportLevel:setField("importLevel");
    obj.comboBoxImportLevel:setItems({'Qualquer', 'Truque', '1º nível', '2º nível', '3º nível', '4º nível', '5º nível', '6º nível', '7º nível', '8º nível', '9º nível', '10º nível'});
    obj.comboBoxImportLevel:setValues({'', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'});

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.scrollBox4);
    obj.dataLink15:setField("importLevel");
    obj.dataLink15:setDefaultValue("0");
    obj.dataLink15:setName("dataLink15");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.scrollBox4);
    obj.label72:setText("Qual a classe da magia?");
    obj.label72:setName("label72");
    obj.label72:setAlign("top");
    obj.label72:setFontSize(16.0);
    obj.label72:setHeight(30);
    lfm_setPropAsString(obj.label72, "fontStyle",  "bold");
    obj.label72:setFontColor("white");

    obj.comboBoxImportClass = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBoxImportClass:setParent(obj.scrollBox4);
    obj.comboBoxImportClass:setName("comboBoxImportClass");
    obj.comboBoxImportClass:setAlign("top");
    obj.comboBoxImportClass:setField("importClass");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.scrollBox4);
    obj.dataLink16:setFields({'importSourcePath', 'importLevel'});
    obj.dataLink16:setName("dataLink16");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.scrollBox4);
    obj.label73:setText("Qual a magia?");
    obj.label73:setName("label73");
    obj.label73:setAlign("top");
    obj.label73:setFontSize(16.0);
    obj.label73:setHeight(30);
    lfm_setPropAsString(obj.label73, "fontStyle",  "bold");
    obj.label73:setFontColor("white");

    obj.comboBoxImportMagia = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBoxImportMagia:setParent(obj.scrollBox4);
    obj.comboBoxImportMagia:setName("comboBoxImportMagia");
    obj.comboBoxImportMagia:setAlign("top");
    obj.comboBoxImportMagia:setField("importName");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.scrollBox4);
    obj.dataLink17:setFields({'importSourcePath', 'importLevel', 'importClass'});
    obj.dataLink17:setName("dataLink17");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.scrollBox4);
    obj.button6:setText("Importar");
    obj.button6:setName("button6");
    obj.button6:setAlign("top");
    obj.button6:setFontSize(16.0);
    obj.button6:setHeight(30);
    lfm_setPropAsString(obj.button6, "fontStyle",  "bold");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.rectangle3);
    obj.dataLink18:setFields({'magias.habilidadeDeConjuracao', 'atributos.modForca', 'atributos.modDestreza', 'atributos.modConstituicao', 'atributos.modInteligencia', 'atributos.modSabedoria', 'atributos.modCarisma', 'bonusProficiencia'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.rectangle3);
    obj.dataLink19:setField("magias.selecionada");
    obj.dataLink19:setName("dataLink19");

    obj.tab7 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab7:setParent(obj.pgcPrincipal);
    obj.tab7:setTitle("CONTADORES");
    obj.tab7:setName("tab7");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.tab7);
    obj.rectangle22:setStrokeColor("white");
    obj.rectangle22:setStrokeSize(1);
    obj.rectangle22:setName("rectangle22");
    obj.rectangle22:setAlign("client");
    obj.rectangle22:setColor("#40000000");
    obj.rectangle22:setXradius(10);
    obj.rectangle22:setYradius(10);

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.rectangle22);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.scrollBox5);
    obj.button7:setText("Add");
    obj.button7:setAlign("top");
    obj.button7:setName("button7");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.scrollBox5);
    obj.button8:setText("Import from Macro");
    obj.button8:setAlign("top");
    obj.button8:setName("button8");

    obj.rclContadores = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclContadores:setParent(obj.scrollBox5);
    obj.rclContadores:setName("rclContadores");
    obj.rclContadores:setAlign("top");
    obj.rclContadores:setField("contadores");
    obj.rclContadores:setTemplateForm("frmContador");
    obj.rclContadores:setAutoHeight(true);
    obj.rclContadores:setMinHeight(5);
    obj.rclContadores:setHitTest(false);
    obj.rclContadores:setMargins({top=10, bottom=10, left=10, right=10});

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.rectangle22);
    obj.dataLink20:setFields({'descansoLongo', 'descansoCurto'});
    obj.dataLink20:setName("dataLink20");

    obj.tab8 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab8:setParent(obj.pgcPrincipal);
    obj.tab8:setTitle("PROPRIEDADES");
    obj.tab8:setName("tab8");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.tab8);
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

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.rectangle23);
    obj.button9:setAlign("bottom");
    obj.button9:setText("Resetar Propriedades");
    obj.button9:setName("button9");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle23);
    obj.button10:setAlign("bottom");
    obj.button10:setText("Adicionar Propriedade");
    obj.button10:setName("button10");

    obj.tab9 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab9:setParent(obj.pgcPrincipal);
    obj.tab9:setTitle("DIARIO");
    obj.tab9:setName("tab9");

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.tab9);
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

    obj.tab10 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab10:setParent(obj.pgcPrincipal);
    obj.tab10:setTitle("COMPANHEIRO");
    obj.tab10:setName("tab10");

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.tab10);
    obj.rectangle25:setStrokeColor("white");
    obj.rectangle25:setStrokeSize(1);
    obj.rectangle25:setName("rectangle25");
    obj.rectangle25:setAlign("client");
    obj.rectangle25:setColor("#40000000");
    obj.rectangle25:setXradius(10);
    obj.rectangle25:setYradius(10);

 require("common.lua"); 


    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.rectangle25);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.fraCompanionLayout = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraCompanionLayout:setParent(obj.scrollBox6);
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

    obj.flowLayout15 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout15:setParent(obj.fraCompanionLayout);
    obj.flowLayout15:setAutoHeight(true);
    obj.flowLayout15:setMinScaledWidth(290);
    obj.flowLayout15:setHorzAlign("center");
    obj.flowLayout15:setName("flowLayout15");
    obj.flowLayout15:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout15:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout15:setVertAlign("leading");

    obj.flwNomeCompanion1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flwNomeCompanion1:setParent(obj.flowLayout15);
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
    obj.fraUpperGridCompanion:setParent(obj.flowLayout15);
    obj.fraUpperGridCompanion:setMinWidth(320);
    obj.fraUpperGridCompanion:setMaxWidth(1600);
    obj.fraUpperGridCompanion:setName("fraUpperGridCompanion");
    obj.fraUpperGridCompanion:setAvoidScale(true);
    obj.fraUpperGridCompanion:setFrameStyle("frames/panel4transp/frame.xml");
    obj.fraUpperGridCompanion:setAutoHeight(true);
    obj.fraUpperGridCompanion:setVertAlign("trailing");
    obj.fraUpperGridCompanion:setMaxControlsPerLine(3);
    obj.fraUpperGridCompanion:setMargins({left=1, right=1, top=2, bottom=2});

    obj.UpperGridCampo1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo1:setParent(obj.fraUpperGridCompanion);
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
    obj.edtUpperGridCampo1:setField("classeENivel.Companion");
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
    obj.UpperGridCampo2:setParent(obj.fraUpperGridCompanion);
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
    obj.edtUpperGridCampo2:setField("origem.Companion");
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
    obj.UpperGridCampo3:setParent(obj.fraUpperGridCompanion);
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
    obj.edtUpperGridCampo3:setField("regiao.Companion");
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
    obj.labUpperGridCampo3:setText("REGIÃO");
    obj.labUpperGridCampo3:setVertTextAlign("leading");
    obj.labUpperGridCampo3:setWordWrap(true);
    obj.labUpperGridCampo3:setTextTrimming("none");
    obj.labUpperGridCampo3:setFontSize(12);
    obj.labUpperGridCampo3:setFontColor("#D0D0D0");

    self.UpperGridCampo3:setHeight(self.edtUpperGridCampo3:getHeight() + self.labUpperGridCampo3:getHeight() + self.linUpperGridCampo3:getHeight());


    obj.UpperGridCampo4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo4:setParent(obj.fraUpperGridCompanion);
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
    obj.edtUpperGridCampo4:setField("antecedente.Companion");
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
    obj.UpperGridCampo5:setParent(obj.fraUpperGridCompanion);
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
    obj.edtUpperGridCampo5:setField("alinhamento.Companion");
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
    obj.UpperGridCampo6:setParent(obj.fraUpperGridCompanion);
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
    obj.edtUpperGridCampo6:setField("devocoes.Companion");
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
    obj.labUpperGridCampo6:setText("DEVOÇÕES");
    obj.labUpperGridCampo6:setVertTextAlign("leading");
    obj.labUpperGridCampo6:setWordWrap(true);
    obj.labUpperGridCampo6:setTextTrimming("none");
    obj.labUpperGridCampo6:setFontSize(12);
    obj.labUpperGridCampo6:setFontColor("#D0D0D0");

    self.UpperGridCampo6:setHeight(self.edtUpperGridCampo6:getHeight() + self.labUpperGridCampo6:getHeight() + self.linUpperGridCampo6:getHeight());


    obj.flowLineBreak5 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak5:setParent(obj.fraCompanionLayout);
    obj.flowLineBreak5:setName("flowLineBreak5");

    obj.flowLayout16 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout16:setParent(obj.fraCompanionLayout);
    obj.flowLayout16:setHorzAlign("justify");
    obj.flowLayout16:setAutoHeight(true);
    obj.flowLayout16:setAvoidScale(true);
    obj.flowLayout16:setName("flowLayout16");
    obj.flowLayout16:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout16:setMinScaledWidth(300);
    obj.flowLayout16:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout16:setVertAlign("leading");

    obj.flowPart83 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart83:setParent(obj.flowLayout16);
    obj.flowPart83:setMinWidth(280);
    obj.flowPart83:setMaxWidth(800);
    obj.flowPart83:setHeight(64);
    obj.flowPart83:setFrameStyle("frames/posCaptionEdit1/frame.xml");
    obj.flowPart83:setName("flowPart83");
    obj.flowPart83:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart83:setVertAlign("leading");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.flowPart83);
    obj.edit27:setAlign("left");
    obj.edit27:setField("graudelealdade");
    obj.edit27:setWidth(65);
    obj.edit27:setName("edit27");
    obj.edit27:setTransparent(true);
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setFontSize(15);
    obj.edit27:setFontColor("white");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.flowPart83);
    obj.label74:setAlign("client");
    obj.label74:setText("GRAU DE LEALDADE");
    obj.label74:setMargins({left=10});
    obj.label74:setHorzTextAlign("center");
    obj.label74:setName("label74");
    obj.label74:setFontSize(12);
    obj.label74:setFontColor("#D0D0D0");

    obj.flowPart84 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart84:setParent(obj.flowLayout16);
    obj.flowPart84:setMinWidth(280);
    obj.flowPart84:setMaxWidth(800);
    obj.flowPart84:setHeight(64);
    obj.flowPart84:setFrameStyle("frames/posCaptionEdit2/frame.xml");
    obj.flowPart84:setName("flowPart84");
    obj.flowPart84:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart84:setVertAlign("leading");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.flowPart84);
    obj.edit28:setAlign("left");
    obj.edit28:setField("CACompanion");
    obj.edit28:setWidth(70);
    obj.edit28:setName("edit28");
    obj.edit28:setTransparent(true);
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setFontSize(15);
    obj.edit28:setFontColor("white");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.flowPart84);
    obj.label75:setAlign("client");
    obj.label75:setText("CLASSE DE ARMADURA");
    obj.label75:setTextTrimming("none");
    obj.label75:setWordWrap(true);
    obj.label75:setMargins({left=10});
    obj.label75:setHorzTextAlign("center");
    obj.label75:setName("label75");
    obj.label75:setFontSize(12);
    obj.label75:setFontColor("#D0D0D0");

    obj.flowLineBreak6 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak6:setParent(obj.fraCompanionLayout);
    obj.flowLineBreak6:setName("flowLineBreak6");

    obj.flowLayout17 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout17:setParent(obj.fraCompanionLayout);
    obj.flowLayout17:setAutoHeight(true);
    obj.flowLayout17:setMinScaledWidth(290);
    obj.flowLayout17:setHorzAlign("center");
    obj.flowLayout17:setName("flowLayout17");
    obj.flowLayout17:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout17:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout17:setVertAlign("leading");

    obj.fraLayAtributosCompanion = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraLayAtributosCompanion:setParent(obj.flowLayout17);
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

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink21:setField("atributos.companionforca");
    obj.dataLink21:setName("dataLink21");

    obj.flowPart85 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart85:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart85:setHeight(140);
    obj.flowPart85:setMinWidth(320);
    obj.flowPart85:setMaxWidth(420);
    obj.flowPart85:setMinScaledWidth(305);
    obj.flowPart85:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart85:setName("flowPart85");
    obj.flowPart85:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart85:setVertAlign("leading");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.flowPart85);
    obj.layout15:setLeft(6);
    obj.layout15:setTop(12);
    obj.layout15:setWidth(116);
    obj.layout15:setHeight(115);
    obj.layout15:setName("layout15");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout15);
    obj.edit29:setAlign("top");
    obj.edit29:setMargins({left=30, right=30});
    obj.edit29:setField("atributos.companionforca");
    obj.edit29:setHeight(30);
    obj.edit29:setType("number");
    obj.edit29:setMin(0);
    obj.edit29:setMax(99);
    obj.edit29:setName("edit29");
    obj.edit29:setTransparent(true);
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setFontSize(15);
    obj.edit29:setFontColor("white");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.flowPart85);
    obj.label76:setFrameRegion("modificador");
    obj.label76:setField("atributos.modcompanionforcastr");
    obj.label76:setHorzTextAlign("center");
    obj.label76:setVertTextAlign("center");
    obj.label76:setFontSize(46);
    lfm_setPropAsString(obj.label76, "fontStyle",  "bold");
    obj.label76:setName("label76");
    obj.label76:setFontColor("white");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.flowPart85);
    obj.layout16:setFrameRegion("titulo");
    obj.layout16:setName("layout16");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.layout16);
    obj.button11:setAlign("client");
    obj.button11:setText("FORÇA");
    obj.button11:setVertTextAlign("center");
    obj.button11:setHorzTextAlign("center");
    obj.button11:setName("button11");

    obj.flowLayout18 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout18:setParent(obj.flowPart85);
    obj.flowLayout18:setFrameRegion("RegiaoDePericias");
    obj.flowLayout18:setAutoHeight(true);
    obj.flowLayout18:setLineSpacing(0);
    obj.flowLayout18:setHorzAlign("leading");
    obj.flowLayout18:setName("flowLayout18");
    obj.flowLayout18:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout18:setVertAlign("leading");

    obj.flowPart86 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart86:setParent(obj.flowLayout18);
    obj.flowPart86:setMinWidth(206);
    obj.flowPart86:setMaxWidth(250);
    obj.flowPart86:setHeight(17);
    obj.flowPart86:setName("flowPart86");
    obj.flowPart86:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart86:setVertAlign("leading");

    obj.cbProfcompanionforca = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionforca:setParent(obj.flowPart86);
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
				



			


    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.flowPart86);
    obj.dataLink22:setField("macroExpertise.companionforca");
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.flowPart86);
    obj.dataLink23:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink23:setName("dataLink23");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.flowPart86);
    obj.layout17:setAlign("left");
    obj.layout17:setWidth(26);
    obj.layout17:setMargins({left=2});
    obj.layout17:setName("layout17");

    obj.labProfcompanionforca = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionforca:setParent(obj.layout17);
    obj.labProfcompanionforca:setName("labProfcompanionforca");
    obj.labProfcompanionforca:setField("resistencias.bonuscompanionforcastr");
    obj.labProfcompanionforca:setAlign("client");
    obj.labProfcompanionforca:setHorzTextAlign("center");
    obj.labProfcompanionforca:setVertTextAlign("trailing");
    obj.labProfcompanionforca:setTextTrimming("none");
    obj.labProfcompanionforca:setFontColor("white");

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.layout17);
    obj.horzLine3:setStrokeColor("white");
    obj.horzLine3:setStrokeSize(1);
    obj.horzLine3:setAlign("bottom");
    obj.horzLine3:setName("horzLine3");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.flowPart86);
    obj.button12:setAlign("left");
    obj.button12:setText("Resistência");
    obj.button12:setWidth(122);
    obj.button12:setMargins({left=2});
    obj.button12:setName("button12");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.flowLayout18);
    obj.dataLink24:setFields({'atributos.modcompanionforca', 'bonusProficiencia', 'resistencias.companionforca', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink24:setName("dataLink24");

    obj.flowPart87 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart87:setParent(obj.flowLayout18);
    obj.flowPart87:setMinWidth(206);
    obj.flowPart87:setMaxWidth(250);
    obj.flowPart87:setHeight(17);
    obj.flowPart87:setName("flowPart87");
    obj.flowPart87:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart87:setVertAlign("leading");

    obj.cbProfcompanionatletismo = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionatletismo:setParent(obj.flowPart87);
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
				



			


    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.flowPart87);
    obj.dataLink25:setField("macroExpertise.companionatletismo");
    obj.dataLink25:setName("dataLink25");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.flowPart87);
    obj.dataLink26:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink26:setName("dataLink26");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.flowPart87);
    obj.layout18:setAlign("left");
    obj.layout18:setWidth(26);
    obj.layout18:setMargins({left=2});
    obj.layout18:setName("layout18");

    obj.labProfcompanionatletismo = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionatletismo:setParent(obj.layout18);
    obj.labProfcompanionatletismo:setName("labProfcompanionatletismo");
    obj.labProfcompanionatletismo:setField("pericias.bonuscompanionatletismostr");
    obj.labProfcompanionatletismo:setAlign("client");
    obj.labProfcompanionatletismo:setHorzTextAlign("center");
    obj.labProfcompanionatletismo:setVertTextAlign("trailing");
    obj.labProfcompanionatletismo:setTextTrimming("none");
    obj.labProfcompanionatletismo:setFontColor("white");

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.layout18);
    obj.horzLine4:setStrokeColor("white");
    obj.horzLine4:setStrokeSize(1);
    obj.horzLine4:setAlign("bottom");
    obj.horzLine4:setName("horzLine4");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.flowPart87);
    obj.button13:setAlign("left");
    obj.button13:setText("Atletismo");
    obj.button13:setWidth(122);
    obj.button13:setMargins({left=2});
    obj.button13:setName("button13");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.flowLayout18);
    obj.dataLink27:setFields({'atributos.modcompanionforca', 'bonusProficiencia', 'pericias.companionatletismo', 'macroExpertise.companionatletismo', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink27:setName("dataLink27");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink28:setField("atributos.companiondestreza");
    obj.dataLink28:setName("dataLink28");

    obj.flowPart88 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart88:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart88:setHeight(140);
    obj.flowPart88:setMinWidth(320);
    obj.flowPart88:setMaxWidth(420);
    obj.flowPart88:setMinScaledWidth(305);
    obj.flowPart88:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart88:setName("flowPart88");
    obj.flowPart88:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart88:setVertAlign("leading");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.flowPart88);
    obj.layout19:setLeft(6);
    obj.layout19:setTop(12);
    obj.layout19:setWidth(116);
    obj.layout19:setHeight(115);
    obj.layout19:setName("layout19");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout19);
    obj.edit30:setAlign("top");
    obj.edit30:setMargins({left=30, right=30});
    obj.edit30:setField("atributos.companiondestreza");
    obj.edit30:setHeight(30);
    obj.edit30:setType("number");
    obj.edit30:setMin(0);
    obj.edit30:setMax(99);
    obj.edit30:setName("edit30");
    obj.edit30:setTransparent(true);
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setFontSize(15);
    obj.edit30:setFontColor("white");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.flowPart88);
    obj.label77:setFrameRegion("modificador");
    obj.label77:setField("atributos.modcompaniondestrezastr");
    obj.label77:setHorzTextAlign("center");
    obj.label77:setVertTextAlign("center");
    obj.label77:setFontSize(46);
    lfm_setPropAsString(obj.label77, "fontStyle",  "bold");
    obj.label77:setName("label77");
    obj.label77:setFontColor("white");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.flowPart88);
    obj.layout20:setFrameRegion("titulo");
    obj.layout20:setName("layout20");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.layout20);
    obj.button14:setAlign("client");
    obj.button14:setText("DESTREZA");
    obj.button14:setVertTextAlign("center");
    obj.button14:setHorzTextAlign("center");
    obj.button14:setName("button14");

    obj.flowLayout19 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout19:setParent(obj.flowPart88);
    obj.flowLayout19:setFrameRegion("RegiaoDePericias");
    obj.flowLayout19:setAutoHeight(true);
    obj.flowLayout19:setLineSpacing(0);
    obj.flowLayout19:setHorzAlign("leading");
    obj.flowLayout19:setName("flowLayout19");
    obj.flowLayout19:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout19:setVertAlign("leading");

    obj.flowPart89 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart89:setParent(obj.flowLayout19);
    obj.flowPart89:setMinWidth(206);
    obj.flowPart89:setMaxWidth(250);
    obj.flowPart89:setHeight(17);
    obj.flowPart89:setName("flowPart89");
    obj.flowPart89:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart89:setVertAlign("leading");

    obj.cbProfcompaniondestreza = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompaniondestreza:setParent(obj.flowPart89);
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
				



			


    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.flowPart89);
    obj.dataLink29:setField("macroExpertise.companiondestreza");
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.flowPart89);
    obj.dataLink30:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink30:setName("dataLink30");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.flowPart89);
    obj.layout21:setAlign("left");
    obj.layout21:setWidth(26);
    obj.layout21:setMargins({left=2});
    obj.layout21:setName("layout21");

    obj.labProfcompaniondestreza = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompaniondestreza:setParent(obj.layout21);
    obj.labProfcompaniondestreza:setName("labProfcompaniondestreza");
    obj.labProfcompaniondestreza:setField("resistencias.bonuscompaniondestrezastr");
    obj.labProfcompaniondestreza:setAlign("client");
    obj.labProfcompaniondestreza:setHorzTextAlign("center");
    obj.labProfcompaniondestreza:setVertTextAlign("trailing");
    obj.labProfcompaniondestreza:setTextTrimming("none");
    obj.labProfcompaniondestreza:setFontColor("white");

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.layout21);
    obj.horzLine5:setStrokeColor("white");
    obj.horzLine5:setStrokeSize(1);
    obj.horzLine5:setAlign("bottom");
    obj.horzLine5:setName("horzLine5");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.flowPart89);
    obj.button15:setAlign("left");
    obj.button15:setText("Resistência");
    obj.button15:setWidth(122);
    obj.button15:setMargins({left=2});
    obj.button15:setName("button15");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.flowLayout19);
    obj.dataLink31:setFields({'atributos.modcompaniondestreza', 'bonusProficiencia', 'resistencias.companiondestreza', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink31:setName("dataLink31");

    obj.flowPart90 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart90:setParent(obj.flowLayout19);
    obj.flowPart90:setMinWidth(206);
    obj.flowPart90:setMaxWidth(250);
    obj.flowPart90:setHeight(17);
    obj.flowPart90:setName("flowPart90");
    obj.flowPart90:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart90:setVertAlign("leading");

    obj.cbProfcompanionacrobacia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionacrobacia:setParent(obj.flowPart90);
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
				



			


    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.flowPart90);
    obj.dataLink32:setField("macroExpertise.companionacrobacia");
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.flowPart90);
    obj.dataLink33:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink33:setName("dataLink33");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.flowPart90);
    obj.layout22:setAlign("left");
    obj.layout22:setWidth(26);
    obj.layout22:setMargins({left=2});
    obj.layout22:setName("layout22");

    obj.labProfcompanionacrobacia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionacrobacia:setParent(obj.layout22);
    obj.labProfcompanionacrobacia:setName("labProfcompanionacrobacia");
    obj.labProfcompanionacrobacia:setField("pericias.bonuscompanionacrobaciastr");
    obj.labProfcompanionacrobacia:setAlign("client");
    obj.labProfcompanionacrobacia:setHorzTextAlign("center");
    obj.labProfcompanionacrobacia:setVertTextAlign("trailing");
    obj.labProfcompanionacrobacia:setTextTrimming("none");
    obj.labProfcompanionacrobacia:setFontColor("white");

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.layout22);
    obj.horzLine6:setStrokeColor("white");
    obj.horzLine6:setStrokeSize(1);
    obj.horzLine6:setAlign("bottom");
    obj.horzLine6:setName("horzLine6");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.flowPart90);
    obj.button16:setAlign("left");
    obj.button16:setText("Acrobacia");
    obj.button16:setWidth(122);
    obj.button16:setMargins({left=2});
    obj.button16:setName("button16");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.flowLayout19);
    obj.dataLink34:setFields({'atributos.modcompaniondestreza', 'bonusProficiencia', 'pericias.companionacrobacia', 'macroExpertise.companionacrobacia', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink34:setName("dataLink34");

    obj.flowPart91 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart91:setParent(obj.flowLayout19);
    obj.flowPart91:setMinWidth(206);
    obj.flowPart91:setMaxWidth(250);
    obj.flowPart91:setHeight(17);
    obj.flowPart91:setName("flowPart91");
    obj.flowPart91:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart91:setVertAlign("leading");

    obj.cbProfcompanionfurtividade = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionfurtividade:setParent(obj.flowPart91);
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
				



			


    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.flowPart91);
    obj.dataLink35:setField("macroExpertise.companionfurtividade");
    obj.dataLink35:setName("dataLink35");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.flowPart91);
    obj.dataLink36:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink36:setName("dataLink36");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.flowPart91);
    obj.layout23:setAlign("left");
    obj.layout23:setWidth(26);
    obj.layout23:setMargins({left=2});
    obj.layout23:setName("layout23");

    obj.labProfcompanionfurtividade = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionfurtividade:setParent(obj.layout23);
    obj.labProfcompanionfurtividade:setName("labProfcompanionfurtividade");
    obj.labProfcompanionfurtividade:setField("pericias.bonuscompanionfurtividadestr");
    obj.labProfcompanionfurtividade:setAlign("client");
    obj.labProfcompanionfurtividade:setHorzTextAlign("center");
    obj.labProfcompanionfurtividade:setVertTextAlign("trailing");
    obj.labProfcompanionfurtividade:setTextTrimming("none");
    obj.labProfcompanionfurtividade:setFontColor("white");

    obj.horzLine7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine7:setParent(obj.layout23);
    obj.horzLine7:setStrokeColor("white");
    obj.horzLine7:setStrokeSize(1);
    obj.horzLine7:setAlign("bottom");
    obj.horzLine7:setName("horzLine7");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.flowPart91);
    obj.button17:setAlign("left");
    obj.button17:setText("Furtividade");
    obj.button17:setWidth(122);
    obj.button17:setMargins({left=2});
    obj.button17:setName("button17");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.flowLayout19);
    obj.dataLink37:setFields({'atributos.modcompaniondestreza', 'bonusProficiencia', 'pericias.companionfurtividade', 'macroExpertise.companionfurtividade', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink37:setName("dataLink37");

    obj.flowPart92 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart92:setParent(obj.flowLayout19);
    obj.flowPart92:setMinWidth(206);
    obj.flowPart92:setMaxWidth(250);
    obj.flowPart92:setHeight(17);
    obj.flowPart92:setName("flowPart92");
    obj.flowPart92:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart92:setVertAlign("leading");

    obj.cbProfcompanionprestidigitacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionprestidigitacao:setParent(obj.flowPart92);
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
				



			


    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.flowPart92);
    obj.dataLink38:setField("macroExpertise.companionprestidigitacao");
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.flowPart92);
    obj.dataLink39:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink39:setName("dataLink39");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.flowPart92);
    obj.layout24:setAlign("left");
    obj.layout24:setWidth(26);
    obj.layout24:setMargins({left=2});
    obj.layout24:setName("layout24");

    obj.labProfcompanionprestidigitacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionprestidigitacao:setParent(obj.layout24);
    obj.labProfcompanionprestidigitacao:setName("labProfcompanionprestidigitacao");
    obj.labProfcompanionprestidigitacao:setField("pericias.bonuscompanionprestidigitacaostr");
    obj.labProfcompanionprestidigitacao:setAlign("client");
    obj.labProfcompanionprestidigitacao:setHorzTextAlign("center");
    obj.labProfcompanionprestidigitacao:setVertTextAlign("trailing");
    obj.labProfcompanionprestidigitacao:setTextTrimming("none");
    obj.labProfcompanionprestidigitacao:setFontColor("white");

    obj.horzLine8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine8:setParent(obj.layout24);
    obj.horzLine8:setStrokeColor("white");
    obj.horzLine8:setStrokeSize(1);
    obj.horzLine8:setAlign("bottom");
    obj.horzLine8:setName("horzLine8");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.flowPart92);
    obj.button18:setAlign("left");
    obj.button18:setText("Prestidigitação");
    obj.button18:setWidth(122);
    obj.button18:setMargins({left=2});
    obj.button18:setName("button18");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.flowLayout19);
    obj.dataLink40:setFields({'atributos.modcompaniondestreza', 'bonusProficiencia', 'pericias.companionprestidigitacao', 'macroExpertise.companionprestidigitacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink41:setField("atributos.companionconstituicao");
    obj.dataLink41:setName("dataLink41");

    obj.flowPart93 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart93:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart93:setHeight(140);
    obj.flowPart93:setMinWidth(320);
    obj.flowPart93:setMaxWidth(420);
    obj.flowPart93:setMinScaledWidth(305);
    obj.flowPart93:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart93:setName("flowPart93");
    obj.flowPart93:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart93:setVertAlign("leading");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.flowPart93);
    obj.layout25:setLeft(6);
    obj.layout25:setTop(12);
    obj.layout25:setWidth(116);
    obj.layout25:setHeight(115);
    obj.layout25:setName("layout25");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout25);
    obj.edit31:setAlign("top");
    obj.edit31:setMargins({left=30, right=30});
    obj.edit31:setField("atributos.companionconstituicao");
    obj.edit31:setHeight(30);
    obj.edit31:setType("number");
    obj.edit31:setMin(0);
    obj.edit31:setMax(99);
    obj.edit31:setName("edit31");
    obj.edit31:setTransparent(true);
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setFontSize(15);
    obj.edit31:setFontColor("white");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.flowPart93);
    obj.label78:setFrameRegion("modificador");
    obj.label78:setField("atributos.modcompanionconstituicaostr");
    obj.label78:setHorzTextAlign("center");
    obj.label78:setVertTextAlign("center");
    obj.label78:setFontSize(46);
    lfm_setPropAsString(obj.label78, "fontStyle",  "bold");
    obj.label78:setName("label78");
    obj.label78:setFontColor("white");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.flowPart93);
    obj.layout26:setFrameRegion("titulo");
    obj.layout26:setName("layout26");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.layout26);
    obj.button19:setAlign("client");
    obj.button19:setText("CONSTITUIÇÃO");
    obj.button19:setVertTextAlign("center");
    obj.button19:setHorzTextAlign("center");
    obj.button19:setName("button19");

    obj.flowLayout20 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout20:setParent(obj.flowPart93);
    obj.flowLayout20:setFrameRegion("RegiaoDePericias");
    obj.flowLayout20:setAutoHeight(true);
    obj.flowLayout20:setLineSpacing(0);
    obj.flowLayout20:setHorzAlign("leading");
    obj.flowLayout20:setName("flowLayout20");
    obj.flowLayout20:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout20:setVertAlign("leading");

    obj.flowPart94 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart94:setParent(obj.flowLayout20);
    obj.flowPart94:setMinWidth(206);
    obj.flowPart94:setMaxWidth(250);
    obj.flowPart94:setHeight(17);
    obj.flowPart94:setName("flowPart94");
    obj.flowPart94:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart94:setVertAlign("leading");

    obj.cbProfcompanionconstituicao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionconstituicao:setParent(obj.flowPart94);
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
				



			


    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.flowPart94);
    obj.dataLink42:setField("macroExpertise.companionconstituicao");
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.flowPart94);
    obj.dataLink43:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink43:setName("dataLink43");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.flowPart94);
    obj.layout27:setAlign("left");
    obj.layout27:setWidth(26);
    obj.layout27:setMargins({left=2});
    obj.layout27:setName("layout27");

    obj.labProfcompanionconstituicao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionconstituicao:setParent(obj.layout27);
    obj.labProfcompanionconstituicao:setName("labProfcompanionconstituicao");
    obj.labProfcompanionconstituicao:setField("resistencias.bonuscompanionconstituicaostr");
    obj.labProfcompanionconstituicao:setAlign("client");
    obj.labProfcompanionconstituicao:setHorzTextAlign("center");
    obj.labProfcompanionconstituicao:setVertTextAlign("trailing");
    obj.labProfcompanionconstituicao:setTextTrimming("none");
    obj.labProfcompanionconstituicao:setFontColor("white");

    obj.horzLine9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine9:setParent(obj.layout27);
    obj.horzLine9:setStrokeColor("white");
    obj.horzLine9:setStrokeSize(1);
    obj.horzLine9:setAlign("bottom");
    obj.horzLine9:setName("horzLine9");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.flowPart94);
    obj.button20:setAlign("left");
    obj.button20:setText("Resistência");
    obj.button20:setWidth(122);
    obj.button20:setMargins({left=2});
    obj.button20:setName("button20");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.flowLayout20);
    obj.dataLink44:setFields({'atributos.modcompanionconstituicao', 'bonusProficiencia', 'resistencias.companionconstituicao', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink44:setName("dataLink44");

    obj.flowPart95 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart95:setParent(obj.flowLayout20);
    obj.flowPart95:setMinWidth(206);
    obj.flowPart95:setMaxWidth(250);
    obj.flowPart95:setHeight(17);
    obj.flowPart95:setName("flowPart95");
    obj.flowPart95:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart95:setVertAlign("leading");

    obj.cbProfcompanionconcentracao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionconcentracao:setParent(obj.flowPart95);
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
				



			


    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj.flowPart95);
    obj.dataLink45:setField("macroExpertise.companionconcentracao");
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj.flowPart95);
    obj.dataLink46:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink46:setName("dataLink46");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.flowPart95);
    obj.layout28:setAlign("left");
    obj.layout28:setWidth(26);
    obj.layout28:setMargins({left=2});
    obj.layout28:setName("layout28");

    obj.labProfcompanionconcentracao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionconcentracao:setParent(obj.layout28);
    obj.labProfcompanionconcentracao:setName("labProfcompanionconcentracao");
    obj.labProfcompanionconcentracao:setField("pericias.bonuscompanionconcentracaostr");
    obj.labProfcompanionconcentracao:setAlign("client");
    obj.labProfcompanionconcentracao:setHorzTextAlign("center");
    obj.labProfcompanionconcentracao:setVertTextAlign("trailing");
    obj.labProfcompanionconcentracao:setTextTrimming("none");
    obj.labProfcompanionconcentracao:setFontColor("white");

    obj.horzLine10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine10:setParent(obj.layout28);
    obj.horzLine10:setStrokeColor("white");
    obj.horzLine10:setStrokeSize(1);
    obj.horzLine10:setAlign("bottom");
    obj.horzLine10:setName("horzLine10");

    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.flowPart95);
    obj.button21:setAlign("left");
    obj.button21:setText("Concentração");
    obj.button21:setWidth(122);
    obj.button21:setMargins({left=2});
    obj.button21:setName("button21");

    obj.dataLink47 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj.flowLayout20);
    obj.dataLink47:setFields({'atributos.modcompanionconstituicao', 'bonusProficiencia', 'pericias.companionconcentracao', 'macroExpertise.companionconcentracao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink47:setName("dataLink47");

    obj.flowPart96 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart96:setParent(obj.flowLayout20);
    obj.flowPart96:setMinWidth(206);
    obj.flowPart96:setMaxWidth(250);
    obj.flowPart96:setHeight(17);
    obj.flowPart96:setName("flowPart96");
    obj.flowPart96:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart96:setVertAlign("leading");

    obj.cbProfcompaniontolerancia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompaniontolerancia:setParent(obj.flowPart96);
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
				



			


    obj.dataLink48 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj.flowPart96);
    obj.dataLink48:setField("macroExpertise.companiontolerancia");
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj.flowPart96);
    obj.dataLink49:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink49:setName("dataLink49");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.flowPart96);
    obj.layout29:setAlign("left");
    obj.layout29:setWidth(26);
    obj.layout29:setMargins({left=2});
    obj.layout29:setName("layout29");

    obj.labProfcompaniontolerancia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompaniontolerancia:setParent(obj.layout29);
    obj.labProfcompaniontolerancia:setName("labProfcompaniontolerancia");
    obj.labProfcompaniontolerancia:setField("pericias.bonuscompaniontoleranciastr");
    obj.labProfcompaniontolerancia:setAlign("client");
    obj.labProfcompaniontolerancia:setHorzTextAlign("center");
    obj.labProfcompaniontolerancia:setVertTextAlign("trailing");
    obj.labProfcompaniontolerancia:setTextTrimming("none");
    obj.labProfcompaniontolerancia:setFontColor("white");

    obj.horzLine11 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine11:setParent(obj.layout29);
    obj.horzLine11:setStrokeColor("white");
    obj.horzLine11:setStrokeSize(1);
    obj.horzLine11:setAlign("bottom");
    obj.horzLine11:setName("horzLine11");

    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.flowPart96);
    obj.button22:setAlign("left");
    obj.button22:setText("Tolerancia");
    obj.button22:setWidth(122);
    obj.button22:setMargins({left=2});
    obj.button22:setName("button22");

    obj.dataLink50 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj.flowLayout20);
    obj.dataLink50:setFields({'atributos.modcompanionconstituicao', 'bonusProficiencia', 'pericias.companiontolerancia', 'macroExpertise.companiontolerancia', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink50:setName("dataLink50");

    obj.dataLink51 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink51:setField("atributos.companioninteligencia");
    obj.dataLink51:setName("dataLink51");

    obj.flowPart97 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart97:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart97:setHeight(140);
    obj.flowPart97:setMinWidth(320);
    obj.flowPart97:setMaxWidth(420);
    obj.flowPart97:setMinScaledWidth(305);
    obj.flowPart97:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart97:setName("flowPart97");
    obj.flowPart97:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart97:setVertAlign("leading");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.flowPart97);
    obj.layout30:setLeft(6);
    obj.layout30:setTop(12);
    obj.layout30:setWidth(116);
    obj.layout30:setHeight(115);
    obj.layout30:setName("layout30");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout30);
    obj.edit32:setAlign("top");
    obj.edit32:setMargins({left=30, right=30});
    obj.edit32:setField("atributos.companioninteligencia");
    obj.edit32:setHeight(30);
    obj.edit32:setType("number");
    obj.edit32:setMin(0);
    obj.edit32:setMax(99);
    obj.edit32:setName("edit32");
    obj.edit32:setTransparent(true);
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setFontSize(15);
    obj.edit32:setFontColor("white");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.flowPart97);
    obj.label79:setFrameRegion("modificador");
    obj.label79:setField("atributos.modcompanioninteligenciastr");
    obj.label79:setHorzTextAlign("center");
    obj.label79:setVertTextAlign("center");
    obj.label79:setFontSize(46);
    lfm_setPropAsString(obj.label79, "fontStyle",  "bold");
    obj.label79:setName("label79");
    obj.label79:setFontColor("white");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.flowPart97);
    obj.layout31:setFrameRegion("titulo");
    obj.layout31:setName("layout31");

    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.layout31);
    obj.button23:setAlign("client");
    obj.button23:setText("INTELIGÊNCIA");
    obj.button23:setVertTextAlign("center");
    obj.button23:setHorzTextAlign("center");
    obj.button23:setName("button23");

    obj.flowLayout21 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout21:setParent(obj.flowPart97);
    obj.flowLayout21:setFrameRegion("RegiaoDePericias");
    obj.flowLayout21:setAutoHeight(true);
    obj.flowLayout21:setLineSpacing(0);
    obj.flowLayout21:setHorzAlign("leading");
    obj.flowLayout21:setName("flowLayout21");
    obj.flowLayout21:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout21:setVertAlign("leading");

    obj.flowPart98 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart98:setParent(obj.flowLayout21);
    obj.flowPart98:setMinWidth(206);
    obj.flowPart98:setMaxWidth(250);
    obj.flowPart98:setHeight(17);
    obj.flowPart98:setName("flowPart98");
    obj.flowPart98:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart98:setVertAlign("leading");

    obj.cbProfcompanioninteligencia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanioninteligencia:setParent(obj.flowPart98);
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
				



			


    obj.dataLink52 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj.flowPart98);
    obj.dataLink52:setField("macroExpertise.companioninteligencia");
    obj.dataLink52:setName("dataLink52");

    obj.dataLink53 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj.flowPart98);
    obj.dataLink53:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink53:setName("dataLink53");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.flowPart98);
    obj.layout32:setAlign("left");
    obj.layout32:setWidth(26);
    obj.layout32:setMargins({left=2});
    obj.layout32:setName("layout32");

    obj.labProfcompanioninteligencia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanioninteligencia:setParent(obj.layout32);
    obj.labProfcompanioninteligencia:setName("labProfcompanioninteligencia");
    obj.labProfcompanioninteligencia:setField("resistencias.bonuscompanioninteligenciastr");
    obj.labProfcompanioninteligencia:setAlign("client");
    obj.labProfcompanioninteligencia:setHorzTextAlign("center");
    obj.labProfcompanioninteligencia:setVertTextAlign("trailing");
    obj.labProfcompanioninteligencia:setTextTrimming("none");
    obj.labProfcompanioninteligencia:setFontColor("white");

    obj.horzLine12 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine12:setParent(obj.layout32);
    obj.horzLine12:setStrokeColor("white");
    obj.horzLine12:setStrokeSize(1);
    obj.horzLine12:setAlign("bottom");
    obj.horzLine12:setName("horzLine12");

    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.flowPart98);
    obj.button24:setAlign("left");
    obj.button24:setText("Resistência");
    obj.button24:setWidth(122);
    obj.button24:setMargins({left=2});
    obj.button24:setName("button24");

    obj.dataLink54 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj.flowLayout21);
    obj.dataLink54:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'resistencias.companioninteligencia', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink54:setName("dataLink54");

    obj.flowPart99 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart99:setParent(obj.flowLayout21);
    obj.flowPart99:setMinWidth(206);
    obj.flowPart99:setMaxWidth(250);
    obj.flowPart99:setHeight(17);
    obj.flowPart99:setName("flowPart99");
    obj.flowPart99:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart99:setVertAlign("leading");

    obj.cbProfcompanionarcanismo = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionarcanismo:setParent(obj.flowPart99);
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
				



			


    obj.dataLink55 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj.flowPart99);
    obj.dataLink55:setField("macroExpertise.companionarcanismo");
    obj.dataLink55:setName("dataLink55");

    obj.dataLink56 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj.flowPart99);
    obj.dataLink56:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink56:setName("dataLink56");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.flowPart99);
    obj.layout33:setAlign("left");
    obj.layout33:setWidth(26);
    obj.layout33:setMargins({left=2});
    obj.layout33:setName("layout33");

    obj.labProfcompanionarcanismo = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionarcanismo:setParent(obj.layout33);
    obj.labProfcompanionarcanismo:setName("labProfcompanionarcanismo");
    obj.labProfcompanionarcanismo:setField("pericias.bonuscompanionarcanismostr");
    obj.labProfcompanionarcanismo:setAlign("client");
    obj.labProfcompanionarcanismo:setHorzTextAlign("center");
    obj.labProfcompanionarcanismo:setVertTextAlign("trailing");
    obj.labProfcompanionarcanismo:setTextTrimming("none");
    obj.labProfcompanionarcanismo:setFontColor("white");

    obj.horzLine13 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine13:setParent(obj.layout33);
    obj.horzLine13:setStrokeColor("white");
    obj.horzLine13:setStrokeSize(1);
    obj.horzLine13:setAlign("bottom");
    obj.horzLine13:setName("horzLine13");

    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.flowPart99);
    obj.button25:setAlign("left");
    obj.button25:setText("Arcanismo");
    obj.button25:setWidth(122);
    obj.button25:setMargins({left=2});
    obj.button25:setName("button25");

    obj.dataLink57 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj.flowLayout21);
    obj.dataLink57:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'pericias.companionarcanismo', 'macroExpertise.companionarcanismo', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink57:setName("dataLink57");

    obj.flowPart100 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart100:setParent(obj.flowLayout21);
    obj.flowPart100:setMinWidth(206);
    obj.flowPart100:setMaxWidth(250);
    obj.flowPart100:setHeight(17);
    obj.flowPart100:setName("flowPart100");
    obj.flowPart100:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart100:setVertAlign("leading");

    obj.cbProfcompanionhistoria = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionhistoria:setParent(obj.flowPart100);
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
				



			


    obj.dataLink58 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj.flowPart100);
    obj.dataLink58:setField("macroExpertise.companionhistoria");
    obj.dataLink58:setName("dataLink58");

    obj.dataLink59 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj.flowPart100);
    obj.dataLink59:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink59:setName("dataLink59");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.flowPart100);
    obj.layout34:setAlign("left");
    obj.layout34:setWidth(26);
    obj.layout34:setMargins({left=2});
    obj.layout34:setName("layout34");

    obj.labProfcompanionhistoria = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionhistoria:setParent(obj.layout34);
    obj.labProfcompanionhistoria:setName("labProfcompanionhistoria");
    obj.labProfcompanionhistoria:setField("pericias.bonuscompanionhistoriastr");
    obj.labProfcompanionhistoria:setAlign("client");
    obj.labProfcompanionhistoria:setHorzTextAlign("center");
    obj.labProfcompanionhistoria:setVertTextAlign("trailing");
    obj.labProfcompanionhistoria:setTextTrimming("none");
    obj.labProfcompanionhistoria:setFontColor("white");

    obj.horzLine14 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine14:setParent(obj.layout34);
    obj.horzLine14:setStrokeColor("white");
    obj.horzLine14:setStrokeSize(1);
    obj.horzLine14:setAlign("bottom");
    obj.horzLine14:setName("horzLine14");

    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.flowPart100);
    obj.button26:setAlign("left");
    obj.button26:setText("História");
    obj.button26:setWidth(122);
    obj.button26:setMargins({left=2});
    obj.button26:setName("button26");

    obj.dataLink60 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj.flowLayout21);
    obj.dataLink60:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'pericias.companionhistoria', 'macroExpertise.companionhistoria', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink60:setName("dataLink60");

    obj.flowPart101 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart101:setParent(obj.flowLayout21);
    obj.flowPart101:setMinWidth(206);
    obj.flowPart101:setMaxWidth(250);
    obj.flowPart101:setHeight(17);
    obj.flowPart101:setName("flowPart101");
    obj.flowPart101:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart101:setVertAlign("leading");

    obj.cbProfcompanioninvestigacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanioninvestigacao:setParent(obj.flowPart101);
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
				



			


    obj.dataLink61 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink61:setParent(obj.flowPart101);
    obj.dataLink61:setField("macroExpertise.companioninvestigacao");
    obj.dataLink61:setName("dataLink61");

    obj.dataLink62 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink62:setParent(obj.flowPart101);
    obj.dataLink62:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink62:setName("dataLink62");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.flowPart101);
    obj.layout35:setAlign("left");
    obj.layout35:setWidth(26);
    obj.layout35:setMargins({left=2});
    obj.layout35:setName("layout35");

    obj.labProfcompanioninvestigacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanioninvestigacao:setParent(obj.layout35);
    obj.labProfcompanioninvestigacao:setName("labProfcompanioninvestigacao");
    obj.labProfcompanioninvestigacao:setField("pericias.bonuscompanioninvestigacaostr");
    obj.labProfcompanioninvestigacao:setAlign("client");
    obj.labProfcompanioninvestigacao:setHorzTextAlign("center");
    obj.labProfcompanioninvestigacao:setVertTextAlign("trailing");
    obj.labProfcompanioninvestigacao:setTextTrimming("none");
    obj.labProfcompanioninvestigacao:setFontColor("white");

    obj.horzLine15 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine15:setParent(obj.layout35);
    obj.horzLine15:setStrokeColor("white");
    obj.horzLine15:setStrokeSize(1);
    obj.horzLine15:setAlign("bottom");
    obj.horzLine15:setName("horzLine15");

    obj.button27 = GUI.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.flowPart101);
    obj.button27:setAlign("left");
    obj.button27:setText("Investigação");
    obj.button27:setWidth(122);
    obj.button27:setMargins({left=2});
    obj.button27:setName("button27");

    obj.dataLink63 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink63:setParent(obj.flowLayout21);
    obj.dataLink63:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'pericias.companioninvestigacao', 'macroExpertise.companioninvestigacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink63:setName("dataLink63");

    obj.flowPart102 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart102:setParent(obj.flowLayout21);
    obj.flowPart102:setMinWidth(206);
    obj.flowPart102:setMaxWidth(250);
    obj.flowPart102:setHeight(17);
    obj.flowPart102:setName("flowPart102");
    obj.flowPart102:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart102:setVertAlign("leading");

    obj.cbProfcompanionnatureza = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionnatureza:setParent(obj.flowPart102);
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
				



			


    obj.dataLink64 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink64:setParent(obj.flowPart102);
    obj.dataLink64:setField("macroExpertise.companionnatureza");
    obj.dataLink64:setName("dataLink64");

    obj.dataLink65 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink65:setParent(obj.flowPart102);
    obj.dataLink65:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink65:setName("dataLink65");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.flowPart102);
    obj.layout36:setAlign("left");
    obj.layout36:setWidth(26);
    obj.layout36:setMargins({left=2});
    obj.layout36:setName("layout36");

    obj.labProfcompanionnatureza = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionnatureza:setParent(obj.layout36);
    obj.labProfcompanionnatureza:setName("labProfcompanionnatureza");
    obj.labProfcompanionnatureza:setField("pericias.bonuscompanionnaturezastr");
    obj.labProfcompanionnatureza:setAlign("client");
    obj.labProfcompanionnatureza:setHorzTextAlign("center");
    obj.labProfcompanionnatureza:setVertTextAlign("trailing");
    obj.labProfcompanionnatureza:setTextTrimming("none");
    obj.labProfcompanionnatureza:setFontColor("white");

    obj.horzLine16 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine16:setParent(obj.layout36);
    obj.horzLine16:setStrokeColor("white");
    obj.horzLine16:setStrokeSize(1);
    obj.horzLine16:setAlign("bottom");
    obj.horzLine16:setName("horzLine16");

    obj.button28 = GUI.fromHandle(_obj_newObject("button"));
    obj.button28:setParent(obj.flowPart102);
    obj.button28:setAlign("left");
    obj.button28:setText("Natureza");
    obj.button28:setWidth(122);
    obj.button28:setMargins({left=2});
    obj.button28:setName("button28");

    obj.dataLink66 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink66:setParent(obj.flowLayout21);
    obj.dataLink66:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'pericias.companionnatureza', 'macroExpertise.companionnatureza', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink66:setName("dataLink66");

    obj.flowPart103 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart103:setParent(obj.flowLayout21);
    obj.flowPart103:setMinWidth(206);
    obj.flowPart103:setMaxWidth(250);
    obj.flowPart103:setHeight(17);
    obj.flowPart103:setName("flowPart103");
    obj.flowPart103:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart103:setVertAlign("leading");

    obj.cbProfcompanionreligiao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionreligiao:setParent(obj.flowPart103);
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
				



			


    obj.dataLink67 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink67:setParent(obj.flowPart103);
    obj.dataLink67:setField("macroExpertise.companionreligiao");
    obj.dataLink67:setName("dataLink67");

    obj.dataLink68 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink68:setParent(obj.flowPart103);
    obj.dataLink68:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink68:setName("dataLink68");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.flowPart103);
    obj.layout37:setAlign("left");
    obj.layout37:setWidth(26);
    obj.layout37:setMargins({left=2});
    obj.layout37:setName("layout37");

    obj.labProfcompanionreligiao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionreligiao:setParent(obj.layout37);
    obj.labProfcompanionreligiao:setName("labProfcompanionreligiao");
    obj.labProfcompanionreligiao:setField("pericias.bonuscompanionreligiaostr");
    obj.labProfcompanionreligiao:setAlign("client");
    obj.labProfcompanionreligiao:setHorzTextAlign("center");
    obj.labProfcompanionreligiao:setVertTextAlign("trailing");
    obj.labProfcompanionreligiao:setTextTrimming("none");
    obj.labProfcompanionreligiao:setFontColor("white");

    obj.horzLine17 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine17:setParent(obj.layout37);
    obj.horzLine17:setStrokeColor("white");
    obj.horzLine17:setStrokeSize(1);
    obj.horzLine17:setAlign("bottom");
    obj.horzLine17:setName("horzLine17");

    obj.button29 = GUI.fromHandle(_obj_newObject("button"));
    obj.button29:setParent(obj.flowPart103);
    obj.button29:setAlign("left");
    obj.button29:setText("Religião");
    obj.button29:setWidth(122);
    obj.button29:setMargins({left=2});
    obj.button29:setName("button29");

    obj.dataLink69 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink69:setParent(obj.flowLayout21);
    obj.dataLink69:setFields({'atributos.modcompanioninteligencia', 'bonusProficiencia', 'pericias.companionreligiao', 'macroExpertise.companionreligiao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink69:setName("dataLink69");

    obj.dataLink70 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink70:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink70:setField("atributos.companionsabedoria");
    obj.dataLink70:setName("dataLink70");

    obj.flowPart104 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart104:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart104:setHeight(140);
    obj.flowPart104:setMinWidth(320);
    obj.flowPart104:setMaxWidth(420);
    obj.flowPart104:setMinScaledWidth(305);
    obj.flowPart104:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart104:setName("flowPart104");
    obj.flowPart104:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart104:setVertAlign("leading");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.flowPart104);
    obj.layout38:setLeft(6);
    obj.layout38:setTop(12);
    obj.layout38:setWidth(116);
    obj.layout38:setHeight(115);
    obj.layout38:setName("layout38");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout38);
    obj.edit33:setAlign("top");
    obj.edit33:setMargins({left=30, right=30});
    obj.edit33:setField("atributos.companionsabedoria");
    obj.edit33:setHeight(30);
    obj.edit33:setType("number");
    obj.edit33:setMin(0);
    obj.edit33:setMax(99);
    obj.edit33:setName("edit33");
    obj.edit33:setTransparent(true);
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setFontSize(15);
    obj.edit33:setFontColor("white");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.flowPart104);
    obj.label80:setFrameRegion("modificador");
    obj.label80:setField("atributos.modcompanionsabedoriastr");
    obj.label80:setHorzTextAlign("center");
    obj.label80:setVertTextAlign("center");
    obj.label80:setFontSize(46);
    lfm_setPropAsString(obj.label80, "fontStyle",  "bold");
    obj.label80:setName("label80");
    obj.label80:setFontColor("white");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.flowPart104);
    obj.layout39:setFrameRegion("titulo");
    obj.layout39:setName("layout39");

    obj.button30 = GUI.fromHandle(_obj_newObject("button"));
    obj.button30:setParent(obj.layout39);
    obj.button30:setAlign("client");
    obj.button30:setText("SABEDORIA");
    obj.button30:setVertTextAlign("center");
    obj.button30:setHorzTextAlign("center");
    obj.button30:setName("button30");

    obj.flowLayout22 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout22:setParent(obj.flowPart104);
    obj.flowLayout22:setFrameRegion("RegiaoDePericias");
    obj.flowLayout22:setAutoHeight(true);
    obj.flowLayout22:setLineSpacing(0);
    obj.flowLayout22:setHorzAlign("leading");
    obj.flowLayout22:setName("flowLayout22");
    obj.flowLayout22:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout22:setVertAlign("leading");

    obj.flowPart105 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart105:setParent(obj.flowLayout22);
    obj.flowPart105:setMinWidth(206);
    obj.flowPart105:setMaxWidth(250);
    obj.flowPart105:setHeight(17);
    obj.flowPart105:setName("flowPart105");
    obj.flowPart105:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart105:setVertAlign("leading");

    obj.cbProfcompanionsabedoria = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionsabedoria:setParent(obj.flowPart105);
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
				



			


    obj.dataLink71 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink71:setParent(obj.flowPart105);
    obj.dataLink71:setField("macroExpertise.companionsabedoria");
    obj.dataLink71:setName("dataLink71");

    obj.dataLink72 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink72:setParent(obj.flowPart105);
    obj.dataLink72:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink72:setName("dataLink72");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.flowPart105);
    obj.layout40:setAlign("left");
    obj.layout40:setWidth(26);
    obj.layout40:setMargins({left=2});
    obj.layout40:setName("layout40");

    obj.labProfcompanionsabedoria = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionsabedoria:setParent(obj.layout40);
    obj.labProfcompanionsabedoria:setName("labProfcompanionsabedoria");
    obj.labProfcompanionsabedoria:setField("resistencias.bonuscompanionsabedoriastr");
    obj.labProfcompanionsabedoria:setAlign("client");
    obj.labProfcompanionsabedoria:setHorzTextAlign("center");
    obj.labProfcompanionsabedoria:setVertTextAlign("trailing");
    obj.labProfcompanionsabedoria:setTextTrimming("none");
    obj.labProfcompanionsabedoria:setFontColor("white");

    obj.horzLine18 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine18:setParent(obj.layout40);
    obj.horzLine18:setStrokeColor("white");
    obj.horzLine18:setStrokeSize(1);
    obj.horzLine18:setAlign("bottom");
    obj.horzLine18:setName("horzLine18");

    obj.button31 = GUI.fromHandle(_obj_newObject("button"));
    obj.button31:setParent(obj.flowPart105);
    obj.button31:setAlign("left");
    obj.button31:setText("Resistência");
    obj.button31:setWidth(122);
    obj.button31:setMargins({left=2});
    obj.button31:setName("button31");

    obj.dataLink73 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink73:setParent(obj.flowLayout22);
    obj.dataLink73:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'resistencias.companionsabedoria', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink73:setName("dataLink73");

    obj.flowPart106 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart106:setParent(obj.flowLayout22);
    obj.flowPart106:setMinWidth(206);
    obj.flowPart106:setMaxWidth(250);
    obj.flowPart106:setHeight(17);
    obj.flowPart106:setName("flowPart106");
    obj.flowPart106:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart106:setVertAlign("leading");

    obj.cbProfcompanionadestrarAnimais = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionadestrarAnimais:setParent(obj.flowPart106);
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
				



			


    obj.dataLink74 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink74:setParent(obj.flowPart106);
    obj.dataLink74:setField("macroExpertise.companionadestrarAnimais");
    obj.dataLink74:setName("dataLink74");

    obj.dataLink75 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink75:setParent(obj.flowPart106);
    obj.dataLink75:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink75:setName("dataLink75");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.flowPart106);
    obj.layout41:setAlign("left");
    obj.layout41:setWidth(26);
    obj.layout41:setMargins({left=2});
    obj.layout41:setName("layout41");

    obj.labProfcompanionadestrarAnimais = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionadestrarAnimais:setParent(obj.layout41);
    obj.labProfcompanionadestrarAnimais:setName("labProfcompanionadestrarAnimais");
    obj.labProfcompanionadestrarAnimais:setField("pericias.bonuscompanionadestrarAnimaisstr");
    obj.labProfcompanionadestrarAnimais:setAlign("client");
    obj.labProfcompanionadestrarAnimais:setHorzTextAlign("center");
    obj.labProfcompanionadestrarAnimais:setVertTextAlign("trailing");
    obj.labProfcompanionadestrarAnimais:setTextTrimming("none");
    obj.labProfcompanionadestrarAnimais:setFontColor("white");

    obj.horzLine19 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine19:setParent(obj.layout41);
    obj.horzLine19:setStrokeColor("white");
    obj.horzLine19:setStrokeSize(1);
    obj.horzLine19:setAlign("bottom");
    obj.horzLine19:setName("horzLine19");

    obj.button32 = GUI.fromHandle(_obj_newObject("button"));
    obj.button32:setParent(obj.flowPart106);
    obj.button32:setAlign("left");
    obj.button32:setText("Adestrar Animais");
    obj.button32:setWidth(122);
    obj.button32:setMargins({left=2});
    obj.button32:setName("button32");

    obj.dataLink76 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink76:setParent(obj.flowLayout22);
    obj.dataLink76:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'pericias.companionadestrarAnimais', 'macroExpertise.companionadestrarAnimais', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink76:setName("dataLink76");

    obj.flowPart107 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart107:setParent(obj.flowLayout22);
    obj.flowPart107:setMinWidth(206);
    obj.flowPart107:setMaxWidth(250);
    obj.flowPart107:setHeight(17);
    obj.flowPart107:setName("flowPart107");
    obj.flowPart107:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart107:setVertAlign("leading");

    obj.cbProfcompanionintuicao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionintuicao:setParent(obj.flowPart107);
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
				



			


    obj.dataLink77 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink77:setParent(obj.flowPart107);
    obj.dataLink77:setField("macroExpertise.companionintuicao");
    obj.dataLink77:setName("dataLink77");

    obj.dataLink78 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink78:setParent(obj.flowPart107);
    obj.dataLink78:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink78:setName("dataLink78");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.flowPart107);
    obj.layout42:setAlign("left");
    obj.layout42:setWidth(26);
    obj.layout42:setMargins({left=2});
    obj.layout42:setName("layout42");

    obj.labProfcompanionintuicao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionintuicao:setParent(obj.layout42);
    obj.labProfcompanionintuicao:setName("labProfcompanionintuicao");
    obj.labProfcompanionintuicao:setField("pericias.bonuscompanionintuicaostr");
    obj.labProfcompanionintuicao:setAlign("client");
    obj.labProfcompanionintuicao:setHorzTextAlign("center");
    obj.labProfcompanionintuicao:setVertTextAlign("trailing");
    obj.labProfcompanionintuicao:setTextTrimming("none");
    obj.labProfcompanionintuicao:setFontColor("white");

    obj.horzLine20 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine20:setParent(obj.layout42);
    obj.horzLine20:setStrokeColor("white");
    obj.horzLine20:setStrokeSize(1);
    obj.horzLine20:setAlign("bottom");
    obj.horzLine20:setName("horzLine20");

    obj.button33 = GUI.fromHandle(_obj_newObject("button"));
    obj.button33:setParent(obj.flowPart107);
    obj.button33:setAlign("left");
    obj.button33:setText("Intuição");
    obj.button33:setWidth(122);
    obj.button33:setMargins({left=2});
    obj.button33:setName("button33");

    obj.dataLink79 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink79:setParent(obj.flowLayout22);
    obj.dataLink79:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'pericias.companionintuicao', 'macroExpertise.companionintuicao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink79:setName("dataLink79");

    obj.flowPart108 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart108:setParent(obj.flowLayout22);
    obj.flowPart108:setMinWidth(206);
    obj.flowPart108:setMaxWidth(250);
    obj.flowPart108:setHeight(17);
    obj.flowPart108:setName("flowPart108");
    obj.flowPart108:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart108:setVertAlign("leading");

    obj.cbProfcompanionmedicina = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionmedicina:setParent(obj.flowPart108);
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
				



			


    obj.dataLink80 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink80:setParent(obj.flowPart108);
    obj.dataLink80:setField("macroExpertise.companionmedicina");
    obj.dataLink80:setName("dataLink80");

    obj.dataLink81 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink81:setParent(obj.flowPart108);
    obj.dataLink81:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink81:setName("dataLink81");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.flowPart108);
    obj.layout43:setAlign("left");
    obj.layout43:setWidth(26);
    obj.layout43:setMargins({left=2});
    obj.layout43:setName("layout43");

    obj.labProfcompanionmedicina = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionmedicina:setParent(obj.layout43);
    obj.labProfcompanionmedicina:setName("labProfcompanionmedicina");
    obj.labProfcompanionmedicina:setField("pericias.bonuscompanionmedicinastr");
    obj.labProfcompanionmedicina:setAlign("client");
    obj.labProfcompanionmedicina:setHorzTextAlign("center");
    obj.labProfcompanionmedicina:setVertTextAlign("trailing");
    obj.labProfcompanionmedicina:setTextTrimming("none");
    obj.labProfcompanionmedicina:setFontColor("white");

    obj.horzLine21 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine21:setParent(obj.layout43);
    obj.horzLine21:setStrokeColor("white");
    obj.horzLine21:setStrokeSize(1);
    obj.horzLine21:setAlign("bottom");
    obj.horzLine21:setName("horzLine21");

    obj.button34 = GUI.fromHandle(_obj_newObject("button"));
    obj.button34:setParent(obj.flowPart108);
    obj.button34:setAlign("left");
    obj.button34:setText("Medicina");
    obj.button34:setWidth(122);
    obj.button34:setMargins({left=2});
    obj.button34:setName("button34");

    obj.dataLink82 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink82:setParent(obj.flowLayout22);
    obj.dataLink82:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'pericias.companionmedicina', 'macroExpertise.companionmedicina', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink82:setName("dataLink82");

    obj.flowPart109 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart109:setParent(obj.flowLayout22);
    obj.flowPart109:setMinWidth(206);
    obj.flowPart109:setMaxWidth(250);
    obj.flowPart109:setHeight(17);
    obj.flowPart109:setName("flowPart109");
    obj.flowPart109:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart109:setVertAlign("leading");

    obj.cbProfcompanionpercepcao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionpercepcao:setParent(obj.flowPart109);
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
				



			


    obj.dataLink83 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink83:setParent(obj.flowPart109);
    obj.dataLink83:setField("macroExpertise.companionpercepcao");
    obj.dataLink83:setName("dataLink83");

    obj.dataLink84 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink84:setParent(obj.flowPart109);
    obj.dataLink84:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink84:setName("dataLink84");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.flowPart109);
    obj.layout44:setAlign("left");
    obj.layout44:setWidth(26);
    obj.layout44:setMargins({left=2});
    obj.layout44:setName("layout44");

    obj.labProfcompanionpercepcao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionpercepcao:setParent(obj.layout44);
    obj.labProfcompanionpercepcao:setName("labProfcompanionpercepcao");
    obj.labProfcompanionpercepcao:setField("pericias.bonuscompanionpercepcaostr");
    obj.labProfcompanionpercepcao:setAlign("client");
    obj.labProfcompanionpercepcao:setHorzTextAlign("center");
    obj.labProfcompanionpercepcao:setVertTextAlign("trailing");
    obj.labProfcompanionpercepcao:setTextTrimming("none");
    obj.labProfcompanionpercepcao:setFontColor("white");

    obj.horzLine22 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine22:setParent(obj.layout44);
    obj.horzLine22:setStrokeColor("white");
    obj.horzLine22:setStrokeSize(1);
    obj.horzLine22:setAlign("bottom");
    obj.horzLine22:setName("horzLine22");

    obj.button35 = GUI.fromHandle(_obj_newObject("button"));
    obj.button35:setParent(obj.flowPart109);
    obj.button35:setAlign("left");
    obj.button35:setText("Percepção");
    obj.button35:setWidth(122);
    obj.button35:setMargins({left=2});
    obj.button35:setName("button35");

    obj.dataLink85 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink85:setParent(obj.flowLayout22);
    obj.dataLink85:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'pericias.companionpercepcao', 'macroExpertise.companionpercepcao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink85:setName("dataLink85");

    obj.flowPart110 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart110:setParent(obj.flowLayout22);
    obj.flowPart110:setMinWidth(206);
    obj.flowPart110:setMaxWidth(250);
    obj.flowPart110:setHeight(17);
    obj.flowPart110:setName("flowPart110");
    obj.flowPart110:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart110:setVertAlign("leading");

    obj.cbProfcompanionsobrevivencia = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionsobrevivencia:setParent(obj.flowPart110);
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
				



			


    obj.dataLink86 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink86:setParent(obj.flowPart110);
    obj.dataLink86:setField("macroExpertise.companionsobrevivencia");
    obj.dataLink86:setName("dataLink86");

    obj.dataLink87 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink87:setParent(obj.flowPart110);
    obj.dataLink87:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink87:setName("dataLink87");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.flowPart110);
    obj.layout45:setAlign("left");
    obj.layout45:setWidth(26);
    obj.layout45:setMargins({left=2});
    obj.layout45:setName("layout45");

    obj.labProfcompanionsobrevivencia = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionsobrevivencia:setParent(obj.layout45);
    obj.labProfcompanionsobrevivencia:setName("labProfcompanionsobrevivencia");
    obj.labProfcompanionsobrevivencia:setField("pericias.bonuscompanionsobrevivenciastr");
    obj.labProfcompanionsobrevivencia:setAlign("client");
    obj.labProfcompanionsobrevivencia:setHorzTextAlign("center");
    obj.labProfcompanionsobrevivencia:setVertTextAlign("trailing");
    obj.labProfcompanionsobrevivencia:setTextTrimming("none");
    obj.labProfcompanionsobrevivencia:setFontColor("white");

    obj.horzLine23 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine23:setParent(obj.layout45);
    obj.horzLine23:setStrokeColor("white");
    obj.horzLine23:setStrokeSize(1);
    obj.horzLine23:setAlign("bottom");
    obj.horzLine23:setName("horzLine23");

    obj.button36 = GUI.fromHandle(_obj_newObject("button"));
    obj.button36:setParent(obj.flowPart110);
    obj.button36:setAlign("left");
    obj.button36:setText("Sobrevivência");
    obj.button36:setWidth(122);
    obj.button36:setMargins({left=2});
    obj.button36:setName("button36");

    obj.dataLink88 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink88:setParent(obj.flowLayout22);
    obj.dataLink88:setFields({'atributos.modcompanionsabedoria', 'bonusProficiencia', 'pericias.companionsobrevivencia', 'macroExpertise.companionsobrevivencia', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink88:setName("dataLink88");

    obj.dataLink89 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink89:setParent(obj.fraLayAtributosCompanion);
    obj.dataLink89:setField("atributos.companioncarisma");
    obj.dataLink89:setName("dataLink89");

    obj.flowPart111 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart111:setParent(obj.fraLayAtributosCompanion);
    obj.flowPart111:setHeight(140);
    obj.flowPart111:setMinWidth(320);
    obj.flowPart111:setMaxWidth(420);
    obj.flowPart111:setMinScaledWidth(305);
    obj.flowPart111:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart111:setName("flowPart111");
    obj.flowPart111:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart111:setVertAlign("leading");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.flowPart111);
    obj.layout46:setLeft(6);
    obj.layout46:setTop(12);
    obj.layout46:setWidth(116);
    obj.layout46:setHeight(115);
    obj.layout46:setName("layout46");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout46);
    obj.edit34:setAlign("top");
    obj.edit34:setMargins({left=30, right=30});
    obj.edit34:setField("atributos.companioncarisma");
    obj.edit34:setHeight(30);
    obj.edit34:setType("number");
    obj.edit34:setMin(0);
    obj.edit34:setMax(99);
    obj.edit34:setName("edit34");
    obj.edit34:setTransparent(true);
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setFontSize(15);
    obj.edit34:setFontColor("white");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.flowPart111);
    obj.label81:setFrameRegion("modificador");
    obj.label81:setField("atributos.modcompanioncarismastr");
    obj.label81:setHorzTextAlign("center");
    obj.label81:setVertTextAlign("center");
    obj.label81:setFontSize(46);
    lfm_setPropAsString(obj.label81, "fontStyle",  "bold");
    obj.label81:setName("label81");
    obj.label81:setFontColor("white");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.flowPart111);
    obj.layout47:setFrameRegion("titulo");
    obj.layout47:setName("layout47");

    obj.button37 = GUI.fromHandle(_obj_newObject("button"));
    obj.button37:setParent(obj.layout47);
    obj.button37:setAlign("client");
    obj.button37:setText("CARISMA");
    obj.button37:setVertTextAlign("center");
    obj.button37:setHorzTextAlign("center");
    obj.button37:setName("button37");

    obj.flowLayout23 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout23:setParent(obj.flowPart111);
    obj.flowLayout23:setFrameRegion("RegiaoDePericias");
    obj.flowLayout23:setAutoHeight(true);
    obj.flowLayout23:setLineSpacing(0);
    obj.flowLayout23:setHorzAlign("leading");
    obj.flowLayout23:setName("flowLayout23");
    obj.flowLayout23:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout23:setVertAlign("leading");

    obj.flowPart112 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart112:setParent(obj.flowLayout23);
    obj.flowPart112:setMinWidth(206);
    obj.flowPart112:setMaxWidth(250);
    obj.flowPart112:setHeight(17);
    obj.flowPart112:setName("flowPart112");
    obj.flowPart112:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart112:setVertAlign("leading");

    obj.cbProfcompanioncarisma = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanioncarisma:setParent(obj.flowPart112);
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
				



			


    obj.dataLink90 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink90:setParent(obj.flowPart112);
    obj.dataLink90:setField("macroExpertise.companioncarisma");
    obj.dataLink90:setName("dataLink90");

    obj.dataLink91 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink91:setParent(obj.flowPart112);
    obj.dataLink91:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink91:setName("dataLink91");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.flowPart112);
    obj.layout48:setAlign("left");
    obj.layout48:setWidth(26);
    obj.layout48:setMargins({left=2});
    obj.layout48:setName("layout48");

    obj.labProfcompanioncarisma = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanioncarisma:setParent(obj.layout48);
    obj.labProfcompanioncarisma:setName("labProfcompanioncarisma");
    obj.labProfcompanioncarisma:setField("resistencias.bonuscompanioncarismastr");
    obj.labProfcompanioncarisma:setAlign("client");
    obj.labProfcompanioncarisma:setHorzTextAlign("center");
    obj.labProfcompanioncarisma:setVertTextAlign("trailing");
    obj.labProfcompanioncarisma:setTextTrimming("none");
    obj.labProfcompanioncarisma:setFontColor("white");

    obj.horzLine24 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine24:setParent(obj.layout48);
    obj.horzLine24:setStrokeColor("white");
    obj.horzLine24:setStrokeSize(1);
    obj.horzLine24:setAlign("bottom");
    obj.horzLine24:setName("horzLine24");

    obj.button38 = GUI.fromHandle(_obj_newObject("button"));
    obj.button38:setParent(obj.flowPart112);
    obj.button38:setAlign("left");
    obj.button38:setText("Resistência");
    obj.button38:setWidth(122);
    obj.button38:setMargins({left=2});
    obj.button38:setName("button38");

    obj.dataLink92 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink92:setParent(obj.flowLayout23);
    obj.dataLink92:setFields({'atributos.modcompanioncarisma', 'bonusProficiencia', 'resistencias.companioncarisma', 'propriedades.prescience', 'propriedades.saveBonus'});
    obj.dataLink92:setName("dataLink92");

    obj.flowPart113 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart113:setParent(obj.flowLayout23);
    obj.flowPart113:setMinWidth(206);
    obj.flowPart113:setMaxWidth(250);
    obj.flowPart113:setHeight(17);
    obj.flowPart113:setName("flowPart113");
    obj.flowPart113:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart113:setVertAlign("leading");

    obj.cbProfcompanionatuacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionatuacao:setParent(obj.flowPart113);
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
				



			


    obj.dataLink93 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink93:setParent(obj.flowPart113);
    obj.dataLink93:setField("macroExpertise.companionatuacao");
    obj.dataLink93:setName("dataLink93");

    obj.dataLink94 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink94:setParent(obj.flowPart113);
    obj.dataLink94:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink94:setName("dataLink94");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.flowPart113);
    obj.layout49:setAlign("left");
    obj.layout49:setWidth(26);
    obj.layout49:setMargins({left=2});
    obj.layout49:setName("layout49");

    obj.labProfcompanionatuacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionatuacao:setParent(obj.layout49);
    obj.labProfcompanionatuacao:setName("labProfcompanionatuacao");
    obj.labProfcompanionatuacao:setField("pericias.bonuscompanionatuacaostr");
    obj.labProfcompanionatuacao:setAlign("client");
    obj.labProfcompanionatuacao:setHorzTextAlign("center");
    obj.labProfcompanionatuacao:setVertTextAlign("trailing");
    obj.labProfcompanionatuacao:setTextTrimming("none");
    obj.labProfcompanionatuacao:setFontColor("white");

    obj.horzLine25 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine25:setParent(obj.layout49);
    obj.horzLine25:setStrokeColor("white");
    obj.horzLine25:setStrokeSize(1);
    obj.horzLine25:setAlign("bottom");
    obj.horzLine25:setName("horzLine25");

    obj.button39 = GUI.fromHandle(_obj_newObject("button"));
    obj.button39:setParent(obj.flowPart113);
    obj.button39:setAlign("left");
    obj.button39:setText("Atuação");
    obj.button39:setWidth(122);
    obj.button39:setMargins({left=2});
    obj.button39:setName("button39");

    obj.dataLink95 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink95:setParent(obj.flowLayout23);
    obj.dataLink95:setFields({'atributos.modcompanioncarisma', 'bonusProficiencia', 'pericias.companionatuacao', 'macroExpertise.companionatuacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink95:setName("dataLink95");

    obj.flowPart114 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart114:setParent(obj.flowLayout23);
    obj.flowPart114:setMinWidth(206);
    obj.flowPart114:setMaxWidth(250);
    obj.flowPart114:setHeight(17);
    obj.flowPart114:setName("flowPart114");
    obj.flowPart114:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart114:setVertAlign("leading");

    obj.cbProfcompanionenganacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionenganacao:setParent(obj.flowPart114);
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
				



			


    obj.dataLink96 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink96:setParent(obj.flowPart114);
    obj.dataLink96:setField("macroExpertise.companionenganacao");
    obj.dataLink96:setName("dataLink96");

    obj.dataLink97 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink97:setParent(obj.flowPart114);
    obj.dataLink97:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink97:setName("dataLink97");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.flowPart114);
    obj.layout50:setAlign("left");
    obj.layout50:setWidth(26);
    obj.layout50:setMargins({left=2});
    obj.layout50:setName("layout50");

    obj.labProfcompanionenganacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionenganacao:setParent(obj.layout50);
    obj.labProfcompanionenganacao:setName("labProfcompanionenganacao");
    obj.labProfcompanionenganacao:setField("pericias.bonuscompanionenganacaostr");
    obj.labProfcompanionenganacao:setAlign("client");
    obj.labProfcompanionenganacao:setHorzTextAlign("center");
    obj.labProfcompanionenganacao:setVertTextAlign("trailing");
    obj.labProfcompanionenganacao:setTextTrimming("none");
    obj.labProfcompanionenganacao:setFontColor("white");

    obj.horzLine26 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine26:setParent(obj.layout50);
    obj.horzLine26:setStrokeColor("white");
    obj.horzLine26:setStrokeSize(1);
    obj.horzLine26:setAlign("bottom");
    obj.horzLine26:setName("horzLine26");

    obj.button40 = GUI.fromHandle(_obj_newObject("button"));
    obj.button40:setParent(obj.flowPart114);
    obj.button40:setAlign("left");
    obj.button40:setText("Enganação");
    obj.button40:setWidth(122);
    obj.button40:setMargins({left=2});
    obj.button40:setName("button40");

    obj.dataLink98 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink98:setParent(obj.flowLayout23);
    obj.dataLink98:setFields({'atributos.modcompanioncarisma', 'bonusProficiencia', 'pericias.companionenganacao', 'macroExpertise.companionenganacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink98:setName("dataLink98");

    obj.flowPart115 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart115:setParent(obj.flowLayout23);
    obj.flowPart115:setMinWidth(206);
    obj.flowPart115:setMaxWidth(250);
    obj.flowPart115:setHeight(17);
    obj.flowPart115:setName("flowPart115");
    obj.flowPart115:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart115:setVertAlign("leading");

    obj.cbProfcompanionintimidacao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionintimidacao:setParent(obj.flowPart115);
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
				



			


    obj.dataLink99 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink99:setParent(obj.flowPart115);
    obj.dataLink99:setField("macroExpertise.companionintimidacao");
    obj.dataLink99:setName("dataLink99");

    obj.dataLink100 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink100:setParent(obj.flowPart115);
    obj.dataLink100:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink100:setName("dataLink100");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.flowPart115);
    obj.layout51:setAlign("left");
    obj.layout51:setWidth(26);
    obj.layout51:setMargins({left=2});
    obj.layout51:setName("layout51");

    obj.labProfcompanionintimidacao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionintimidacao:setParent(obj.layout51);
    obj.labProfcompanionintimidacao:setName("labProfcompanionintimidacao");
    obj.labProfcompanionintimidacao:setField("pericias.bonuscompanionintimidacaostr");
    obj.labProfcompanionintimidacao:setAlign("client");
    obj.labProfcompanionintimidacao:setHorzTextAlign("center");
    obj.labProfcompanionintimidacao:setVertTextAlign("trailing");
    obj.labProfcompanionintimidacao:setTextTrimming("none");
    obj.labProfcompanionintimidacao:setFontColor("white");

    obj.horzLine27 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine27:setParent(obj.layout51);
    obj.horzLine27:setStrokeColor("white");
    obj.horzLine27:setStrokeSize(1);
    obj.horzLine27:setAlign("bottom");
    obj.horzLine27:setName("horzLine27");

    obj.button41 = GUI.fromHandle(_obj_newObject("button"));
    obj.button41:setParent(obj.flowPart115);
    obj.button41:setAlign("left");
    obj.button41:setText("Intimidação");
    obj.button41:setWidth(122);
    obj.button41:setMargins({left=2});
    obj.button41:setName("button41");

    obj.dataLink101 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink101:setParent(obj.flowLayout23);
    obj.dataLink101:setFields({'atributos.modcompanioncarisma', 'bonusProficiencia', 'pericias.companionintimidacao', 'macroExpertise.companionintimidacao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink101:setName("dataLink101");

    obj.flowPart116 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart116:setParent(obj.flowLayout23);
    obj.flowPart116:setMinWidth(206);
    obj.flowPart116:setMaxWidth(250);
    obj.flowPart116:setHeight(17);
    obj.flowPart116:setName("flowPart116");
    obj.flowPart116:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart116:setVertAlign("leading");

    obj.cbProfcompanionpersuasao = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbProfcompanionpersuasao:setParent(obj.flowPart116);
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
				



			


    obj.dataLink102 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink102:setParent(obj.flowPart116);
    obj.dataLink102:setField("macroExpertise.companionpersuasao");
    obj.dataLink102:setName("dataLink102");

    obj.dataLink103 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink103:setParent(obj.flowPart116);
    obj.dataLink103:setFields({'propriedades.jackOfAllTrades', 'propriedades.remarkableAthlete'});
    obj.dataLink103:setName("dataLink103");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.flowPart116);
    obj.layout52:setAlign("left");
    obj.layout52:setWidth(26);
    obj.layout52:setMargins({left=2});
    obj.layout52:setName("layout52");

    obj.labProfcompanionpersuasao = GUI.fromHandle(_obj_newObject("label"));
    obj.labProfcompanionpersuasao:setParent(obj.layout52);
    obj.labProfcompanionpersuasao:setName("labProfcompanionpersuasao");
    obj.labProfcompanionpersuasao:setField("pericias.bonuscompanionpersuasaostr");
    obj.labProfcompanionpersuasao:setAlign("client");
    obj.labProfcompanionpersuasao:setHorzTextAlign("center");
    obj.labProfcompanionpersuasao:setVertTextAlign("trailing");
    obj.labProfcompanionpersuasao:setTextTrimming("none");
    obj.labProfcompanionpersuasao:setFontColor("white");

    obj.horzLine28 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine28:setParent(obj.layout52);
    obj.horzLine28:setStrokeColor("white");
    obj.horzLine28:setStrokeSize(1);
    obj.horzLine28:setAlign("bottom");
    obj.horzLine28:setName("horzLine28");

    obj.button42 = GUI.fromHandle(_obj_newObject("button"));
    obj.button42:setParent(obj.flowPart116);
    obj.button42:setAlign("left");
    obj.button42:setText("Persuasão");
    obj.button42:setWidth(122);
    obj.button42:setMargins({left=2});
    obj.button42:setName("button42");

    obj.dataLink104 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink104:setParent(obj.flowLayout23);
    obj.dataLink104:setFields({'atributos.modcompanioncarisma', 'bonusProficiencia', 'pericias.companionpersuasao', 'macroExpertise.companionpersuasao', 'propriedades.jackOfAllTrades', 'propriedades.prescience', 'propriedades.checkBonus'});
    obj.dataLink104:setName("dataLink104");

    obj.flowLayout24 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout24:setParent(obj.flowLayout17);
    obj.flowLayout24:setAutoHeight(true);
    obj.flowLayout24:setHorzAlign("center");
    obj.flowLayout24:setVertAlign("leading");
    obj.flowLayout24:setMaxControlsPerLine(1);
    obj.flowLayout24:setName("flowLayout24");
    obj.flowLayout24:setStepSizes({310, 360});
    obj.flowLayout24:setMinScaledWidth(300);
    obj.flowLayout24:setMaxScaledWidth(340);
    obj.flowLayout24:setAvoidScale(true);
    obj.flowLayout24:setMargins({left=1, right=1, top=2, bottom=2});

    obj.flowLayout25 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout25:setParent(obj.flowLayout24);
    obj.flowLayout25:setMinWidth(235);
    obj.flowLayout25:setMaxWidth(475);
    obj.flowLayout25:setAutoHeight(true);
    obj.flowLayout25:setAvoidScale(false);
    obj.flowLayout25:setVertAlign("center");
    obj.flowLayout25:setHorzAlign("justify");
    obj.flowLayout25:setName("flowLayout25");
    obj.flowLayout25:setMargins({left=1, right=1, top=2, bottom=2});

    obj.flowPart117 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart117:setParent(obj.flowLayout25);
    obj.flowPart117:setStepSizes({105});
    obj.flowPart117:setMinScaledWidth(75);
    obj.flowPart117:setHeight(120);
    obj.flowPart117:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart117:setName("flowPart117");
    obj.flowPart117:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart117:setVertAlign("leading");

    obj.button43 = GUI.fromHandle(_obj_newObject("button"));
    obj.button43:setParent(obj.flowPart117);
    obj.button43:setAlign("top");
    obj.button43:setText("INICIATIVA");
    obj.button43:setHeight(20);
    obj.button43:setFontSize(9);
    obj.button43:setWordWrap(true);
    obj.button43:setHorzTextAlign("center");
    obj.button43:setMargins({left=5, right=5});
    obj.button43:setTextTrimming("none");
    obj.button43:setName("button43");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.flowPart117);
    obj.edit35:setAlign("client");
    obj.edit35:setField("iniciativacompanion");
    obj.edit35:setFontSize(30);
    obj.edit35:setName("edit35");
    obj.edit35:setTransparent(true);
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setFontColor("white");

    obj.flowPart118 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart118:setParent(obj.flowLayout25);
    obj.flowPart118:setStepSizes({105});
    obj.flowPart118:setMinScaledWidth(75);
    obj.flowPart118:setHeight(120);
    obj.flowPart118:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart118:setName("flowPart118");
    obj.flowPart118:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart118:setVertAlign("leading");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.flowPart118);
    obj.label82:setAlign("top");
    obj.label82:setText("DESLOCAMENTO ANDANDO");
    obj.label82:setHeight(20);
    obj.label82:setFontSize(9);
    obj.label82:setWordWrap(true);
    obj.label82:setHorzTextAlign("center");
    obj.label82:setTextTrimming("none");
    obj.label82:setName("label82");
    obj.label82:setFontColor("white");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.flowPart118);
    obj.edit36:setAlign("client");
    obj.edit36:setField("deslocamento andando Companion");
    obj.edit36:setFontSize(30);
    obj.edit36:setName("edit36");
    obj.edit36:setTransparent(true);
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setFontColor("white");

    obj.flowPart119 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart119:setParent(obj.flowLayout25);
    obj.flowPart119:setStepSizes({105});
    obj.flowPart119:setMinScaledWidth(75);
    obj.flowPart119:setHeight(120);
    obj.flowPart119:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart119:setName("flowPart119");
    obj.flowPart119:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart119:setVertAlign("leading");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.flowPart119);
    obj.label83:setAlign("top");
    obj.label83:setText("DESLOCAMENTO NADO / ESCALADA");
    obj.label83:setHeight(20);
    obj.label83:setFontSize(9);
    obj.label83:setWordWrap(true);
    obj.label83:setHorzTextAlign("center");
    obj.label83:setTextTrimming("none");
    obj.label83:setName("label83");
    obj.label83:setFontColor("white");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.flowPart119);
    obj.edit37:setAlign("client");
    obj.edit37:setField("deslocamento nado Companion");
    obj.edit37:setFontSize(30);
    obj.edit37:setName("edit37");
    obj.edit37:setTransparent(true);
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setFontColor("white");

    obj.flowPart120 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart120:setParent(obj.flowLayout25);
    obj.flowPart120:setStepSizes({105});
    obj.flowPart120:setMinScaledWidth(75);
    obj.flowPart120:setHeight(120);
    obj.flowPart120:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart120:setName("flowPart120");
    obj.flowPart120:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart120:setVertAlign("leading");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.flowPart120);
    obj.label84:setAlign("top");
    obj.label84:setText("DESLOCAMENTO VOO");
    obj.label84:setHeight(20);
    obj.label84:setFontSize(9);
    obj.label84:setWordWrap(true);
    obj.label84:setHorzTextAlign("center");
    obj.label84:setTextTrimming("none");
    obj.label84:setName("label84");
    obj.label84:setFontColor("white");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.flowPart120);
    obj.edit38:setAlign("client");
    obj.edit38:setField("deslocamento voo Companion");
    obj.edit38:setFontSize(30);
    obj.edit38:setName("edit38");
    obj.edit38:setTransparent(true);
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setFontColor("white");

    obj.flowPart121 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart121:setParent(obj.flowLayout24);
    obj.flowPart121:setMinWidth(235);
    obj.flowPart121:setMaxWidth(475);
    obj.flowPart121:setMinScaledWidth(200);
    obj.flowPart121:setHeight(175);
    obj.flowPart121:setMargins({left=2, right=2, top=4, bottom=8});
    obj.flowPart121:setName("flowPart121");
    obj.flowPart121:setVertAlign("leading");

    obj.frame6 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame6:setParent(obj.flowPart121);
    obj.frame6:setAlign("client");
    obj.frame6:setFrameStyle("frames/panel5/topPanel.xml");
    obj.frame6:setMargins({left = 4, right = 4, bottom=4});
    obj.frame6:setName("frame6");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.frame6);
    obj.layout53:setAlign("client");
    obj.layout53:setMargins({left=5,right=5,bottom=5,top=5});
    obj.layout53:setName("layout53");

    obj.flowLayout26 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout26:setParent(obj.layout53);
    obj.flowLayout26:setAlign("top");
    obj.flowLayout26:setHorzAlign("center");
    obj.flowLayout26:setHeight(30);
    obj.flowLayout26:setMargins({bottom=5});
    obj.flowLayout26:setName("flowLayout26");
    obj.flowLayout26:setVertAlign("leading");

 require("descanso.lua"); 


    obj.button44 = GUI.fromHandle(_obj_newObject("button"));
    obj.button44:setParent(obj.flowLayout26);
    obj.button44:setText("Short Rest");
    obj.button44:setWidth(75);
    obj.button44:setName("button44");

    obj.button45 = GUI.fromHandle(_obj_newObject("button"));
    obj.button45:setParent(obj.flowLayout26);
    obj.button45:setText("Long Rest");
    obj.button45:setWidth(75);
    obj.button45:setName("button45");

    obj.button46 = GUI.fromHandle(_obj_newObject("button"));
    obj.button46:setParent(obj.flowLayout26);
    obj.button46:setText("Dano");
    obj.button46:setWidth(50);
    obj.button46:setName("button46");

    obj.colorComboBox1 = GUI.fromHandle(_obj_newObject("colorComboBox"));
    obj.colorComboBox1:setParent(obj.flowLayout26);
    obj.colorComboBox1:setAlign("right");
    obj.colorComboBox1:setMargins({left=2});
    obj.colorComboBox1:setWidth(50);
    obj.colorComboBox1:setField("barColor2");
    obj.colorComboBox1:setUseAlpha(false);
    obj.colorComboBox1:setName("colorComboBox1");

    obj.dataLink105 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink105:setParent(obj.flowLayout26);
    obj.dataLink105:setField("barColor2");
    obj.dataLink105:setDefaultValue("Red");
    obj.dataLink105:setName("dataLink105");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.layout53);
    obj.layout54:setAlign("client");
    obj.layout54:setMargins({bottom=10});
    obj.layout54:setName("layout54");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.layout54);
    obj.layout55:setAlign("right");
    obj.layout55:setWidth(81);
    obj.layout55:setName("layout55");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout55);
    obj.edit39:setAlign("left");
    obj.edit39:setMargins({left=2});
    obj.edit39:setWidth(35);
    obj.edit39:setField("PV2");
    obj.edit39:setType("number");
    obj.edit39:setMin(0);
    obj.edit39:setName("edit39");
    obj.edit39:setFontSize(15);
    obj.edit39:setFontColor("white");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout55);
    obj.label85:setAlign("left");
    obj.label85:setMargins({left=2});
    obj.label85:setText("/");
    obj.label85:setWidth(5);
    obj.label85:setName("label85");
    obj.label85:setFontColor("white");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout55);
    obj.edit40:setAlign("left");
    obj.edit40:setMargins({left=2});
    obj.edit40:setWidth(35);
    obj.edit40:setField("PVmax2");
    obj.edit40:setType("number");
    obj.edit40:setMin(0);
    obj.edit40:setName("edit40");
    obj.edit40:setFontSize(15);
    obj.edit40:setFontColor("white");

    obj.progBar2 = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.progBar2:setParent(obj.layout54);
    obj.progBar2:setName("progBar2");
    obj.progBar2:setAlign("client");
    obj.progBar2:setColor("yellow");
    obj.progBar2:setMin(0);
    obj.progBar2:setField("PV2");
    obj.progBar2:setFieldMax("PVmax2");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout54);
    obj.label86:setAlign("client");
    obj.label86:setAutoSize(true);
    obj.label86:setText("PONTOS DE VIDA");
    obj.label86:setFontSize(11);
    obj.label86:setVertTextAlign("center");
    obj.label86:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label86, "fontStyle",  "bold");
    obj.label86:setMargins({top=1,left=1});
    obj.label86:setFontColor("black");
    obj.label86:setName("label86");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout54);
    obj.label87:setAlign("client");
    obj.label87:setAutoSize(true);
    obj.label87:setText("PONTOS DE VIDA");
    obj.label87:setFontSize(11);
    obj.label87:setVertTextAlign("center");
    obj.label87:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label87, "fontStyle",  "bold");
    obj.label87:setName("label87");
    obj.label87:setFontColor("white");

    obj.dataLink106 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink106:setParent(obj.layout54);
    obj.dataLink106:setFields({'PV2', 'PVmax2'});
    obj.dataLink106:setName("dataLink106");

    obj.dataLink107 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink107:setParent(obj.layout53);
    obj.dataLink107:setField("descansoLongo");
    obj.dataLink107:setName("dataLink107");

    obj.frame7 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame7:setParent(obj.flowPart121);
    obj.frame7:setAlign("bottom");
    obj.frame7:setHeight(70);
    obj.frame7:setFrameStyle("frames/panel5/bottomPanel.xml");
    obj.frame7:setMargins({left = 4, right = 4});
    obj.frame7:setName("frame7");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.frame7);
    obj.edit41:setAlign("client");
    obj.edit41:setField("PVTemporario");
    obj.edit41:setMargins({top=2});
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setVertTextAlign("center");
    obj.edit41:setFontSize(36);
    lfm_setPropAsString(obj.edit41, "fontStyle",  "bold");
    obj.edit41:setType("number");
    obj.edit41:setName("edit41");
    obj.edit41:setFontColor("white");
    obj.edit41:setTransparent(true);

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.frame7);
    obj.label88:setAlign("bottom");
    obj.label88:setAutoSize(true);
    obj.label88:setText("PONTOS DE VIDA TEMPORÁRIOS");
    obj.label88:setFontSize(11);
    obj.label88:setVertTextAlign("center");
    obj.label88:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label88, "fontStyle",  "bold");
    obj.label88:setName("label88");
    obj.label88:setFontColor("white");

    obj.flowLayout27 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout27:setParent(obj.flowLayout24);
    obj.flowLayout27:setAutoHeight(true);
    obj.flowLayout27:setMinWidth(235);
    obj.flowLayout27:setMaxWidth(475);
    obj.flowLayout27:setMinScaledWidth(235);
    obj.flowLayout27:setHorzAlign("justify");
    obj.flowLayout27:setName("flowLayout27");
    obj.flowLayout27:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout27:setVertAlign("leading");

    obj.flowPart122 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart122:setParent(obj.flowLayout27);
    obj.flowPart122:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart122:setStepSizes({130, 150, 160});
    obj.flowPart122:setHeight(100);
    obj.flowPart122:setName("flowPart122");
    obj.flowPart122:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart122:setVertAlign("leading");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.flowPart122);
    obj.layout56:setAlign("top");
    obj.layout56:setHeight(25);
    obj.layout56:setName("layout56");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout56);
    obj.label89:setAlign("left");
    obj.label89:setAutoSize(true);
    obj.label89:setText("ACERTO:");
    obj.label89:setTextTrimming("none");
    obj.label89:setWordWrap(false);
    obj.label89:setFontSize(10);
    obj.label89:setHorzTextAlign("trailing");
    obj.label89:setName("label89");
    obj.label89:setFontColor("#D0D0D0");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.layout56);
    obj.layout57:setAlign("client");
    obj.layout57:setMargins({left=5, right=3});
    obj.layout57:setName("layout57");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout57);
    obj.edit42:setAlign("client");
    obj.edit42:setField("DadosDeVidaTotalcompanion");
    obj.edit42:setVertTextAlign("center");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setName("edit42");
    obj.edit42:setFontSize(15);
    obj.edit42:setFontColor("white");
    obj.edit42:setTransparent(true);

    obj.horzLine29 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine29:setParent(obj.layout57);
    obj.horzLine29:setAlign("bottom");
    obj.horzLine29:setStrokeColor("gray");
    obj.horzLine29:setName("horzLine29");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.flowPart122);
    obj.edit43:setAlign("client");
    obj.edit43:setField("DadosDeVidacompanion");
    obj.edit43:setMargins({top=2});
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setVertTextAlign("center");
    obj.edit43:setFontSize(21);
    obj.edit43:setName("edit43");
    obj.edit43:setFontColor("white");
    obj.edit43:setTransparent(true);

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.flowPart122);
    obj.label90:setAlign("bottom");
    obj.label90:setAutoSize(true);
    obj.label90:setText("DANO DO COMPANION");
    obj.label90:setFontSize(11);
    obj.label90:setVertTextAlign("center");
    obj.label90:setHorzTextAlign("center");
    obj.label90:setName("label90");
    obj.label90:setFontColor("white");

    obj.flowPart123 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart123:setParent(obj.flowLayout27);
    obj.flowPart123:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart123:setStepSizes({170, 170});
    obj.flowPart123:setHeight(100);
    obj.flowPart123:setName("flowPart123");
    obj.flowPart123:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart123:setVertAlign("leading");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.flowPart123);
    obj.layout58:setAlign("top");
    obj.layout58:setHeight(25);
    obj.layout58:setMargins({left=2});
    obj.layout58:setName("layout58");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout58);
    obj.label91:setAlign("client");
    obj.label91:setAutoSize(true);
    obj.label91:setFontSize(10);
    obj.label91:setText("SUCESSOS");
    obj.label91:setWordWrap(false);
    obj.label91:setVertTextAlign("center");
    obj.label91:setHorzTextAlign("trailing");
    obj.label91:setMargins({right=6});
    obj.label91:setName("label91");
    obj.label91:setFontColor("white");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout58);
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
    obj.imageCheckBox2:setParent(obj.layout58);
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
    obj.imageCheckBox3:setParent(obj.layout58);
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

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.flowPart123);
    obj.layout59:setAlign("top");
    obj.layout59:setHeight(25);
    obj.layout59:setMargins({left=2, top = 4});
    obj.layout59:setName("layout59");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout59);
    obj.label92:setAlign("client");
    obj.label92:setAutoSize(true);
    obj.label92:setFontSize(10);
    obj.label92:setText("FALHAS");
    obj.label92:setVertTextAlign("center");
    obj.label92:setHorzTextAlign("trailing");
    obj.label92:setMargins({right=6});
    obj.label92:setName("label92");
    obj.label92:setFontColor("white");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout59);
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
    obj.imageCheckBox5:setParent(obj.layout59);
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
    obj.imageCheckBox6:setParent(obj.layout59);
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
    obj.button47:setParent(obj.flowPart123);
    obj.button47:setAlign("bottom");
    obj.button47:setText("TESTE CONTRA MORTE");
    obj.button47:setFontSize(11);
    obj.button47:setVertTextAlign("center");
    obj.button47:setHorzTextAlign("center");
    obj.button47:setName("button47");

    obj.tab11 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab11:setParent(obj.pgcPrincipal);
    obj.tab11:setTitle("C.ANOTAÇÕES");
    obj.tab11:setName("tab11");

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.tab11);
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

    obj.tab12 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab12:setParent(obj.pgcPrincipal);
    obj.tab12:setTitle("ANOTAÇÕES");
    obj.tab12:setName("tab12");

    obj.rectangle27 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.tab12);
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

    obj.tab13 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab13:setParent(obj.pgcPrincipal);
    obj.tab13:setTitle("CREDITOS");
    obj.tab13:setName("tab13");

    obj.frmFichaRPGmeister11_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaRPGmeister11_svg:setParent(obj.tab13);
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

		


	
	


    obj.scrollBox7 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.rectangle28);
    obj.scrollBox7:setAlign("client");
    obj.scrollBox7:setName("scrollBox7");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.scrollBox7);
    obj.layout60:setLeft(10);
    obj.layout60:setTop(10);
    obj.layout60:setWidth(500);
    obj.layout60:setHeight(600);
    obj.layout60:setFrameStyle("frames/panel3transp/frame.xml");
    obj.layout60:setName("layout60");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.layout60);
    obj.image4:setLeft(10);
    obj.image4:setTop(10);
    obj.image4:setWidth(480);
    obj.image4:setHeight(580);
    obj.image4:setSRC("images/Mesa_do_Bolo.png");
    obj.image4:setStyle("stretch");
    obj.image4:setOptimize(true);
    obj.image4:setName("image4");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.scrollBox7);
    obj.layout61:setLeft(525);
    obj.layout61:setTop(10);
    obj.layout61:setWidth(200);
    obj.layout61:setHeight(220);
    obj.layout61:setFrameStyle("frames/panel3transp/frame.xml");
    obj.layout61:setName("layout61");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout61);
    obj.label93:setLeft(0);
    obj.label93:setTop(10);
    obj.label93:setWidth(200);
    obj.label93:setHeight(20);
    obj.label93:setText("Programador e Revisão:");
    obj.label93:setHorzTextAlign("center");
    obj.label93:setName("label93");
    obj.label93:setFontColor("white");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.layout61);
    obj.label94:setLeft(0);
    obj.label94:setTop(30);
    obj.label94:setWidth(200);
    obj.label94:setHeight(20);
    obj.label94:setText("Samael (Zambrakas)");
    obj.label94:setHorzTextAlign("center");
    obj.label94:setName("label94");
    obj.label94:setFontColor("white");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout61);
    obj.label95:setLeft(0);
    obj.label95:setTop(50);
    obj.label95:setWidth(200);
    obj.label95:setHeight(20);
    obj.label95:setText("Krampus (Krampus)");
    obj.label95:setHorzTextAlign("center");
    obj.label95:setName("label95");
    obj.label95:setFontColor("white");

    obj.label96 = GUI.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.layout61);
    obj.label96:setLeft(0);
    obj.label96:setTop(80);
    obj.label96:setWidth(200);
    obj.label96:setHeight(20);
    obj.label96:setText("Arte:");
    obj.label96:setHorzTextAlign("center");
    obj.label96:setName("label96");
    obj.label96:setFontColor("white");

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.layout61);
    obj.label97:setLeft(0);
    obj.label97:setTop(100);
    obj.label97:setWidth(200);
    obj.label97:setHeight(20);
    obj.label97:setText("Samael (Zambrakas)");
    obj.label97:setHorzTextAlign("center");
    obj.label97:setName("label97");
    obj.label97:setFontColor("white");

    obj.label98 = GUI.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.layout61);
    obj.label98:setLeft(0);
    obj.label98:setTop(130);
    obj.label98:setWidth(200);
    obj.label98:setHeight(20);
    obj.label98:setText("Ficha feita para a mesa: ");
    obj.label98:setHorzTextAlign("center");
    obj.label98:setName("label98");
    obj.label98:setFontColor("white");

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout61);
    obj.label99:setLeft(0);
    obj.label99:setTop(150);
    obj.label99:setWidth(200);
    obj.label99:setHeight(20);
    obj.label99:setText("Mesa do Bolo");
    obj.label99:setHorzTextAlign("center");
    obj.label99:setName("label99");
    obj.label99:setFontColor("white");

    obj.label100 = GUI.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.layout61);
    obj.label100:setLeft(0);
    obj.label100:setTop(170);
    obj.label100:setWidth(200);
    obj.label100:setHeight(20);
    obj.label100:setText("Mesa da Veia");
    obj.label100:setHorzTextAlign("center");
    obj.label100:setName("label100");
    obj.label100:setFontColor("white");

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.layout61);
    obj.label101:setLeft(0);
    obj.label101:setTop(190);
    obj.label101:setWidth(200);
    obj.label101:setHeight(20);
    obj.label101:setText("Tales Of Alpha");
    obj.label101:setHorzTextAlign("center");
    obj.label101:setName("label101");
    obj.label101:setFontColor("white");

    obj.label102 = GUI.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.layout61);
    obj.label102:setLeft(0);
    obj.label102:setTop(210);
    obj.label102:setWidth(200);
    obj.label102:setHeight(20);
    obj.label102:setText(" ");
    obj.label102:setHorzTextAlign("center");
    obj.label102:setName("label102");
    obj.label102:setFontColor("white");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.scrollBox7);
    obj.layout62:setLeft(525);
    obj.layout62:setTop(250);
    obj.layout62:setWidth(200);
    obj.layout62:setHeight(150);
    obj.layout62:setFrameStyle("frames/panel3transp/frame.xml");
    obj.layout62:setName("layout62");

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.layout62);
    obj.label103:setLeft(0);
    obj.label103:setTop(10);
    obj.label103:setWidth(80);
    obj.label103:setHeight(20);
    obj.label103:setText("Tema:");
    obj.label103:setHorzTextAlign("center");
    obj.label103:setName("label103");
    obj.label103:setFontColor("white");

    obj.comboBox13 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox13:setParent(obj.layout62);
    obj.comboBox13:setLeft(80);
    obj.comboBox13:setTop(10);
    obj.comboBox13:setWidth(90);
    obj.comboBox13:setField("theme");
    obj.comboBox13:setFontColor("white");
    obj.comboBox13:setItems({'Escuro',});
    obj.comboBox13:setHorzTextAlign("center");
    obj.comboBox13:setName("comboBox13");

    obj.dataLink108 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink108:setParent(obj.layout62);
    obj.dataLink108:setField("theme");
    obj.dataLink108:setDefaultValue("Escuro");
    obj.dataLink108:setName("dataLink108");

    obj.label104 = GUI.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.layout62);
    obj.label104:setLeft(0);
    obj.label104:setTop(35);
    obj.label104:setWidth(80);
    obj.label104:setHeight(20);
    obj.label104:setText("Cores: ");
    obj.label104:setHorzTextAlign("center");
    obj.label104:setName("label104");
    obj.label104:setFontColor("white");

    obj.label105 = GUI.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.layout62);
    obj.label105:setLeft(0);
    obj.label105:setTop(60);
    obj.label105:setWidth(80);
    obj.label105:setHeight(20);
    obj.label105:setText("Fundo: ");
    obj.label105:setHorzTextAlign("center");
    obj.label105:setName("label105");
    obj.label105:setFontColor("white");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout62);
    obj.edit44:setLeft(85);
    obj.edit44:setTop(60);
    obj.edit44:setWidth(90);
    obj.edit44:setField("colorBackground");
    obj.edit44:setTextPrompt("#FFFFFF");
    obj.edit44:setName("edit44");
    obj.edit44:setFontSize(15);
    obj.edit44:setFontColor("white");

    obj.dataLink109 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink109:setParent(obj.layout62);
    obj.dataLink109:setField("colorBackground");
    obj.dataLink109:setDefaultValue("#505050");
    obj.dataLink109:setName("dataLink109");

    obj.label106 = GUI.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.layout62);
    obj.label106:setLeft(0);
    obj.label106:setTop(85);
    obj.label106:setWidth(80);
    obj.label106:setHeight(20);
    obj.label106:setText("Linhas: ");
    obj.label106:setHorzTextAlign("center");
    obj.label106:setName("label106");
    obj.label106:setFontColor("white");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout62);
    obj.edit45:setLeft(85);
    obj.edit45:setTop(85);
    obj.edit45:setWidth(90);
    obj.edit45:setField("colorStroke");
    obj.edit45:setTextPrompt("#FFFFFF");
    obj.edit45:setName("edit45");
    obj.edit45:setFontSize(15);
    obj.edit45:setFontColor("white");

    obj.dataLink110 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink110:setParent(obj.layout62);
    obj.dataLink110:setField("colorStroke");
    obj.dataLink110:setDefaultValue("#FFFFFF");
    obj.dataLink110:setName("dataLink110");

    obj.label107 = GUI.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.layout62);
    obj.label107:setLeft(0);
    obj.label107:setTop(110);
    obj.label107:setWidth(80);
    obj.label107:setHeight(20);
    obj.label107:setText("Fonte: ");
    obj.label107:setHorzTextAlign("center");
    obj.label107:setName("label107");
    obj.label107:setFontColor("white");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout62);
    obj.edit46:setLeft(85);
    obj.edit46:setTop(110);
    obj.edit46:setWidth(90);
    obj.edit46:setField("colorFont");
    obj.edit46:setTextPrompt("#FFFFFF");
    obj.edit46:setName("edit46");
    obj.edit46:setFontSize(15);
    obj.edit46:setFontColor("white");

    obj.dataLink111 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink111:setParent(obj.layout62);
    obj.dataLink111:setField("colorFont");
    obj.dataLink111:setDefaultValue("#FFFFFF");
    obj.dataLink111:setName("dataLink111");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.scrollBox7);
    obj.layout63:setLeft(740);
    obj.layout63:setTop(10);
    obj.layout63:setWidth(500);
    obj.layout63:setHeight(600);
    obj.layout63:setFrameStyle("frames/panel3transp/frame.xml");
    obj.layout63:setName("layout63");

    obj.label108 = GUI.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.layout63);
    obj.label108:setLeft(0);
    obj.label108:setTop(560);
    obj.label108:setWidth(500);
    obj.label108:setHeight(20);
    obj.label108:setText("ANOTAÇÕES DO MESTRE");
    obj.label108:setHorzTextAlign("center");
    obj.label108:setName("label108");
    obj.label108:setFontColor("white");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout63);
    obj.textEditor7:setLeft(30);
    obj.textEditor7:setTop(20);
    obj.textEditor7:setWidth(440);
    obj.textEditor7:setHeight(530);
    obj.textEditor7:setField("anotacoes_do_mestre");
    obj.textEditor7:setName("textEditor7");
    obj.textEditor7:setTransparent(true);

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.scrollBox7);
    obj.layout64:setLeft(525);
    obj.layout64:setTop(420);
    obj.layout64:setWidth(200);
    obj.layout64:setHeight(190);
    obj.layout64:setFrameStyle("frames/panel3transp/frame.xml");
    obj.layout64:setName("layout64");

    obj.label109 = GUI.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.layout64);
    obj.label109:setLeft(50);
    obj.label109:setTop(30);
    obj.label109:setWidth(200);
    obj.label109:setHeight(20);
    obj.label109:setText("CONHEÇA A MESA:");
    obj.label109:setFontSize(11);
    obj.label109:setName("label109");
    obj.label109:setFontColor("white");

    obj.button48 = GUI.fromHandle(_obj_newObject("button"));
    obj.button48:setParent(obj.layout64);
    obj.button48:setLeft(20);
    obj.button48:setTop(70);
    obj.button48:setWidth(80);
    obj.button48:setText("Atualizar");
    obj.button48:setName("button48");

    obj.button49 = GUI.fromHandle(_obj_newObject("button"));
    obj.button49:setParent(obj.layout64);
    obj.button49:setLeft(20);
    obj.button49:setTop(100);
    obj.button49:setWidth(80);
    obj.button49:setText("Discord");
    obj.button49:setName("button49");

    obj.button50 = GUI.fromHandle(_obj_newObject("button"));
    obj.button50:setParent(obj.layout64);
    obj.button50:setLeft(20);
    obj.button50:setTop(130);
    obj.button50:setWidth(80);
    obj.button50:setText("Zap (Mesa)");
    obj.button50:setName("button50");

    obj.button51 = GUI.fromHandle(_obj_newObject("button"));
    obj.button51:setParent(obj.layout64);
    obj.button51:setLeft(100);
    obj.button51:setTop(70);
    obj.button51:setWidth(80);
    obj.button51:setHeight(20);
    obj.button51:setText("Exportar");
    obj.button51:setName("button51");

    obj.button52 = GUI.fromHandle(_obj_newObject("button"));
    obj.button52:setParent(obj.layout64);
    obj.button52:setLeft(100);
    obj.button52:setTop(100);
    obj.button52:setWidth(80);
    obj.button52:setHeight(20);
    obj.button52:setText("Importar");
    obj.button52:setName("button52");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            mudaNick(sheet.nome,sheet);
        end, obj);

    obj._e_event1 = obj.rclEquips:addEventListener("onSelect",
        function (_)
            local node = self.rclEquips.selectedNode;
            								self.dataEquipAttackDetails.node = node;
            								self.dataEquipAttackDetails.enabled = (node ~= nil);
            
            								if self.rclEquips.lastSelectedForm ~= nil then self.rclEquips.lastSelectedForm.editName:setEnabled(false); end;
            								if self.rclEquips.selectedForm ~= nil then self.rclEquips.selectedForm.editName:setEnabled(true); end;
            								self.rclEquips.lastSelectedForm = self.rclEquips.selectedForm;
        end, obj);

    obj._e_event2 = obj.button1:addEventListener("onClick",
        function (_)
            self.rclEquips.selectedNode = self.rclEquips:append(); self.rclEquips.selectedForm.editName:setFocus();
        end, obj);

    obj._e_event3 = obj.dataEquipAttackDetails:addEventListener("onNodeReady",
        function (_)
            self.imgEquipAttackImg:setVisible(false);
            							self.cbOptAtaqueMunicao:setItems(common.getNomeContadores(sheet, {""}));
        end, obj);

    obj._e_event4 = obj.dataEquipAttackDetails:addEventListener("onNodeUnready",
        function (_)
            self.imgEquipAttackImg:setVisible(true);
        end, obj);

    obj._e_event5 = obj.rclProps:addEventListener("onItemRemoved",
        function (_, node, form)
            local equip = self.dataEquipAttackDetails.node;
            									if equip ~= nil then
            										if equip.tabPropriedades == nil then equip.tabPropriedades = {}; end;
            										equip.tabPropriedades[node.texto] = nil;
            
            										equip.propriedades = common.concat(equip.tabPropriedades, ", ");
            									end;
        end, obj);

    obj._e_event6 = obj.button2:addEventListener("onClick",
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

    obj._e_event7 = obj.dataLink2:addEventListener("onChange",
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

    obj._e_event8 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet and sheet.contadoresMudaram then
            							self.cbOptAtaqueMunicao:setItems(common.getNomeContadores(sheet, {""}));
            						end;
        end, obj);

    obj._e_event9 = obj.btnApagar:addEventListener("onClick",
        function (_)
            common.askForDelete(self.sheet);
        end, obj);

    obj._e_event10 = obj.rclOptsAttack:addEventListener("onItemAdded",
        function (_, node, form)
            form.cbOptAtaqueMunicao:setItems(common.getNomeContadores(sheet, {""}));
        end, obj);

    obj._e_event11 = obj.button3:addEventListener("onClick",
        function (_)
            self.rclOptsAttack:append();
        end, obj);

    obj._e_event12 = obj.dataLink4:addEventListener("onChange",
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

    obj._e_event13 = obj.labEquipDefense:addEventListener("onResize",
        function (_)
            recalcularTamanhoEquipsDefesa();
        end, obj);

    obj._e_event14 = obj.rclEquipsDefense:addEventListener("onResize",
        function (_)
            recalcularTamanhoEquipsDefesa();
        end, obj);

    obj._e_event15 = obj.btnEquipDefenseNew:addEventListener("onClick",
        function (_)
            self.rclEquipsDefense:append();
        end, obj);

    obj._e_event16 = obj.checkBox3:addEventListener("onChange",
        function (_)
            if sheet then
            								self.editorFancy:setVisible(sheet.equipamento.outros_melhorado);
            								self.editorMerda:setVisible(not (sheet.equipamento.outros_melhorado));
            							end;
        end, obj);

    obj._e_event17 = obj.label35:addEventListener("onResize",
        function (_)
            recalcularTamanhoEquipsDefesa();
        end, obj);

    obj._e_event18 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.magias = sheet.magias or {};
            			local niveis = NDB.getChildNodes(sheet.magias.niveis);
            
            			for nvl=1,#niveis do
            				niveis[nvl].descansoLongo = sheet.descansoLongo;
            				niveis[nvl].descansoCurto = sheet.descansoCurto;
            			end;
        end, obj);

    obj._e_event19 = obj.labupperGridMagicBox1:addEventListener("onResize",
        function (_)
            self.upperGridMagicBox1._RecalcSize();
        end, obj);

    obj._e_event20 = obj.labupperGridMagicBox2:addEventListener("onResize",
        function (_)
            self.upperGridMagicBox2._RecalcSize();
        end, obj);

    obj._e_event21 = obj.labupperGridMagicBox3:addEventListener("onResize",
        function (_)
            self.upperGridMagicBox3._RecalcSize();
        end, obj);

    obj._e_event22 = obj.popupEdit:addEventListener("onClose",
        function (_, canceled)
            sheet.magias.selecionada = nil;
        end, obj);

    obj._e_event23 = obj.popupEdit:addEventListener("onNodeUnready",
        function (_)
            sheet.magias.selecionada = nil;
        end, obj);

    obj._e_event24 = obj.popupEdit:addEventListener("onNodeReady",
        function (_)
            self.popupEdit:getNodeObject().cdResistenciaTipo = nil;
        end, obj);

    obj._e_event25 = obj.editPENome:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event26 = obj.editPENome:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event27 = obj.editPENome:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.eventFunc, {tag = 'editPENome', node = sheet, form = self, event='onClick', contexto = ''}, nil, false);
        end, obj);

    obj._e_event28 = obj.editPENome:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.eventFunc, {tag = 'editPENome', node = sheet, form = self, event='onMenu', contexto = ''}, nil, true);
        end, obj);

    obj._e_event29 = obj.labelFieldPENivel:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event30 = obj.labelFieldPENivel:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event31 = obj.labelFieldPEEscola:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event32 = obj.labelFieldPEEscola:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event33 = obj.labelFieldPETempo:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event34 = obj.labelFieldPETempo:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event35 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            									self.popupEditCompM:setEnabled(node.componentesM or false);
        end, obj);

    obj._e_event36 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            								self.layPrepValor:setVisible(node.preparadoTipo == 'Preparada' or node.preparadoTipo == 'Sempre Preparada');
            								self.layPrepValor:setEnabled(node.preparadoTipo == 'Preparada');
        end, obj);

    obj._e_event37 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            									self.popupEditCondAtiv:setEnabled(node.tempoConjuracaoUnidade == 'Reação');
        end, obj);

    obj._e_event38 = obj.dataLink9:addEventListener("onChange",
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

    obj._e_event39 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            									if node.duracaoUnidade == 'Instantânea' or node.duracaoUnidade == 'Permanente' then
            										self.popupEditDuracaoUnidade:setEnabled(false);
            									else
            										self.popupEditDuracaoUnidade:setEnabled(true);
            									end;
        end, obj);

    obj._e_event40 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            									local contador = common.getContador(node, node.contadorNome or '');
            									if not contador then
            										node.contadorUsosTotal = '-';
            									else
            										node.contadorUsosTotal = contador.valMax;
            									end;
        end, obj);

    obj._e_event41 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            							self.popupEditAtaqueAtrib:setEnabled(node.ataqueTipo ~= 'Sem Ataque');	
            							self.popupEditAtaqueBonus:setEnabled(node.ataqueTipo ~= 'Sem Ataque');
        end, obj);

    obj._e_event42 = obj.button4:addEventListener("onClick",
        function (_)
            self.popupEditDanoRL:append();
        end, obj);

    obj._e_event43 = obj.popupEditDanoRL:addEventListener("onEndEnumeration",
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

    obj._e_event44 = obj.button5:addEventListener("onClick",
        function (_)
            local formula = self.popupEditFormulaRL:append();
            									if formula then formula.tipoDano = "não"; end;
        end, obj);

    obj._e_event45 = obj.popupEditFormulaRL:addEventListener("onEndEnumeration",
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

    obj._e_event46 = obj.dataLink13:addEventListener("onChange",
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

    obj._e_event47 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            							dload.getSourcePath(self, "spells", node.importSourceName, function(path) node.importSourcePath = path; end);
        end, obj);

    obj._e_event48 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            							dload.spellGetClasses(self, node.importSourcePath, node.importLevel, function(items) self.comboBoxImportClass:setItems(items); end);
        end, obj);

    obj._e_event49 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local node = self.popupEdit:getNodeObject();
            							dload.spellGetNames(self, node.importSourcePath, node.importLevel, node.importClass, function(items) self.comboBoxImportMagia:setItems(items); end);
        end, obj);

    obj._e_event50 = obj.button6:addEventListener("onClick",
        function (_)
            local node = self.popupEdit:getNodeObject();
            						dload.spellImport(self, node.importSourcePath, node.importName, node);
        end, obj);

    obj._e_event51 = obj.dataLink18:addEventListener("onChange",
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
            				-- 		elseif magia_old.ataque == 'Ataque a Distância' then magia.ataqueTipo = 'Ataque de Magia a Distância';
            				-- 		end;
            				-- 		if magia_old.resistencia == 'Força' then magia.cdResistenciaAtributo = 'forca';
            				-- 		elseif magia_old.resistencia == 'Destreza' then magia.cdResistenciaAtributo = 'destreza';
            				-- 		elseif magia_old.resistencia == 'Constituição' then magia.cdResistenciaAtributo = 'constituicao';
            				-- 		elseif magia_old.resistencia == 'Inteligência' then magia.cdResistenciaAtributo = 'inteligencia';
            				-- 		elseif magia_old.resistencia == 'Sabedoria' then magia.cdResistenciaAtributo = 'sabedoria';
            				-- 		elseif magia_old.resistencia == 'Carisma' then magia.cdResistenciaAtributo = 'carisma';
            				-- 		end;
            				-- 	end;
            				-- end;
            
            				for lvl=1,9 do
            					local node = self.rclMagiasNiveis:append();
            					node.nome = lvl .. 'º Nível';
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
            						-- 	elseif magia_old.ataque == 'Ataque a Distância' then magia.ataqueTipo = 'Ataque de Magia a Distância';
            						-- 	end;
            						-- 	if magia_old.resistencia == 'Força' then magia.cdResistenciaAtributo = 'forca';
            						-- 	elseif magia_old.resistencia == 'Destreza' then magia.cdResistenciaAtributo = 'destreza';
            						-- 	elseif magia_old.resistencia == 'Constituição' then magia.cdResistenciaAtributo = 'constituicao';
            						-- 	elseif magia_old.resistencia == 'Inteligência' then magia.cdResistenciaAtributo = 'inteligencia';
            						-- 	elseif magia_old.resistencia == 'Sabedoria' then magia.cdResistenciaAtributo = 'sabedoria';
            						-- 	elseif magia_old.resistencia == 'Carisma' then magia.cdResistenciaAtributo = 'carisma';
            						-- 	end;
            						-- end;
            					end;
            				end;
            			end;
        end, obj);

    obj._e_event52 = obj.dataLink19:addEventListener("onChange",
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

    obj._e_event53 = obj.button7:addEventListener("onClick",
        function (_)
            self.rclContadores:append()
        end, obj);

    obj._e_event54 = obj.button8:addEventListener("onClick",
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
            						if val.reset == "Dado de Vida" then contador["resetsDescanso Longo"] = "Recupera Metade (⌃)"; end;
            					end;
            				end;
        end, obj);

    obj._e_event55 = obj.rclContadores:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            return Utils.compareStringPtBr(nodeA.name, nodeB.name);
        end, obj);

    obj._e_event56 = obj.rclContadores:addEventListener("onItemAdded",
        function (_, node, form)
            if sheet ~= nil then
            					sheet.contadoresMudaram = true;
            					sheet.contadoresMudaram = false;
            				end;
        end, obj);

    obj._e_event57 = obj.rclContadores:addEventListener("onItemRemoved",
        function (_, node, form)
            if sheet ~= nil then
            					sheet.contadoresMudaram = true;
            					sheet.contadoresMudaram = false;
            				end;
        end, obj);

    obj._e_event58 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local contadores = NDB.getChildNodes(sheet.contadores);
            			for i=1,#contadores,1 do
            				contadores[i].descansoLongo = sheet.descansoLongo;
            				contadores[i].descansoCurto = sheet.descansoCurto;
            			end;
        end, obj);

    obj._e_event59 = obj.button9:addEventListener("onClick",
        function (_)
            Dialogs.confirmYesNo('Você tem certeza que deseja resetar as propriedades da ficha?',
            			function(confirmado)
            				if confirmado then
            					sheet.propriedades = {}; 
            				end;
            			end);
        end, obj);

    obj._e_event60 = obj.button10:addEventListener("onClick",
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

    obj._e_event61 = obj.checkBox9:addEventListener("onChange",
        function (_)
            if sheet then
            						self.historiaFancy:setVisible(sheet.historia.usarEditorFancy);
            						self.historiaMerda:setVisible(not (sheet.historia.usarEditorFancy));
            						end;
        end, obj);

    obj._e_event62 = obj.dataLink21:addEventListener("onChange",
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

    obj._e_event63 = obj.button11:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event64 = obj.button11:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event65 = obj.button11:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionforca'}, nil, false);
        end, obj);

    obj._e_event66 = obj.button11:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionforca'}, nil, true);
        end, obj);

    obj._e_event67 = obj.cbProfcompanionforca:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionforca"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionforca', true);
            						sheet.resistencias.companionforca = true;
            					end;
        end, obj);

    obj._e_event68 = obj.cbProfcompanionforca:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionforca', false);
        end, obj);

    obj._e_event69 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionforca");
        end, obj);

    obj._e_event70 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionforca'] then updateCbVisibility('companionforca'); end;
        end, obj);

    obj._e_event71 = obj.button12:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event72 = obj.button12:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event73 = obj.button12:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionforca'}, nil, false);
        end, obj);

    obj._e_event74 = obj.button12:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionforca'}, nil, true);
        end, obj);

    obj._e_event75 = obj.dataLink24:addEventListener("onChange",
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

    obj._e_event76 = obj.cbProfcompanionatletismo:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionatletismo"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionatletismo', true);
            						sheet.pericias.companionatletismo = true;
            					end;
        end, obj);

    obj._e_event77 = obj.cbProfcompanionatletismo:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionatletismo', false);
        end, obj);

    obj._e_event78 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionatletismo");
        end, obj);

    obj._e_event79 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionatletismo'] then updateCbVisibility('companionatletismo'); end;
        end, obj);

    obj._e_event80 = obj.button13:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event81 = obj.button13:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event82 = obj.button13:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionatletismo'}, nil, false);
        end, obj);

    obj._e_event83 = obj.button13:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionatletismo'}, nil, true);
        end, obj);

    obj._e_event84 = obj.dataLink27:addEventListener("onChange",
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

    obj._e_event85 = obj.dataLink28:addEventListener("onChange",
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

    obj._e_event86 = obj.button14:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event87 = obj.button14:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event88 = obj.button14:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companiondestreza'}, nil, false);
        end, obj);

    obj._e_event89 = obj.button14:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companiondestreza'}, nil, true);
        end, obj);

    obj._e_event90 = obj.cbProfcompaniondestreza:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companiondestreza"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companiondestreza', true);
            						sheet.resistencias.companiondestreza = true;
            					end;
        end, obj);

    obj._e_event91 = obj.cbProfcompaniondestreza:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companiondestreza', false);
        end, obj);

    obj._e_event92 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companiondestreza");
        end, obj);

    obj._e_event93 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companiondestreza'] then updateCbVisibility('companiondestreza'); end;
        end, obj);

    obj._e_event94 = obj.button15:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event95 = obj.button15:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event96 = obj.button15:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companiondestreza'}, nil, false);
        end, obj);

    obj._e_event97 = obj.button15:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companiondestreza'}, nil, true);
        end, obj);

    obj._e_event98 = obj.dataLink31:addEventListener("onChange",
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

    obj._e_event99 = obj.cbProfcompanionacrobacia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionacrobacia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionacrobacia', true);
            						sheet.pericias.companionacrobacia = true;
            					end;
        end, obj);

    obj._e_event100 = obj.cbProfcompanionacrobacia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionacrobacia', false);
        end, obj);

    obj._e_event101 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionacrobacia");
        end, obj);

    obj._e_event102 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionacrobacia'] then updateCbVisibility('companionacrobacia'); end;
        end, obj);

    obj._e_event103 = obj.button16:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event104 = obj.button16:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event105 = obj.button16:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionacrobacia'}, nil, false);
        end, obj);

    obj._e_event106 = obj.button16:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionacrobacia'}, nil, true);
        end, obj);

    obj._e_event107 = obj.dataLink34:addEventListener("onChange",
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

    obj._e_event108 = obj.cbProfcompanionfurtividade:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionfurtividade"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionfurtividade', true);
            						sheet.pericias.companionfurtividade = true;
            					end;
        end, obj);

    obj._e_event109 = obj.cbProfcompanionfurtividade:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionfurtividade', false);
        end, obj);

    obj._e_event110 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionfurtividade");
        end, obj);

    obj._e_event111 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionfurtividade'] then updateCbVisibility('companionfurtividade'); end;
        end, obj);

    obj._e_event112 = obj.button17:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event113 = obj.button17:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event114 = obj.button17:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionfurtividade'}, nil, false);
        end, obj);

    obj._e_event115 = obj.button17:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionfurtividade'}, nil, true);
        end, obj);

    obj._e_event116 = obj.dataLink37:addEventListener("onChange",
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

    obj._e_event117 = obj.cbProfcompanionprestidigitacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionprestidigitacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionprestidigitacao', true);
            						sheet.pericias.companionprestidigitacao = true;
            					end;
        end, obj);

    obj._e_event118 = obj.cbProfcompanionprestidigitacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionprestidigitacao', false);
        end, obj);

    obj._e_event119 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionprestidigitacao");
        end, obj);

    obj._e_event120 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionprestidigitacao'] then updateCbVisibility('companionprestidigitacao'); end;
        end, obj);

    obj._e_event121 = obj.button18:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event122 = obj.button18:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event123 = obj.button18:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionprestidigitacao'}, nil, false);
        end, obj);

    obj._e_event124 = obj.button18:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionprestidigitacao'}, nil, true);
        end, obj);

    obj._e_event125 = obj.dataLink40:addEventListener("onChange",
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

    obj._e_event126 = obj.dataLink41:addEventListener("onChange",
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

    obj._e_event127 = obj.button19:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event128 = obj.button19:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event129 = obj.button19:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionconstituicao'}, nil, false);
        end, obj);

    obj._e_event130 = obj.button19:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionconstituicao'}, nil, true);
        end, obj);

    obj._e_event131 = obj.cbProfcompanionconstituicao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionconstituicao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionconstituicao', true);
            						sheet.resistencias.companionconstituicao = true;
            					end;
        end, obj);

    obj._e_event132 = obj.cbProfcompanionconstituicao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionconstituicao', false);
        end, obj);

    obj._e_event133 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionconstituicao");
        end, obj);

    obj._e_event134 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionconstituicao'] then updateCbVisibility('companionconstituicao'); end;
        end, obj);

    obj._e_event135 = obj.button20:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event136 = obj.button20:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event137 = obj.button20:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionconstituicao'}, nil, false);
        end, obj);

    obj._e_event138 = obj.button20:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionconstituicao'}, nil, true);
        end, obj);

    obj._e_event139 = obj.dataLink44:addEventListener("onChange",
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

    obj._e_event140 = obj.cbProfcompanionconcentracao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionconcentracao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionconcentracao', true);
            						sheet.pericias.companionconcentracao = true;
            					end;
        end, obj);

    obj._e_event141 = obj.cbProfcompanionconcentracao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionconcentracao', false);
        end, obj);

    obj._e_event142 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionconcentracao");
        end, obj);

    obj._e_event143 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionconcentracao'] then updateCbVisibility('companionconcentracao'); end;
        end, obj);

    obj._e_event144 = obj.button21:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event145 = obj.button21:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event146 = obj.button21:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionconcentracao'}, nil, false);
        end, obj);

    obj._e_event147 = obj.button21:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionconcentracao'}, nil, true);
        end, obj);

    obj._e_event148 = obj.dataLink47:addEventListener("onChange",
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

    obj._e_event149 = obj.cbProfcompaniontolerancia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companiontolerancia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companiontolerancia', true);
            						sheet.pericias.companiontolerancia = true;
            					end;
        end, obj);

    obj._e_event150 = obj.cbProfcompaniontolerancia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companiontolerancia', false);
        end, obj);

    obj._e_event151 = obj.dataLink48:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companiontolerancia");
        end, obj);

    obj._e_event152 = obj.dataLink49:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companiontolerancia'] then updateCbVisibility('companiontolerancia'); end;
        end, obj);

    obj._e_event153 = obj.button22:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event154 = obj.button22:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event155 = obj.button22:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companiontolerancia'}, nil, false);
        end, obj);

    obj._e_event156 = obj.button22:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companiontolerancia'}, nil, true);
        end, obj);

    obj._e_event157 = obj.dataLink50:addEventListener("onChange",
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

    obj._e_event158 = obj.dataLink51:addEventListener("onChange",
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

    obj._e_event159 = obj.button23:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event160 = obj.button23:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event161 = obj.button23:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companioninteligencia'}, nil, false);
        end, obj);

    obj._e_event162 = obj.button23:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companioninteligencia'}, nil, true);
        end, obj);

    obj._e_event163 = obj.cbProfcompanioninteligencia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companioninteligencia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companioninteligencia', true);
            						sheet.resistencias.companioninteligencia = true;
            					end;
        end, obj);

    obj._e_event164 = obj.cbProfcompanioninteligencia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companioninteligencia', false);
        end, obj);

    obj._e_event165 = obj.dataLink52:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companioninteligencia");
        end, obj);

    obj._e_event166 = obj.dataLink53:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companioninteligencia'] then updateCbVisibility('companioninteligencia'); end;
        end, obj);

    obj._e_event167 = obj.button24:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event168 = obj.button24:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event169 = obj.button24:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companioninteligencia'}, nil, false);
        end, obj);

    obj._e_event170 = obj.button24:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companioninteligencia'}, nil, true);
        end, obj);

    obj._e_event171 = obj.dataLink54:addEventListener("onChange",
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

    obj._e_event172 = obj.cbProfcompanionarcanismo:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionarcanismo"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionarcanismo', true);
            						sheet.pericias.companionarcanismo = true;
            					end;
        end, obj);

    obj._e_event173 = obj.cbProfcompanionarcanismo:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionarcanismo', false);
        end, obj);

    obj._e_event174 = obj.dataLink55:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionarcanismo");
        end, obj);

    obj._e_event175 = obj.dataLink56:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionarcanismo'] then updateCbVisibility('companionarcanismo'); end;
        end, obj);

    obj._e_event176 = obj.button25:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event177 = obj.button25:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event178 = obj.button25:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionarcanismo'}, nil, false);
        end, obj);

    obj._e_event179 = obj.button25:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionarcanismo'}, nil, true);
        end, obj);

    obj._e_event180 = obj.dataLink57:addEventListener("onChange",
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

    obj._e_event181 = obj.cbProfcompanionhistoria:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionhistoria"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionhistoria', true);
            						sheet.pericias.companionhistoria = true;
            					end;
        end, obj);

    obj._e_event182 = obj.cbProfcompanionhistoria:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionhistoria', false);
        end, obj);

    obj._e_event183 = obj.dataLink58:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionhistoria");
        end, obj);

    obj._e_event184 = obj.dataLink59:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionhistoria'] then updateCbVisibility('companionhistoria'); end;
        end, obj);

    obj._e_event185 = obj.button26:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event186 = obj.button26:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event187 = obj.button26:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionhistoria'}, nil, false);
        end, obj);

    obj._e_event188 = obj.button26:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionhistoria'}, nil, true);
        end, obj);

    obj._e_event189 = obj.dataLink60:addEventListener("onChange",
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

    obj._e_event190 = obj.cbProfcompanioninvestigacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companioninvestigacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companioninvestigacao', true);
            						sheet.pericias.companioninvestigacao = true;
            					end;
        end, obj);

    obj._e_event191 = obj.cbProfcompanioninvestigacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companioninvestigacao', false);
        end, obj);

    obj._e_event192 = obj.dataLink61:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companioninvestigacao");
        end, obj);

    obj._e_event193 = obj.dataLink62:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companioninvestigacao'] then updateCbVisibility('companioninvestigacao'); end;
        end, obj);

    obj._e_event194 = obj.button27:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event195 = obj.button27:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event196 = obj.button27:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companioninvestigacao'}, nil, false);
        end, obj);

    obj._e_event197 = obj.button27:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companioninvestigacao'}, nil, true);
        end, obj);

    obj._e_event198 = obj.dataLink63:addEventListener("onChange",
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

    obj._e_event199 = obj.cbProfcompanionnatureza:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionnatureza"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionnatureza', true);
            						sheet.pericias.companionnatureza = true;
            					end;
        end, obj);

    obj._e_event200 = obj.cbProfcompanionnatureza:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionnatureza', false);
        end, obj);

    obj._e_event201 = obj.dataLink64:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionnatureza");
        end, obj);

    obj._e_event202 = obj.dataLink65:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionnatureza'] then updateCbVisibility('companionnatureza'); end;
        end, obj);

    obj._e_event203 = obj.button28:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event204 = obj.button28:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event205 = obj.button28:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionnatureza'}, nil, false);
        end, obj);

    obj._e_event206 = obj.button28:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionnatureza'}, nil, true);
        end, obj);

    obj._e_event207 = obj.dataLink66:addEventListener("onChange",
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

    obj._e_event208 = obj.cbProfcompanionreligiao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionreligiao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionreligiao', true);
            						sheet.pericias.companionreligiao = true;
            					end;
        end, obj);

    obj._e_event209 = obj.cbProfcompanionreligiao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionreligiao', false);
        end, obj);

    obj._e_event210 = obj.dataLink67:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionreligiao");
        end, obj);

    obj._e_event211 = obj.dataLink68:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionreligiao'] then updateCbVisibility('companionreligiao'); end;
        end, obj);

    obj._e_event212 = obj.button29:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event213 = obj.button29:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event214 = obj.button29:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionreligiao'}, nil, false);
        end, obj);

    obj._e_event215 = obj.button29:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionreligiao'}, nil, true);
        end, obj);

    obj._e_event216 = obj.dataLink69:addEventListener("onChange",
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

    obj._e_event217 = obj.dataLink70:addEventListener("onChange",
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

    obj._e_event218 = obj.button30:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event219 = obj.button30:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event220 = obj.button30:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionsabedoria'}, nil, false);
        end, obj);

    obj._e_event221 = obj.button30:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companionsabedoria'}, nil, true);
        end, obj);

    obj._e_event222 = obj.cbProfcompanionsabedoria:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionsabedoria"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionsabedoria', true);
            						sheet.resistencias.companionsabedoria = true;
            					end;
        end, obj);

    obj._e_event223 = obj.cbProfcompanionsabedoria:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionsabedoria', false);
        end, obj);

    obj._e_event224 = obj.dataLink71:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionsabedoria");
        end, obj);

    obj._e_event225 = obj.dataLink72:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionsabedoria'] then updateCbVisibility('companionsabedoria'); end;
        end, obj);

    obj._e_event226 = obj.button31:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event227 = obj.button31:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event228 = obj.button31:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionsabedoria'}, nil, false);
        end, obj);

    obj._e_event229 = obj.button31:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companionsabedoria'}, nil, true);
        end, obj);

    obj._e_event230 = obj.dataLink73:addEventListener("onChange",
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

    obj._e_event231 = obj.cbProfcompanionadestrarAnimais:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionadestrarAnimais"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionadestrarAnimais', true);
            						sheet.pericias.companionadestrarAnimais = true;
            					end;
        end, obj);

    obj._e_event232 = obj.cbProfcompanionadestrarAnimais:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionadestrarAnimais', false);
        end, obj);

    obj._e_event233 = obj.dataLink74:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionadestrarAnimais");
        end, obj);

    obj._e_event234 = obj.dataLink75:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionadestrarAnimais'] then updateCbVisibility('companionadestrarAnimais'); end;
        end, obj);

    obj._e_event235 = obj.button32:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event236 = obj.button32:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event237 = obj.button32:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionadestrarAnimais'}, nil, false);
        end, obj);

    obj._e_event238 = obj.button32:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionadestrarAnimais'}, nil, true);
        end, obj);

    obj._e_event239 = obj.dataLink76:addEventListener("onChange",
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

    obj._e_event240 = obj.cbProfcompanionintuicao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionintuicao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionintuicao', true);
            						sheet.pericias.companionintuicao = true;
            					end;
        end, obj);

    obj._e_event241 = obj.cbProfcompanionintuicao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionintuicao', false);
        end, obj);

    obj._e_event242 = obj.dataLink77:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionintuicao");
        end, obj);

    obj._e_event243 = obj.dataLink78:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionintuicao'] then updateCbVisibility('companionintuicao'); end;
        end, obj);

    obj._e_event244 = obj.button33:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event245 = obj.button33:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event246 = obj.button33:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionintuicao'}, nil, false);
        end, obj);

    obj._e_event247 = obj.button33:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionintuicao'}, nil, true);
        end, obj);

    obj._e_event248 = obj.dataLink79:addEventListener("onChange",
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

    obj._e_event249 = obj.cbProfcompanionmedicina:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionmedicina"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionmedicina', true);
            						sheet.pericias.companionmedicina = true;
            					end;
        end, obj);

    obj._e_event250 = obj.cbProfcompanionmedicina:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionmedicina', false);
        end, obj);

    obj._e_event251 = obj.dataLink80:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionmedicina");
        end, obj);

    obj._e_event252 = obj.dataLink81:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionmedicina'] then updateCbVisibility('companionmedicina'); end;
        end, obj);

    obj._e_event253 = obj.button34:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event254 = obj.button34:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event255 = obj.button34:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionmedicina'}, nil, false);
        end, obj);

    obj._e_event256 = obj.button34:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionmedicina'}, nil, true);
        end, obj);

    obj._e_event257 = obj.dataLink82:addEventListener("onChange",
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

    obj._e_event258 = obj.cbProfcompanionpercepcao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionpercepcao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionpercepcao', true);
            						sheet.pericias.companionpercepcao = true;
            					end;
        end, obj);

    obj._e_event259 = obj.cbProfcompanionpercepcao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionpercepcao', false);
        end, obj);

    obj._e_event260 = obj.dataLink83:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionpercepcao");
        end, obj);

    obj._e_event261 = obj.dataLink84:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionpercepcao'] then updateCbVisibility('companionpercepcao'); end;
        end, obj);

    obj._e_event262 = obj.button35:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event263 = obj.button35:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event264 = obj.button35:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionpercepcao'}, nil, false);
        end, obj);

    obj._e_event265 = obj.button35:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionpercepcao'}, nil, true);
        end, obj);

    obj._e_event266 = obj.dataLink85:addEventListener("onChange",
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

    obj._e_event267 = obj.cbProfcompanionsobrevivencia:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionsobrevivencia"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionsobrevivencia', true);
            						sheet.pericias.companionsobrevivencia = true;
            					end;
        end, obj);

    obj._e_event268 = obj.cbProfcompanionsobrevivencia:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionsobrevivencia', false);
        end, obj);

    obj._e_event269 = obj.dataLink86:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionsobrevivencia");
        end, obj);

    obj._e_event270 = obj.dataLink87:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionsobrevivencia'] then updateCbVisibility('companionsobrevivencia'); end;
        end, obj);

    obj._e_event271 = obj.button36:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event272 = obj.button36:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event273 = obj.button36:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionsobrevivencia'}, nil, false);
        end, obj);

    obj._e_event274 = obj.button36:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionsobrevivencia'}, nil, true);
        end, obj);

    obj._e_event275 = obj.dataLink88:addEventListener("onChange",
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

    obj._e_event276 = obj.dataLink89:addEventListener("onChange",
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

    obj._e_event277 = obj.button37:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event278 = obj.button37:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event279 = obj.button37:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companioncarisma'}, nil, false);
        end, obj);

    obj._e_event280 = obj.button37:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'attr', field = 'companioncarisma'}, nil, true);
        end, obj);

    obj._e_event281 = obj.cbProfcompanioncarisma:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companioncarisma"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companioncarisma', true);
            						sheet.resistencias.companioncarisma = true;
            					end;
        end, obj);

    obj._e_event282 = obj.cbProfcompanioncarisma:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companioncarisma', false);
        end, obj);

    obj._e_event283 = obj.dataLink90:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companioncarisma");
        end, obj);

    obj._e_event284 = obj.dataLink91:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companioncarisma'] then updateCbVisibility('companioncarisma'); end;
        end, obj);

    obj._e_event285 = obj.button38:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event286 = obj.button38:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event287 = obj.button38:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companioncarisma'}, nil, false);
        end, obj);

    obj._e_event288 = obj.button38:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'resistencias.companioncarisma'}, nil, true);
        end, obj);

    obj._e_event289 = obj.dataLink92:addEventListener("onChange",
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

    obj._e_event290 = obj.cbProfcompanionatuacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionatuacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionatuacao', true);
            						sheet.pericias.companionatuacao = true;
            					end;
        end, obj);

    obj._e_event291 = obj.cbProfcompanionatuacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionatuacao', false);
        end, obj);

    obj._e_event292 = obj.dataLink93:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionatuacao");
        end, obj);

    obj._e_event293 = obj.dataLink94:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionatuacao'] then updateCbVisibility('companionatuacao'); end;
        end, obj);

    obj._e_event294 = obj.button39:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event295 = obj.button39:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event296 = obj.button39:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionatuacao'}, nil, false);
        end, obj);

    obj._e_event297 = obj.button39:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionatuacao'}, nil, true);
        end, obj);

    obj._e_event298 = obj.dataLink95:addEventListener("onChange",
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

    obj._e_event299 = obj.cbProfcompanionenganacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionenganacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionenganacao', true);
            						sheet.pericias.companionenganacao = true;
            					end;
        end, obj);

    obj._e_event300 = obj.cbProfcompanionenganacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionenganacao', false);
        end, obj);

    obj._e_event301 = obj.dataLink96:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionenganacao");
        end, obj);

    obj._e_event302 = obj.dataLink97:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionenganacao'] then updateCbVisibility('companionenganacao'); end;
        end, obj);

    obj._e_event303 = obj.button40:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event304 = obj.button40:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event305 = obj.button40:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionenganacao'}, nil, false);
        end, obj);

    obj._e_event306 = obj.button40:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionenganacao'}, nil, true);
        end, obj);

    obj._e_event307 = obj.dataLink98:addEventListener("onChange",
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

    obj._e_event308 = obj.cbProfcompanionintimidacao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionintimidacao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionintimidacao', true);
            						sheet.pericias.companionintimidacao = true;
            					end;
        end, obj);

    obj._e_event309 = obj.cbProfcompanionintimidacao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionintimidacao', false);
        end, obj);

    obj._e_event310 = obj.dataLink99:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionintimidacao");
        end, obj);

    obj._e_event311 = obj.dataLink100:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionintimidacao'] then updateCbVisibility('companionintimidacao'); end;
        end, obj);

    obj._e_event312 = obj.button41:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event313 = obj.button41:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event314 = obj.button41:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionintimidacao'}, nil, false);
        end, obj);

    obj._e_event315 = obj.button41:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionintimidacao'}, nil, true);
        end, obj);

    obj._e_event316 = obj.dataLink101:addEventListener("onChange",
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

    obj._e_event317 = obj.cbProfcompanionpersuasao:addEventListener("onMenu",
        function (_, x, y)
            if common.pericias["companionpersuasao"] ~= nil then
            						common.fichaSetEspecializacao(sheet, 'companionpersuasao', true);
            						sheet.pericias.companionpersuasao = true;
            					end;
        end, obj);

    obj._e_event318 = obj.cbProfcompanionpersuasao:addEventListener("onClick",
        function (_)
            common.fichaSetEspecializacao(sheet, 'companionpersuasao', false);
        end, obj);

    obj._e_event319 = obj.dataLink102:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            updateCbVisibility("companionpersuasao");
        end, obj);

    obj._e_event320 = obj.dataLink103:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if common.pericias['companionpersuasao'] then updateCbVisibility('companionpersuasao'); end;
        end, obj);

    obj._e_event321 = obj.button42:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event322 = obj.button42:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event323 = obj.button42:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionpersuasao'}, nil, false);
        end, obj);

    obj._e_event324 = obj.button42:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaPericia, { tipo = 'per', field = 'pericias.companionpersuasao'}, nil, true);
        end, obj);

    obj._e_event325 = obj.dataLink104:addEventListener("onChange",
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

    obj._e_event326 = obj.button43:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event327 = obj.button43:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event328 = obj.button43:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.rolaIniciativa, nil, nil, false);
        end, obj);

    obj._e_event329 = obj.button43:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.rolaIniciativa, nil, nil, true);
        end, obj);

    obj._e_event330 = obj.button44:addEventListener("onClick",
        function (_)
            descanso.curto(sheet);
        end, obj);

    obj._e_event331 = obj.button45:addEventListener("onClick",
        function (_)
            descanso.longo(sheet);
        end, obj);

    obj._e_event332 = obj.button46:addEventListener("onClick",
        function (_)
            levarDano(sheet);
        end, obj);

    obj._e_event333 = obj.dataLink105:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            self.progBar2:setColor(sheet.barColor2);
        end, obj);

    obj._e_event334 = obj.dataLink106:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local jogador = Firecast.getPersonagemDe(sheet).dono;
            										if common.isMyChar(sheet) and common.isMainChar(sheet) then jogador:requestSetBarValue(1, sheet.PV2, sheet.PVmax2); end;
        end, obj);

    obj._e_event335 = obj.dataLink107:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.descansoLongo then sheet.PV2 = sheet.PVmax2; end;
        end, obj);

    obj._e_event336 = obj.button47:addEventListener("onKeyDown",
        function (_, event)
            common.keyDown(sheet, event);
        end, obj);

    obj._e_event337 = obj.button47:addEventListener("onKeyUp",
        function (_, event)
            common.keyUp(sheet, event);
        end, obj);

    obj._e_event338 = obj.button47:addEventListener("onClick",
        function (_)
            common.onClick(sheet, common.deathSave, nil, nil, false);
        end, obj);

    obj._e_event339 = obj.button47:addEventListener("onMenu",
        function (_, x, y)
            common.onClick(sheet, common.deathSave, nil, nil, true);
        end, obj);

    obj._e_event340 = obj.checkBox10:addEventListener("onChange",
        function (_)
            if sheet then
            						self.companionanotacoesFancy:setVisible(sheet.companion.anotacoes_melhorado);
            						self.companionanotacoesMerda:setVisible(not (sheet.companion.anotacoes_melhorado));
            						end;
        end, obj);

    obj._e_event341 = obj.checkBox11:addEventListener("onChange",
        function (_)
            if sheet then
            						self.anotacoesFancy:setVisible(sheet.outros.anotacoes_melhorado);
            						self.anotacoesMerda:setVisible(not (sheet.outros.anotacoes_melhorado));
            						end;
        end, obj);

    obj._e_event342 = obj.dataLink108:addEventListener("onChange",
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

    obj._e_event343 = obj.dataLink109:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet==nil then return end;
            					local color = sheet.colorBackground or "#505050";
            
            		            local rectangles = findClass("rectangle");
            
            					for i=1, #rectangles, 1 do 
            						rectangles[i].color = color;
            					end;
        end, obj);

    obj._e_event344 = obj.dataLink110:addEventListener("onChange",
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

    obj._e_event345 = obj.dataLink111:addEventListener("onChange",
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

    obj._e_event346 = obj.button48:addEventListener("onClick",
        function (_)
            GUI.openInBrowser(' ')
        end, obj);

    obj._e_event347 = obj.button49:addEventListener("onClick",
        function (_)
            GUI.openInBrowser('https://discord.gg/yc9jCvKE3t');
        end, obj);

    obj._e_event348 = obj.button50:addEventListener("onClick",
        function (_)
            GUI.openInBrowser('https://chat.whatsapp.com/BuFcGPgSRNqGwHlMHmFxE5');
        end, obj);

    obj._e_event349 = obj.button51:addEventListener("onClick",
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

    obj._e_event350 = obj.button52:addEventListener("onClick",
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

        if self.linUpperGridCampo1 ~= nil then self.linUpperGridCampo1:destroy(); self.linUpperGridCampo1 = nil; end;
        if self.dataLink71 ~= nil then self.dataLink71:destroy(); self.dataLink71 = nil; end;
        if self.flowPart33 ~= nil then self.flowPart33:destroy(); self.flowPart33 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.labProfcompanionsobrevivencia ~= nil then self.labProfcompanionsobrevivencia:destroy(); self.labProfcompanionsobrevivencia = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.horzLine7 ~= nil then self.horzLine7:destroy(); self.horzLine7 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.fraUpperGridCompanion ~= nil then self.fraUpperGridCompanion:destroy(); self.fraUpperGridCompanion = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.dataLink92 ~= nil then self.dataLink92:destroy(); self.dataLink92 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.flowPart106 ~= nil then self.flowPart106:destroy(); self.flowPart106 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.fpPEEscola ~= nil then self.fpPEEscola:destroy(); self.fpPEEscola = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.flowPart66 ~= nil then self.flowPart66:destroy(); self.flowPart66 = nil; end;
        if self.button35 ~= nil then self.button35:destroy(); self.button35 = nil; end;
        if self.flowPart55 ~= nil then self.flowPart55:destroy(); self.flowPart55 = nil; end;
        if self.flowPart95 ~= nil then self.flowPart95:destroy(); self.flowPart95 = nil; end;
        if self.dataLink68 ~= nil then self.dataLink68:destroy(); self.dataLink68 = nil; end;
        if self.horzLine19 ~= nil then self.horzLine19:destroy(); self.horzLine19 = nil; end;
        if self.comboBoxImportClass ~= nil then self.comboBoxImportClass:destroy(); self.comboBoxImportClass = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.flowPart51 ~= nil then self.flowPart51:destroy(); self.flowPart51 = nil; end;
        if self.flowLayout16 ~= nil then self.flowLayout16:destroy(); self.flowLayout16 = nil; end;
        if self.flowPart107 ~= nil then self.flowPart107:destroy(); self.flowPart107 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.tab13 ~= nil then self.tab13:destroy(); self.tab13 = nil; end;
        if self.rclMagiasNiveis ~= nil then self.rclMagiasNiveis:destroy(); self.rclMagiasNiveis = nil; end;
        if self.cbProfcompanionsobrevivencia ~= nil then self.cbProfcompanionsobrevivencia:destroy(); self.cbProfcompanionsobrevivencia = nil; end;
        if self.flowPart94 ~= nil then self.flowPart94:destroy(); self.flowPart94 = nil; end;
        if self.flowPart79 ~= nil then self.flowPart79:destroy(); self.flowPart79 = nil; end;
        if self.cbProfcompanionarcanismo ~= nil then self.cbProfcompanionarcanismo:destroy(); self.cbProfcompanionarcanismo = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.comboBox10 ~= nil then self.comboBox10:destroy(); self.comboBox10 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.upperGridMagicBox3 ~= nil then self.upperGridMagicBox3:destroy(); self.upperGridMagicBox3 = nil; end;
        if self.dataLink84 ~= nil then self.dataLink84:destroy(); self.dataLink84 = nil; end;
        if self.dataLink102 ~= nil then self.dataLink102:destroy(); self.dataLink102 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.flowPart103 ~= nil then self.flowPart103:destroy(); self.flowPart103 = nil; end;
        if self.dataLink94 ~= nil then self.dataLink94:destroy(); self.dataLink94 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.flowPart43 ~= nil then self.flowPart43:destroy(); self.flowPart43 = nil; end;
        if self.comboBox11 ~= nil then self.comboBox11:destroy(); self.comboBox11 = nil; end;
        if self.labProfcompanionprestidigitacao ~= nil then self.labProfcompanionprestidigitacao:destroy(); self.labProfcompanionprestidigitacao = nil; end;
        if self.popupEdit ~= nil then self.popupEdit:destroy(); self.popupEdit = nil; end;
        if self.labProfcompanionnatureza ~= nil then self.labProfcompanionnatureza:destroy(); self.labProfcompanionnatureza = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.flowLineBreak5 ~= nil then self.flowLineBreak5:destroy(); self.flowLineBreak5 = nil; end;
        if self.flowPart22 ~= nil then self.flowPart22:destroy(); self.flowPart22 = nil; end;
        if self.cbProfcompanionreligiao ~= nil then self.cbProfcompanionreligiao:destroy(); self.cbProfcompanionreligiao = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.flowPart78 ~= nil then self.flowPart78:destroy(); self.flowPart78 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.UpperGridCampo3 ~= nil then self.UpperGridCampo3:destroy(); self.UpperGridCampo3 = nil; end;
        if self.panupperGridMagicBox3 ~= nil then self.panupperGridMagicBox3:destroy(); self.panupperGridMagicBox3 = nil; end;
        if self.cbProfcompanionsabedoria ~= nil then self.cbProfcompanionsabedoria:destroy(); self.cbProfcompanionsabedoria = nil; end;
        if self.tab10 ~= nil then self.tab10:destroy(); self.tab10 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.button45 ~= nil then self.button45:destroy(); self.button45 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.cbProfcompanionadestrarAnimais ~= nil then self.cbProfcompanionadestrarAnimais:destroy(); self.cbProfcompanionadestrarAnimais = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.dataLink76 ~= nil then self.dataLink76:destroy(); self.dataLink76 = nil; end;
        if self.cbProfcompanionhistoria ~= nil then self.cbProfcompanionhistoria:destroy(); self.cbProfcompanionhistoria = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.button44 ~= nil then self.button44:destroy(); self.button44 = nil; end;
        if self.dataLink107 ~= nil then self.dataLink107:destroy(); self.dataLink107 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.cbProfcompanionenganacao ~= nil then self.cbProfcompanionenganacao:destroy(); self.cbProfcompanionenganacao = nil; end;
        if self.dataLink97 ~= nil then self.dataLink97:destroy(); self.dataLink97 = nil; end;
        if self.linUpperGridCampo4 ~= nil then self.linUpperGridCampo4:destroy(); self.linUpperGridCampo4 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.panupperGridMagicBox1 ~= nil then self.panupperGridMagicBox1:destroy(); self.panupperGridMagicBox1 = nil; end;
        if self.labupperGridMagicBox3 ~= nil then self.labupperGridMagicBox3:destroy(); self.labupperGridMagicBox3 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.dataLink111 ~= nil then self.dataLink111:destroy(); self.dataLink111 = nil; end;
        if self.dataLink80 ~= nil then self.dataLink80:destroy(); self.dataLink80 = nil; end;
        if self.flowLineBreak2 ~= nil then self.flowLineBreak2:destroy(); self.flowLineBreak2 = nil; end;
        if self.flowLayout8 ~= nil then self.flowLayout8:destroy(); self.flowLayout8 = nil; end;
        if self.flowPart113 ~= nil then self.flowPart113:destroy(); self.flowPart113 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.frmFichaRPGmeister9_svg ~= nil then self.frmFichaRPGmeister9_svg:destroy(); self.frmFichaRPGmeister9_svg = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.flowPart96 ~= nil then self.flowPart96:destroy(); self.flowPart96 = nil; end;
        if self.button28 ~= nil then self.button28:destroy(); self.button28 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.fpPETempo ~= nil then self.fpPETempo:destroy(); self.fpPETempo = nil; end;
        if self.flowPart80 ~= nil then self.flowPart80:destroy(); self.flowPart80 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.flowPart72 ~= nil then self.flowPart72:destroy(); self.flowPart72 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.flowLayout18 ~= nil then self.flowLayout18:destroy(); self.flowLayout18 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.flowPart40 ~= nil then self.flowPart40:destroy(); self.flowPart40 = nil; end;
        if self.comboBoxImportLevel ~= nil then self.comboBoxImportLevel:destroy(); self.comboBoxImportLevel = nil; end;
        if self.flowLayout15 ~= nil then self.flowLayout15:destroy(); self.flowLayout15 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.flowPart18 ~= nil then self.flowPart18:destroy(); self.flowPart18 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.flowPart118 ~= nil then self.flowPart118:destroy(); self.flowPart118 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.flowPart116 ~= nil then self.flowPart116:destroy(); self.flowPart116 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.popupEditCompM ~= nil then self.popupEditCompM:destroy(); self.popupEditCompM = nil; end;
        if self.horzLine22 ~= nil then self.horzLine22:destroy(); self.horzLine22 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.tab12 ~= nil then self.tab12:destroy(); self.tab12 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.flowPart48 ~= nil then self.flowPart48:destroy(); self.flowPart48 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.popupEditFormulaRL ~= nil then self.popupEditFormulaRL:destroy(); self.popupEditFormulaRL = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.labProfcompanioninvestigacao ~= nil then self.labProfcompanioninvestigacao:destroy(); self.labProfcompanioninvestigacao = nil; end;
        if self.flowPart35 ~= nil then self.flowPart35:destroy(); self.flowPart35 = nil; end;
        if self.flowPart90 ~= nil then self.flowPart90:destroy(); self.flowPart90 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.flowPart91 ~= nil then self.flowPart91:destroy(); self.flowPart91 = nil; end;
        if self.button32 ~= nil then self.button32:destroy(); self.button32 = nil; end;
        if self.flowLayout10 ~= nil then self.flowLayout10:destroy(); self.flowLayout10 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.popupEditCondAtiv ~= nil then self.popupEditCondAtiv:destroy(); self.popupEditCondAtiv = nil; end;
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.flowLayout27 ~= nil then self.flowLayout27:destroy(); self.flowLayout27 = nil; end;
        if self.labUpperGridCampo3 ~= nil then self.labUpperGridCampo3:destroy(); self.labUpperGridCampo3 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.layEquipDefenseBottom ~= nil then self.layEquipDefenseBottom:destroy(); self.layEquipDefenseBottom = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.flowPart71 ~= nil then self.flowPart71:destroy(); self.flowPart71 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.dataLink69 ~= nil then self.dataLink69:destroy(); self.dataLink69 = nil; end;
        if self.frame2 ~= nil then self.frame2:destroy(); self.frame2 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.dataLink98 ~= nil then self.dataLink98:destroy(); self.dataLink98 = nil; end;
        if self.labProfcompanionacrobacia ~= nil then self.labProfcompanionacrobacia:destroy(); self.labProfcompanionacrobacia = nil; end;
        if self.labProfcompaniontolerancia ~= nil then self.labProfcompaniontolerancia:destroy(); self.labProfcompaniontolerancia = nil; end;
        if self.dataLink83 ~= nil then self.dataLink83:destroy(); self.dataLink83 = nil; end;
        if self.optAtaqueLegenda ~= nil then self.optAtaqueLegenda:destroy(); self.optAtaqueLegenda = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.frame5 ~= nil then self.frame5:destroy(); self.frame5 = nil; end;
        if self.layPrepValorChb ~= nil then self.layPrepValorChb:destroy(); self.layPrepValorChb = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.labUpperGridCampo6 ~= nil then self.labUpperGridCampo6:destroy(); self.labUpperGridCampo6 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.cbProfcompaniontolerancia ~= nil then self.cbProfcompaniontolerancia:destroy(); self.cbProfcompaniontolerancia = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.horzLine26 ~= nil then self.horzLine26:destroy(); self.horzLine26 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.dataLink67 ~= nil then self.dataLink67:destroy(); self.dataLink67 = nil; end;
        if self.flowPart37 ~= nil then self.flowPart37:destroy(); self.flowPart37 = nil; end;
        if self.flowPart45 ~= nil then self.flowPart45:destroy(); self.flowPart45 = nil; end;
        if self.labProfcompanionhistoria ~= nil then self.labProfcompanionhistoria:destroy(); self.labProfcompanionhistoria = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.dataLink57 ~= nil then self.dataLink57:destroy(); self.dataLink57 = nil; end;
        if self.btnApagar ~= nil then self.btnApagar:destroy(); self.btnApagar = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.frame4 ~= nil then self.frame4:destroy(); self.frame4 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.flowLayout22 ~= nil then self.flowLayout22:destroy(); self.flowLayout22 = nil; end;
        if self.flowPart108 ~= nil then self.flowPart108:destroy(); self.flowPart108 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.flowPart73 ~= nil then self.flowPart73:destroy(); self.flowPart73 = nil; end;
        if self.UpperGridCampo1 ~= nil then self.UpperGridCampo1:destroy(); self.UpperGridCampo1 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.flowLayout13 ~= nil then self.flowLayout13:destroy(); self.flowLayout13 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.dataLink73 ~= nil then self.dataLink73:destroy(); self.dataLink73 = nil; end;
        if self.flowPart42 ~= nil then self.flowPart42:destroy(); self.flowPart42 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.button47 ~= nil then self.button47:destroy(); self.button47 = nil; end;
        if self.fpPENome ~= nil then self.fpPENome:destroy(); self.fpPENome = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.dataLink108 ~= nil then self.dataLink108:destroy(); self.dataLink108 = nil; end;
        if self.edtUpperGridCampo5 ~= nil then self.edtUpperGridCampo5:destroy(); self.edtUpperGridCampo5 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.flowPart16 ~= nil then self.flowPart16:destroy(); self.flowPart16 = nil; end;
        if self.frmFichaRPGmeister11_svg ~= nil then self.frmFichaRPGmeister11_svg:destroy(); self.frmFichaRPGmeister11_svg = nil; end;
        if self.cbProfcompanionacrobacia ~= nil then self.cbProfcompanionacrobacia:destroy(); self.cbProfcompanionacrobacia = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.dataLink53 ~= nil then self.dataLink53:destroy(); self.dataLink53 = nil; end;
        if self.labProfcompanionreligiao ~= nil then self.labProfcompanionreligiao:destroy(); self.labProfcompanionreligiao = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.dataLink93 ~= nil then self.dataLink93:destroy(); self.dataLink93 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.linUpperGridCampo5 ~= nil then self.linUpperGridCampo5:destroy(); self.linUpperGridCampo5 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.button29 ~= nil then self.button29:destroy(); self.button29 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.horzLine28 ~= nil then self.horzLine28:destroy(); self.horzLine28 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.flowPart105 ~= nil then self.flowPart105:destroy(); self.flowPart105 = nil; end;
        if self.cbProfcompanioninteligencia ~= nil then self.cbProfcompanioninteligencia:destroy(); self.cbProfcompanioninteligencia = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.dataLink74 ~= nil then self.dataLink74:destroy(); self.dataLink74 = nil; end;
        if self.flowPart9 ~= nil then self.flowPart9:destroy(); self.flowPart9 = nil; end;
        if self.rclOptsAttack ~= nil then self.rclOptsAttack:destroy(); self.rclOptsAttack = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.labProfcompanioninteligencia ~= nil then self.labProfcompanioninteligencia:destroy(); self.labProfcompanioninteligencia = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.tab9 ~= nil then self.tab9:destroy(); self.tab9 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.linUpperGridCampo2 ~= nil then self.linUpperGridCampo2:destroy(); self.linUpperGridCampo2 = nil; end;
        if self.flowPart56 ~= nil then self.flowPart56:destroy(); self.flowPart56 = nil; end;
        if self.flowPart26 ~= nil then self.flowPart26:destroy(); self.flowPart26 = nil; end;
        if self.horzLine25 ~= nil then self.horzLine25:destroy(); self.horzLine25 = nil; end;
        if self.pgcPrincipal ~= nil then self.pgcPrincipal:destroy(); self.pgcPrincipal = nil; end;
        if self.flowPart41 ~= nil then self.flowPart41:destroy(); self.flowPart41 = nil; end;
        if self.progBar2 ~= nil then self.progBar2:destroy(); self.progBar2 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.upperGridMagicBox1 ~= nil then self.upperGridMagicBox1:destroy(); self.upperGridMagicBox1 = nil; end;
        if self.cbOptAtaqueMunicao ~= nil then self.cbOptAtaqueMunicao:destroy(); self.cbOptAtaqueMunicao = nil; end;
        if self.flowPart88 ~= nil then self.flowPart88:destroy(); self.flowPart88 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.flowPart123 ~= nil then self.flowPart123:destroy(); self.flowPart123 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.dataLink58 ~= nil then self.dataLink58:destroy(); self.dataLink58 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.popupEditFormulaLegenda ~= nil then self.popupEditFormulaLegenda:destroy(); self.popupEditFormulaLegenda = nil; end;
        if self.dataEquipAttackDetails ~= nil then self.dataEquipAttackDetails:destroy(); self.dataEquipAttackDetails = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.cbProfcompanioninvestigacao ~= nil then self.cbProfcompanioninvestigacao:destroy(); self.cbProfcompanioninvestigacao = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.dataLink77 ~= nil then self.dataLink77:destroy(); self.dataLink77 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.cmbupperGridMagicBox1 ~= nil then self.cmbupperGridMagicBox1:destroy(); self.cmbupperGridMagicBox1 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.flowPart117 ~= nil then self.flowPart117:destroy(); self.flowPart117 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.editorMerda ~= nil then self.editorMerda:destroy(); self.editorMerda = nil; end;
        if self.flowPart46 ~= nil then self.flowPart46:destroy(); self.flowPart46 = nil; end;
        if self.dataLink99 ~= nil then self.dataLink99:destroy(); self.dataLink99 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.labupperGridMagicBox3val ~= nil then self.labupperGridMagicBox3val:destroy(); self.labupperGridMagicBox3val = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.editPENome ~= nil then self.editPENome:destroy(); self.editPENome = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.flowPart109 ~= nil then self.flowPart109:destroy(); self.flowPart109 = nil; end;
        if self.dataLink105 ~= nil then self.dataLink105:destroy(); self.dataLink105 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.dataLink75 ~= nil then self.dataLink75:destroy(); self.dataLink75 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.horzLine21 ~= nil then self.horzLine21:destroy(); self.horzLine21 = nil; end;
        if self.horzLine17 ~= nil then self.horzLine17:destroy(); self.horzLine17 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.horzLine27 ~= nil then self.horzLine27:destroy(); self.horzLine27 = nil; end;
        if self.popupEditFormulaRect ~= nil then self.popupEditFormulaRect:destroy(); self.popupEditFormulaRect = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.labProfcompanionenganacao ~= nil then self.labProfcompanionenganacao:destroy(); self.labProfcompanionenganacao = nil; end;
        if self.dataLink65 ~= nil then self.dataLink65:destroy(); self.dataLink65 = nil; end;
        if self.cbProfcompanionpercepcao ~= nil then self.cbProfcompanionpercepcao:destroy(); self.cbProfcompanionpercepcao = nil; end;
        if self.cbProfcompanionconstituicao ~= nil then self.cbProfcompanionconstituicao:destroy(); self.cbProfcompanionconstituicao = nil; end;
        if self.dataLink101 ~= nil then self.dataLink101:destroy(); self.dataLink101 = nil; end;
        if self.flowPart64 ~= nil then self.flowPart64:destroy(); self.flowPart64 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.dataLink60 ~= nil then self.dataLink60:destroy(); self.dataLink60 = nil; end;
        if self.fraEquipamentoLayout ~= nil then self.fraEquipamentoLayout:destroy(); self.fraEquipamentoLayout = nil; end;
        if self.flowLayout9 ~= nil then self.flowLayout9:destroy(); self.flowLayout9 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.dataLink96 ~= nil then self.dataLink96:destroy(); self.dataLink96 = nil; end;
        if self.flwPartEquipDefense ~= nil then self.flwPartEquipDefense:destroy(); self.flwPartEquipDefense = nil; end;
        if self.button42 ~= nil then self.button42:destroy(); self.button42 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.horzLine12 ~= nil then self.horzLine12:destroy(); self.horzLine12 = nil; end;
        if self.layPrincipal ~= nil then self.layPrincipal:destroy(); self.layPrincipal = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.flowLayout11 ~= nil then self.flowLayout11:destroy(); self.flowLayout11 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.popupEditDanoLegenda ~= nil then self.popupEditDanoLegenda:destroy(); self.popupEditDanoLegenda = nil; end;
        if self.horzLine18 ~= nil then self.horzLine18:destroy(); self.horzLine18 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.flowPart36 ~= nil then self.flowPart36:destroy(); self.flowPart36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.edtUpperGridCampo6 ~= nil then self.edtUpperGridCampo6:destroy(); self.edtUpperGridCampo6 = nil; end;
        if self.flowPart82 ~= nil then self.flowPart82:destroy(); self.flowPart82 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.cbProfcompanionintuicao ~= nil then self.cbProfcompanionintuicao:destroy(); self.cbProfcompanionintuicao = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.flowPart84 ~= nil then self.flowPart84:destroy(); self.flowPart84 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.popupEditCDvalor ~= nil then self.popupEditCDvalor:destroy(); self.popupEditCDvalor = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.labProfcompanionatletismo ~= nil then self.labProfcompanionatletismo:destroy(); self.labProfcompanionatletismo = nil; end;
        if self.dataLink85 ~= nil then self.dataLink85:destroy(); self.dataLink85 = nil; end;
        if self.flowPart115 ~= nil then self.flowPart115:destroy(); self.flowPart115 = nil; end;
        if self.flowPart65 ~= nil then self.flowPart65:destroy(); self.flowPart65 = nil; end;
        if self.linUpperGridCampo3 ~= nil then self.linUpperGridCampo3:destroy(); self.linUpperGridCampo3 = nil; end;
        if self.flowPart112 ~= nil then self.flowPart112:destroy(); self.flowPart112 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.flowLineBreak4 ~= nil then self.flowLineBreak4:destroy(); self.flowLineBreak4 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
        if self.dataLink95 ~= nil then self.dataLink95:destroy(); self.dataLink95 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.flowPart100 ~= nil then self.flowPart100:destroy(); self.flowPart100 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.labUpperGridCampo2 ~= nil then self.labUpperGridCampo2:destroy(); self.labUpperGridCampo2 = nil; end;
        if self.horzLine11 ~= nil then self.horzLine11:destroy(); self.horzLine11 = nil; end;
        if self.dataLink86 ~= nil then self.dataLink86:destroy(); self.dataLink86 = nil; end;
        if self.flowLayout24 ~= nil then self.flowLayout24:destroy(); self.flowLayout24 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.flowPart121 ~= nil then self.flowPart121:destroy(); self.flowPart121 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.cbProfcompanionconcentracao ~= nil then self.cbProfcompanionconcentracao:destroy(); self.cbProfcompanionconcentracao = nil; end;
        if self.dataLink89 ~= nil then self.dataLink89:destroy(); self.dataLink89 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.upperGridMagicBox2 ~= nil then self.upperGridMagicBox2:destroy(); self.upperGridMagicBox2 = nil; end;
        if self.labUpperGridCampo1 ~= nil then self.labUpperGridCampo1:destroy(); self.labUpperGridCampo1 = nil; end;
        if self.flowPart32 ~= nil then self.flowPart32:destroy(); self.flowPart32 = nil; end;
        if self.flowLayout19 ~= nil then self.flowLayout19:destroy(); self.flowLayout19 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.flowPart13 ~= nil then self.flowPart13:destroy(); self.flowPart13 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.horzLine14 ~= nil then self.horzLine14:destroy(); self.horzLine14 = nil; end;
        if self.rclEquips ~= nil then self.rclEquips:destroy(); self.rclEquips = nil; end;
        if self.flowPart25 ~= nil then self.flowPart25:destroy(); self.flowPart25 = nil; end;
        if self.flowPart69 ~= nil then self.flowPart69:destroy(); self.flowPart69 = nil; end;
        if self.flowPart76 ~= nil then self.flowPart76:destroy(); self.flowPart76 = nil; end;
        if self.flowPart74 ~= nil then self.flowPart74:destroy(); self.flowPart74 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.flowPart101 ~= nil then self.flowPart101:destroy(); self.flowPart101 = nil; end;
        if self.colorComboBox1 ~= nil then self.colorComboBox1:destroy(); self.colorComboBox1 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.flowPart19 ~= nil then self.flowPart19:destroy(); self.flowPart19 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.dataLink100 ~= nil then self.dataLink100:destroy(); self.dataLink100 = nil; end;
        if self.button40 ~= nil then self.button40:destroy(); self.button40 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.flowPart89 ~= nil then self.flowPart89:destroy(); self.flowPart89 = nil; end;
        if self.flowPart68 ~= nil then self.flowPart68:destroy(); self.flowPart68 = nil; end;
        if self.flowLineBreak6 ~= nil then self.flowLineBreak6:destroy(); self.flowLineBreak6 = nil; end;
        if self.button37 ~= nil then self.button37:destroy(); self.button37 = nil; end;
        if self.button36 ~= nil then self.button36:destroy(); self.button36 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.labUpperGridCampo5 ~= nil then self.labUpperGridCampo5:destroy(); self.labUpperGridCampo5 = nil; end;
        if self.flowPart34 ~= nil then self.flowPart34:destroy(); self.flowPart34 = nil; end;
        if self.flowPart54 ~= nil then self.flowPart54:destroy(); self.flowPart54 = nil; end;
        if self.flowLayout23 ~= nil then self.flowLayout23:destroy(); self.flowLayout23 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.flowPart53 ~= nil then self.flowPart53:destroy(); self.flowPart53 = nil; end;
        if self.dataLink63 ~= nil then self.dataLink63:destroy(); self.dataLink63 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.optAtaquePadrao ~= nil then self.optAtaquePadrao:destroy(); self.optAtaquePadrao = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.flowPart57 ~= nil then self.flowPart57:destroy(); self.flowPart57 = nil; end;
        if self.comboBoxImportMagia ~= nil then self.comboBoxImportMagia:destroy(); self.comboBoxImportMagia = nil; end;
        if self.cbProfcompanionforca ~= nil then self.cbProfcompanionforca:destroy(); self.cbProfcompanionforca = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.comboBoxImportSource ~= nil then self.comboBoxImportSource:destroy(); self.comboBoxImportSource = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.imgEquipAttackImg ~= nil then self.imgEquipAttackImg:destroy(); self.imgEquipAttackImg = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.flowPart59 ~= nil then self.flowPart59:destroy(); self.flowPart59 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.labupperGridMagicBox2val ~= nil then self.labupperGridMagicBox2val:destroy(); self.labupperGridMagicBox2val = nil; end;
        if self.dataLink72 ~= nil then self.dataLink72:destroy(); self.dataLink72 = nil; end;
        if self.flowLayout14 ~= nil then self.flowLayout14:destroy(); self.flowLayout14 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.layEquipPropriedades ~= nil then self.layEquipPropriedades:destroy(); self.layEquipPropriedades = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.flowPart39 ~= nil then self.flowPart39:destroy(); self.flowPart39 = nil; end;
        if self.labProfcompanionatuacao ~= nil then self.labProfcompanionatuacao:destroy(); self.labProfcompanionatuacao = nil; end;
        if self.button43 ~= nil then self.button43:destroy(); self.button43 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.labProfcompanionpercepcao ~= nil then self.labProfcompanionpercepcao:destroy(); self.labProfcompanionpercepcao = nil; end;
        if self.flowPart60 ~= nil then self.flowPart60:destroy(); self.flowPart60 = nil; end;
        if self.rclProps ~= nil then self.rclProps:destroy(); self.rclProps = nil; end;
        if self.flowPart28 ~= nil then self.flowPart28:destroy(); self.flowPart28 = nil; end;
        if self.editorFancy ~= nil then self.editorFancy:destroy(); self.editorFancy = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.dataLink81 ~= nil then self.dataLink81:destroy(); self.dataLink81 = nil; end;
        if self.flowPart87 ~= nil then self.flowPart87:destroy(); self.flowPart87 = nil; end;
        if self.layEquipAttackImg ~= nil then self.layEquipAttackImg:destroy(); self.layEquipAttackImg = nil; end;
        if self.dataLink82 ~= nil then self.dataLink82:destroy(); self.dataLink82 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.button33 ~= nil then self.button33:destroy(); self.button33 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.UpperGridCampo6 ~= nil then self.UpperGridCampo6:destroy(); self.UpperGridCampo6 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.flowPart15 ~= nil then self.flowPart15:destroy(); self.flowPart15 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.UpperGridCampo5 ~= nil then self.UpperGridCampo5:destroy(); self.UpperGridCampo5 = nil; end;
        if self.flowPart104 ~= nil then self.flowPart104:destroy(); self.flowPart104 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.labupperGridMagicBox1 ~= nil then self.labupperGridMagicBox1:destroy(); self.labupperGridMagicBox1 = nil; end;
        if self.flowPart10 ~= nil then self.flowPart10:destroy(); self.flowPart10 = nil; end;
        if self.horzLine29 ~= nil then self.horzLine29:destroy(); self.horzLine29 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.flowPart122 ~= nil then self.flowPart122:destroy(); self.flowPart122 = nil; end;
        if self.dataLink55 ~= nil then self.dataLink55:destroy(); self.dataLink55 = nil; end;
        if self.fpPENivel ~= nil then self.fpPENivel:destroy(); self.fpPENivel = nil; end;
        if self.button51 ~= nil then self.button51:destroy(); self.button51 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.flowPart92 ~= nil then self.flowPart92:destroy(); self.flowPart92 = nil; end;
        if self.edtNomeCompanion1 ~= nil then self.edtNomeCompanion1:destroy(); self.edtNomeCompanion1 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.dataLink78 ~= nil then self.dataLink78:destroy(); self.dataLink78 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.labProfcompanionintuicao ~= nil then self.labProfcompanionintuicao:destroy(); self.labProfcompanionintuicao = nil; end;
        if self.flowPart75 ~= nil then self.flowPart75:destroy(); self.flowPart75 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.flowLayout12 ~= nil then self.flowLayout12:destroy(); self.flowLayout12 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.flowPart97 ~= nil then self.flowPart97:destroy(); self.flowPart97 = nil; end;
        if self.dataLink79 ~= nil then self.dataLink79:destroy(); self.dataLink79 = nil; end;
        if self.button39 ~= nil then self.button39:destroy(); self.button39 = nil; end;
        if self.rclFichaPropriedades ~= nil then self.rclFichaPropriedades:destroy(); self.rclFichaPropriedades = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.flowPart102 ~= nil then self.flowPart102:destroy(); self.flowPart102 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.button30 ~= nil then self.button30:destroy(); self.button30 = nil; end;
        if self.horzLine23 ~= nil then self.horzLine23:destroy(); self.horzLine23 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.labProfcompaniondestreza ~= nil then self.labProfcompaniondestreza:destroy(); self.labProfcompaniondestreza = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.labelFieldPETempo ~= nil then self.labelFieldPETempo:destroy(); self.labelFieldPETempo = nil; end;
        if self.cbProfcompanionmedicina ~= nil then self.cbProfcompanionmedicina:destroy(); self.cbProfcompanionmedicina = nil; end;
        if self.labelFieldPENivel ~= nil then self.labelFieldPENivel:destroy(); self.labelFieldPENivel = nil; end;
        if self.flowLayout20 ~= nil then self.flowLayout20:destroy(); self.flowLayout20 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.flwPartEquipAttack ~= nil then self.flwPartEquipAttack:destroy(); self.flwPartEquipAttack = nil; end;
        if self.frame7 ~= nil then self.frame7:destroy(); self.frame7 = nil; end;
        if self.frame1 ~= nil then self.frame1:destroy(); self.frame1 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.flwNomeCompanion1 ~= nil then self.flwNomeCompanion1:destroy(); self.flwNomeCompanion1 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.flowLayout25 ~= nil then self.flowLayout25:destroy(); self.flowLayout25 = nil; end;
        if self.flowLayout26 ~= nil then self.flowLayout26:destroy(); self.flowLayout26 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.popupEditContadorNome ~= nil then self.popupEditContadorNome:destroy(); self.popupEditContadorNome = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.popupEditDanoRL ~= nil then self.popupEditDanoRL:destroy(); self.popupEditDanoRL = nil; end;
        if self.fraLayAtributosCompanion ~= nil then self.fraLayAtributosCompanion:destroy(); self.fraLayAtributosCompanion = nil; end;
        if self.flowPart93 ~= nil then self.flowPart93:destroy(); self.flowPart93 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.flowPart110 ~= nil then self.flowPart110:destroy(); self.flowPart110 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.labProfcompanionarcanismo ~= nil then self.labProfcompanionarcanismo:destroy(); self.labProfcompanionarcanismo = nil; end;
        if self.labProfcompanionadestrarAnimais ~= nil then self.labProfcompanionadestrarAnimais:destroy(); self.labProfcompanionadestrarAnimais = nil; end;
        if self.labelFieldPEEscola ~= nil then self.labelFieldPEEscola:destroy(); self.labelFieldPEEscola = nil; end;
        if self.horzLine9 ~= nil then self.horzLine9:destroy(); self.horzLine9 = nil; end;
        if self.tab11 ~= nil then self.tab11:destroy(); self.tab11 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.dataLink64 ~= nil then self.dataLink64:destroy(); self.dataLink64 = nil; end;
        if self.layNomeHolderCompanion ~= nil then self.layNomeHolderCompanion:destroy(); self.layNomeHolderCompanion = nil; end;
        if self.labUpperGridCampo4 ~= nil then self.labUpperGridCampo4:destroy(); self.labUpperGridCampo4 = nil; end;
        if self.fraCompanionLayout ~= nil then self.fraCompanionLayout:destroy(); self.fraCompanionLayout = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.dataLink54 ~= nil then self.dataLink54:destroy(); self.dataLink54 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.dataLink70 ~= nil then self.dataLink70:destroy(); self.dataLink70 = nil; end;
        if self.horzLine20 ~= nil then self.horzLine20:destroy(); self.horzLine20 = nil; end;
        if self.labProfcompanionfurtividade ~= nil then self.labProfcompanionfurtividade:destroy(); self.labProfcompanionfurtividade = nil; end;
        if self.dataLink61 ~= nil then self.dataLink61:destroy(); self.dataLink61 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.cbProfcompanionfurtividade ~= nil then self.cbProfcompanionfurtividade:destroy(); self.cbProfcompanionfurtividade = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.companionanotacoesMerda ~= nil then self.companionanotacoesMerda:destroy(); self.companionanotacoesMerda = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.button41 ~= nil then self.button41:destroy(); self.button41 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.UpperGridCampo2 ~= nil then self.UpperGridCampo2:destroy(); self.UpperGridCampo2 = nil; end;
        if self.button31 ~= nil then self.button31:destroy(); self.button31 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.flowPart85 ~= nil then self.flowPart85:destroy(); self.flowPart85 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.dataLink110 ~= nil then self.dataLink110:destroy(); self.dataLink110 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.edtUpperGridCampo1 ~= nil then self.edtUpperGridCampo1:destroy(); self.edtUpperGridCampo1 = nil; end;
        if self.flowPart24 ~= nil then self.flowPart24:destroy(); self.flowPart24 = nil; end;
        if self.flowPart77 ~= nil then self.flowPart77:destroy(); self.flowPart77 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.frame3 ~= nil then self.frame3:destroy(); self.frame3 = nil; end;
        if self.dataLink62 ~= nil then self.dataLink62:destroy(); self.dataLink62 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.labProfcompanionintimidacao ~= nil then self.labProfcompanionintimidacao:destroy(); self.labProfcompanionintimidacao = nil; end;
        if self.companionanotacoesFancy ~= nil then self.companionanotacoesFancy:destroy(); self.companionanotacoesFancy = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.comboBox13 ~= nil then self.comboBox13:destroy(); self.comboBox13 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.UpperGridCampo4 ~= nil then self.UpperGridCampo4:destroy(); self.UpperGridCampo4 = nil; end;
        if self.dataLink87 ~= nil then self.dataLink87:destroy(); self.dataLink87 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.popupEditAlcanceCurto ~= nil then self.popupEditAlcanceCurto:destroy(); self.popupEditAlcanceCurto = nil; end;
        if self.horzLine10 ~= nil then self.horzLine10:destroy(); self.horzLine10 = nil; end;
        if self.labNomeCompanion1 ~= nil then self.labNomeCompanion1:destroy(); self.labNomeCompanion1 = nil; end;
        if self.checkBox11 ~= nil then self.checkBox11:destroy(); self.checkBox11 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.cbProfcompanionatuacao ~= nil then self.cbProfcompanionatuacao:destroy(); self.cbProfcompanionatuacao = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.button38 ~= nil then self.button38:destroy(); self.button38 = nil; end;
        if self.button52 ~= nil then self.button52:destroy(); self.button52 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.dataLink103 ~= nil then self.dataLink103:destroy(); self.dataLink103 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.labProfcompanionforca ~= nil then self.labProfcompanionforca:destroy(); self.labProfcompanionforca = nil; end;
        if self.tab8 ~= nil then self.tab8:destroy(); self.tab8 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.flowPart52 ~= nil then self.flowPart52:destroy(); self.flowPart52 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.comboBox12 ~= nil then self.comboBox12:destroy(); self.comboBox12 = nil; end;
        if self.flowPart38 ~= nil then self.flowPart38:destroy(); self.flowPart38 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.layPrepValor ~= nil then self.layPrepValor:destroy(); self.layPrepValor = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.flowPart20 ~= nil then self.flowPart20:destroy(); self.flowPart20 = nil; end;
        if self.flowPart44 ~= nil then self.flowPart44:destroy(); self.flowPart44 = nil; end;
        if self.labProfcompanioncarisma ~= nil then self.labProfcompanioncarisma:destroy(); self.labProfcompanioncarisma = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.popupEditDanoRect ~= nil then self.popupEditDanoRect:destroy(); self.popupEditDanoRect = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.labProfcompanionconstituicao ~= nil then self.labProfcompanionconstituicao:destroy(); self.labProfcompanionconstituicao = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.dataLink104 ~= nil then self.dataLink104:destroy(); self.dataLink104 = nil; end;
        if self.frame6 ~= nil then self.frame6:destroy(); self.frame6 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.labProfcompanionpersuasao ~= nil then self.labProfcompanionpersuasao:destroy(); self.labProfcompanionpersuasao = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.edtUpperGridCampo3 ~= nil then self.edtUpperGridCampo3:destroy(); self.edtUpperGridCampo3 = nil; end;
        if self.historiaFancy ~= nil then self.historiaFancy:destroy(); self.historiaFancy = nil; end;
        if self.tab7 ~= nil then self.tab7:destroy(); self.tab7 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.flowPart29 ~= nil then self.flowPart29:destroy(); self.flowPart29 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.dataLink49 ~= nil then self.dataLink49:destroy(); self.dataLink49 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.layPrepValorLab ~= nil then self.layPrepValorLab:destroy(); self.layPrepValorLab = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.flowPart23 ~= nil then self.flowPart23:destroy(); self.flowPart23 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.horzLine16 ~= nil then self.horzLine16:destroy(); self.horzLine16 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.flowPart30 ~= nil then self.flowPart30:destroy(); self.flowPart30 = nil; end;
        if self.cbProfcompaniondestreza ~= nil then self.cbProfcompaniondestreza:destroy(); self.cbProfcompaniondestreza = nil; end;
        if self.dataLink56 ~= nil then self.dataLink56:destroy(); self.dataLink56 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.labProfcompanionsabedoria ~= nil then self.labProfcompanionsabedoria:destroy(); self.labProfcompanionsabedoria = nil; end;
        if self.popupEditAtaqueBonus ~= nil then self.popupEditAtaqueBonus:destroy(); self.popupEditAtaqueBonus = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.dataLink91 ~= nil then self.dataLink91:destroy(); self.dataLink91 = nil; end;
        if self.flowPart99 ~= nil then self.flowPart99:destroy(); self.flowPart99 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.cbProfcompanionpersuasao ~= nil then self.cbProfcompanionpersuasao:destroy(); self.cbProfcompanionpersuasao = nil; end;
        if self.flowPart62 ~= nil then self.flowPart62:destroy(); self.flowPart62 = nil; end;
        if self.flowPart49 ~= nil then self.flowPart49:destroy(); self.flowPart49 = nil; end;
        if self.popupEditAtaqueAtrib ~= nil then self.popupEditAtaqueAtrib:destroy(); self.popupEditAtaqueAtrib = nil; end;
        if self.edtUpperGridCampo4 ~= nil then self.edtUpperGridCampo4:destroy(); self.edtUpperGridCampo4 = nil; end;
        if self.flowPart120 ~= nil then self.flowPart120:destroy(); self.flowPart120 = nil; end;
        if self.anotacoesFancy ~= nil then self.anotacoesFancy:destroy(); self.anotacoesFancy = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.flowPart14 ~= nil then self.flowPart14:destroy(); self.flowPart14 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.labupperGridMagicBox2 ~= nil then self.labupperGridMagicBox2:destroy(); self.labupperGridMagicBox2 = nil; end;
        if self.layEquipAttackLeft ~= nil then self.layEquipAttackLeft:destroy(); self.layEquipAttackLeft = nil; end;
        if self.cbProfcompanionatletismo ~= nil then self.cbProfcompanionatletismo:destroy(); self.cbProfcompanionatletismo = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.flowPart83 ~= nil then self.flowPart83:destroy(); self.flowPart83 = nil; end;
        if self.button49 ~= nil then self.button49:destroy(); self.button49 = nil; end;
        if self.labProfcompanionmedicina ~= nil then self.labProfcompanionmedicina:destroy(); self.labProfcompanionmedicina = nil; end;
        if self.dataLink106 ~= nil then self.dataLink106:destroy(); self.dataLink106 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.panupperGridMagicBox2 ~= nil then self.panupperGridMagicBox2:destroy(); self.panupperGridMagicBox2 = nil; end;
        if self.cbProfcompanioncarisma ~= nil then self.cbProfcompanioncarisma:destroy(); self.cbProfcompanioncarisma = nil; end;
        if self.cbProfcompanionprestidigitacao ~= nil then self.cbProfcompanionprestidigitacao:destroy(); self.cbProfcompanionprestidigitacao = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.labProfcompanionconcentracao ~= nil then self.labProfcompanionconcentracao:destroy(); self.labProfcompanionconcentracao = nil; end;
        if self.dataLink59 ~= nil then self.dataLink59:destroy(); self.dataLink59 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.edtUpperGridCampo2 ~= nil then self.edtUpperGridCampo2:destroy(); self.edtUpperGridCampo2 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.flowPart50 ~= nil then self.flowPart50:destroy(); self.flowPart50 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.rclEquipsDefense ~= nil then self.rclEquipsDefense:destroy(); self.rclEquipsDefense = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.flowPart47 ~= nil then self.flowPart47:destroy(); self.flowPart47 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.flowPart67 ~= nil then self.flowPart67:destroy(); self.flowPart67 = nil; end;
        if self.flowPart31 ~= nil then self.flowPart31:destroy(); self.flowPart31 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.horzLine8 ~= nil then self.horzLine8:destroy(); self.horzLine8 = nil; end;
        if self.button34 ~= nil then self.button34:destroy(); self.button34 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.flowPart12 ~= nil then self.flowPart12:destroy(); self.flowPart12 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.btnEquipDefenseNew ~= nil then self.btnEquipDefenseNew:destroy(); self.btnEquipDefenseNew = nil; end;
        if self.button50 ~= nil then self.button50:destroy(); self.button50 = nil; end;
        if self.button48 ~= nil then self.button48:destroy(); self.button48 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.flowPart114 ~= nil then self.flowPart114:destroy(); self.flowPart114 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.popupEditDuracaoUnidade ~= nil then self.popupEditDuracaoUnidade:destroy(); self.popupEditDuracaoUnidade = nil; end;
        if self.labEquipDefense ~= nil then self.labEquipDefense:destroy(); self.labEquipDefense = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.flowLayout17 ~= nil then self.flowLayout17:destroy(); self.flowLayout17 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.flowLineBreak1 ~= nil then self.flowLineBreak1:destroy(); self.flowLineBreak1 = nil; end;
        if self.flowPart81 ~= nil then self.flowPart81:destroy(); self.flowPart81 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.flowLayout21 ~= nil then self.flowLayout21:destroy(); self.flowLayout21 = nil; end;
        if self.rclContadores ~= nil then self.rclContadores:destroy(); self.rclContadores = nil; end;
        if self.flowLineBreak3 ~= nil then self.flowLineBreak3:destroy(); self.flowLineBreak3 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.dataLink66 ~= nil then self.dataLink66:destroy(); self.dataLink66 = nil; end;
        if self.flowPart98 ~= nil then self.flowPart98:destroy(); self.flowPart98 = nil; end;
        if self.flowPart63 ~= nil then self.flowPart63:destroy(); self.flowPart63 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.flowPart70 ~= nil then self.flowPart70:destroy(); self.flowPart70 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.flowPart11 ~= nil then self.flowPart11:destroy(); self.flowPart11 = nil; end;
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
        if self.flowPart17 ~= nil then self.flowPart17:destroy(); self.flowPart17 = nil; end;
        if self.linUpperGridCampo6 ~= nil then self.linUpperGridCampo6:destroy(); self.linUpperGridCampo6 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.popupEditContadorUsosTotal ~= nil then self.popupEditContadorUsosTotal:destroy(); self.popupEditContadorUsosTotal = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.flowPart61 ~= nil then self.flowPart61:destroy(); self.flowPart61 = nil; end;
        if self.flowPart27 ~= nil then self.flowPart27:destroy(); self.flowPart27 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.historiaMerda ~= nil then self.historiaMerda:destroy(); self.historiaMerda = nil; end;
        if self.flowPart58 ~= nil then self.flowPart58:destroy(); self.flowPart58 = nil; end;
        if self.cbProfcompanionintimidacao ~= nil then self.cbProfcompanionintimidacao:destroy(); self.cbProfcompanionintimidacao = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.dataLink109 ~= nil then self.dataLink109:destroy(); self.dataLink109 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.dataLink90 ~= nil then self.dataLink90:destroy(); self.dataLink90 = nil; end;
        if self.flowPart119 ~= nil then self.flowPart119:destroy(); self.flowPart119 = nil; end;
        if self.button46 ~= nil then self.button46:destroy(); self.button46 = nil; end;
        if self.flowPart21 ~= nil then self.flowPart21:destroy(); self.flowPart21 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.dataLink88 ~= nil then self.dataLink88:destroy(); self.dataLink88 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.horzLine13 ~= nil then self.horzLine13:destroy(); self.horzLine13 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.horzLine24 ~= nil then self.horzLine24:destroy(); self.horzLine24 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
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
