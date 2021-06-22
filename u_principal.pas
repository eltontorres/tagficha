{
    TagFicha - Criador de fichas de personagem para o RPG Tagmar 2.

    Copyright (C) 2014-2015 Elton Santos Torres

    Este programa é um software livre: você pode redistribuí-lo e/ou
    modificá-lo dentro dos termos da Licença Pública Geral GNU como
    publicada pela Free Software Foundation(FSF); na versão 3 da
    Licença, ou (na sua opinião) qualquer versão.

    Este programa é distribuído na esperança de que possa ser útil,
    mas SEM NENHUMA GARANTIA; sem uma garantia implícita de ADEQUAÇÃO a qualquer
    MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a
    Licença Pública Geral GNU para maiores detalhes.

    Você deve ter recebido uma cópia da Licença Pública Geral GNU
    junto com este programa, se não, escreva para a Free Software Foundation
    (FSF) Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
}

unit u_principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Laz2_DOM, laz2_XMLRead, laz2_XMLWrite,
  Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls, ExtCtrls,
  Buttons, Menus, ActnList, FileCtrl, ExtDlgs, DBCtrls, types, DB;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    actAbrir: TAction;
    actExcluir: TAction;
    actNovo: TAction;
    actSair: TAction;
    actSalvar: TAction;
    ActionList1: TActionList;
    actSobre: TAction;
    btnAgiAva: TSpeedButton;
    btnAgiDim: TSpeedButton;
    btnAurAva: TSpeedButton;
    btnAurDim: TSpeedButton;
    btnAvaMagia1: TSpeedButton;
    btnAvaMagia10: TSpeedButton;
    btnAvaMagia11: TSpeedButton;
    btnAvaMagia12: TSpeedButton;
    btnAvaMagia13: TSpeedButton;
    btnAvaMagia14: TSpeedButton;
    btnAvaMagia15: TSpeedButton;
    btnAvaMagia16: TSpeedButton;
    btnAvaMagia2: TSpeedButton;
    btnAvaMagia3: TSpeedButton;
    btnAvaMagia4: TSpeedButton;
    btnAvaMagia5: TSpeedButton;
    btnAvaMagia6: TSpeedButton;
    btnAvaMagia7: TSpeedButton;
    btnAvaMagia8: TSpeedButton;
    btnAvaMagia9: TSpeedButton;
    btnCarAva: TSpeedButton;
    btnCarDim: TSpeedButton;
    btnFisAva: TSpeedButton;
    btnFisDim: TSpeedButton;
    btnForAva: TSpeedButton;
    btnForDim: TSpeedButton;
    btnIntAva: TSpeedButton;
    btnIntDim: TSpeedButton;
    btnLimparArmadura: TSpeedButton;
    btnLimparEscudo: TSpeedButton;
    btnLimparElmo: TSpeedButton;
    btnPerAva: TSpeedButton;
    btnPerDim: TSpeedButton;
    btnPergMagia1: TSpeedButton;
    btnPergMagia10: TSpeedButton;
    btnPergMagia11: TSpeedButton;
    btnPergMagia12: TSpeedButton;
    btnPergMagia13: TSpeedButton;
    btnPergMagia14: TSpeedButton;
    btnPergMagia15: TSpeedButton;
    btnPergMagia16: TSpeedButton;
    btnPergMagia2: TSpeedButton;
    btnPergMagia3: TSpeedButton;
    btnPergMagia4: TSpeedButton;
    btnPergMagia5: TSpeedButton;
    btnPergMagia6: TSpeedButton;
    btnPergMagia7: TSpeedButton;
    btnPergMagia8: TSpeedButton;
    btnPergMagia9: TSpeedButton;
    btnSortear: TButton;
    btnLimpar: TButton;
    Button3: TButton;
    cbxAlcanceArma2: TComboBox;
    cbxAlcanceArma3: TComboBox;
    cbxAlcanceArma4: TComboBox;
    cbxAlcanceArma5: TComboBox;
    cbxGrupoArma2: TComboBox;
    cbxGrupoArma3: TComboBox;
    cbxGrupoArma4: TComboBox;
    cbxGrupoArma5: TComboBox;
    cbxGrupoArma1: TComboBox;
    cbxArma1: TComboBox;
    cbxArma2: TComboBox;
    cbxArma3: TComboBox;
    cbxArma4: TComboBox;
    cbxArma5: TComboBox;
    cbxDeus: TComboBox;
    cbxEspecializacao1: TComboBox;
    cbxEspecializacao2: TComboBox;
    cbxEspecializacao3: TComboBox;
    cbxEspecializacao4: TComboBox;
    cbxEspecializacao5: TComboBox;
    cbxInfluencia: TGroupBox;
    cbxProfissao: TComboBox;
    cbxEspecializacao: TComboBox;
    cbxRaca: TComboBox;
    ckbEspecializacao: TCheckBox;
    ckbSorteio: TCheckBox;
    cbxArmadura: TComboBox;
    cbxEscudo: TComboBox;
    cbxElmo: TComboBox;
    cbxAlcanceArma1: TComboBox;
    edtBonusArmadura: TEdit;
    edtBonusEscudo: TEdit;
    edtBonusElmo: TEdit;
    edtExperiencia: TEdit;
    edtEstagio: TEdit;
    edtProximoEstagio: TEdit;
    edtClasseSocial: TEdit;
    edtPontosRestantesMagia: TEdit;
    edtTerraNatal: TEdit;
    edtAltura: TEdit;
    edtPeso: TEdit;
    edtIdade: TEdit;
    edtOlhos: TEdit;
    edtMoedasCobre: TEdit;
    edtMoedasPrata: TEdit;
    edtMoedasOuro: TEdit;
    edtNomeMagia: TEdit;
    edtEvocacao: TDBEdit;
    edtAlcance: TDBEdit;
    edtDuracao: TDBEdit;
    Image2: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Label251: TLabel;
    Label252: TLabel;
    Label253: TLabel;
    Label254: TLabel;
    Label255: TLabel;
    Label256: TLabel;
    Label257: TLabel;
    Label258: TLabel;
    Label259: TLabel;
    Label260: TLabel;
    Label261: TLabel;
    Label262: TLabel;
    Label263: TLabel;
    Label264: TLabel;
    memEfeito: TDBMemo;
    memDescricao: TDBMemo;
    edtMagia1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    edtMagia10: TEdit;
    edtMagia11: TEdit;
    edtMagia12: TEdit;
    edtMagia13: TEdit;
    edtMagia14: TEdit;
    edtMagia15: TEdit;
    edtMagia16: TEdit;
    EdtMagia2: TEdit;
    edtMagia3: TEdit;
    edtMagia4: TEdit;
    edtCabelos: TEdit;
    edtPele: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    edtLArma1: TEdit;
    edtLArma2: TEdit;
    edtLArma3: TEdit;
    edtLArma4: TEdit;
    edtLArma5: TEdit;
    edtMagia5: TEdit;
    EdtMagia6: TEdit;
    edtMagia7: TEdit;
    edtMagia8: TEdit;
    edtMagia9: TEdit;
    edtPontosAquisicaoMagia: TEdit;
    edtPontosRestantesGrupoArmas: TEdit;
    edtPontosTecnicasCombate: TEdit;
    edtPontosRestantes: TEdit;
    edtTotalAmbidestria: TEdit;
    edtTotalAparar: TEdit;
    edtTotalAtaqueOportuno: TEdit;
    edtTotalAtaqueSurpresa: TEdit;
    edtTotalAtirarMovimento: TEdit;
    edtTotalCarga: TEdit;
    edtTotalCombateMontado: TEdit;
    edtTotalEsquiva: TEdit;
    edtTotalLutaCegas: TEdit;
    edtTotalResistenciaDor: TEdit;
    edtTotalCombateNaoLetal: TEdit;
    Edit238: TEdit;
    edtEfeitoArmadura: TEdit;
    edtEfeitoEscudo: TEdit;
    edtEfeitoElmo: TEdit;
    edt100Arma1: TEdit;
    edt100Arma2: TEdit;
    edt100Arma3: TEdit;
    edt100Arma4: TEdit;
    edt100Arma5: TEdit;
    edt25Arma1: TEdit;
    edt25Arma2: TEdit;
    edt25Arma3: TEdit;
    edt25Arma4: TEdit;
    edt25Arma5: TEdit;
    edt50Arma1: TEdit;
    edt50Arma2: TEdit;
    edt50Arma3: TEdit;
    edt50Arma4: TEdit;
    edt50Arma5: TEdit;
    edt75Arma1: TEdit;
    edt75Arma2: TEdit;
    edt75Arma3: TEdit;
    edt75Arma4: TEdit;
    edt75Arma5: TEdit;
    edtAmbidestria: TEdit;
    edtAgilidade: TEdit;
    edtAgilidadeFinal: TEdit;
    edtAjusteAcoesFurtivas: TEdit;
    edtAjusteAcrobacias: TEdit;
    edtAjusteArte: TEdit;
    edtAjusteBarganha: TEdit;
    edtAjusteCarpintaria: TEdit;
    edtAjusteComercio: TEdit;
    edtAjusteCorrida: TEdit;
    edtAjusteDestrancarFechaduras: TEdit;
    edtAjusteDisfarces: TEdit;
    edtAjusteEngenharia: TEdit;
    edtAjusteEscalarSuperficies: TEdit;
    edtAjusteEscapar: TEdit;
    edtAjusteEscrita: TEdit;
    edtAjusteEscutar: TEdit;
    edtAjusteEspecializacao1: TEdit;
    edtAjusteEspecializacao2: TEdit;
    edtAjusteEspecializacao3: TEdit;
    edtAjusteEspecializacao4: TEdit;
    edtAjusteEspecializacao5: TEdit;
    edtAjusteEtiqueta: TEdit;
    edtAjusteFalsificacao: TEdit;
    edtAjusteFurtarObjetos: TEdit;
    edtAjusteHerbalismo: TEdit;
    edtAjusteJogatina: TEdit;
    edtAjusteLidarAnimais: TEdit;
    edtAjusteLideranca: TEdit;
    edtAjusteLingua: TEdit;
    edtAjusteMalabarismo: TEdit;
    edtAjusteMedicina: TEdit;
    edtAjusteMisticismo: TEdit;
    edtAjusteMontarAnimais: TEdit;
    edtAjusteManusearArmadilhas: TEdit;
    edtAjusteNatacao: TEdit;
    edtAjusteNautica: TEdit;
    edtAjusteNavegacao: TEdit;
    edtAjusteObservar: TEdit;
    edtAjustePersuasao: TEdit;
    edtAjusteReligiao: TEdit;
    edtAjusteSeducao: TEdit;
    edtAjusteSeguirTrilhas: TEdit;
    edtAjusteSobrevivencia: TEdit;
    edtAjusteTrabalhoMetal: TEdit;
    edtAjusteVeneficio: TEdit;
    edtAparar: TEdit;
    edtAtaqueOportuno: TEdit;
    edtAtaqueSurpresa: TEdit;
    edtAtirarMovimento: TEdit;
    edtAura: TEdit;
    edtAuraFinal: TEdit;
    edtCarga: TEdit;
    edtCarisma: TEdit;
    edtCarismaFinal: TEdit;
    edtCombateMontado: TEdit;
    edtCombateNaoLetal: TEdit;
    edtCustoMagia1: TEdit;
    edtCustoMagia10: TEdit;
    edtCustoMagia11: TEdit;
    edtCustoMagia12: TEdit;
    edtCustoMagia13: TEdit;
    edtCustoMagia14: TEdit;
    edtCustoMagia15: TEdit;
    edtCustoMagia16: TEdit;
    edtCustoMagia2: TEdit;
    edtCustoMagia3: TEdit;
    edtCustoMagia4: TEdit;
    edtCustoMagia5: TEdit;
    edtCustoMagia6: TEdit;
    edtCustoMagia7: TEdit;
    edtCustoMagia8: TEdit;
    edtCustoMagia9: TEdit;
    edtDefesaAtiva: TEdit;
    edtDefesaPassiva: TEdit;
    edtEnergiaFisica: TEdit;
    edtEnergiaFisicaAbsorcao: TEdit;
    edtEnergiaHeroica: TEdit;
    edtEsquiva: TEdit;
    edtFisico: TEdit;
    edtFisicoFinal: TEdit;
    edtForca: TEdit;
    edtForcaFinal: TEdit;
    edtIntelecto: TEdit;
    edtIntelectoFinal: TEdit;
    edtKarma: TEdit;
    edtLutaCegas: TEdit;
    edtMArma1: TEdit;
    edtMArma2: TEdit;
    edtMArma3: TEdit;
    edtMArma4: TEdit;
    edtMArma5: TEdit;
    edtNivelAcoesFurtivas: TEdit;
    edtNivelAcrobacias: TEdit;
    edtNivelArte: TEdit;
    edtNivelBarganha: TEdit;
    edtNivelCarpintaria: TEdit;
    edtNivelComercio: TEdit;
    edtNivelCorrida: TEdit;
    edtNivelDestrancarFechaduras: TEdit;
    edtNivelDisfarces: TEdit;
    edtNivelEngenharia: TEdit;
    edtNivelEscalarSuperficies: TEdit;
    edtNivelEscapar: TEdit;
    edtNivelEscrita: TEdit;
    edtNivelEscutar: TEdit;
    edtNivelEspecializacao1: TEdit;
    edtNivelEspecializacao2: TEdit;
    edtNivelEspecializacao3: TEdit;
    edtNivelEspecializacao4: TEdit;
    edtNivelEspecializacao5: TEdit;
    edtNivelEtiqueta: TEdit;
    edtNivelFalsificacao: TEdit;
    edtNivelFurtarObjetos: TEdit;
    edtNivelHerbalismo: TEdit;
    edtNivelJogatina: TEdit;
    edtNivelLidarAnimais: TEdit;
    edtNivelLideranca: TEdit;
    edtNivelLingua: TEdit;
    edtNivelMagia1: TEdit;
    edtNivelMagia10: TEdit;
    edtNivelMagia11: TEdit;
    edtNivelMagia12: TEdit;
    edtNivelMagia13: TEdit;
    edtNivelMagia14: TEdit;
    edtNivelMagia15: TEdit;
    edtNivelMagia16: TEdit;
    edtNivelMagia2: TEdit;
    edtNivelMagia3: TEdit;
    edtNivelMagia4: TEdit;
    edtNivelMagia5: TEdit;
    edtNivelMagia6: TEdit;
    edtNivelMagia7: TEdit;
    edtNivelMagia8: TEdit;
    edtNivelMagia9: TEdit;
    edtNivelMalabarismo: TEdit;
    edtNivelManusearArmadilhas: TEdit;
    edtNivelMedicina: TEdit;
    edtNivelMisticismo: TEdit;
    edtNivelMontarAnimais: TEdit;
    edtNivelNatacao: TEdit;
    edtNivelNautica: TEdit;
    edtNivelNavegacao: TEdit;
    edtNivelObservar: TEdit;
    edtNivelPersuasao: TEdit;
    edtNivelReligiao: TEdit;
    edtNivelSeducao: TEdit;
    edtNivelSeguirTrilhas: TEdit;
    edtNivelSobrevivencia: TEdit;
    edtNivelTrabalhoMetal: TEdit;
    edtNivelTrabalhosManuais: TEdit;
    edtNivelVeneficio: TEdit;
    edtNome: TLabeledEdit;
    edAjusteAparar: TEdit;
    edtPArma1: TEdit;
    edtPArma2: TEdit;
    edtPArma3: TEdit;
    edtPArma4: TEdit;
    edtPArma5: TEdit;
    edtPercepcao: TEdit;
    edtPercepcaoFinal: TEdit;
    edtPontos: TEdit;
    edtPontosAquisicao: TEdit;
    edtCpE: TEdit;
    edtCpM: TEdit;
    edtEp: TEdit;
    edtPontosRestantesTecnicasCombate: TEdit;
    edtPontosGrupoArmas: TEdit;
    edtPp: TEdit;
    edtEl: TEdit;
    edtCmE: TEdit;
    edtCmM: TEdit;
    edtEm: TEdit;
    edtCD: TEdit;
    edtPmA: TEdit;
    edtCl: TEdit;
    edtPmL: TEdit;
    edtTotalArma1: TEdit;
    edtTotalReligiao: TEdit;
    edtResFisica: TEdit;
    edtResistenciaDor: TEdit;
    edtResMagia: TEdit;
    edtAjusteAmbisdestria: TEdit;
    edtTotalAcoesFurtivas: TEdit;
    edtTotalAcrobacias: TEdit;
    edtTotalArma2: TEdit;
    edtTotalArma3: TEdit;
    edtTotalArma4: TEdit;
    edtTotalArma5: TEdit;
    edtTotalArte: TEdit;
    edtAjusteAtirarMovimento: TEdit;
    edtAjusteAtaqueOportuno: TEdit;
    edtAjusteAtaqueSurpresa: TEdit;
    edtTotalBarganha: TEdit;
    edtAjusteCarga: TEdit;
    edtTotalCarpintaria: TEdit;
    edtAjusteCombateMontado: TEdit;
    edtAjusteCombateNaoLetal: TEdit;
    edtTotalComercio: TEdit;
    edtTotalCorrida: TEdit;
    edtTotalDestrancarFechaduras: TEdit;
    edtTotalDisfarces: TEdit;
    edtTotalEngenharia: TEdit;
    EdtTotalEscalarSuperficies: TEdit;
    edtTotalEscapar: TEdit;
    edtTotalEscrita: TEdit;
    edtTotalEscutar: TEdit;
    edtTotalEspecializacao1: TEdit;
    edtTotalEspecializacao2: TEdit;
    edtTotalEspecializacao3: TEdit;
    edtTotalEspecializacao4: TEdit;
    edtTotalEspecializacao5: TEdit;
    edtAjusteEsquiva: TEdit;
    edtTotalEtiqueta: TEdit;
    edtTotalFalsificacao: TEdit;
    edtTotalFurtarObjetos: TEdit;
    edtTotalHerbalismo: TEdit;
    edtTotalJogatina: TEdit;
    edtTotalLidarAnimais: TEdit;
    edtTotalLideranca: TEdit;
    edtTotalLingua: TEdit;
    edtAjusteLutaCegas: TEdit;
    edtTotalMagia1: TEdit;
    edtTotalMagia10: TEdit;
    edtTotalMagia11: TEdit;
    edtTotalMagia12: TEdit;
    edtTotalMagia13: TEdit;
    edtTotalMagia14: TEdit;
    edtTotalMagia15: TEdit;
    edtTotalMagia16: TEdit;
    edtTotalMagia2: TEdit;
    edtTotalMagia3: TEdit;
    edtTotalMagia4: TEdit;
    edtTotalMagia5: TEdit;
    edtTotalMagia6: TEdit;
    edtTotalMagia7: TEdit;
    edtTotalMagia8: TEdit;
    edtTotalMagia9: TEdit;
    edtTotalMalabarismo: TEdit;
    edtTotalManusearArmadilhas: TEdit;
    edtTotalMedicina: TEdit;
    edtTotalMisticismo: TEdit;
    edtTotalMontarAnimais: TEdit;
    edtTotalNatacao: TEdit;
    edtTotalNautica: TEdit;
    edtTotalNavegacao: TEdit;
    edtTotalObservar: TEdit;
    edtTotalPersuasao: TEdit;
    edtAjusteResistenciaDor: TEdit;
    edtTotalSeducao: TEdit;
    edtTotalSeguirTrilhas: TEdit;
    edtTotalSobrevivencia: TEdit;
    edtTotalTrabalhoMetal: TEdit;
    edtTotalTrabalhosManuais: TEdit;
    edtTotalVeneficio: TEdit;
    edtAjusteTrabalhosManuais: TEdit;
    edtVelocidadeBase: TEdit;
    Efeito: TLabel;
    FileListBox1: TFileListBox;
    gbxArmas: TGroupBox;
    gbxConhecimento: TGroupBox;
    gbxDetalhes: TGroupBox;
    gbxEspecializacao: TGroupBox;
    gbxGeral: TGroupBox;
    gbxGrupoArmas: TGroupBox;
    gbxMagias: TGroupBox;
    gbxManobra: TGroupBox;
    gbxProfissional: TGroupBox;
    gbxSubterfugio: TGroupBox;
    gbxTecnicasCombate: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    ImageList1: TImageList;
    ImageList2: TImageList;
    Label1: TLabel;
    Label10: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label11: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label12: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label13: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label14: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label15: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label16: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label17: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label18: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    Label189: TLabel;
    Label19: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    Label192: TLabel;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    Label198: TLabel;
    Label199: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label208: TLabel;
    Label209: TLabel;
    Label21: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    Label212: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Label215: TLabel;
    Label216: TLabel;
    Label217: TLabel;
    Label218: TLabel;
    Label219: TLabel;
    Label22: TLabel;
    Label220: TLabel;
    Label221: TLabel;
    Label222: TLabel;
    Label223: TLabel;
    Label224: TLabel;
    Label225: TLabel;
    Label226: TLabel;
    Label227: TLabel;
    Label228: TLabel;
    Label229: TLabel;
    Label23: TLabel;
    Label230: TLabel;
    Label231: TLabel;
    Label232: TLabel;
    Label233: TLabel;
    Label234: TLabel;
    Label235: TLabel;
    Label236: TLabel;
    Label237: TLabel;
    Label238: TLabel;
    Label239: TLabel;
    Label24: TLabel;
    Label240: TLabel;
    Label241: TLabel;
    Label242: TLabel;
    Label243: TLabel;
    Label244: TLabel;
    Label245: TLabel;
    Label246: TLabel;
    Label247: TLabel;
    Label248: TLabel;
    Label249: TLabel;
    Label25: TLabel;
    Label250: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label5: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label6: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label7: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label8: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label9: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    MainMenu1: TMainMenu;
    memHistoria: TMemo;
    memObjetos: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    pgcFicha: TPageControl;
    pgnAtributos: TTabSheet;
    pgnCaracteristicas: TTabSheet;
    pgnCombate: TTabSheet;
    pgnHabilidades: TTabSheet;
    pgnMagias: TTabSheet;
    pgnPertencesAfins: TTabSheet;
    PopupMenu1: TPopupMenu;
    btnLimparArma1: TSpeedButton;
    btnLimparArma2: TSpeedButton;
    btnLimparArma3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    btnLimparArma4: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    SpeedButton45: TSpeedButton;
    SpeedButton46: TSpeedButton;
    SpeedButton47: TSpeedButton;
    SpeedButton48: TSpeedButton;
    SpeedButton49: TSpeedButton;
    btnLimparArma5: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton50: TSpeedButton;
    SpeedButton51: TSpeedButton;
    SpeedButton52: TSpeedButton;
    SpeedButton53: TSpeedButton;
    SpeedButton54: TSpeedButton;
    SpeedButton55: TSpeedButton;
    SpeedButton56: TSpeedButton;
    SpeedButton57: TSpeedButton;
    SpeedButton58: TSpeedButton;
    SpeedButton59: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton60: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton62: TSpeedButton;
    SpeedButton63: TSpeedButton;
    SpeedButton64: TSpeedButton;
    SpeedButton65: TSpeedButton;
    SpeedButton66: TSpeedButton;
    SpeedButton67: TSpeedButton;
    SpeedButton68: TSpeedButton;
    SpeedButton69: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton70: TSpeedButton;
    SpeedButton71: TSpeedButton;
    SpeedButton72: TSpeedButton;
    SpeedButton73: TSpeedButton;
    SpeedButton74: TSpeedButton;
    SpeedButton75: TSpeedButton;
    SpeedButton76: TSpeedButton;
    SpeedButton77: TSpeedButton;
    SpeedButton78: TSpeedButton;
    SpeedButton79: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton80: TSpeedButton;
    SpeedButton81: TSpeedButton;
    SpeedButton82: TSpeedButton;
    SpeedButton83: TSpeedButton;
    SpeedButton84: TSpeedButton;
    SpeedButton85: TSpeedButton;
    SpeedButton86: TSpeedButton;
    SpeedButton87: TSpeedButton;
    SpeedButton88: TSpeedButton;
    SpeedButton89: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton90: TSpeedButton;
    SpeedButton91: TSpeedButton;
    SpeedButton92: TSpeedButton;
    SpeedButton93: TSpeedButton;
    SpeedButton94: TSpeedButton;
    SpeedButton95: TSpeedButton;
    SpeedButton96: TSpeedButton;
    SpeedButton97: TSpeedButton;
    SpeedButton98: TSpeedButton;
    SpeedButton99: TSpeedButton;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure actAbrirExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure btnAgiAvaClick(Sender: TObject);
    procedure btnAgiDimClick(Sender: TObject);
    procedure btnAurAvaClick(Sender: TObject);
    procedure btnAurDimClick(Sender: TObject);
    procedure btnAvaMagia10Click(Sender: TObject);
    procedure btnAvaMagia11Click(Sender: TObject);
    procedure btnAvaMagia12Click(Sender: TObject);
    procedure btnAvaMagia13Click(Sender: TObject);
    procedure btnAvaMagia14Click(Sender: TObject);
    procedure btnAvaMagia15Click(Sender: TObject);
    procedure btnAvaMagia16Click(Sender: TObject);
    procedure btnAvaMagia1Click(Sender: TObject);
    procedure btnAvaMagia2Click(Sender: TObject);
    procedure btnAvaMagia3Click(Sender: TObject);
    procedure btnAvaMagia4Click(Sender: TObject);
    procedure btnAvaMagia5Click(Sender: TObject);
    procedure btnAvaMagia6Click(Sender: TObject);
    procedure btnAvaMagia7Click(Sender: TObject);
    procedure btnAvaMagia8Click(Sender: TObject);
    procedure btnAvaMagia9Click(Sender: TObject);
    procedure btnCarAvaClick(Sender: TObject);
    procedure btnCarDimClick(Sender: TObject);
    procedure btnFisAvaClick(Sender: TObject);
    procedure btnFisDimClick(Sender: TObject);
    procedure btnForAvaClick(Sender: TObject);
    procedure btnForDimClick(Sender: TObject);
    procedure btnIntAvaClick(Sender: TObject);
    procedure btnIntDimClick(Sender: TObject);
    procedure btnLimparArma2Click(Sender: TObject);
    procedure btnLimparArma3Click(Sender: TObject);
    procedure btnLimparArma4Click(Sender: TObject);
    procedure btnLimparArma5Click(Sender: TObject);
    procedure btnLimparArmaduraClick(Sender: TObject);
    procedure btnLimparElmoClick(Sender: TObject);
    procedure btnLimparEscudoClick(Sender: TObject);
    procedure btnPerAvaClick(Sender: TObject);
    procedure btnPerDimClick(Sender: TObject);
    procedure btnPergMagia10Click(Sender: TObject);
    procedure btnPergMagia11Click(Sender: TObject);
    procedure btnPergMagia12Click(Sender: TObject);
    procedure btnPergMagia13Click(Sender: TObject);
    procedure btnPergMagia14Click(Sender: TObject);
    procedure btnPergMagia15Click(Sender: TObject);
    procedure btnPergMagia16Click(Sender: TObject);
    procedure btnPergMagia1Click(Sender: TObject);
    procedure btnPergMagia2Click(Sender: TObject);
    procedure btnPergMagia3Click(Sender: TObject);
    procedure btnPergMagia4Click(Sender: TObject);
    procedure btnPergMagia5Click(Sender: TObject);
    procedure btnPergMagia6Click(Sender: TObject);
    procedure btnPergMagia7Click(Sender: TObject);
    procedure btnPergMagia8Click(Sender: TObject);
    procedure btnPergMagia9Click(Sender: TObject);
    procedure btnSortearClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cbxArma1Change(Sender: TObject);
    procedure cbxArma2Change(Sender: TObject);
    procedure cbxArma3Change(Sender: TObject);
    procedure cbxArma4Change(Sender: TObject);
    procedure cbxArma5Change(Sender: TObject);
    procedure cbxArmaduraChange(Sender: TObject);
    procedure cbxElmoChange(Sender: TObject);
    procedure cbxEscudoChange(Sender: TObject);
    procedure cbxEspecializacaoChange(Sender: TObject);
    procedure cbxProfissaoChange(Sender: TObject);
    procedure cbxRacaChange(Sender: TObject);
    procedure ckbEspecializacaoClick(Sender: TObject);
    procedure ckbSorteioClick(Sender: TObject);
    procedure edtAgilidadeFinalChange(Sender: TObject);
    procedure edtAlturaExit(Sender: TObject);
    procedure edtAmbidestriaChange(Sender: TObject);
    procedure edtApararChange(Sender: TObject);
    procedure edtAtaqueOportunoChange(Sender: TObject);
    procedure edtAtaqueSurpresaChange(Sender: TObject);
    procedure edtAtirarMovimentoChange(Sender: TObject);
    procedure edtAuraFinalChange(Sender: TObject);
    procedure edtBonusArmaduraChange(Sender: TObject);
    procedure edtBonusElmoChange(Sender: TObject);
    procedure edtBonusEscudoChange(Sender: TObject);
    procedure edtCargaChange(Sender: TObject);
    procedure edtCarismaFinalChange(Sender: TObject);
    procedure edtCombateMontadoChange(Sender: TObject);
    procedure edtCombateNaoLetalChange(Sender: TObject);
    procedure edtEsquivaChange(Sender: TObject);
    procedure edtEstagioChange(Sender: TObject);
    procedure edtExperienciaChange(Sender: TObject);
    procedure edtFisicoFinalChange(Sender: TObject);
    procedure edtForcaFinalChange(Sender: TObject);
    procedure edtIntelectoFinalChange(Sender: TObject);
    procedure edtLutaCegasChange(Sender: TObject);
    procedure edtMagia1Change(Sender: TObject);
    procedure edtNivelAcoesFurtivasChange(Sender: TObject);
    procedure edtNivelAcrobaciasChange(Sender: TObject);
    procedure edtNivelArteChange(Sender: TObject);
    procedure edtNivelBarganhaChange(Sender: TObject);
    procedure edtNivelCarpintariaChange(Sender: TObject);
    procedure edtNivelComercioChange(Sender: TObject);
    procedure edtNivelCorridaChange(Sender: TObject);
    procedure edtNivelDestrancarFechadurasChange(Sender: TObject);
    procedure edtNivelDisfarcesChange(Sender: TObject);
    procedure edtNivelEngenhariaChange(Sender: TObject);
    procedure edtNivelEscalarSuperficiesChange(Sender: TObject);
    procedure edtNivelEscaparChange(Sender: TObject);
    procedure edtNivelEscritaChange(Sender: TObject);
    procedure edtNivelEscutarChange(Sender: TObject);
    procedure edtNivelEtiquetaChange(Sender: TObject);
    procedure edtNivelFalsificacaoChange(Sender: TObject);
    procedure edtNivelFurtarObjetosChange(Sender: TObject);
    procedure edtNivelHerbalismoChange(Sender: TObject);
    procedure edtNivelJogatinaChange(Sender: TObject);
    procedure edtNivelLidarAnimaisChange(Sender: TObject);
    procedure edtNivelLiderancaChange(Sender: TObject);
    procedure edtNivelLinguaChange(Sender: TObject);
    procedure edtNivelMalabarismoChange(Sender: TObject);
    procedure edtNivelManusearArmadilhasChange(Sender: TObject);
    procedure edtNivelMedicinaChange(Sender: TObject);
    procedure edtNivelMisticismoChange(Sender: TObject);
    procedure edtNivelMontarAnimaisChange(Sender: TObject);
    procedure edtNivelNatacaoChange(Sender: TObject);
    procedure edtNivelNauticaChange(Sender: TObject);
    procedure edtNivelNavegacaoChange(Sender: TObject);
    procedure edtNivelObservarChange(Sender: TObject);
    procedure edtNivelPersuasaoChange(Sender: TObject);
    procedure edtNivelReligiaoChange(Sender: TObject);
    procedure edtNivelSeducaoChange(Sender: TObject);
    procedure edtNivelSeguirTrilhasChange(Sender: TObject);
    procedure edtNivelSobrevivenciaChange(Sender: TObject);
    procedure edtNivelTrabalhoMetalChange(Sender: TObject);
    procedure edtNivelTrabalhosManuaisChange(Sender: TObject);
    procedure edtNivelVeneficioChange(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure edtNomeMagiaChange(Sender: TObject);
    procedure edtPercepcaoFinalChange(Sender: TObject);
    procedure edtPesoExit(Sender: TObject);
    procedure edtPontosAquisicaoMagiaChange(Sender: TObject);
    procedure edtPontosChange(Sender: TObject);
    procedure edtPontosGrupoArmasChange(Sender: TObject);
    procedure edtPontosTecnicasCombateChange(Sender: TObject);
    procedure edtResistenciaDorChange(Sender: TObject);
    procedure edtTotalArma1Change(Sender: TObject);
    procedure edtTotalArma2Change(Sender: TObject);
    procedure edtTotalArma3Change(Sender: TObject);
    procedure edtTotalArma4Change(Sender: TObject);
    procedure edtTotalArma5Change(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure FileListBox1DrawItem(Control: TWinControl; Index: integer;
      ARect: TRect; State: TOwnerDrawState);
    procedure FileListBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pgcFichaChange(Sender: TObject);
    procedure btnLimparArma1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SpeedButton39Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton40Click(Sender: TObject);
    procedure SpeedButton41Click(Sender: TObject);
    procedure SpeedButton42Click(Sender: TObject);
    procedure SpeedButton43Click(Sender: TObject);
    procedure SpeedButton44Click(Sender: TObject);
    procedure SpeedButton45Click(Sender: TObject);
    procedure SpeedButton46Click(Sender: TObject);
    procedure SpeedButton47Click(Sender: TObject);
    procedure SpeedButton48Click(Sender: TObject);
    procedure SpeedButton49Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
    procedure SpeedButton52Click(Sender: TObject);
    procedure SpeedButton53Click(Sender: TObject);
    procedure SpeedButton54Click(Sender: TObject);
    procedure SpeedButton55Click(Sender: TObject);
    procedure SpeedButton56Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton62Click(Sender: TObject);
    procedure SpeedButton63Click(Sender: TObject);
    procedure SpeedButton64Click(Sender: TObject);
    procedure SpeedButton65Click(Sender: TObject);
    procedure SpeedButton66Click(Sender: TObject);
    procedure SpeedButton67Click(Sender: TObject);
    procedure SpeedButton68Click(Sender: TObject);
    procedure SpeedButton69Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton70Click(Sender: TObject);
    procedure SpeedButton71Click(Sender: TObject);
    procedure SpeedButton72Click(Sender: TObject);
    procedure SpeedButton73Click(Sender: TObject);
    procedure SpeedButton74Click(Sender: TObject);
    procedure SpeedButton75Click(Sender: TObject);
    procedure SpeedButton76Click(Sender: TObject);
    procedure SpeedButton77Click(Sender: TObject);
    procedure SpeedButton78Click(Sender: TObject);
    procedure SpeedButton79Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton80Click(Sender: TObject);
    procedure SpeedButton81Click(Sender: TObject);
    procedure SpeedButton82Click(Sender: TObject);
    procedure SpeedButton83Click(Sender: TObject);
    procedure SpeedButton84Click(Sender: TObject);
    procedure SpeedButton85Click(Sender: TObject);
    procedure SpeedButton86Click(Sender: TObject);
    procedure SpeedButton87Click(Sender: TObject);
    procedure SpeedButton88Click(Sender: TObject);
    procedure SpeedButton89Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton90Click(Sender: TObject);
    procedure SpeedButton91Click(Sender: TObject);
    procedure SpeedButton92Click(Sender: TObject);
    procedure SpeedButton93Click(Sender: TObject);
    procedure SpeedButton94Click(Sender: TObject);
    procedure SpeedButton95Click(Sender: TObject);
    procedure SpeedButton96Click(Sender: TObject);
    procedure SpeedButton97Click(Sender: TObject);
    procedure SpeedButton98Click(Sender: TObject);
    procedure SpeedButton99Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
  private
    { private declarations }
    {$IFDEF LINUX}
    function AtributoSorte(inicial: integer): shortstring;
    {$ENDIF}
    function AvaNivel(nivel: string): string;
    function DimNivel(nivel: string): string;
    procedure PontosDiminuir(estagio: string);
    procedure PontosAumentar;
    procedure EResistenciaFisica;
    procedure EResistenciaMagia;
    procedure EKarma;
    procedure EDefesa;
    procedure EEnergiaFisica;
    procedure EEnergiaHeroica;
    procedure EHabilidadesEspecializadas;
    function AvaNivelHabilidade(nivel: string): string;
    function TotalHabilidade(nivel, ajuste: string): string;
    procedure CustoHabilidade1;
    procedure CustoHabilidade2;
    procedure CustoHabilidade3;
    function TotalArma(arma: integer): string;
    function ImgToB64: string;
    function Magias(nivel, custo: string): string;
    procedure AbrirFichaXML(Local: string);
    procedure NovoPersonagem;
  public
    { public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  EstadoSalvar: boolean;
  LocalFicha: string;
  DefesaLeve, DefesaMedia, DefesaPesada: TStringList;
  Dano100, Dano75, Dano50, Dano25: TStringList;

{$IFDEF MSWINDOWS}
function AtributoSorte(inicial: integer): shortstring; external 'medsort';
{$ENDIF}

implementation

uses
  u_sobre, u_dados, u_subirNivel, LCLType, base64;

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.actSalvarExecute(Sender: TObject);
var
  xmlFicha: TXMLDocument;
  noRaiz, noPai, noFilho: TDOMNode;
  i: integer;
begin
  if (edtNome.Text = '') or (cbxDeus.ItemIndex = -1) then
  begin
    pgcFicha.ActivePageIndex := 0;

    MessageDlg('Erro ao salvar', 'Preencha os campos obrigatórios:' +
      LineEnding + '  Nome' + LineEnding + '  Deus', mtError, [mbOK], 0);

    EstadoSalvar := True;
    edtNome.SetFocus;
    Exit;
  end;

  //Preeche com "null" todas o TEdit e TMemo vazios
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TEdit then
      if TEdit(Components[i]).Text = '' then
        Tedit(Components[i]).Text := 'null';

  if memHistoria.Lines.Text = '' then
    memHistoria.Lines.Text := 'null';

  if memObjetos.Lines.Text = '' then
    memObjetos.Lines.Text := 'null';

  //Criar o Objeto
  xmlFicha := TXMLDocument.Create;

  //Ficha
  noRaiz := xmlFicha.CreateElement('Ficha');
  xmlFicha.AppendChild(noRaiz);

  //Ficha -> Caracteristicas = [0]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('Caracteristicas');
  noRaiz.Appendchild(noPai);


  //Ficha -> Caracteristicas -> Nome
  noPai := xmlFicha.CreateElement('Nome');
  noFilho := xmlFicha.CreateTextNode(edtNome.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Estagio
  noPai := xmlFicha.CreateElement('Estagio');
  noFilho := xmlFicha.CreateTextNode(edtEstagio.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Experiencia
  noPai := xmlFicha.CreateElement('Experiencia');
  noFilho := xmlFicha.CreateTextNode(edtExperiencia.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Raca
  noPai := xmlFicha.CreateElement('Raca');
  noFilho := xmlFicha.CreateTextNode(IntToStr(cbxRaca.ItemIndex));
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Profissao
  noPai := xmlFicha.CreateElement('Profissao');
  noFilho := xmlFicha.CreateTextNode(IntToStr(cbxProfissao.ItemIndex));
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Especializacao
  noPai := xmlFicha.CreateElement('Especializacao');
  noFilho := xmlFicha.CreateTextNode(IntToStr(cbxEspecializacao.ItemIndex));
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Altura
  noPai := xmlFicha.CreateElement('Altura');
  noFilho := xmlFicha.CreateTextNode(edtAltura.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Peso
  noPai := xmlFicha.CreateElement('Peso');
  noFilho := xmlFicha.CreateTextNode(edtPeso.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Idade
  noPai := xmlFicha.CreateElement('Idade');
  noFilho := xmlFicha.CreateTextNode(edtIdade.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Olhos
  noPai := xmlFicha.CreateElement('Olhos');
  noFilho := xmlFicha.CreateTextNode(edtOlhos.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Cabelos
  noPai := xmlFicha.CreateElement('Cabelos');
  noFilho := xmlFicha.CreateTextNode(edtOlhos.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Pele
  noPai := xmlFicha.CreateElement('Pele');
  noFilho := xmlFicha.CreateTextNode(edtPele.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Deus
  noPai := xmlFicha.CreateElement('Deus');
  noFilho := xmlFicha.CreateTextNode(IntToStr(cbxDeus.ItemIndex));
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> ClasseSocial
  noPai := xmlFicha.CreateElement('ClasseSocial');
  noFilho := xmlFicha.CreateTextNode(edtClasseSocial.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> TerraNatal
  noPai := xmlFicha.CreateElement('TerraNatal');
  noFilho := xmlFicha.CreateTextNode(edtTerraNatal.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Caracteristicas -> Historia
  noPai := xmlFicha.CreateElement('Historia');
  noFilho := xmlFicha.CreateTextNode(memHistoria.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[0].AppendChild(noPai);


  //Ficha -> Ficha -> Atributos = [1]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('Atributos');
  noRaiz.Appendchild(noPai);

  //Ficha -> Atributos -> Intelecto
  noPai := xmlFicha.CreateElement('Intelecto');
  noFilho := xmlFicha.CreateTextNode(edtIntelectoFinal.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Atributos -> Aura
  noPai := xmlFicha.CreateElement('Aura');
  noFilho := xmlFicha.CreateTextNode(edtAuraFinal.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Atributos -> Carisma
  noPai := xmlFicha.CreateElement('Carisma');
  noFilho := xmlFicha.CreateTextNode(edtCarismaFinal.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Atributos -> Força
  noPai := xmlFicha.CreateElement('Forca');
  noFilho := xmlFicha.CreateTextNode(edtForcaFinal.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Atributos -> Fisico
  noPai := xmlFicha.CreateElement('Fisico');
  noFilho := xmlFicha.CreateTextNode(edtFisicoFinal.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Atributos -> Agilidade
  noPai := xmlFicha.CreateElement('Agilidade');
  noFilho := xmlFicha.CreateTextNode(edtAgilidadeFinal.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Atributos -> Percepcao
  noPai := xmlFicha.CreateElement('Percepcao');
  noFilho := xmlFicha.CreateTextNode(edtPercepcaoFinal.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[1].AppendChild(noPai);


  //Ficha -> Habilidades = [2]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('Habilidades');
  noRaiz.Appendchild(noPai);

  //Ficha -> Habilidades -> Profissional = [0]
  noPai := xmlFicha.CreateElement('Profissional');
  noRaiz.ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Profissional -> Carpintaria
  noPai := xmlFicha.CreateElement('Carpintaria');
  noFilho := xmlFicha.CreateTextNode(edtNivelCarpintaria.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Habilidades -> Profissional -> Engenharia
  noPai := xmlFicha.CreateElement('Engenharia');
  noFilho := xmlFicha.CreateTextNode(edtNivelEngenharia.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Habilidades -> Profissional -> Medicina
  noPai := xmlFicha.CreateElement('Medicina');
  noFilho := xmlFicha.CreateTextNode(edtNivelMedicina.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Habilidades -> Profissional -> Nautica
  noPai := xmlFicha.CreateElement('Nautica');
  noFilho := xmlFicha.CreateTextNode(edtNivelNautica.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Habilidades -> Profissional -> TrabalhoMetal
  noPai := xmlFicha.CreateElement('TrabalhoMetal');
  noFilho := xmlFicha.CreateTextNode(edtNivelTrabalhoMetal.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Habilidades -> Profissional -> TrabalhosMauais
  noPai := xmlFicha.CreateElement('TrabalhosManuais');
  noFilho := xmlFicha.CreateTextNode(edtNivelTrabalhosManuais.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Habilidades -> Manobra = [1]
  noPai := xmlFicha.CreateElement('Manobra');
  noRaiz.ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Manobra -> Acrobacias
  noPai := xmlFicha.CreateElement('Acrobacias');
  noFilho := xmlFicha.CreateTextNode(edtNivelAcrobacias.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Habilidades -> Manobra -> Corrida
  noPai := xmlFicha.CreateElement('Corrida');
  noFilho := xmlFicha.CreateTextNode(edtNivelCorrida.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Habilidades -> Manobra -> EscalarSuperficies
  noPai := xmlFicha.CreateElement('EscalarSuperficies');
  noFilho := xmlFicha.CreateTextNode(edtNivelEscalarSuperficies.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Habilidades -> Manobra -> Malabarismo
  noPai := xmlFicha.CreateElement('Malabarismo');
  noFilho := xmlFicha.CreateTextNode(edtNivelMalabarismo.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Habilidades -> Manobra -> MontarAnimais
  noPai := xmlFicha.CreateElement('MontarAnimais');
  noFilho := xmlFicha.CreateTextNode(edtNivelMontarAnimais.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Habilidades -> Manobra -> Natacao
  noPai := xmlFicha.CreateElement('Natacao');
  noFilho := xmlFicha.CreateTextNode(edtNivelNatacao.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Habilidades -> Conhecimento
  noPai := xmlFicha.CreateElement('Conhecimento');
  noRaiz.ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Conhecimento -> Escrita
  noPai := xmlFicha.CreateElement('Escrita');
  noFilho := xmlFicha.CreateTextNode(edtNivelEscrita.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Conhecimento -> Herbalismo
  noPai := xmlFicha.CreateElement('Herbalismo');
  noFilho := xmlFicha.CreateTextNode(edtNivelHerbalismo.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Conhecimento -> Lingua
  noPai := xmlFicha.CreateElement('Lingua');
  noFilho := xmlFicha.CreateTextNode(edtNivelLingua.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Conhecimento -> Misticismo
  noPai := xmlFicha.CreateElement('Misticismo');
  noFilho := xmlFicha.CreateTextNode(edtNivelMisticismo.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Conhecimento -> Religiao
  noPai := xmlFicha.CreateElement('Religiao');
  noFilho := xmlFicha.CreateTextNode(edtNivelReligiao.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Conhecimento -> Veneficio
  noPai := xmlFicha.CreateElement('Veneficio');
  noFilho := xmlFicha.CreateTextNode(edtNivelVeneficio.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Subterfúgio = [3]
  noPai := xmlFicha.CreateElement('Subterfugio');
  noRaiz.ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Subterfúgio -> AcoesFurtivas
  noPai := xmlFicha.CreateElement('AcoesFurtivas');
  noFilho := xmlFicha.CreateTextNode(edtNivelAcoesFurtivas.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Habilidades -> Subterfúgio -> DestrancarFechaduras
  noPai := xmlFicha.CreateElement('DestrancarFechaduras');
  noFilho := xmlFicha.CreateTextNode(edtNivelDestrancarFechaduras.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Habilidades -> Subterfúgio -> Disfarces
  noPai := xmlFicha.CreateElement('Disfarces');
  noFilho := xmlFicha.CreateTextNode(edtNivelDisfarces.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Habilidades -> Subterfúgio -> Escapar
  noPai := xmlFicha.CreateElement('Escapar');
  noFilho := xmlFicha.CreateTextNode(edtNivelEscapar.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Habilidades -> Subterfúgio -> Falsificacao
  noPai := xmlFicha.CreateElement('Falsificacao');
  noFilho := xmlFicha.CreateTextNode(edtNivelFalsificacao.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Habilidades -> Subterfúgio -> FurtarObjetos
  noPai := xmlFicha.CreateElement('FurtarObjetos');
  noFilho := xmlFicha.CreateTextNode(edtNivelFurtarObjetos.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Habilidades -> Subterfúgio -> Jogatina
  noPai := xmlFicha.CreateElement('Jogatina');
  noFilho := xmlFicha.CreateTextNode(edtNivelJogatina.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Habilidades -> Influência = [4]
  noPai := xmlFicha.CreateElement('Influencia');
  noRaiz.ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Influência -> Arte
  noPai := xmlFicha.CreateElement('Arte');
  noFilho := xmlFicha.CreateTextNode(edtNivelArte.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Habilidades -> Influência -> Barganha
  noPai := xmlFicha.CreateElement('Barganha');
  noFilho := xmlFicha.CreateTextNode(edtNivelBarganha.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Habilidades -> Influência -> Comercio
  noPai := xmlFicha.CreateElement('Comercio');
  noFilho := xmlFicha.CreateTextNode(edtNivelComercio.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Habilidades -> Influência -> Etiqueta
  noPai := xmlFicha.CreateElement('Etiqueta');
  noFilho := xmlFicha.CreateTextNode(edtNivelEtiqueta.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Habilidades -> Influência -> Lideranca
  noPai := xmlFicha.CreateElement('Lideranca');
  noFilho := xmlFicha.CreateTextNode(edtNivelLideranca.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Habilidades -> Influência -> Persuasao
  noPai := xmlFicha.CreateElement('Persuasao');
  noFilho := xmlFicha.CreateTextNode(edtNivelPersuasao.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Habilidades -> Influência -> Seducao
  noPai := xmlFicha.CreateElement('Seducao');
  noFilho := xmlFicha.CreateTextNode(edtNivelSeducao.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Habilidades -> Geral = [5]
  noPai := xmlFicha.CreateElement('Geral');
  noRaiz.ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Habilidades -> Geral -> Escutar
  noPai := xmlFicha.CreateElement('Escutar');
  noFilho := xmlFicha.CreateTextNode(edtNivelEscutar.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[5].AppendChild(noPai);

  //Ficha -> Habilidades -> Geral -> LidarAnimais
  noPai := xmlFicha.CreateElement('LidarAnimais');
  noFilho := xmlFicha.CreateTextNode(edtNivelLidarAnimais.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[5].AppendChild(noPai);

  //Ficha -> Habilidades -> Geral -> ManusearArmadilhas
  noPai := xmlFicha.CreateElement('ManusearArmadilhas');
  noFilho := xmlFicha.CreateTextNode(edtNivelManusearArmadilhas.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[5].AppendChild(noPai);

  //Ficha -> Habilidades -> Geral -> Navegacao
  noPai := xmlFicha.CreateElement('Navegacao');
  noFilho := xmlFicha.CreateTextNode(edtNivelNavegacao.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[5].AppendChild(noPai);

  //Ficha -> Habilidades -> Geral -> Observar
  noPai := xmlFicha.CreateElement('Observar');
  noFilho := xmlFicha.CreateTextNode(edtNivelObservar.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[5].AppendChild(noPai);

  //Ficha -> Habilidades -> Geral -> SeguirTrilhas
  noPai := xmlFicha.CreateElement('SeguirTrilhas');
  noFilho := xmlFicha.CreateTextNode(edtNivelSeguirTrilhas.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[5].AppendChild(noPai);

  //Ficha -> Habilidades -> Geral -> Sobrevivencia
  noPai := xmlFicha.CreateElement('Sobrevivencia');
  noFilho := xmlFicha.CreateTextNode(edtNivelSobrevivencia.Text);
  noPai.AppendChild(noFilho);
  noRaiz.ChildNodes.Item[2].ChildNodes.Item[5].AppendChild(noPai);

  //Ficha -> Combate = [3]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('Combate');
  noRaiz.Appendchild(noPai);

  //Ficha -> Combate -> Armas = [0]
  noPai := xmlFicha.CreateElement('Armas');
  noRaiz.ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Combate -> Armas -> Arma1
  noPai := xmlFicha.CreateElement('Arma1');
  noFilho := xmlFicha.CreateTextNode(IntToStr(cbxArma1.ItemIndex));
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Combate -> Armas -> Arma2
  noPai := xmlFicha.CreateElement('Arma2');
  noFilho := xmlFicha.CreateTextNode(IntToStr(cbxArma2.ItemIndex));
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Combate -> Armas -> Arma3
  noPai := xmlFicha.CreateElement('Arma3');
  noFilho := xmlFicha.CreateTextNode(IntToStr(cbxArma3.ItemIndex));
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Combate -> Armas -> Arma4
  noPai := xmlFicha.CreateElement('Arma4');
  noFilho := xmlFicha.CreateTextNode(IntToStr(cbxArma4.ItemIndex));
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Combate -> Armas -> Arma5
  noPai := xmlFicha.CreateElement('Arma5');
  noFilho := xmlFicha.CreateTextNode(IntToStr(cbxArma5.ItemIndex));
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[0].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas = [1]
  noPai := xmlFicha.CreateElement('HabilidadesArmas');
  noRaiz.ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> CD
  noPai := xmlFicha.CreateElement('CD');
  noFilho := xmlFicha.CreateTextNode(edtCD.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> CL
  noPai := xmlFicha.CreateElement('CL');
  noFilho := xmlFicha.CreateTextNode(edtCL.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> El
  noPai := xmlFicha.CreateElement('El');
  noFilho := xmlFicha.CreateTextNode(edtEl.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> CmE
  noPai := xmlFicha.CreateElement('CmE');
  noFilho := xmlFicha.CreateTextNode(edtCmE.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> edtCmM
  noPai := xmlFicha.CreateElement('CmM');
  noFilho := xmlFicha.CreateTextNode(edtCmM.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> Em
  noPai := xmlFicha.CreateElement('Em');
  noFilho := xmlFicha.CreateTextNode(edtEm.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> PmA
  noPai := xmlFicha.CreateElement('PmA');
  noFilho := xmlFicha.CreateTextNode(edtPmA.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> PmL
  noPai := xmlFicha.CreateElement('PmL');
  noFilho := xmlFicha.CreateTextNode(edtPmL.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> CpE
  noPai := xmlFicha.CreateElement('CpE');
  noFilho := xmlFicha.CreateTextNode(edtCpE.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> CpM
  noPai := xmlFicha.CreateElement('CpM');
  noFilho := xmlFicha.CreateTextNode(edtCpM.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> Ep
  noPai := xmlFicha.CreateElement('Ep');
  noFilho := xmlFicha.CreateTextNode(edtEp.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> HabilidadesArmas -> Pp
  noPai := xmlFicha.CreateElement('Pp');
  noFilho := xmlFicha.CreateTextNode(edtPp.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[1].AppendChild(noPai);

  //Ficha -> Combate -> TecnicasCombate = [2]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('TecnicasCombate');
  noRaiz.ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Combate -> TecnicasCombate -> Ambidestria
  noPai := xmlFicha.CreateElement('Ambidestria');
  noFilho := xmlFicha.CreateTextNode(edtAmbidestria.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Combate -> TecnicasCombate -> Aparar
  noPai := xmlFicha.CreateElement('Aparar');
  noFilho := xmlFicha.CreateTextNode(edtAparar.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Combate -> TecnicasCombate -> AtaqueOportuno
  noPai := xmlFicha.CreateElement('AtaqueOportuno');
  noFilho := xmlFicha.CreateTextNode(edtAtaqueOportuno.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Combate -> TecnicasCombate -> AtaqueSurpresa
  noPai := xmlFicha.CreateElement('AtaqueSurpresa');
  noFilho := xmlFicha.CreateTextNode(edtAtaqueSurpresa.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Combate -> TecnicasCombate -> AtirarMovimento
  noPai := xmlFicha.CreateElement('AtirarMovimento');
  noFilho := xmlFicha.CreateTextNode(edtAtirarMovimento.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Combate -> TecnicasCombate -> Carga
  noPai := xmlFicha.CreateElement('Carga');
  noFilho := xmlFicha.CreateTextNode(edtCarga.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Combate -> TecnicasCombate -> CombateMontado
  noPai := xmlFicha.CreateElement('CombateMontado');
  noFilho := xmlFicha.CreateTextNode(edtCombateMontado.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Combate -> TecnicasCombate -> Esquiva
  noPai := xmlFicha.CreateElement('Esquiva');
  noFilho := xmlFicha.CreateTextNode(edtEsquiva.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Combate -> TecnicasCombate -> LutaCegas
  noPai := xmlFicha.CreateElement('LutaCegas');
  noFilho := xmlFicha.CreateTextNode(edtLutaCegas.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[2].AppendChild(noPai);


  //Ficha -> Combate -> TecnicasCombate -> ResistenciaDor
  noPai := xmlFicha.CreateElement('ResistenciaDor');
  noFilho := xmlFicha.CreateTextNode(edtResistenciaDor.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[2].AppendChild(noPai);

  //Ficha -> Combate -> TecnicasCombate -> CombateNaoLetal
  noPai := xmlFicha.CreateElement('CombateNaoLetal');
  noFilho := xmlFicha.CreateTextNode(edtCombateNaoLetal.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[2].AppendChild(noPai);


  //Ficha -> Combate -> Especilizações = [3]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('Especializacao');
  noRaiz.ChildNodes.Item[3].Appendchild(noPai);

  //Ficha -> Combate -> Especilizações -> Especializacao1
  noPai := xmlFicha.CreateElement('Especializacao1');
  TDOMElement(noPai).SetAttribute('id', IntToStr(cbxEspecializacao1.ItemIndex));
  noFilho := xmlFicha.CreateTextNode(edtNivelEspecializacao1.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Combate -> Especilizações -> Especializacao2
  noPai := xmlFicha.CreateElement('Especializacao2');
  TDOMElement(noPai).SetAttribute('id', IntToStr(cbxEspecializacao2.ItemIndex));
  noFilho := xmlFicha.CreateTextNode(edtNivelEspecializacao2.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Combate -> Especilizações -> Especializacao3
  noPai := xmlFicha.CreateElement('Especializacao3');
  TDOMElement(noPai).SetAttribute('id', IntToStr(cbxEspecializacao3.ItemIndex));
  noFilho := xmlFicha.CreateTextNode(edtNivelEspecializacao3.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Combate -> Especilizações -> Especializacao4
  noPai := xmlFicha.CreateElement('Especializacao4');
  TDOMElement(noPai).SetAttribute('id', IntToStr(cbxEspecializacao4.ItemIndex));
  noFilho := xmlFicha.CreateTextNode(edtNivelEspecializacao4.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[3].AppendChild(noPai);

  //Ficha -> Combate -> Especilizações -> Especializacao5
  noPai := xmlFicha.CreateElement('Especializacao5');
  TDOMElement(noPai).SetAttribute('id', IntToStr(cbxEspecializacao5.ItemIndex));
  noFilho := xmlFicha.CreateTextNode(edtNivelEspecializacao5.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[3].ChildNodes.Item[3].AppendChild(noPai);


  //Ficha -> Magias = [4]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('Magias');
  noRaiz.Appendchild(noPai);

  //Ficha -> Magias -> Magia1
  noPai := xmlFicha.CreateElement('Magia1');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia1.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia2
  noPai := xmlFicha.CreateElement('Magia2');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia2.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia3
  noPai := xmlFicha.CreateElement('Magia3');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia3.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia4
  noPai := xmlFicha.CreateElement('Magia4');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia4.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia5
  noPai := xmlFicha.CreateElement('Magia5');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia5.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia6
  noPai := xmlFicha.CreateElement('Magia6');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia6.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia7
  noPai := xmlFicha.CreateElement('Magia7');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia7.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia8
  noPai := xmlFicha.CreateElement('Magia8');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia8.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia9
  noPai := xmlFicha.CreateElement('Magia9');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia9.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia10
  noPai := xmlFicha.CreateElement('Magia10');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia10.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia11
  noPai := xmlFicha.CreateElement('Magia11');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia11.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia12
  noPai := xmlFicha.CreateElement('Magia12');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia12.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia13
  noPai := xmlFicha.CreateElement('Magia13');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia13.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia14
  noPai := xmlFicha.CreateElement('Magia14');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia14.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia15
  noPai := xmlFicha.CreateElement('Magia15');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia15.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);

  //Ficha -> Magias -> Magia16
  noPai := xmlFicha.CreateElement('Magia16');
  noFilho := xmlFicha.CreateTextNode(edtNivelMagia16.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[4].AppendChild(noPai);


  //Ficha -> PertencesAfins = [5]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('PertencesAfins');
  noRaiz.Appendchild(noPai);

  //Ficha -> PertencesAfins -> Equipamentos = [0]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('Equipamentos');
  noRaiz.ChildNodes.Item[5].Appendchild(noPai);

  //Ficha -> PertencesAfins -> Equipamentos -> Armadura
  noPai := xmlFicha.CreateElement('Armadura');
  TDOMElement(noPai).SetAttribute('id', IntToStr(cbxArmadura.ItemIndex));
  noFilho := xmlFicha.CreateTextNode(edtBonusArmadura.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[5].ChildNodes.Item[0].Appendchild(noPai);

  //Ficha -> PertencesAfins -> Equipamentos -> Escudo
  noPai := xmlFicha.CreateElement('Escudo');
  TDOMElement(noPai).SetAttribute('id', IntToStr(cbxEscudo.ItemIndex));
  noFilho := xmlFicha.CreateTextNode(edtBonusEscudo.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[5].ChildNodes.Item[0].Appendchild(noPai);

  //Ficha -> PertencesAfins -> Equipamentos -> Elmo
  noPai := xmlFicha.CreateElement('Elmo');
  TDOMElement(noPai).SetAttribute('id', IntToStr(cbxElmo.ItemIndex));
  noFilho := xmlFicha.CreateTextNode(edtBonusElmo.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[5].ChildNodes.Item[0].Appendchild(noPai);

  //Ficha -> PertencesAfins -> Dinheiro = [1]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('Dinheiro');
  noRaiz.ChildNodes.Item[5].Appendchild(noPai);

  //Ficha -> PertencesAfins -> Dinheiro -> MoedasCobre
  noPai := xmlFicha.CreateElement('MoedasCobre');
  noFilho := xmlFicha.CreateTextNode(edtMoedasCobre.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[5].ChildNodes.Item[1].Appendchild(noPai);

  //Ficha -> PertencesAfins -> Dinheiro -> MoedasPrata
  noPai := xmlFicha.CreateElement('MoedasPrata');
  noFilho := xmlFicha.CreateTextNode(edtMoedasPrata.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[5].ChildNodes.Item[1].Appendchild(noPai);

  //Ficha -> PertencesAfins -> Dinheiro -> MoedasOuro
  noPai := xmlFicha.CreateElement('MoedasOuro');
  noFilho := xmlFicha.CreateTextNode(edtMoedasOuro.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[5].ChildNodes.Item[1].Appendchild(noPai);

  //Ficha -> PertencesAfins -> Objetos
  noPai := xmlFicha.CreateElement('Objetos');
  noFilho := xmlFicha.CreateTextNode(memObjetos.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[5].Appendchild(noPai);

  //Ficha -> Imagem = [6]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('Imagem');
  noRaiz.Appendchild(noPai);

  //Ficha -> Imagem -> Foto
  noPai := xmlFicha.CreateElement('Foto');
  noFilho := xmlFicha.CreateTextNode(ImgToB64);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[6].Appendchild(noPai);

  //Ficha -> Controle = [7]
  noRaiz := xmlFicha.DocumentElement;
  noPai := xmlFicha.CreateElement('Controle');
  noRaiz.Appendchild(noPai);

  //Ficha -> Controle -> Especiliazição
  noPai := xmlFicha.CreateElement('Especializacao');
  noFilho := xmlFicha.CreateTextNode(BoolToStr(cbxEspecializacao.Enabled));
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[7].Appendchild(noPai);

  //Ficha -> Controle -> PontosAtributos
  noPai := xmlFicha.CreateElement('PontosAtributos');
  noFilho := xmlFicha.CreateTextNode(edtPontos.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[7].Appendchild(noPai);

  //Ficha -> Controle -> PontosHabilidades
  noPai := xmlFicha.CreateElement('PontosHabilidades');
  noFilho := xmlFicha.CreateTextNode(edtPontosRestantes.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[7].Appendchild(noPai);

  //Ficha -> Controle -> PontosGrupoArmas
  noPai := xmlFicha.CreateElement('PontosGrupoArmas');
  noFilho := xmlFicha.CreateTextNode(edtPontosRestantesGrupoArmas.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[7].Appendchild(noPai);

  //Ficha -> Controle -> PontosTecnicasCombate
  noPai := xmlFicha.CreateElement('PontosTecnicasCombate');
  noFilho := xmlFicha.CreateTextNode(edtPontosRestantesTecnicasCombate.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[7].Appendchild(noPai);

  //Ficha -> Controle -> PontosMagia
  noPai := xmlFicha.CreateElement('PontosMagia');
  noFilho := xmlFicha.CreateTextNode(edtPontosRestantesMagia.Text);
  noPai.Appendchild(noFilho);
  noRaiz.ChildNodes.Item[7].Appendchild(noPai);

  {$IFDEF MSWINDOWS}
  writeXMLFile(xmlFicha, ExtractFileDir(Application.ExeName) +
    '\data\fichas\' + edtNome.Text + '.tg2');

  if FileExistsUTF8(ExtractFileDir(Application.ExeName) + '\data\fichas\' +
    edtNome.Text + '.tg2') then
    MessageDlg('Salvar', 'Personagem salvo com sucesso!', mtInformation, [mbOK], 0)
  else
    MessageDlg('Erro', 'Houve um erro ao salvar o personagem!', mtError, [mbOK], 0);

  LocalFicha := ExtractFileDir(Application.ExeName) + '\data\fichas\' +
    edtNome.Text + '.tg2';
  {$ELSE}
  writeXMLFile(xmlFicha, ExtractFileDir(Application.ExeName) +
    '/data/fichas/' + edtNome.Text + '.tg2');

  if FileExistsUTF8(ExtractFileDir(Application.ExeName) + '/data/fichas/' +
    edtNome.Text + '.tg2') then
    MessageDlg('Salvar', 'Personagem salvo com sucesso!', mtInformation, [mbOK], 0)
  else
    MessageDlg('Erro', 'Houve um erro ao salvar o personagem!', mtError, [mbOK], 0);

  LocalFicha := ExtractFileDir(Application.ExeName) + 'data/fichas/' +
    edtNome.Text + '.tg2';
  {$ENDIF}

  Filelistbox1.UpdateFileList;
  EstadoSalvar := False;

  edtNome.Enabled := False;
  cbxProfissao.Enabled := False;
  cbxRaca.Enabled := False;
  xmlFicha.Free;
  noRaiz.Free;
  noPai.Free;
  noFilho.Free;

  for i := 0 to ComponentCount - 1 do
    if Components[i] is TEdit then
      if TEdit(Components[i]).Text = 'null' then
        Tedit(Components[i]).Text := '';

  if memHistoria.Lines.Text = 'null' then
    memHistoria.Lines.Text := '';

  if memObjetos.Lines.Text = 'null' then
    memObjetos.Lines.Text := '';
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
begin
  frmAjuda := TfrmAjuda.Create(Self);
  frmAjuda.ShowModal;
end;

procedure TfrmPrincipal.btnAgiAvaClick(Sender: TObject);
begin
  edtAgilidadeFinal.Text := AvaNivel(edtAgilidadeFinal.Text);
  PontosDiminuir(edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.btnAgiDimClick(Sender: TObject);
begin
  edtAgilidadeFinal.Text := DimNivel(edtAgilidadeFinal.Text);
  PontosAumentar;
end;

procedure TfrmPrincipal.btnAurAvaClick(Sender: TObject);
begin
  edtAuraFinal.Text := AvaNivel(edtAuraFinal.Text);
  PontosDiminuir(edtAuraFinal.Text);
end;

procedure TfrmPrincipal.btnAurDimClick(Sender: TObject);
begin
  edtAuraFinal.Text := DimNivel(edtAuraFinal.Text);
  PontosAumentar;
end;

procedure TfrmPrincipal.btnAvaMagia10Click(Sender: TObject);
begin
  edtNivelMagia10.Text := Magias(edtNivelMagia10.Text, edtCustoMagia10.Text);
end;

procedure TfrmPrincipal.btnAvaMagia11Click(Sender: TObject);
begin
  edtNivelMagia11.Text := Magias(edtNivelMagia11.Text, edtCustoMagia11.Text);
end;

procedure TfrmPrincipal.btnAvaMagia12Click(Sender: TObject);
begin
  edtNivelMagia12.Text := Magias(edtNivelMagia12.Text, edtCustoMagia12.Text);
end;

procedure TfrmPrincipal.btnAvaMagia13Click(Sender: TObject);
begin
  edtNivelMagia13.Text := Magias(edtNivelMagia13.Text, edtCustoMagia13.Text);
end;

procedure TfrmPrincipal.btnAvaMagia14Click(Sender: TObject);
begin
  edtNivelMagia14.Text := Magias(edtNivelMagia14.Text, edtCustoMagia14.Text);
end;

procedure TfrmPrincipal.btnAvaMagia15Click(Sender: TObject);
begin
  edtNivelMagia15.Text := Magias(edtNivelMagia15.Text, edtCustoMagia15.Text);
end;

procedure TfrmPrincipal.btnAvaMagia16Click(Sender: TObject);
begin
  edtNivelMagia16.Text := Magias(edtNivelMagia16.Text, edtCustoMagia16.Text);
end;

procedure TfrmPrincipal.btnAvaMagia1Click(Sender: TObject);
begin
  edtNivelMagia1.Text := Magias(edtNivelMagia1.Text, edtCustoMagia1.Text);
end;

procedure TfrmPrincipal.btnAvaMagia2Click(Sender: TObject);
begin
  edtNivelMagia2.Text := Magias(edtNivelMagia2.Text, edtCustoMagia2.Text);
end;

procedure TfrmPrincipal.btnAvaMagia3Click(Sender: TObject);
begin
  edtNivelMagia3.Text := Magias(edtNivelMagia3.Text, edtCustoMagia3.Text);
end;

procedure TfrmPrincipal.btnAvaMagia4Click(Sender: TObject);
begin
  edtNivelMagia4.Text := Magias(edtNivelMagia4.Text, edtCustoMagia4.Text);
end;

procedure TfrmPrincipal.btnAvaMagia5Click(Sender: TObject);
begin
  edtNivelMagia5.Text := Magias(edtNivelMagia5.Text, edtCustoMagia5.Text);
end;

procedure TfrmPrincipal.btnAvaMagia6Click(Sender: TObject);
begin
  edtNivelMagia6.Text := Magias(edtNivelMagia6.Text, edtCustoMagia6.Text);
end;

procedure TfrmPrincipal.btnAvaMagia7Click(Sender: TObject);
begin
  edtNivelMagia7.Text := Magias(edtNivelMagia7.Text, edtCustoMagia7.Text);
end;

procedure TfrmPrincipal.btnAvaMagia8Click(Sender: TObject);
begin
  edtNivelMagia8.Text := Magias(edtNivelMagia8.Text, edtCustoMagia8.Text);
end;

procedure TfrmPrincipal.btnAvaMagia9Click(Sender: TObject);
begin
  edtNivelMagia9.Text := Magias(edtNivelMagia9.Text, edtCustoMagia9.Text);
end;

procedure TfrmPrincipal.btnCarAvaClick(Sender: TObject);
begin
  edtCarismaFinal.Text := AvaNivel(edtCarismaFinal.Text);
  PontosDiminuir(edtCarismaFinal.Text);
end;

procedure TfrmPrincipal.btnCarDimClick(Sender: TObject);
begin
  edtCarismaFinal.Text := DimNivel(edtCarismaFinal.Text);
  PontosAumentar;
end;

procedure TfrmPrincipal.btnFisAvaClick(Sender: TObject);
begin
  edtFisicoFinal.Text := AvaNivel(edtFisicoFinal.Text);
  PontosDiminuir(edtFisicoFinal.Text);
end;

procedure TfrmPrincipal.btnFisDimClick(Sender: TObject);
begin
  edtFisicoFinal.Text := DimNivel(edtFisicoFinal.Text);
  PontosAumentar;
end;

procedure TfrmPrincipal.btnForAvaClick(Sender: TObject);
begin
  edtForcaFinal.Text := AvaNivel(edtForcaFinal.Text);
  PontosDiminuir(edtForcaFinal.Text);
end;

procedure TfrmPrincipal.btnForDimClick(Sender: TObject);
begin
  edtForcaFinal.Text := DimNivel(edtForcaFinal.Text);
  PontosAumentar;
end;

procedure TfrmPrincipal.btnIntAvaClick(Sender: TObject);
begin
  edtIntelectoFinal.Text := AvaNivel(edtIntelectoFinal.Text);
  PontosDiminuir(edtIntelectoFinal.Text);
end;

procedure TfrmPrincipal.btnIntDimClick(Sender: TObject);
begin
  edtIntelectoFinal.Text := DimNivel(edtIntelectoFinal.Text);
  PontosAumentar;
end;

procedure TfrmPrincipal.btnLimparArma2Click(Sender: TObject);
begin
  if MessageDlg('Confirmação', 'Deseja mesmo excluir a arma?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  cbxAlcanceArma2.ItemIndex := -1;
  cbxGrupoArma2.ItemIndex := -1;
  cbxArma2.ItemIndex := -1;

  edtLArma2.Clear;
  edtMArma2.Clear;
  edtPArma2.Clear;

  edtTotalArma2.Clear;

  edt100Arma2.Clear;
  edt75Arma2.Clear;
  edt50Arma2.Clear;
  edt25Arma2.Clear;

  btnLimparArma2.Enabled := False;
end;

procedure TfrmPrincipal.btnLimparArma3Click(Sender: TObject);
begin
  if MessageDlg('Confirmação', 'Deseja mesmo excluir a arma?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  cbxAlcanceArma3.ItemIndex := -1;
  cbxGrupoArma3.ItemIndex := -1;
  cbxArma3.ItemIndex := -1;

  edtLArma3.Clear;
  edtMArma3.Clear;
  edtPArma3.Clear;

  edtTotalArma3.Clear;

  edt100Arma3.Clear;
  edt75Arma3.Clear;
  edt50Arma3.Clear;
  edt25Arma3.Clear;

  btnLimparArma3.Enabled := False;
end;

procedure TfrmPrincipal.btnLimparArma4Click(Sender: TObject);
begin
  if MessageDlg('Confirmação', 'Deseja mesmo excluir a arma?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  cbxAlcanceArma4.ItemIndex := -1;
  cbxGrupoArma4.ItemIndex := -1;
  cbxArma4.ItemIndex := -1;

  edtLArma4.Clear;
  edtMArma4.Clear;
  edtPArma4.Clear;

  edtTotalArma4.Clear;

  edt100Arma4.Clear;
  edt75Arma4.Clear;
  edt50Arma4.Clear;
  edt25Arma4.Clear;

  btnLimparArma4.Enabled := False;
end;

procedure TfrmPrincipal.btnLimparArma5Click(Sender: TObject);
begin
  if MessageDlg('Confirmação', 'Deseja mesmo excluir a arma?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  cbxAlcanceArma5.ItemIndex := -1;
  cbxGrupoArma5.ItemIndex := -1;
  cbxArma5.ItemIndex := -1;

  edtLArma5.Clear;
  edtMArma5.Clear;
  edtPArma5.Clear;

  edtTotalArma5.Clear;

  edt100Arma5.Clear;
  edt75Arma5.Clear;
  edt50Arma5.Clear;
  edt25Arma5.Clear;

  btnLimparArma5.Enabled := False;
end;

procedure TfrmPrincipal.btnLimparArmaduraClick(Sender: TObject);
begin
  cbxArmadura.ItemIndex := -1;
  edtBonusArmadura.Text := '0';
  cbxArmaduraChange(cbxArmadura);
end;

procedure TfrmPrincipal.btnLimparElmoClick(Sender: TObject);
begin
  cbxElmo.ItemIndex := -1;
  edtBonusElmo.Text := '0';
  cbxElmoChange(cbxElmo);
end;

procedure TfrmPrincipal.btnLimparEscudoClick(Sender: TObject);
begin
  cbxEscudo.ItemIndex := -1;
  edtBonusEscudo.Text := '0';
  cbxEscudoChange(cbxEscudo);
end;

procedure TfrmPrincipal.btnPerAvaClick(Sender: TObject);
begin
  edtPercepcaoFinal.Text := AvaNivel(edtPercepcaoFinal.Text);
  PontosDiminuir(edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.btnPerDimClick(Sender: TObject);
begin
  edtPercepcaoFinal.Text := DimNivel(edtPercepcaoFinal.Text);
  PontosAumentar;
end;

procedure TfrmPrincipal.btnPergMagia10Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia10.Text;
end;

procedure TfrmPrincipal.btnPergMagia11Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia11.Text;
end;

procedure TfrmPrincipal.btnPergMagia12Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia12.Text;
end;

procedure TfrmPrincipal.btnPergMagia13Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia13.Text;
end;

procedure TfrmPrincipal.btnPergMagia14Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia14.Text;
end;

procedure TfrmPrincipal.btnPergMagia15Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia15.Text;
end;

procedure TfrmPrincipal.btnPergMagia16Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia16.Text;
end;

procedure TfrmPrincipal.btnPergMagia1Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia1.Text;
end;

procedure TfrmPrincipal.btnPergMagia2Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia2.Text;
end;

procedure TfrmPrincipal.btnPergMagia3Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia3.Text;
end;

procedure TfrmPrincipal.btnPergMagia4Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia4.Text;
end;

procedure TfrmPrincipal.btnPergMagia5Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia5.Text;
end;

procedure TfrmPrincipal.btnPergMagia6Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia6.Text;
end;

procedure TfrmPrincipal.btnPergMagia7Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia7.Text;
end;

procedure TfrmPrincipal.btnPergMagia8Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia8.Text;
end;

procedure TfrmPrincipal.btnPergMagia9Click(Sender: TObject);
begin
  edtNomeMagia.Text := edtMagia9.Text;
end;

procedure TfrmPrincipal.btnSortearClick(Sender: TObject);
var
  ResFisica: shortint;
begin
  edtIntelectoFinal.Text := AtributoSorte(StrToInt(edtIntelecto.Text));
  edtAuraFinal.Text := AtributoSorte(StrToInt(edtAura.Text));
  edtCarismaFinal.Text := AtributoSorte(StrToInt(edtCarisma.Text));
  edtForcaFinal.Text := AtributoSorte(StrToInt(edtForca.Text));
  edtFisicoFinal.Text := AtributoSorte(StrToInt(edtFisico.Text));
  edtAgilidadeFinal.Text := AtributoSorte(StrToInt(edtAgilidade.Text));
  edtPercepcaoFinal.Text := AtributoSorte(StrToInt(edtPercepcao.Text));

  ResFisica := StrToInt(edtEstagio.Text) + StrToInt(edtFisicoFinal.Text);

  edtResFisica.Text := IntToStr(ResFisica);
end;

procedure TfrmPrincipal.btnLimparClick(Sender: TObject);
begin
  if MessageDlg('Excluir', 'Tem certeza que deseja excluir a foto?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  {$IFDEF MSWINDOWS}
  image1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\imagens\sem_foto.png');
  {$ELSE}
  image1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/imagens/sem_foto.png');
  {$ENDIF}
  btnLimpar.Enabled := False;
end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
  try
    if OpenPictureDialog1.Execute then
    begin
      Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      panel1.Caption := '';
      btnLimpar.Enabled := True;
    end;
  except
    MessageDlg('Erro', 'Arquivo de imagem inválido!', mtError, [mbOK], 0);
  end;
end;

procedure TfrmPrincipal.cbxArma1Change(Sender: TObject);
begin
  if cbxArma1.ItemIndex = -1 then
    Exit;

  cbxGrupoArma1.ItemIndex := cbxArma1.ItemIndex;
  cbxAlcanceArma1.ItemIndex := cbxArma1.ItemIndex;

  edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);


  edtLArma1.Text := IntToStr(StrToInt(edtTotalArma1.Text) +
    StrToInt(defesaLeve.Strings[cbxArma1.ItemIndex]));
  edtMArma1.Text := IntToStr(StrToInt(edtTotalArma1.Text) +
    StrToInt(defesaMedia.Strings[cbxArma1.ItemIndex]));
  edtPArma1.Text := IntToStr(StrToInt(edtTotalArma1.Text) +
    StrToInt(defesaPesada.Strings[cbxArma1.ItemIndex]));

  edt100Arma1.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano100.Strings[cbxArma1.ItemIndex]));
  edt75Arma1.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano75.Strings[cbxArma1.ItemIndex]));
  edt50Arma1.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano50.Strings[cbxArma1.ItemIndex]));
  edt25Arma1.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano25.Strings[cbxArma1.ItemIndex]));

  btnLimparArma1.Enabled := True;
end;

procedure TfrmPrincipal.cbxArma2Change(Sender: TObject);
begin
  if cbxArma2.ItemIndex = -1 then
    Exit;

  cbxGrupoArma2.ItemIndex := cbxArma2.ItemIndex;
  cbxAlcanceArma2.ItemIndex := cbxArma2.ItemIndex;

  edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);

  edtLArma2.Text := IntToStr(StrToInt(edtTotalArma2.Text) +
    StrToInt(defesaLeve.Strings[cbxArma2.ItemIndex]));
  edtMArma2.Text := IntToStr(StrToInt(edtTotalArma2.Text) +
    StrToInt(defesaMedia.Strings[cbxArma2.ItemIndex]));
  edtPArma2.Text := IntToStr(StrToInt(edtTotalArma2.Text) +
    StrToInt(defesaPesada.Strings[cbxArma2.ItemIndex]));

  edt100Arma2.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano100.Strings[cbxArma2.ItemIndex]));
  edt75Arma2.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano75.Strings[cbxArma2.ItemIndex]));
  edt50Arma2.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano50.Strings[cbxArma2.ItemIndex]));
  edt25Arma2.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano25.Strings[cbxArma2.ItemIndex]));

  btnLimparArma2.Enabled := True;
end;

procedure TfrmPrincipal.cbxArma3Change(Sender: TObject);
begin
  if cbxArma3.ItemIndex = -1 then
    Exit;

  cbxGrupoArma3.ItemIndex := cbxArma3.ItemIndex;
  cbxAlcanceArma3.ItemIndex := cbxArma3.ItemIndex;

  edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);

  edtLArma3.Text := IntToStr(StrToInt(edtTotalArma3.Text) +
    StrToInt(defesaLeve.Strings[cbxArma3.ItemIndex]));
  edtMArma3.Text := IntToStr(StrToInt(edtTotalArma3.Text) +
    StrToInt(defesaMedia.Strings[cbxArma3.ItemIndex]));
  edtPArma3.Text := IntToStr(StrToInt(edtTotalArma3.Text) +
    StrToInt(defesaPesada.Strings[cbxArma3.ItemIndex]));

  edt100Arma3.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano100.Strings[cbxArma3.ItemIndex]));
  edt75Arma3.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano75.Strings[cbxArma3.ItemIndex]));
  edt50Arma3.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano50.Strings[cbxArma3.ItemIndex]));
  edt25Arma3.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano25.Strings[cbxArma3.ItemIndex]));

  btnLimparArma3.Enabled := True;
end;

procedure TfrmPrincipal.cbxArma4Change(Sender: TObject);
begin
  if cbxArma4.ItemIndex = -1 then
    Exit;

  cbxGrupoArma4.ItemIndex := cbxArma4.ItemIndex;
  cbxAlcanceArma4.ItemIndex := cbxArma4.ItemIndex;

  edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);

  edtLArma4.Text := IntToStr(StrToInt(edtTotalArma4.Text) +
    StrToInt(defesaLeve.Strings[cbxArma4.ItemIndex]));
  edtMArma4.Text := IntToStr(StrToInt(edtTotalArma4.Text) +
    StrToInt(defesaMedia.Strings[cbxArma4.ItemIndex]));
  edtPArma4.Text := IntToStr(StrToInt(edtTotalArma4.Text) +
    StrToInt(defesaPesada.Strings[cbxArma4.ItemIndex]));

  edt100Arma4.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano100.Strings[cbxArma4.ItemIndex]));
  edt75Arma4.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano75.Strings[cbxArma4.ItemIndex]));
  edt50Arma4.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano50.Strings[cbxArma4.ItemIndex]));
  edt25Arma4.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano25.Strings[cbxArma4.ItemIndex]));

  btnLimparArma4.Enabled := True;
end;

procedure TfrmPrincipal.cbxArma5Change(Sender: TObject);
begin
  if cbxArma5.ItemIndex = -1 then
    Exit;

  cbxGrupoArma5.ItemIndex := cbxArma5.ItemIndex;
  cbxAlcanceArma5.ItemIndex := cbxArma5.ItemIndex;

  edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);

  edtLArma5.Text := IntToStr(StrToInt(edtTotalArma5.Text) +
    StrToInt(defesaLeve.Strings[cbxArma5.ItemIndex]));
  edtMArma5.Text := IntToStr(StrToInt(edtTotalArma5.Text) +
    StrToInt(defesaMedia.Strings[cbxArma5.ItemIndex]));
  edtPArma5.Text := IntToStr(StrToInt(edtTotalArma5.Text) +
    StrToInt(defesaPesada.Strings[cbxArma5.ItemIndex]));

  edt100Arma5.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano100.Strings[cbxArma5.ItemIndex]));
  edt75Arma5.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano75.Strings[cbxArma5.ItemIndex]));
  edt50Arma5.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano50.Strings[cbxArma5.ItemIndex]));
  edt25Arma5.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
    StrToInt(dano25.Strings[cbxArma5.ItemIndex]));

  btnLimparArma5.Enabled := True;
end;

procedure TfrmPrincipal.cbxArmaduraChange(Sender: TObject);
begin
  EDefesa;
  EEnergiaFisica;
  edtBonusArmadura.Text := '0';
  if cbxArmadura.ItemIndex <> -1 then
    btnLimparArmadura.Enabled := True
  else
    btnLimparArmadura.Enabled := False;
end;

procedure TfrmPrincipal.cbxElmoChange(Sender: TObject);
begin
  EDefesa;
  EEnergiaFisica;

  edtBonusElmo.Text := '0';
  if cbxElmo.ItemIndex <> -1 then
    btnLimparElmo.Enabled := True
  else
    btnLimparElmo.Enabled := False;
end;

procedure TfrmPrincipal.cbxEscudoChange(Sender: TObject);
begin
  EDefesa;
  EEnergiaFisica;

  edtBonusEscudo.Text := '0';
  if cbxEscudo.ItemIndex <> -1 then
    btnLimparEscudo.Enabled := True
  else
    btnLimparEscudo.Enabled := False;
end;

procedure TfrmPrincipal.cbxEspecializacaoChange(Sender: TObject);
begin
  StatusBar1.Panels.Items[4].Text := cbxEspecializacao.Text;
end;

procedure TfrmPrincipal.cbxProfissaoChange(Sender: TObject);
var
  profissao: array[0..5] of string;
  local: string;
  xmlMagias: TXMLDocument;
  PassNode: TDOMNode;
begin
  cbxEspecializacao.Clear;

  case cbxProfissao.ItemIndex of//Carrega as especializações da profissão
    {$IFDEF MSWINDOWS}
    0: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '\data\especializacao\academias.txt');
    1: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '\data\especializacao\guildas.txt');
    2: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '\data\especializacao\ordens.txt');
    3: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '\data\especializacao\colegios.txt');
    4: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '\data\especializacao\trilhas.txt');
    5: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '\data\especializacao\confrarias.txt');
    {$ELSE}
    0: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '/data/especializacao/academias.txt');
    1: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '/data/especializacao/guildas.txt');
    2: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '/data/especializacao/ordens.txt');
    3: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '/data/especializacao/colegios.txt');
    4: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '/data/especializacao/trilhas.txt');
    5: cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
        '/data/especializacao/confrarias.txt');
    {$ENDIF}
  end;

  EEnergiaHeroica; //Determina a energia heroica
  EHabilidadesEspecializadas; //Desativa os botões das habilidades especizadas

  //Carrega no vetor os valores dos pontos para comprar habilidades
  profissao[0] := '14';
  profissao[1] := '22';
  profissao[2] := '12';
  profissao[3] := '12';
  profissao[4] := '14';
  profissao[5] := '16';

  edtPontosAquisicao.Text := profissao[cbxProfissao.ItemIndex];

  edtPontosRestantes.Text := edtPontosAquisicao.Text;

  StatusBar1.Panels.Items[3].Text := cbxProfissao.Text;

  profissao[0] := '7';
  profissao[1] := '4';
  profissao[2] := '3';
  profissao[3] := '1';
  profissao[4] := '5';
  profissao[5] := '2';

  edtPontosGrupoArmas.Text := profissao[cbxProfissao.ItemIndex];

  profissao[2] := '4';
  profissao[4] := '4';

  edtPontosTecnicasCombate.Text := profissao[cbxProfissao.ItemIndex];

  case cbxProfissao.ItemIndex of
    //Atribui o local onde esta o arquivo da magia da profisão
    {$IFDEF MSWINDOWS}
    0, 1: local := ExtractFileDir(Application.ExeName) + '\data\magias\sem_magia.xml';
    2: local := ExtractFileDir(Application.ExeName) +
        '\data\magias\magias_sacerdote_basico.xml';
    3: local := ExtractFileDir(Application.ExeName) +
        '\data\magias\magias_mago_basico.xml';
    4: local := ExtractFileDir(Application.ExeName) +
        '\data\magias\magias_rastreador_basico.xml';
    5: local := ExtractFileDir(Application.ExeName) +
        '\data\magias\magias_bardo_basico.xml';
    {$ELSE}
    0, 1: local := ExtractFileDir(Application.ExeName) + '/data/magias/sem_magia.xml';
    2: local := ExtractFileDir(Application.ExeName) +
        '/data/magias/magias_sacerdote_basico.xml';
    3: local := ExtractFileDir(Application.ExeName) +
        '/data/magias/magias_mago_basico.xml';
    4: local := ExtractFileDir(Application.ExeName) +
        '/data/magias/magias_rastreador_basico.xml';
    5: local := ExtractFileDir(Application.ExeName) +
        '/data/magias/magias_bardo_basico.xml';
    {$ENDIF}
  end;

  ReadXMLFile(xmlMagias, local);
  //Carrega os nomes das magias
  try
    PassNode := xmlMagias.DocumentElement.FindNode('magia1').FindNode('nome');
    edtMagia1.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia2').FindNode('nome');
    edtMagia2.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia3').FindNode('nome');
    edtMagia3.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia4').FindNode('nome');
    edtMagia4.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia5').FindNode('nome');
    edtMagia5.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia6').FindNode('nome');
    edtMagia6.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia7').FindNode('nome');
    edtMagia7.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia8').FindNode('nome');
    edtMagia8.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia9').FindNode('nome');
    edtMagia9.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia10').FindNode('nome');
    edtMagia10.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia11').FindNode('nome');
    edtMagia11.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia12').FindNode('nome');
    edtMagia12.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia13').FindNode('nome');
    edtMagia13.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia14').FindNode('nome');
    edtMagia14.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia15').FindNode('nome');
    edtMagia15.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia16').FindNode('nome');
    edtMagia16.Text := PassNode.FirstChild.NodeValue;

    //Carrega os custos das magias
    PassNode := xmlMagias.DocumentElement.FindNode('magia1').FindNode('custo');
    edtCustoMagia1.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia2').FindNode('custo');
    edtCustoMagia2.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia3').FindNode('custo');
    edtCustoMagia3.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia4').FindNode('custo');
    edtCustoMagia4.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia5').FindNode('custo');
    edtCustoMagia5.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia6').FindNode('custo');
    edtCustoMagia6.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia7').FindNode('custo');
    edtCustoMagia7.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia8').FindNode('custo');
    edtCustoMagia8.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia9').FindNode('custo');
    edtCustoMagia9.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia10').FindNode('custo');
    edtCustoMagia10.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia11').FindNode('custo');
    edtCustoMagia11.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia12').FindNode('custo');
    edtCustoMagia12.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia13').FindNode('custo');
    edtCustoMagia13.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia14').FindNode('custo');
    edtCustoMagia14.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia15').FindNode('custo');
    edtCustoMagia15.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlMagias.DocumentElement.FindNode('magia16').FindNode('custo');
    edtCustoMagia16.Text := PassNode.FirstChild.NodeValue;
  finally
    xmlMagias.Free;
    PassNode.Free;
  end;

  case cbxProfissao.ItemIndex of
    //Desativa a aba "Magias" se for um Guerreiro ou um Ladino
    0, 1: pgnMagias.Enabled := False;
    else
      pgnMagias.Enabled := True;
  end;

  case cbxProfissao.ItemIndex of //Determina os pontos para comprar magias
    2, 5: edtPontosAquisicaoMagia.Text :=
        IntToStr(2 * StrToInt(edtCarismaFinal.Text) + 5);
    3: edtPontosAquisicaoMagia.Text :=
        IntToStr(2 * StrToInt(edtIntelectoFinal.Text) + 5);
    4: edtPontosAquisicaoMagia.Text :=
        IntToStr(2 * StrToInt(edtPercepcaoFinal.Text) + 5);
    else
      edtPontosAquisicaoMagia.Text := '–';
  end;

  case cbxProfissao.ItemIndex of
    //Ativa e desativa o banco de dados caso a profissão não possua magias
    0, 1: dtmDados.zqrMagias.Active := False;
    else
      dtmDados.zqrMagias.Active := True;
  end;

  //Desativa a linha das magias vazias
  if edtMagia13.Text = '–' then
    btnAvaMagia13.Enabled := False
  else
    btnAvaMagia13.Enabled := True;

  if edtMagia14.Text = '–' then
    btnAvaMagia14.Enabled := False
  else
    btnAvaMagia14.Enabled := True;

  if edtMagia15.Text = '–' then
    btnAvaMagia15.Enabled := False
  else
    btnAvaMagia15.Enabled := True;

  if edtMagia16.Text = '–' then
    btnAvaMagia16.Enabled := False
  else
    btnAvaMagia16.Enabled := True;

  //Determina os objetos iniciais padrões
  case cbxProfissao.ItemIndex of
    0:
    begin
      cbxArmadura.ItemIndex := 0;
      cbxEscudo.ItemIndex := 0;
      memObjetos.Clear;
    end;
    1:
    begin
      cbxArmadura.ItemIndex := -1;
      cbxEscudo.ItemIndex := 0;
      memObjetos.Clear;
      memObjetos.Lines.Add('Manto com capuz, 20 metros de corda');
    end;
    2:
    begin
      cbxArmadura.ItemIndex := -1;
      cbxEscudo.ItemIndex := -1;
      memObjetos.Clear;
      memObjetos.Lines.Add(
        'Símbolo sagrado de ferro, Água abençoada, Manto com capuz, Cinto, Pederneiras, Mochila de couro');
    end;
    3:
    begin
      cbxArmadura.ItemIndex := -1;
      cbxEscudo.ItemIndex := -1;
      memObjetos.Clear;
      memObjetos.Lines.Add(
        'Manto com capuz, Cinto, Pederneiras, Mochila de couro, Pena e tinta, Pergaminho, uma arma de dano');
    end;
    4:
    begin
      cbxArmadura.ItemIndex := -1;
      cbxEscudo.ItemIndex := -1;
      cbxArmadura.ItemIndex := 0;
      memObjetos.Clear;
      memObjetos.Lines.Add('Cinto, Pederneiras, Capa, Par de luvas, Par de botas');
    end;
    5:
    begin
      cbxArmadura.ItemIndex := -1;
      cbxEscudo.ItemIndex := -1;
      memObjetos.Clear;
      memObjetos.Lines.Add(
        'Cinto, Mochila de couro, Capa, Par de botas, Instrumento Musical');
    end;
  end;
end;

procedure TfrmPrincipal.cbxRacaChange(Sender: TObject);
var
  PassNode: TDOMNode;
  xmlAtributos: TXMLDocument;
  raca: array [0..5] of string;
  i: integer;
  n2: byte;
  velocidadeBase2: byte;
  velocidadeRaca: array[0..5] of byte;
begin
  {$IFDEF MSWINDOWS}
  ReadXMLFile(xmlAtributos, ExtractFileDir(Application.ExeName) +
    '\data\atributos\atributo_inicial.xml');
  {$ELSE}
  ReadXMLFile(xmlAtributos, ExtractFileDir(Application.ExeName) +
    '/data/atributos/atributo_inicial.xml');
  {$ENDIF}

  raca[0] := 'humano';
  raca[1] := 'meio-elfo';
  raca[2] := 'elfoFlorestal';
  raca[3] := 'elfoDourado';
  raca[4] := 'anao';
  raca[5] := 'pequenino';

  i := cbxRaca.ItemIndex;

  if i <> -1 then
  begin
    try
      PassNode := xmlAtributos.DocumentElement.FindNode(raca[i]).FindNode('intelecto');
      edtIntelecto.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlAtributos.DocumentElement.FindNode(raca[i]).FindNode('aura');
      edtAura.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlAtributos.DocumentElement.FindNode(raca[i]).FindNode('carisma');
      edtCarisma.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlAtributos.DocumentElement.FindNode(raca[i]).FindNode('forca');
      edtForca.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlAtributos.DocumentElement.FindNode(raca[i]).FindNode('fisico');
      edtFisico.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlAtributos.DocumentElement.FindNode(raca[i]).FindNode('agilidade');
      edtAgilidade.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlAtributos.DocumentElement.FindNode(raca[i]).FindNode('percepcao');
      edtPercepcao.Text := PassNode.FirstChild.NodeValue;
    finally
      xmlAtributos.Free;
      PassNode.Free;
    end;
  end;

  edtIntelectoFinal.Text := edtIntelecto.Text;
  edtAuraFinal.Text := edtAura.Text;
  edtCarismaFinal.Text := edtCarisma.Text;
  edtForcaFinal.Text := edtForca.Text;
  edtFisicoFinal.Text := edtFisico.Text;
  edtAgilidadeFinal.Text := edtAgilidade.Text;
  edtPercepcaoFinal.Text := edtPercepcao.Text;

  velocidadeRaca[0] := 18;
  velocidadeRaca[1] := 17;
  velocidadeRaca[2] := 16;
  velocidadeRaca[3] := 16;
  velocidadeRaca[4] := 14;
  velocidadeRaca[5] := 12;

  n2 := cbxRaca.ItemIndex;

  velocidadeBase2 := velocidadeRaca[n2] + StrToInt(edtFisicoFinal.Text);

  edtVelocidadeBase.Text := IntToStr(velocidadeBase2);

  EEnergiaFisica;

  case i of
    2, 3, 4: edtNivelEscrita.Text := '1';
    else
      edtNivelEscrita.Text := '0';
  end;

  edtTotalEscrita.Text := TotalHabilidade(edtNivelEscrita.Text,
    edtIntelectoFinal.Text);

  edtPontos.Text := '15';

  StatusBar1.Panels.Items[2].Text := cbxRaca.Text;
end;

procedure TfrmPrincipal.ckbEspecializacaoClick(Sender: TObject);
begin
  if ckbEspecializacao.Checked then
    cbxEspecializacao.Enabled := True;
  if not ckbEspecializacao.Checked then
    cbxEspecializacao.Enabled := False;
end;

procedure TfrmPrincipal.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.actExcluirExecute(Sender: TObject);
begin
  if MessageDlg('Excluir', 'Tem certeza que deseja excluir o personagem?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DeleteFileUTF8(FileListBox1.FileName);
    FileListBox1.UpdateFileList;
    if FileExistsUTF8(FileListBox1.FileName) = True then
      MessageDlg('Erro', 'Falha ao excluir!', mtError, [mbOK], 0);
  end
  else
  begin
    Exit;
  end;
end;

procedure TfrmPrincipal.actAbrirExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
    AbrirFichaXML(OpenDialog1.FileName);
end;

procedure TfrmPrincipal.actNovoExecute(Sender: TObject);
begin
  //Controle do Software
  if EstadoSalvar = False then
    if MessageDlg('Confimação', 'Deseja mesmo criar novo um personagem?' +
      LineEnding + 'Dados não salvos serão perdidos!', mtConfirmation,
      [mbYes, mbNo], 0) = mrNo then
      Exit;

  NovoPersonagem;
end;

procedure TfrmPrincipal.ckbSorteioClick(Sender: TObject);
begin
  if ckbSorteio.Checked then
  begin
    btnSortear.Enabled := True;
    edtPontos.Visible := False;
    Label13.Visible := False;
  end;

  if not ckbSorteio.Checked then
  begin
    btnSortear.Enabled := False;
    edtPontos.Visible := True;
    Label13.Visible := True;
  end;
end;

procedure TfrmPrincipal.edtAgilidadeFinalChange(Sender: TObject);
begin
  EDefesa;

  //Habilidades
  edtAjusteCarpintaria.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';
  edtAjusteTrabalhosManuais.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';
  edtAjusteAcrobacias.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';
  edtAjusteCorrida.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';
  edtAjusteEscalarSuperficies.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';
  edtAjusteMalabarismo.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';
  edtAjusteMontarAnimais.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';
  edtAjusteAcoesFurtivas.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';
  edtAjusteDestrancarFechaduras.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';
  edtAjusteEscapar.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';
  edtAjusteFurtarObjetos.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';

  edtTotalCarpintaria.Text := TotalHabilidade(edtNivelCarpintaria.Text,
    edtAgilidadeFinal.Text);
  edtTotalTrabalhosManuais.Text :=
    TotalHabilidade(edtNivelTrabalhosManuais.Text, edtAgilidadeFinal.Text);
  edtTotalAcrobacias.Text := TotalHabilidade(edtNivelAcrobacias.Text,
    edtAgilidadeFinal.Text);
  edtTotalCorrida.Text := TotalHabilidade(edtNivelCorrida.Text,
    edtAgilidadeFinal.Text);
  edtTotalEscalarSuperficies.Text :=
    TotalHabilidade(edtNivelEscalarSuperficies.Text, edtAgilidadeFinal.Text);
  edtTotalMalabarismo.Text := TotalHabilidade(edtNivelMalabarismo.Text,
    edtAgilidadeFinal.Text);
  edtTotalMontarAnimais.Text :=
    TotalHabilidade(edtNivelMontarAnimais.Text, edtAgilidadeFinal.Text);
  edtTotalAcoesFurtivas.Text :=
    TotalHabilidade(edtNivelAcoesFurtivas.Text, edtAgilidadeFinal.Text);
  edtTotalDestrancarFechaduras.Text :=
    TotalHabilidade(edtNivelDestrancarFechaduras.Text, edtAgilidadeFinal.Text);
  edtTotalEscapar.Text := TotalHabilidade(edtNivelEscapar.Text,
    edtAgilidadeFinal.Text);
  edtTotalFurtarObjetos.Text :=
    TotalHabilidade(edtNivelFurtarObjetos.Text, edtAgilidadeFinal.Text);

  //Combate
  edtAjusteAtirarMovimento.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';
  edtAjusteEsquiva.Text := 'Agi(' + edtAgilidadeFinal.Text + ')';

  edtTotalAtirarMovimento.Text :=
    TotalHabilidade(edtAtirarMovimento.Text, edtAgilidadeFinal.Text);
  edtTotalEsquiva.Text :=
    TotalHabilidade(edtEsquiva.Text, edtAgilidadeFinal.Text);
  //Combate Armas
  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.edtAlturaExit(Sender: TObject);
var
  altura: real;
begin
  altura := 0;
  try
    altura := StrToFloat(edtAltura.Text);
  except

  end;

  case cbxRaca.ItemIndex of
    -1:
    begin
      Application.MessageBox('Escolha uma Raça', 'Erro',
        8);
      edtAltura.Clear;
      cbxRaca.SetFocus;
    end;
    0: if not ((altura >= 159.3) and (altura <= 194.7)) then
      begin
        Application.MessageBox('Altura padrão definida para a raça!', 'Altura',
          8);
        edtAltura.Text := '177';
        edtAltura.SetFocus;
      end;
    1: if not ((altura >= 151.2) and (altura <= 184.8)) then
      begin
        Application.MessageBox('Altura padrão definida para a raça!', 'Altura',
          8);
        edtAltura.Text := '168';
        edtAltura.SetFocus;
      end;
    2, 3: if not ((altura >= 146.7) and (altura <= 179.3)) then
      begin
        Application.MessageBox('Altura padrão definida para a raça!', 'Altura',
          8);
        edtAltura.Text := '163';
        edtAltura.SetFocus;
      end;
    4: if not ((altura >= 125.1) and (altura <= 152.9)) then
      begin
        Application.MessageBox('Altura padrão definida para a raça!', 'Altura',
          8);
        edtAltura.Text := '139';
        edtAltura.SetFocus;
      end;
    5: if not ((altura >= 102.6) and (altura <= 125.4)) then
      begin
        Application.MessageBox('Altura padrão definida para a raça!', 'Altura',
          8);
        edtAltura.Text := '114';
        edtAltura.SetFocus;
      end;
  end;
end;

procedure TfrmPrincipal.edtAmbidestriaChange(Sender: TObject);
begin
  edtTotalAmbidestria.Text := edtAmbidestria.Text;
end;

procedure TfrmPrincipal.edtApararChange(Sender: TObject);
begin
  edtTotalAparar.Text := edtAparar.Text;
end;

procedure TfrmPrincipal.edtAtaqueOportunoChange(Sender: TObject);
begin
  edtTotalAtaqueOportuno.Text :=
    TotalHabilidade(edtAtaqueOportuno.Text, edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtAtaqueSurpresaChange(Sender: TObject);
begin
  edtTotalAtaqueSurpresa.Text :=
    TotalHabilidade(edtAtaqueSurpresa.Text, edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtAtirarMovimentoChange(Sender: TObject);
begin
  edtTotalAtirarMovimento.Text :=
    TotalHabilidade(edtAtirarMovimento.Text, edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtAuraFinalChange(Sender: TObject);
begin
  EResistenciaMagia;
  EKarma;

  case cbxProfissao.ItemIndex of
    0, 1: edtKarma.Text := '0';
  end;
end;

procedure TfrmPrincipal.edtBonusArmaduraChange(Sender: TObject);
begin
  EDefesa;
  EEnergiaFisica;
end;

procedure TfrmPrincipal.edtBonusElmoChange(Sender: TObject);
begin
  EDefesa;
  EEnergiaFisica;
end;

procedure TfrmPrincipal.edtBonusEscudoChange(Sender: TObject);
begin
  EDefesa;
  EEnergiaFisica;
end;

procedure TfrmPrincipal.edtCargaChange(Sender: TObject);
begin
  edtTotalCarga.Text := edtCarga.Text;
end;

procedure TfrmPrincipal.edtCarismaFinalChange(Sender: TObject);
begin
  edtAjusteArte.Text := 'Car(' + edtCarismaFinal.Text + ')';
  edtAjusteBarganha.Text := 'Car(' + edtCarismaFinal.Text + ')';
  edtAjusteEtiqueta.Text := 'Car(' + edtCarismaFinal.Text + ')';
  edtAjusteLideranca.Text := 'Car(' + edtCarismaFinal.Text + ')';
  edtAjustePersuasao.Text := 'Car(' + edtCarismaFinal.Text + ')';
  edtAjusteSeducao.Text := 'Car(' + edtCarismaFinal.Text + ')';

  edtTotalArte.Text := TotalHabilidade(edtNivelArte.Text, edtCarismaFinal.Text);
  edtTotalBarganha.Text := TotalHabilidade(edtNivelBarganha.Text, edtCarismaFinal.Text);
  edtTotalEtiqueta.Text := TotalHabilidade(edtNivelEtiqueta.Text, edtCarismaFinal.Text);
  edtTotalLideranca.Text := TotalHabilidade(edtNivelLideranca.Text,
    edtCarismaFinal.Text);
  edtTotalPersuasao.Text := TotalHabilidade(edtNivelPersuasao.Text,
    edtCarismaFinal.Text);
  edtTotalSeducao.Text := TotalHabilidade(edtNivelSeducao.Text, edtCarismaFinal.Text);
end;

procedure TfrmPrincipal.edtCombateMontadoChange(Sender: TObject);
begin
  edtTotalCombateMontado.Text := edtCombateMontado.Text;
end;

procedure TfrmPrincipal.edtCombateNaoLetalChange(Sender: TObject);
begin
  edtTotalCombateNaoLetal.Text :=
    TotalHabilidade(edtCombateNaoLetal.Text, edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtEsquivaChange(Sender: TObject);
begin
  edtTotalEsquiva.Text :=
    TotalHabilidade(edtEsquiva.Text, edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtEstagioChange(Sender: TObject);
begin
  if edtEstagio.Text = '5' then
  begin
    cbxEspecializacao.Enabled := True;
    ckbEspecializacao.Enabled := False;
    ckbEspecializacao.Checked := True;
  end;
  StatusBar1.Panels.Items[1].Text := edtEstagio.Text;

  EResistenciaFisica;
  EResistenciaMagia;
  EKarma;

  if EstadoSalvar = False then
    Exit;

  if odd(StrToInt(edtEstagio.Text)) then
    edtPontos.Text := IntToStr(StrToInt(edtPontos.Text) + 1);

  edtPontosRestantes.Text := IntToStr(StrToInt(edtPontosRestantes.Text) +
    StrToInt(edtPontosAquisicao.Text));

  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) +
    StrToInt(edtPontosGrupoArmas.Text));

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) +
    StrToInt(edtPontosTecnicasCombate.Text));



  frmSubirEstagio := TfrmSubirEstagio.Create(Self);
  frmSubirEstagio.ShowModal;
end;

procedure TfrmPrincipal.edtExperienciaChange(Sender: TObject);
var
  ProximoEstagio: TStringList;
  i: integer;
begin
  if edtProximoEstagio.Text <> edtExperiencia.Text then
    Exit;

  edtEstagio.Text := IntToStr(StrToInt(edtEstagio.Text) + 1);
  try
    ProximoEstagio := TStringList.Create;
    {$IFDEF MSWINDOWS}
    ProximoEstagio.LoadFromFile(ExtractFileDir(Application.ExeName) +
      '/data/estagio.txt');
    {$ELSE}
    ProximoEstagio.LoadFromFile(ExtractFileDir(Application.ExeName) +
      '\data\estagio.txt');
    {$ENDIF}

    i := StrToInt(edtEstagio.Text) - 1;
    edtProximoEstagio.Text := ProximoEstagio.Strings[i];
  finally
    ProximoEstagio.Free;
  end;

end;

procedure TfrmPrincipal.edtFisicoFinalChange(Sender: TObject);
var
  velocidadeRaca: array[0..5] of shortint;
  velocidadeBase: shortint;
  n: shortint;
begin
  velocidadeRaca[0] := 18;
  velocidadeRaca[1] := 17;
  velocidadeRaca[2] := 16;
  velocidadeRaca[3] := 16;
  velocidadeRaca[4] := 14;
  velocidadeRaca[5] := 12;

  n := cbxRaca.ItemIndex;

  velocidadeBase := velocidadeRaca[n] + StrToInt(edtFisicoFinal.Text);

  edtVelocidadeBase.Text := IntToStr(velocidadeBase);

  EResistenciaFisica;

  EEnergiaFisica;

  if StrToInt(edtEstagio.Text) = 1 then
    EEnergiaHeroica;
  //Habilidades
  edtAjusteNatacao.Text := 'Fis(' + edtFisicoFinal.Text + ')';

  edtTotalNatacao.Text := TotalHabilidade(edtNivelNatacao.Text, edtFisicoFinal.Text);

  //Combate
  edtAjusteResistenciaDor.Text := 'Fis(' + edtFisicoFinal.Text + ')';

  edtTotalResistenciaDor.Text :=
    TotalHabilidade(edtResistenciaDor.Text, edtFisicoFinal.Text);
end;

procedure TfrmPrincipal.edtForcaFinalChange(Sender: TObject);
begin
  EEnergiaFisica;

  if cbxArma1.ItemIndex <> -1 then
  begin
    edt100Arma1.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano100.Strings[cbxArma1.ItemIndex]));
    edt75Arma1.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano75.Strings[cbxArma1.ItemIndex]));
    edt50Arma1.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano50.Strings[cbxArma1.ItemIndex]));
    edt25Arma1.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano25.Strings[cbxArma1.ItemIndex]));
  end;
  if cbxArma2.ItemIndex <> -1 then
  begin
    edt100Arma2.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano100.Strings[cbxArma2.ItemIndex]));
    edt75Arma2.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano75.Strings[cbxArma2.ItemIndex]));
    edt50Arma2.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano50.Strings[cbxArma2.ItemIndex]));
    edt25Arma2.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano25.Strings[cbxArma2.ItemIndex]));
  end;
  if cbxArma3.ItemIndex <> -1 then
  begin
    edt100Arma3.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano100.Strings[cbxArma3.ItemIndex]));
    edt75Arma3.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano75.Strings[cbxArma3.ItemIndex]));
    edt50Arma3.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano50.Strings[cbxArma3.ItemIndex]));
    edt25Arma3.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano25.Strings[cbxArma3.ItemIndex]));
  end;
  if cbxArma4.ItemIndex <> -1 then
  begin
    edt100Arma4.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano100.Strings[cbxArma4.ItemIndex]));
    edt75Arma4.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano75.Strings[cbxArma4.ItemIndex]));
    edt50Arma4.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano50.Strings[cbxArma4.ItemIndex]));
    edt25Arma4.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano25.Strings[cbxArma4.ItemIndex]));
  end;
  if cbxArma5.ItemIndex <> -1 then
  begin
    edt100Arma5.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano100.Strings[cbxArma5.ItemIndex]));
    edt75Arma5.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano75.Strings[cbxArma5.ItemIndex]));
    edt50Arma5.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano50.Strings[cbxArma5.ItemIndex]));
    edt25Arma5.Text := IntToStr(StrToInt(edtForcaFinal.Text) +
      StrToInt(dano25.Strings[cbxArma5.ItemIndex]));
  end;
end;

procedure TfrmPrincipal.edtIntelectoFinalChange(Sender: TObject);
begin
  edtAjusteEngenharia.Text := 'Int(' + edtIntelectoFinal.Text + ')';
  edtAjusteMedicina.Text := 'Int(' + edtIntelectoFinal.Text + ')';
  edtAjusteEscrita.Text := 'Int(' + edtIntelectoFinal.Text + ')';
  edtAjusteHerbalismo.Text := 'Int(' + edtIntelectoFinal.Text + ')';
  edtAjusteLingua.Text := 'Int(' + edtIntelectoFinal.Text + ')';
  edtAjusteMisticismo.Text := 'Int(' + edtIntelectoFinal.Text + ')';
  edtAjusteReligiao.Text := 'Int(' + edtIntelectoFinal.Text + ')';
  edtAjusteVeneficio.Text := 'Int(' + edtIntelectoFinal.Text + ')';

  edtTotalEngenharia.Text := TotalHabilidade(edtNivelEngenharia.Text,
    edtIntelectoFinal.Text);
  edtTotalMedicina.Text := TotalHabilidade(edtNivelMedicina.Text,
    edtIntelectoFinal.Text);
  edtTotalEscrita.Text := TotalHabilidade(edtNivelEscrita.Text,
    edtIntelectoFinal.Text);
  edtTotalHerbalismo.Text := TotalHabilidade(edtNivelHerbalismo.Text,
    edtIntelectoFinal.Text);
  edtTotalLingua.Text := TotalHabilidade(edtNivelLingua.Text, edtIntelectoFinal.Text);
  edtTotalMisticismo.Text := TotalHabilidade(edtNivelMisticismo.Text,
    edtIntelectoFinal.Text);
  edtTotalReligiao.Text := TotalHabilidade(edtNivelReligiao.Text,
    edtIntelectoFinal.Text);
  edtTotalVeneficio.Text := TotalHabilidade(edtNivelVeneficio.Text,
    edtIntelectoFinal.Text);
end;

procedure TfrmPrincipal.edtLutaCegasChange(Sender: TObject);
begin
  edtTotalLutaCegas.Text := edtLutaCegas.Text;
end;

procedure TfrmPrincipal.edtMagia1Change(Sender: TObject);
begin
  if pgnMagias.Enabled = True then
    edtNomeMagia.Text := edtMagia1.Text;
end;

procedure TfrmPrincipal.edtNivelAcoesFurtivasChange(Sender: TObject);
begin
  edtTotalAcoesFurtivas.Text :=
    TotalHabilidade(edtNivelAcoesFurtivas.Text, edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtNivelAcrobaciasChange(Sender: TObject);
begin
  edtTotalAcrobacias.Text := TotalHabilidade(edtNivelAcrobacias.Text,
    edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtNivelArteChange(Sender: TObject);
begin
  edtTotalArte.Text := TotalHabilidade(edtNivelArte.Text, edtCarismaFinal.Text);
end;

procedure TfrmPrincipal.edtNivelBarganhaChange(Sender: TObject);
begin
  edtTotalBarganha.Text := TotalHabilidade(edtNivelBarganha.Text, edtCarismaFinal.Text);
end;

procedure TfrmPrincipal.edtNivelCarpintariaChange(Sender: TObject);
begin
  edtTotalCarpintaria.Text := TotalHabilidade(edtNivelCarpintaria.Text,
    edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtNivelComercioChange(Sender: TObject);
begin
  edtTotalComercio.Text := TotalHabilidade(edtNivelComercio.Text,
    edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelCorridaChange(Sender: TObject);
begin
  edtTotalCorrida.Text := TotalHabilidade(edtNivelCorrida.Text,
    edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtNivelDestrancarFechadurasChange(Sender: TObject);
begin
  edtTotalDestrancarFechaduras.Text :=
    TotalHabilidade(edtNivelDestrancarFechaduras.Text, edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtNivelDisfarcesChange(Sender: TObject);
begin
  edtTotalDisfarces.Text := TotalHabilidade(edtNivelDisfarces.Text,
    edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelEngenhariaChange(Sender: TObject);
begin
  edtTotalEngenharia.Text := TotalHabilidade(edtNivelEngenharia.Text,
    edtIntelectoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelEscalarSuperficiesChange(Sender: TObject);
begin
  edtTotalEscalarSuperficies.Text :=
    TotalHabilidade(edtNivelEscalarSuperficies.Text, edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtNivelEscaparChange(Sender: TObject);
begin
  edtTotalEscapar.Text := TotalHabilidade(edtNivelEscapar.Text,
    edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtNivelEscritaChange(Sender: TObject);
begin
  edtTotalEscrita.Text := TotalHabilidade(edtNivelEscrita.Text,
    edtIntelectoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelEscutarChange(Sender: TObject);
begin
  edtTotalEscutar.Text := TotalHabilidade(edtNivelEscutar.Text,
    edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelEtiquetaChange(Sender: TObject);
begin
  edtTotalEtiqueta.Text := TotalHabilidade(edtNivelEtiqueta.Text, edtCarismaFinal.Text);
end;

procedure TfrmPrincipal.edtNivelFalsificacaoChange(Sender: TObject);
begin
  edtTotalFalsificacao.Text :=
    TotalHabilidade(edtNivelFalsificacao.Text, edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelFurtarObjetosChange(Sender: TObject);
begin
  edtTotalFurtarObjetos.Text :=
    TotalHabilidade(edtNivelFurtarObjetos.Text, edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtNivelHerbalismoChange(Sender: TObject);
begin
  edtTotalHerbalismo.Text := TotalHabilidade(edtNivelHerbalismo.Text,
    edtIntelectoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelJogatinaChange(Sender: TObject);
begin
  edtTotalJogatina.Text := TotalHabilidade(edtNivelJogatina.Text,
    edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelLidarAnimaisChange(Sender: TObject);
begin
  edtTotalLidarAnimais.Text :=
    TotalHabilidade(edtNivelLidarAnimais.Text, edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelLiderancaChange(Sender: TObject);
begin
  edtTotalLideranca.Text := TotalHabilidade(edtNivelLideranca.Text,
    edtCarismaFinal.Text);
end;

procedure TfrmPrincipal.edtNivelLinguaChange(Sender: TObject);
begin
  edtTotalLingua.Text := TotalHabilidade(edtNivelLingua.Text, edtIntelectoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelMalabarismoChange(Sender: TObject);
begin
  edtTotalMalabarismo.Text := TotalHabilidade(edtNivelMalabarismo.Text,
    edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtNivelManusearArmadilhasChange(Sender: TObject);
begin
  edtTotalManusearArmadilhas.Text :=
    TotalHabilidade(edtNivelManusearArmadilhas.Text, edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelMedicinaChange(Sender: TObject);
begin
  edtTotalMedicina.Text := TotalHabilidade(edtNivelMedicina.Text,
    edtIntelectoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelMisticismoChange(Sender: TObject);
begin
  edtTotalMisticismo.Text := TotalHabilidade(edtNivelMisticismo.Text,
    edtIntelectoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelMontarAnimaisChange(Sender: TObject);
begin
  edtTotalMontarAnimais.Text :=
    TotalHabilidade(edtNivelMontarAnimais.Text, edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtNivelNatacaoChange(Sender: TObject);
begin
  edtTotalNatacao.Text := TotalHabilidade(edtNivelNatacao.Text, edtFisicoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelNauticaChange(Sender: TObject);
begin
  edtTotalNautica.Text := TotalHabilidade(edtNivelNautica.Text,
    edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelNavegacaoChange(Sender: TObject);
begin
  edtTotalNavegacao.Text := TotalHabilidade(edtNivelNavegacao.Text,
    edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelObservarChange(Sender: TObject);
begin
  edtTotalObservar.Text := TotalHabilidade(edtNivelObservar.Text,
    edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelPersuasaoChange(Sender: TObject);
begin
  edtTotalPersuasao.Text := TotalHabilidade(edtNivelPersuasao.Text,
    edtCarismaFinal.Text);
end;

procedure TfrmPrincipal.edtNivelReligiaoChange(Sender: TObject);
begin
  edtTotalReligiao.Text := TotalHabilidade(edtNivelReligiao.Text,
    edtIntelectoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelSeducaoChange(Sender: TObject);
begin
  edtTotalSeducao.Text := TotalHabilidade(edtNivelSeducao.Text, edtCarismaFinal.Text);
end;

procedure TfrmPrincipal.edtNivelSeguirTrilhasChange(Sender: TObject);
begin
  edtTotalSeguirTrilhas.Text :=
    TotalHabilidade(edtNivelSeguirTrilhas.Text, edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelSobrevivenciaChange(Sender: TObject);
begin
  edtTotalSobrevivencia.Text :=
    TotalHabilidade(edtNivelSobrevivencia.Text, edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelTrabalhoMetalChange(Sender: TObject);
begin
  edtTotalTrabalhoMetal.Text :=
    TotalHabilidade(edtNivelTrabalhoMetal.Text, edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtNivelTrabalhosManuaisChange(Sender: TObject);
begin
  edtTotalTrabalhosManuais.Text :=
    TotalHabilidade(edtNivelTrabalhosManuais.Text, edtAgilidadeFinal.Text);
end;

procedure TfrmPrincipal.edtNivelVeneficioChange(Sender: TObject);
begin
  edtTotalVeneficio.Text := TotalHabilidade(edtNivelVeneficio.Text,
    edtIntelectoFinal.Text);
end;

procedure TfrmPrincipal.edtNomeChange(Sender: TObject);
begin
  statusbar1.Panels.Items[0].Text := edtNome.Text;
  if edtNome.Text = '' then
    statusbar1.Panels.Items[0].Text := '<Sem nome>';
end;

procedure TfrmPrincipal.edtNomeMagiaChange(Sender: TObject);
begin
  dtmDados.zqrMagias.Locate('nome', edtNomeMagia.Text,
    [LoCaseInsensitive, LoPartialKey]);
end;

procedure TfrmPrincipal.edtPercepcaoFinalChange(Sender: TObject);
begin
  //Habilidades
  edtAjusteNautica.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteTrabalhoMetal.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteDisfarces.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteFalsificacao.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteJogatina.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteComercio.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteEscutar.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteLidarAnimais.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteManusearArmadilhas.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteNavegacao.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteObservar.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteSeguirTrilhas.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteSobrevivencia.Text := 'Per(' + edtPercepcaoFinal.Text + ')';

  edtTotalNautica.Text := TotalHabilidade(edtNivelNautica.Text,
    edtPercepcaoFinal.Text);
  edtTotalTrabalhoMetal.Text :=
    TotalHabilidade(edtNivelTrabalhoMetal.Text, edtPercepcaoFinal.Text);
  edtTotalDisfarces.Text := TotalHabilidade(edtNivelNautica.Text,
    edtPercepcaoFinal.Text);
  edtTotalFalsificacao.Text :=
    TotalHabilidade(edtNivelFalsificacao.Text, edtPercepcaoFinal.Text);
  edtTotalJogatina.Text := TotalHabilidade(edtNivelJogatina.Text,
    edtPercepcaoFinal.Text);
  edtTotalComercio.Text := TotalHabilidade(edtNivelComercio.Text,
    edtPercepcaoFinal.Text);
  edtTotalEscutar.Text := TotalHabilidade(edtNivelEscutar.Text,
    edtPercepcaoFinal.Text);
  edtTotalLidarAnimais.Text :=
    TotalHabilidade(edtNivelLidarAnimais.Text, edtPercepcaoFinal.Text);
  edtTotalManusearArmadilhas.Text :=
    TotalHabilidade(edtNivelManusearArmadilhas.Text, edtPercepcaoFinal.Text);
  edtTotalNavegacao.Text := TotalHabilidade(edtNivelNavegacao.Text,
    edtPercepcaoFinal.Text);
  edtTotalObservar.Text := TotalHabilidade(edtNivelObservar.Text,
    edtPercepcaoFinal.Text);
  edtTotalSeguirTrilhas.Text :=
    TotalHabilidade(edtNivelSeguirTrilhas.Text, edtPercepcaoFinal.Text);
  edtTotalSobrevivencia.Text :=
    TotalHabilidade(edtNivelSobrevivencia.Text, edtPercepcaoFinal.Text);

  //Combate
  edtAjusteAtaqueOportuno.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteAtaqueSurpresa.Text := 'Per(' + edtPercepcaoFinal.Text + ')';
  edtAjusteCombateNaoLetal.Text := 'Per(' + edtPercepcaoFinal.Text + ')';

  edtTotalAtaqueOportuno.Text :=
    TotalHabilidade(edtAtaqueOportuno.Text, edtPercepcaoFinal.Text);
  edtTotalAtaqueSurpresa.Text :=
    TotalHabilidade(edtAtaqueSurpresa.Text, edtPercepcaoFinal.Text);
  edtTotalCombateNaoLetal.Text :=
    TotalHabilidade(edtCombateNaoLetal.Text, edtPercepcaoFinal.Text);
end;

procedure TfrmPrincipal.edtPesoExit(Sender: TObject);
var
  peso: real;
begin
  try
    peso := StrToFloat(edtPeso.Text);
  except

  end;

  case cbxRaca.ItemIndex of
    -1:
    begin
      Application.MessageBox('Escolha uma Raça', 'Erro',
        8);
      edtPeso.Clear;
      cbxRaca.SetFocus;
    end;
    0: if not ((peso >= 69.3) and (peso <= 84.7)) then
      begin
        Application.MessageBox('Peso padrão definido!', 'Peso',
          8);
        edtPeso.Text := '77';
        edtPeso.SetFocus;
      end;
    1: if not ((peso >= 62.1) and (peso <= 75.9)) then
      begin
        Application.MessageBox('Peso padrão definido!', 'Peso',
          8);
        edtPeso.Text := '69';
        edtPeso.SetFocus;
      end;
    2, 3: if not ((peso >= 47.7) and (peso <= 84.7)) then
      begin
        Application.MessageBox('Peso padrão definido!', 'Peso',
          8);
        edtPeso.Text := '53';
        edtPeso.SetFocus;
      end;
    4: if not ((peso >= 47.7) and (peso <= 84.7)) then
      begin
        Application.MessageBox('Peso padrão definido!', 'Peso',
          8);
        edtPeso.Text := '53';
        edtPeso.SetFocus;
      end;
    5: if not ((peso >= 27) and (peso <= 33)) then
      begin
        Application.MessageBox('Peso padrão definido!', 'Peso',
          8);
        edtPeso.Text := '30';
        edtPeso.SetFocus;
      end;
  end;
end;

procedure TfrmPrincipal.edtPontosAquisicaoMagiaChange(Sender: TObject);
begin
  edtPontosRestantesMagia.Text := edtPontosAquisicaoMagia.Text;
end;

procedure TfrmPrincipal.edtPontosChange(Sender: TObject);
begin
  if StrToFloat(edtPontos.Text) <= 0 then
  begin
    Application.MessageBox('Você não possui mais pontos!', 'Pontos', 8);
  end;
end;

procedure TfrmPrincipal.edtPontosGrupoArmasChange(Sender: TObject);
begin
  edtPontosRestantesGrupoArmas.Text := edtPontosGrupoArmas.Text;
end;

procedure TfrmPrincipal.edtPontosTecnicasCombateChange(Sender: TObject);
begin
  edtPontosRestantesTecnicasCombate.Text := edtPontosTecnicasCombate.Text;
end;

procedure TfrmPrincipal.edtResistenciaDorChange(Sender: TObject);
begin
  edtTotalResistenciaDor.Text :=
    TotalHabilidade(edtResistenciaDor.Text, edtFisicoFinal.Text);
end;

procedure TfrmPrincipal.edtTotalArma1Change(Sender: TObject);
begin
  if cbxArma1.ItemIndex = -1 then
    Exit;

  edtLArma1.Text := IntToStr(StrToInt(edtTotalArma1.Text) +
    StrToInt(defesaLeve.Strings[cbxArma1.ItemIndex]));
  edtMArma1.Text := IntToStr(StrToInt(edtTotalArma1.Text) +
    StrToInt(defesaMedia.Strings[cbxArma1.ItemIndex]));
  edtPArma1.Text := IntToStr(StrToInt(edtTotalArma1.Text) +
    StrToInt(defesaPesada.Strings[cbxArma1.ItemIndex]));
end;

procedure TfrmPrincipal.edtTotalArma2Change(Sender: TObject);
begin
  if cbxArma2.ItemIndex = -1 then
    Exit;

  edtLArma2.Text := IntToStr(StrToInt(edtTotalArma2.Text) +
    StrToInt(defesaLeve.Strings[cbxArma2.ItemIndex]));
  edtMArma2.Text := IntToStr(StrToInt(edtTotalArma2.Text) +
    StrToInt(defesaMedia.Strings[cbxArma2.ItemIndex]));
  edtPArma2.Text := IntToStr(StrToInt(edtTotalArma2.Text) +
    StrToInt(defesaPesada.Strings[cbxArma2.ItemIndex]));
end;

procedure TfrmPrincipal.edtTotalArma3Change(Sender: TObject);
begin
  if cbxArma3.ItemIndex = -1 then
    Exit;

  edtLArma3.Text := IntToStr(StrToInt(edtTotalArma3.Text) +
    StrToInt(defesaLeve.Strings[cbxArma3.ItemIndex]));
  edtMArma3.Text := IntToStr(StrToInt(edtTotalArma3.Text) +
    StrToInt(defesaMedia.Strings[cbxArma3.ItemIndex]));
  edtPArma3.Text := IntToStr(StrToInt(edtTotalArma3.Text) +
    StrToInt(defesaPesada.Strings[cbxArma3.ItemIndex]));
end;

procedure TfrmPrincipal.edtTotalArma4Change(Sender: TObject);
begin
  if cbxArma4.ItemIndex = -1 then
    Exit;

  edtLArma4.Text := IntToStr(StrToInt(edtTotalArma4.Text) +
    StrToInt(defesaLeve.Strings[cbxArma4.ItemIndex]));
  edtMArma4.Text := IntToStr(StrToInt(edtTotalArma4.Text) +
    StrToInt(defesaMedia.Strings[cbxArma4.ItemIndex]));
  edtPArma4.Text := IntToStr(StrToInt(edtTotalArma4.Text) +
    StrToInt(defesaPesada.Strings[cbxArma4.ItemIndex]));
end;

procedure TfrmPrincipal.edtTotalArma5Change(Sender: TObject);
begin
  if cbxArma5.ItemIndex = -1 then
    Exit;

  edtLArma5.Text := IntToStr(StrToInt(edtTotalArma5.Text) +
    StrToInt(defesaLeve.Strings[cbxArma5.ItemIndex]));
  edtMArma5.Text := IntToStr(StrToInt(edtTotalArma5.Text) +
    StrToInt(defesaMedia.Strings[cbxArma5.ItemIndex]));
  edtPArma5.Text := IntToStr(StrToInt(edtTotalArma5.Text) +
    StrToInt(defesaPesada.Strings[cbxArma5.ItemIndex]));
end;

procedure TfrmPrincipal.FileListBox1DblClick(Sender: TObject);
begin
  AbrirFichaXML(FileListBox1.FileName);
  LocalFicha := FileListBox1.FileName;
end;

procedure TfrmPrincipal.FileListBox1DrawItem(Control: TWinControl;
  Index: integer; ARect: TRect; State: TOwnerDrawState);
begin
  //Altera as cores do TFileListBox
  with (Control as TfileListBox).Canvas do
  begin
    if not Odd(Index) then
    begin
      Brush.Color := TColor($b2b2b2); //cor de fundo da linha
      Font.Color := clBlack; //cor da fonte do texto
    end
    else
    begin
      Brush.Color := clWhite;
      Font.Color := clBlack;
    end;

    if odSelected in State then
    begin
      Brush.Color := clBlack;
      Font.Color := clWhite;
    end;

    FillRect(ARect);
    Brush.Style := bsClear;
    TextOut(ARect.Left, ARect.Top, (Control as TFileListBox).Items[Index]);
  end;
end;

procedure TfrmPrincipal.FileListBox1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: integer);
var
  I: integer;
  P: TPoint;
begin
  if Button = mbRight then //se foi o botao direito
  begin
    P := Point(X, Y); //pega a posição atual do cursor no listbox
    I := FileListBox1.ItemAtPos(P, True); //vê qual item está nessa posição
    if I > -1 then //se existia item na posição
    begin
      FileListBox1.ItemIndex := I; //seta o item selecionado
      FileListBox1.Click; //Clica o item selecionado
      P := FileListBox1.ClientToScreen(P);
      PopupMenu1.Popup(P.x, P.y); //mostra o Popup
    end;
  end;
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  edtNome.SetFocus;
  EstadoSalvar := True;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  pgcFicha.ActivePageIndex := 0;
  EstadoSalvar := False;

  defesaLeve := TStringList.Create;
  defesaMedia := TStringList.Create;
  defesaPesada := TStringList.Create;

  dano100 := TStringList.Create;
  dano75 := TStringList.Create;
  dano50 := TStringList.Create;
  dano25 := TStringList.Create;

  {$IFDEF LINUX}
  pgcFicha.Font.Name := 'Sans';
  pgcFicha.Font.Size := 9;
  {$ENDIF}

  {$IFDEF MSWINDOWS}
  cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\especializacao\academias.txt');

  cbxArma1.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\armas.txt');
  cbxArma2.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\armas.txt');
  cbxArma3.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\armas.txt');
  cbxArma4.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\armas.txt');
  cbxArma5.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\armas.txt');

  cbxAlcanceArma1.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\alcance.txt');
  cbxAlcanceArma2.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\alcance.txt');
  cbxAlcanceArma3.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\alcance.txt');
  cbxAlcanceArma4.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\alcance.txt');
  cbxAlcanceArma5.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\alcance.txt');

  cbxGrupoArma1.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\grupo.txt');
  cbxGrupoArma2.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\grupo.txt');
  cbxGrupoArma3.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\grupo.txt');
  cbxGrupoArma4.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\grupo.txt');
  cbxGrupoArma5.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\grupo.txt');

  defesaLeve.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\data\combate\defesaleve.txt');
  defesaMedia.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\defesamedia.txt');
  defesaPesada.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\combate\defesapesada.txt');

  dano100.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\data\combate\dano100.txt');
  dano75.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\data\combate\dano75.txt');
  dano50.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\data\combate\dano50.txt');
  dano25.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\data\combate\dano25.txt');

  FileListBox1.Directory := SysToUTF8(ExtractFilePath(Application.ExeName) +
    '\data\fichas\');
  {$ELSE}
  cbxEspecializacao.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/especializacao/academias.txt');

  cbxArma1.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/armas.txt');
  cbxArma2.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/armas.txt');
  cbxArma3.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/armas.txt');
  cbxArma4.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/armas.txt');
  cbxArma5.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/armas.txt');

  cbxAlcanceArma1.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/alcance.txt');
  cbxAlcanceArma2.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/alcance.txt');
  cbxAlcanceArma3.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/alcance.txt');
  cbxAlcanceArma4.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/alcance.txt');
  cbxAlcanceArma5.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/alcance.txt');

  cbxGrupoArma1.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/grupo.txt');
  cbxGrupoArma2.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/grupo.txt');
  cbxGrupoArma3.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/grupo.txt');
  cbxGrupoArma4.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/grupo.txt');
  cbxGrupoArma5.Items.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/grupo.txt');

  defesaLeve.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/data/combate/defesaleve.txt');
  defesaMedia.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/defesamedia.txt');
  defesaPesada.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/combate/defesapesada.txt');

  dano100.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/data/combate/dano100.txt');
  dano75.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/data/combate/dano75.txt');
  dano50.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/data/combate/dano50.txt');
  dano25.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '/data/combate/dano25.txt');

  FileListBox1.Directory := SysToUTF8(ExtractFilePath(Application.ExeName) +
    '/data/fichas/');
  {$ENDIF}
end;

procedure TfrmPrincipal.pgcFichaChange(Sender: TObject);
begin
  if EstadoSalvar = True then
  begin
    EstadoSalvar := False;

    if MessageDlg('Salvar', 'Para prosseguir o personagem deverá ser salvo',
      mtInformation, [mbOK], 0) <> mrNone then
      actSalvar.Execute;
  end;

  if pgcFicha.PageIndex = 0 then
    ToolButton10.Enabled := False
  else
    ToolButton10.Enabled := True;
end;

procedure TfrmPrincipal.btnLimparArma1Click(Sender: TObject);
begin
  if MessageDlg('Confirmação', 'Deseja mesmo excluir a arma?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  cbxAlcanceArma1.ItemIndex := -1;
  cbxGrupoArma1.ItemIndex := -1;
  cbxArma1.ItemIndex := -1;

  edtLArma1.Clear;
  edtMArma1.Clear;
  edtPArma1.Clear;

  edtTotalArma1.Clear;

  edt100Arma1.Clear;
  edt75Arma1.Clear;
  edt50Arma1.Clear;
  edt25Arma1.Clear;

  btnLimparArma1.Enabled := False;
end;

procedure TfrmPrincipal.SpeedButton10Click(Sender: TObject);
begin
  edtBonusElmo.Text := IntToStr(StrToInt(edtBonusElmo.Text) + 1);
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  if edtMoedasCobre.Text = '0' then
    Exit;
  edtMoedasCobre.Text := IntToStr(StrToInt(edtMoedasCobre.Text) - 1);
end;

procedure TfrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
  edtMoedasCobre.Text := IntToStr(StrToInt(edtMoedasCobre.Text) + 1);
end;

procedure TfrmPrincipal.SpeedButton33Click(Sender: TObject);
begin
  edtNivelCarpintaria.Text := AvaNivelHabilidade(edtNivelCarpintaria.Text);

  if cbxProfissao.ItemIndex = 4 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton34Click(Sender: TObject);
begin
  edtNivelEngenharia.Text := AvaNivelHabilidade(edtNivelEngenharia.Text);

  if cbxProfissao.ItemIndex = 4 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton35Click(Sender: TObject);
begin
  edtNivelMedicina.Text := AvaNivelHabilidade(edtNivelMedicina.Text);

  if cbxProfissao.ItemIndex = 4 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton36Click(Sender: TObject);
begin
  edtNivelNautica.Text := AvaNivelHabilidade(edtNivelNautica.Text);

  if cbxProfissao.ItemIndex = 4 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton37Click(Sender: TObject);
begin
  edtNivelTrabalhoMetal.Text := AvaNivelHabilidade(edtNivelTrabalhoMetal.Text);

  if cbxProfissao.ItemIndex = 4 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton38Click(Sender: TObject);
begin
  edtNivelTrabalhosManuais.Text := AvaNivelHabilidade(edtNivelTrabalhosManuais.Text);

  if cbxProfissao.ItemIndex = 4 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton39Click(Sender: TObject);
begin
  edtNivelAcrobacias.Text := AvaNivelHabilidade(edtNivelAcrobacias.Text);

  if cbxProfissao.ItemIndex = 3 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
  if edtMoedasPrata.Text = '0' then
    Exit;
  edtMoedasPrata.Text := IntToStr(StrToInt(edtMoedasPrata.Text) - 1);
end;

procedure TfrmPrincipal.SpeedButton40Click(Sender: TObject);
begin
  edtNivelCorrida.Text := AvaNivelHabilidade(edtNivelCorrida.Text);

  if cbxProfissao.ItemIndex = 3 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton41Click(Sender: TObject);
begin
  edtNivelEscalarSuperficies.Text := AvaNivelHabilidade(edtNivelEscalarSuperficies.Text);

  if cbxProfissao.ItemIndex = 3 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton42Click(Sender: TObject);
begin
  edtNivelMalabarismo.Text := AvaNivelHabilidade(edtNivelMalabarismo.Text);

  if cbxProfissao.ItemIndex = 3 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton43Click(Sender: TObject);
begin
  edtNivelMontarAnimais.Text := AvaNivelHabilidade(edtNivelMontarAnimais.Text);

  if cbxProfissao.ItemIndex = 3 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton44Click(Sender: TObject);
begin
  edtNivelNatacao.Text := AvaNivelHabilidade(edtNivelNatacao.Text);

  if cbxProfissao.ItemIndex = 3 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton45Click(Sender: TObject);
begin
  edtNivelEscrita.Text := AvaNivelHabilidade(edtNivelEscrita.Text);

  CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton46Click(Sender: TObject);
begin
  edtNivelHerbalismo.Text := AvaNivelHabilidade(edtNivelHerbalismo.Text);

  CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton47Click(Sender: TObject);
begin
  edtNivelLingua.Text := AvaNivelHabilidade(edtNivelLingua.Text);

  CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton48Click(Sender: TObject);
begin
  edtNivelMisticismo.Text := AvaNivelHabilidade(edtNivelMisticismo.Text);

  CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton49Click(Sender: TObject);
begin
  edtNivelReligiao.Text := AvaNivelHabilidade(edtNivelReligiao.Text);

  CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
  edtMoedasPrata.Text := IntToStr(StrToInt(edtMoedasPrata.Text) + 1);
end;

procedure TfrmPrincipal.SpeedButton50Click(Sender: TObject);
begin
  edtNivelVeneficio.Text := AvaNivelHabilidade(edtNivelVeneficio.Text);

  CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton51Click(Sender: TObject);
begin
  edtNivelArte.Text := AvaNivelHabilidade(edtNivelArte.Text);

  if cbxProfissao.ItemIndex = 0 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton52Click(Sender: TObject);
begin
  edtNivelBarganha.Text := AvaNivelHabilidade(edtNivelBarganha.Text);

  if cbxProfissao.ItemIndex = 0 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton53Click(Sender: TObject);
begin
  edtNivelComercio.Text := AvaNivelHabilidade(edtNivelComercio.Text);

  if cbxProfissao.ItemIndex = 0 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton54Click(Sender: TObject);
begin
  edtNivelEtiqueta.Text := AvaNivelHabilidade(edtNivelEtiqueta.Text);

  if cbxProfissao.ItemIndex = 0 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton55Click(Sender: TObject);
begin
  edtNivelLideranca.Text := AvaNivelHabilidade(edtNivelLideranca.Text);

  if cbxProfissao.ItemIndex = 0 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton56Click(Sender: TObject);
begin
  edtNivelPersuasao.Text := AvaNivelHabilidade(edtNivelPersuasao.Text);

  if cbxProfissao.ItemIndex = 0 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton5Click(Sender: TObject);
begin
  if edtMoedasOuro.Text = '0' then
    Exit;
  edtMoedasOuro.Text := IntToStr(StrToInt(edtMoedasOuro.Text) - 1);
end;

procedure TfrmPrincipal.SpeedButton62Click(Sender: TObject);
begin
  edtNivelSeducao.Text := AvaNivelHabilidade(edtNivelSeducao.Text);

  if cbxProfissao.ItemIndex = 0 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton63Click(Sender: TObject);
begin
  edtNivelAcoesFurtivas.Text := AvaNivelHabilidade(edtNivelAcoesFurtivas.Text);

  if cbxProfissao.ItemIndex = 2 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton64Click(Sender: TObject);
begin
  edtNivelDestrancarFechaduras.Text :=
    AvaNivelHabilidade(edtNivelDestrancarFechaduras.Text);

  if cbxProfissao.ItemIndex = 2 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton65Click(Sender: TObject);
begin
  edtNivelDisfarces.Text := AvaNivelHabilidade(edtNivelDisfarces.Text);

  if cbxProfissao.ItemIndex = 2 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton66Click(Sender: TObject);
begin
  edtNivelEscapar.Text := AvaNivelHabilidade(edtNivelEscapar.Text);

  if cbxProfissao.ItemIndex = 2 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton67Click(Sender: TObject);
begin
  edtNivelFalsificacao.Text := AvaNivelHabilidade(edtNivelFalsificacao.Text);

  if cbxProfissao.ItemIndex = 2 then
    CustoHabilidade3
  else
    CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton68Click(Sender: TObject);
begin
  edtNivelFurtarObjetos.Text := AvaNivelHabilidade(edtNivelFurtarObjetos.Text);

  if cbxProfissao.ItemIndex = 2 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton69Click(Sender: TObject);
begin
  edtNivelJogatina.Text := AvaNivelHabilidade(edtNivelJogatina.Text);

  if cbxProfissao.ItemIndex = 2 then
    CustoHabilidade2
  else
    CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton6Click(Sender: TObject);
begin
  edtMoedasOuro.Text := IntToStr(StrToInt(edtMoedasOuro.Text) + 1);
end;

procedure TfrmPrincipal.SpeedButton70Click(Sender: TObject);
begin
  edtNivelEscutar.Text := AvaNivelHabilidade(edtNivelEscutar.Text);

  CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton71Click(Sender: TObject);
begin
  edtNivelLidarAnimais.Text := AvaNivelHabilidade(edtNivelLidarAnimais.Text);

  CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton72Click(Sender: TObject);
begin
  edtNivelManusearArmadilhas.Text := AvaNivelHabilidade(edtNivelManusearArmadilhas.Text);

  CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton73Click(Sender: TObject);
begin
  edtNivelNavegacao.Text := AvaNivelHabilidade(edtNivelNavegacao.Text);

  CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton74Click(Sender: TObject);
begin
  edtNivelObservar.Text := AvaNivelHabilidade(edtNivelObservar.Text);

  CustoHabilidade2;
end;

procedure TfrmPrincipal.SpeedButton75Click(Sender: TObject);
begin
  edtNivelSeguirTrilhas.Text := AvaNivelHabilidade(edtNivelSeguirTrilhas.Text);

  CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton76Click(Sender: TObject);
begin
  edtNivelSobrevivencia.Text := AvaNivelHabilidade(edtNivelSobrevivencia.Text);

  CustoHabilidade1;
end;

procedure TfrmPrincipal.SpeedButton77Click(Sender: TObject);
begin
  edtCD.Text := IntToStr(StrToInt(edtCD.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 1);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton78Click(Sender: TObject);
begin
  edtPmA.Text := IntToStr(StrToInt(edtPmA.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 2);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton79Click(Sender: TObject);
begin
  edtCl.Text := IntToStr(StrToInt(edtCl.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 1);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton7Click(Sender: TObject);
begin
  edtExperiencia.Text := IntToStr(StrToInt(edtExperiencia.Text) + 1);
  EstadoSalvar := True;
end;

procedure TfrmPrincipal.SpeedButton80Click(Sender: TObject);
begin
  edtEl.Text := IntToStr(StrToInt(edtEl.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 1);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton81Click(Sender: TObject);
begin
  edtCmE.Text := IntToStr(StrToInt(edtCmE.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 2);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton82Click(Sender: TObject);
begin
  edtCmM.Text := IntToStr(StrToInt(edtCmM.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 2);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton83Click(Sender: TObject);
begin
  edtEm.Text := IntToStr(StrToInt(edtEm.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 2);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton84Click(Sender: TObject);
begin
  edtPmL.Text := IntToStr(StrToInt(edtPmL.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 2);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton85Click(Sender: TObject);
begin
  edtCpE.Text := IntToStr(StrToInt(edtCpE.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 3);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton86Click(Sender: TObject);
begin
  edtCpM.Text := IntToStr(StrToInt(edtCpM.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 3);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton87Click(Sender: TObject);
begin
  edtEp.Text := IntToStr(StrToInt(edtEp.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 3);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton88Click(Sender: TObject);
begin
  edtPp.Text := IntToStr(StrToInt(edtPp.Text) + 1);
  edtPontosRestantesGrupoArmas.Text :=
    IntToStr(StrToInt(edtPontosRestantesGrupoArmas.Text) - 3);

  if cbxArma1.ItemIndex <> -1 then
    edtTotalArma1.Text := TotalArma(cbxArma1.ItemIndex);
  if cbxArma2.ItemIndex <> -1 then
    edtTotalArma2.Text := TotalArma(cbxArma2.ItemIndex);
  if cbxArma3.ItemIndex <> -1 then
    edtTotalArma3.Text := TotalArma(cbxArma3.ItemIndex);
  if cbxArma4.ItemIndex <> -1 then
    edtTotalArma4.Text := TotalArma(cbxArma4.ItemIndex);
  if cbxArma5.ItemIndex <> -1 then
    edtTotalArma5.Text := TotalArma(cbxArma5.ItemIndex);
end;

procedure TfrmPrincipal.SpeedButton89Click(Sender: TObject);
begin
  edtAmbidestria.Text := AvaNivelHabilidade(edtAmbidestria.Text);

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) - 2);
end;

procedure TfrmPrincipal.SpeedButton8Click(Sender: TObject);
begin
  edtBonusArmadura.Text := IntToStr(StrToInt(edtBonusArmadura.Text) + 1);
end;

procedure TfrmPrincipal.SpeedButton90Click(Sender: TObject);
begin
  edtAparar.Text := AvaNivelHabilidade(edtAparar.Text);

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) - 2);
end;

procedure TfrmPrincipal.SpeedButton91Click(Sender: TObject);
begin
  edtAtaqueOportuno.Text := AvaNivelHabilidade(edtAtaqueOportuno.Text);

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) - 1);
end;

procedure TfrmPrincipal.SpeedButton92Click(Sender: TObject);
begin
  edtAtaqueSurpresa.Text := AvaNivelHabilidade(edtAtaqueSurpresa.Text);

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) - 1);
end;

procedure TfrmPrincipal.SpeedButton93Click(Sender: TObject);
begin
  edtAtirarMovimento.Text := AvaNivelHabilidade(edtAtirarMovimento.Text);

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) - 2);
end;

procedure TfrmPrincipal.SpeedButton94Click(Sender: TObject);
begin
  edtCarga.Text := AvaNivelHabilidade(edtCarga.Text);

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) - 1);
end;

procedure TfrmPrincipal.SpeedButton95Click(Sender: TObject);
begin
  edtCombateMontado.Text := AvaNivelHabilidade(edtCombateMontado.Text);

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) - 2);
end;

procedure TfrmPrincipal.SpeedButton96Click(Sender: TObject);
begin
  edtEsquiva.Text := AvaNivelHabilidade(edtEsquiva.Text);

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) - 1);
end;

procedure TfrmPrincipal.SpeedButton97Click(Sender: TObject);
begin
  edtLutaCegas.Text := AvaNivelHabilidade(edtLutaCegas.Text);

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) - 1);
end;

procedure TfrmPrincipal.SpeedButton98Click(Sender: TObject);
begin
  edtResistenciaDor.Text := AvaNivelHabilidade(edtResistenciaDor.Text);

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) - 2);
end;

procedure TfrmPrincipal.SpeedButton99Click(Sender: TObject);
begin
  edtCombateNaoLetal.Text := AvaNivelHabilidade(edtCombateNaoLetal.Text);

  edtPontosRestantesTecnicasCombate.Text :=
    IntToStr(StrToInt(edtPontosRestantesTecnicasCombate.Text) - 1);
end;

procedure TfrmPrincipal.SpeedButton9Click(Sender: TObject);
begin
  edtBonusEscudo.Text := IntToStr(StrToInt(edtBonusEscudo.Text) + 1);
end;

procedure TfrmPrincipal.ToolButton10Click(Sender: TObject);
var
  PassNode: TDOMNode;
  xmlFichaSalva: TXMLDocument;
begin
  ReadXMLFile(xmlFichaSalva, LocalFicha);
  case pgcFicha.PageIndex of
    1:
    begin
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Atributos').FindNode('Intelecto');
      edtIntelectoFinal.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Atributos').FindNode('Aura');
      edtAuraFinal.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Atributos').FindNode('Carisma');
      edtCarismaFinal.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Atributos').FindNode('Forca');
      edtForcaFinal.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Atributos').FindNode('Fisico');
      edtFisicoFinal.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Atributos').FindNode('Agilidade');
      edtAgilidadeFinal.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Atributos').FindNode('Percepcao');
      edtPercepcaoFinal.Text := PassNode.FirstChild.NodeValue;
    end;
    2:
    begin
      //Habilidades
      //Profissional
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Profissional').FindNode('Carpintaria');
      edtNivelCarpintaria.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Profissional').FindNode('Engenharia');
      edtNivelEngenharia.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Profissional').FindNode('Medicina');
      edtNivelMedicina.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Profissional').FindNode('Nautica');
      edtNivelNautica.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Profissional').FindNode('TrabalhoMetal');
      edtNivelTrabalhoMetal.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Profissional').FindNode('TrabalhosManuais');
      edtNivelTrabalhosManuais.Text := PassNode.FirstChild.NodeValue;

      //Manobra
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Manobra').FindNode('Acrobacias');
      edtNivelAcrobacias.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Manobra').FindNode('Corrida');
      edtNivelCorrida.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Manobra').FindNode('EscalarSuperficies');
      edtNivelEscalarSuperficies.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Manobra').FindNode('Malabarismo');
      edtNivelMalabarismo.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Manobra').FindNode('MontarAnimais');
      edtNivelMontarAnimais.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Manobra').FindNode('Natacao');
      edtNivelNatacao.Text := PassNode.FirstChild.NodeValue;

      //Conhecimento
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Conhecimento').FindNode('Escrita');
      edtNivelEscrita.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Conhecimento').FindNode('Herbalismo');
      edtNivelHerbalismo.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Conhecimento').FindNode('Lingua');
      edtNivelLingua.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Conhecimento').FindNode('Misticismo');
      edtNivelMisticismo.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Conhecimento').FindNode('Religiao');
      edtNivelReligiao.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Conhecimento').FindNode('Veneficio');
      edtNivelVeneficio.Text := PassNode.FirstChild.NodeValue;

      //Subterfúgio
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Subterfugio').FindNode('AcoesFurtivas');
      edtNivelAcoesFurtivas.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Subterfugio').FindNode('DestrancarFechaduras');
      edtNivelDestrancarFechaduras.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Subterfugio').FindNode('Disfarces');
      edtNivelDisfarces.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Subterfugio').FindNode('Escapar');
      edtNivelEscapar.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Subterfugio').FindNode('Falsificacao');
      edtNivelFalsificacao.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Subterfugio').FindNode('FurtarObjetos');
      edtNivelFurtarObjetos.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Subterfugio').FindNode('Jogatina');
      edtNivelJogatina.Text := PassNode.FirstChild.NodeValue;

      //Influência
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Influencia').FindNode('Arte');
      edtNivelArte.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Influencia').FindNode('Barganha');
      edtNivelBarganha.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Influencia').FindNode('Comercio');
      edtNivelComercio.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Influencia').FindNode('Etiqueta');
      edtNivelEtiqueta.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Influencia').FindNode('Lideranca');
      edtNivelLideranca.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Influencia').FindNode('Persuasao');
      edtNivelPersuasao.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Influencia').FindNode('Seducao');
      edtNivelSeducao.Text := PassNode.FirstChild.NodeValue;

      //Geral
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Geral').FindNode('Escutar');
      edtNivelEscutar.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Geral').FindNode('LidarAnimais');
      edtNivelLidarAnimais.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Geral').FindNode('ManusearArmadilhas');
      edtNivelManusearArmadilhas.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Geral').FindNode('Navegacao');
      edtNivelNavegacao.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Geral').FindNode('Observar');
      edtNivelObservar.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Geral').FindNode('SeguirTrilhas');
      edtNivelSeguirTrilhas.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Habilidades').FindNode('Geral').FindNode('Sobrevivencia');
      edtNivelSobrevivencia.Text := PassNode.FirstChild.NodeValue;
    end;

    3:
    begin
      //Combate
      //Arma 1
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Combate').FindNode('Armas').FindNode('Arma1');
      cbxArma1.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
      cbxArma1Change(cbxArma1);

      //Arma 2
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Combate').FindNode('Armas').FindNode('Arma2');
      cbxArma2.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
      cbxArma2Change(cbxArma2);

      //Arma 3
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Combate').FindNode('Armas').FindNode('Arma3');
      cbxArma3.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
      cbxArma3Change(cbxArma3);

      //Arma 4
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Combate').FindNode('Armas').FindNode('Arma4');
      cbxArma4.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
      cbxArma4Change(cbxArma4);

      //Arma 5
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'Combate').FindNode('Armas').FindNode('Arma5');
      cbxArma5.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
      cbxArma5Change(cbxArma1);

      //Tecnicas de Combate
      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('CD');
      edtCD.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('CL');
      edtCl.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('El');
      edtEl.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('CmE');
      edtCmE.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('CmM');
      edtCmM.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('Em');
      edtEm.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('PmA');
      edtPmA.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('PmL');
      edtPmL.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('CpE');
      edtCpE.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('CpM');
      edtCpM.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('Ep');
      edtEp.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'HabilidadesArmas').FindNode('Pp');
      edtPp.Text := PassNode.FirstChild.NodeValue;

      //Tecnicas de Combate
      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'TecnicasCombate').FindNode('Ambidestria');
      edtAmbidestria.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'TecnicasCombate').FindNode('Aparar');
      edtAparar.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'TecnicasCombate').FindNode('AtaqueOportuno');
      edtAtaqueOportuno.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'TecnicasCombate').FindNode('AtaqueSurpresa');
      edtAtaqueSurpresa.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'TecnicasCombate').FindNode('AtirarMovimento');
      edtAtirarMovimento.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'TecnicasCombate').FindNode('Carga');
      edtCarga.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'TecnicasCombate').FindNode('CombateMontado');
      edtCombateMontado.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'TecnicasCombate').FindNode('Esquiva');
      edtEsquiva.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'TecnicasCombate').FindNode('LutaCegas');
      edtLutaCegas.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'TecnicasCombate').FindNode('ResistenciaDor');
      edtResistenciaDor.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
        'TecnicasCombate').FindNode('CombateNaoLetal');
      edtCombateNaoLetal.Text := PassNode.FirstChild.NodeValue;
    end;

    4:
    begin
      //Magias
      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia1');
      edtNivelMagia1.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia2');
      edtNivelMagia2.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia3');
      edtNivelMagia3.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia4');
      edtNivelMagia4.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia5');
      edtNivelMagia5.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia6');
      edtNivelMagia6.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia7');
      edtNivelMagia7.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia8');
      edtNivelMagia8.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia9');
      edtNivelMagia9.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia10');
      edtNivelMagia10.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia11');
      edtNivelMagia11.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia12');
      edtNivelMagia12.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia13');
      edtNivelMagia13.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia14');
      edtNivelMagia14.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia15');
      edtNivelMagia15.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia16');
      edtNivelMagia16.Text := PassNode.FirstChild.NodeValue;
    end;

    5:
    begin
      //Pertences e Afins
      //Equipamentos
      PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
        'Equipamentos').FindNode('Armadura');
      cbxArmadura.ItemIndex := StrToInt(PassNode.Attributes.Item[0].NodeValue);

      PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
        'Equipamentos').FindNode('Escudo');
      cbxEscudo.ItemIndex := StrToInt(PassNode.Attributes.Item[0].NodeValue);

      PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
        'Equipamentos').FindNode('Elmo');
      cbxElmo.ItemIndex := StrToInt(PassNode.Attributes.Item[0].NodeValue);

      PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
        'Equipamentos').FindNode('Armadura');
      edtBonusArmadura.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
        'Equipamentos').FindNode('Escudo');
      edtBonusEscudo.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
        'Equipamentos').FindNode('Elmo');
      edtBonusElmo.Text := PassNode.FirstChild.NodeValue;

      //Dinheiro
      PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
        'Dinheiro').FindNode('MoedasCobre');
      edtMoedasCobre.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
        'Dinheiro').FindNode('MoedasPrata');
      edtMoedasPrata.Text := PassNode.FirstChild.NodeValue;

      PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
        'Dinheiro').FindNode('MoedasOuro');
      edtMoedasOuro.Text := PassNode.FirstChild.NodeValue;

      //Objetos
      PassNode := xmlFichaSalva.DocumentElement.FindNode(
        'PertencesAfins').FindNode('Objetos');
      memObjetos.Lines.Text := PassNode.FirstChild.NodeValue;
    end;
  end;
end;

{$IFDEF LINUX}
function TfrmPrincipal.AtributoSorte(inicial: integer): shortstring;
var
  num: array [1..3] of shortint;
  auxiliar, total: shortint;
begin
  randomize;

  num[1] := random(10) + 1;
  num[2] := random(10) + 1;
  num[3] := random(10) + 1;

  if num[1] > num[2] then
  begin
    auxiliar := num[1];
    num[1] := num[2];
    num[2] := auxiliar;
  end;

  if num[1] > num[3] then
  begin
    auxiliar := num[1];
    num[1] := num[3];
    num[3] := auxiliar;
  end;

  if num[2] > num[3] then
  begin
    auxiliar := num[2];
    num[2] := num[3];
    num[3] := auxiliar;
  end;

  total := num[2] + num[3] + StrToInt(inicial);

  if (total >= 1) and (total <= 3) then
    Result := '-2';

  if (total >= 4) and (total <= 8) then
    Result := '-1';

  if (total >= 9) and (total <= 12) then
    Result := PChar(0);

  if (total >= 13) and (total <= 15) then
    Result := '1';

  if (total >= 16) and (total <= 17) then
    Result := '2';

  if (total >= 18) and (total <= 19) then
    Result := '3';

  if total = 20 then
    Result := '4';

  if total = 21 then
    Result := '5';

  if total = 22 then
    Result := '6';
end;

{$ENDIF}

function TfrmPrincipal.AvaNivel(nivel: string): string;
var
  nivelAtual: shortint;
begin
  nivelAtual := StrToInt(nivel);
  Inc(nivelAtual);
  Result := IntToStr(nivelAtual);
end;

function TfrmPrincipal.DimNivel(nivel: string): string;
var
  nivelAtual: shortint;
begin
  nivelAtual := StrToInt(nivel);
  Dec(nivelAtual);
  Result := IntToStr(NivelAtual);
end;

procedure TfrmPrincipal.PontosDiminuir(estagio: string);
var
  pontosFinal: real;
begin
  if StrToFloat(estagio) >= 0 then
    pontosFinal := StrToFloat(edtPontos.Text) - StrToFloat(estagio)
  else
    pontosFinal := StrToFloat(edtPontos.Text) - 1;

  edtPontos.Text := FloatToStr(pontosFinal);
end;

procedure TfrmPrincipal.PontosAumentar;
var
  pontosFinal: real;
begin
  pontosFinal := StrToFloat(edtPontos.Text) + 0.5;
  edtPontos.Text := FloatToStr(pontosFinal);
end;

procedure TfrmPrincipal.EResistenciaFisica;
var
  resistenciaFis: shortint;
begin
  resistenciaFis := StrToInt(edtEstagio.Text) + StrToInt(edtFisicoFinal.Text);
  edtResFisica.Text := IntToStr(resistenciaFis);
end;

procedure TfrmPrincipal.EResistenciaMagia;
var
  resistenciaMag: shortint;
begin
  resistenciaMag := StrToInt(edtEstagio.Text) + StrToInt(edtAuraFinal.Text);
  edtResMagia.Text := IntToStr(resistenciaMag);
end;

procedure TfrmPrincipal.EKarma;
var
  aura, estagio, karma: shortint;
begin
  aura := StrToInt(edtAuraFinal.Text);

  if aura < 0 then
    aura := 0;

  estagio := StrToInt(edtEstagio.Text);

  karma := aura * (estagio + 1);

  edtKarma.Text := IntToStr(karma);
end;

procedure TfrmPrincipal.EDefesa;
var
  xmlArmadura, xmlEscudo: TXMLDocument;
  passNode: TDOMNode;
  defesaArmadura, DefesaEscudo, tipoDefesa: string;
  armadura: array[-1..4] of string;
  escudo: array[-1..1] of string;
  a, e, defesaBase, bonus, bonus2, defesaAtiva, defesaPassiva: shortint;
begin
  {$IFDEF MSWINDOWS}
  ReadXmlFile(xmlArmadura, ExtractFileDir(Application.ExeName) +
    '\data\equipamentos\armaduras.xml');
  ReadXmlFile(xmlEscudo, ExtractFileDir(Application.ExeName) +
    '\data\equipamentos\escudos.xml');
  {$ELSE}
  ReadXmlFile(xmlArmadura, ExtractFileDir(Application.ExeName) +
    '/data/equipamentos/armaduras.xml');
  ReadXmlFile(xmlEscudo, ExtractFileDir(Application.ExeName) +
    '/data/equipamentos/escudos.xml');
  {$ENDIF}

  armadura[-1] := 'Nada';
  armadura[0] := 'CouroLeve';
  armadura[1] := 'CouroRigido';
  armadura[2] := 'CotaMalhaParcial';
  armadura[3] := 'CotaMalhaCompleta';
  armadura[4] := 'CouracaMetalicaParcial';

  escudo[-1] := 'Nada';
  escudo[0] := 'EscudoPequeno';
  escudo[1] := 'EscudoGrande';

  a := cbxArmadura.ItemIndex;
  e := cbxEscudo.ItemIndex;

  passNode := xmlArmadura.DocumentElement.FindNode(armadura[a]).FindNode('DefesaBase');
  defesaArmadura := PassNode.FirstChild.NodeValue;

  passNode := xmlEscudo.DocumentElement.FindNode(escudo[e]).FindNode('DefesaBase');
  defesaEscudo := PassNode.FirstChild.NodeValue;

  passNode := xmlArmadura.DocumentElement.FindNode(armadura[a]).FindNode('Tipo');
  tipoDefesa := PassNode.FirstChild.NodeValue;

  defesaBase := StrToInt(defesaArmadura) + StrToInt(defesaEscudo);

  bonus := StrToInt(edtBonusArmadura.Text) + StrToInt(edtBonusElmo.Text) +
    StrToInt(edtBonusEscudo.Text);
  bonus2 := StrToInt(edtBonusArmadura.Text) + StrToInt(edtBonusElmo.Text);

  defesaAtiva := defesaBase + StrToInt(edtAgilidadeFinal.Text) + bonus;
  defesaPassiva := defesaBase + bonus2;

  edtDefesaAtiva.Text := tipoDefesa + IntToStr(defesaAtiva);

  edtDefesaPassiva.Text := tipoDefesa + IntToStr(defesaPassiva);

  xmlArmadura.Free;
  xmlEscudo.Free;
end;

procedure TfrmPrincipal.EEnergiaFisica;
var
  xmlArmadura, xmlEscudo, xmlElmo: TXMLDocument;
  passNode: TDOMNode;
  raca: array[0..5] of shortint;
  armadura: array[-1..4] of string;
  escudo: array[-1..1] of string;
  elmo: array[-1..1] of string;
  absorcaoArmadura, absorcaoEscudo, absorcaoElmo: string;
  r, a, e, ee, energiaFisica, absorcaoTotal: shortint;
begin
  {$IFDEF MSWINDOWS}
  ReadXmlFile(xmlArmadura, ExtractFileDir(Application.ExeName) +
    '\data\equipamentos\armaduras.xml');
  ReadXmlFile(xmlEscudo, ExtractFileDir(Application.ExeName) +
    '\data\equipamentos\escudos.xml');
  ReadXmlFile(xmlElmo, ExtractFileDir(Application.ExeName) +
    '\data\equipamentos\elmos.xml');
  {$ELSE}
  ReadXmlFile(xmlArmadura, ExtractFileDir(Application.ExeName) +
    '/data/equipamentos/armaduras.xml');
  ReadXmlFile(xmlEscudo, ExtractFileDir(Application.ExeName) +
    '/data/equipamentos/escudos.xml');
  ReadXmlFile(xmlElmo, ExtractFileDir(Application.ExeName) +
    '/data/equipamentos/elmos.xml');
  {$ENDIF}

  raca[0] := 15;
  raca[1] := 13;
  raca[2] := 12;
  raca[3] := 12;
  raca[4] := 12;
  raca[5] := 11;

  armadura[-1] := 'Nada';
  armadura[0] := 'CouroLeve';
  armadura[1] := 'CouroRigido';
  armadura[2] := 'CotaMalhaParcial';
  armadura[3] := 'CotaMalhaCompleta';
  armadura[4] := 'CouracaMetalicaParcial';

  escudo[-1] := 'Nada';
  escudo[0] := 'EscudoPequeno';
  escudo[1] := 'EscudoGrande';

  elmo[-1] := 'Nada';
  elmo[0] := 'ElmoAberto';
  elmo[1] := 'ElmoFechado';

  r := cbxRaca.ItemIndex;
  a := cbxArmadura.ItemIndex;
  e := cbxEscudo.ItemIndex;
  ee := cbxElmo.ItemIndex;

  energiaFisica := raca[r] + StrToInt(edtForcaFinal.Text) +
    StrToInt(edtFisicoFinal.Text);

  edtEnergiaFisica.Text := IntToStr(energiaFisica);

  passNode := xmlArmadura.DocumentElement.FindNode(armadura[a]).FindNode('Absorcao');
  absorcaoArmadura := PassNode.FirstChild.NodeValue;

  passNode := xmlEscudo.DocumentElement.FindNode(escudo[e]).FindNode('Absorcao');
  absorcaoEscudo := PassNode.FirstChild.NodeValue;

  passNode := xmlElmo.DocumentElement.FindNode(elmo[ee]).FindNode('Absorcao');
  absorcaoElmo := PassNode.FirstChild.NodeValue;

  absorcaoTotal := energiaFisica + StrToInt(absorcaoArmadura) +
    StrToInt(absorcaoEscudo) + StrToInt(absorcaoElmo);

  edtEnergiaFisicaAbsorcao.Text := IntToStr(absorcaoTotal);
end;

procedure TfrmPrincipal.EEnergiaHeroica;
var
  energiaHeroica, i: shortint;
  EHBasica: array[0..5] of shortint;
begin
  EHBasica[0] := 18;
  EHBasica[1] := 12;
  EHBasica[2] := 12;
  EHBasica[3] := 6;
  EHBasica[4] := 15;
  EHBasica[5] := 9;

  i := cbxProfissao.ItemIndex;

  energiaHeroica := EHBasica[i] + StrToInt(edtFisicoFinal.Text);

  edtEnergiaHeroica.Text := IntToStr(energiaHeroica);
end;

procedure TfrmPrincipal.EHabilidadesEspecializadas;
var
  profissao: shortint;
begin
  profissao := cbxProfissao.ItemIndex;

  if profissao = 2 then
    SpeedButton49.Enabled := False
  else
    SpeedButton49.Enabled := True;

  if profissao = 3 then
    SpeedButton48.Enabled := False
  else
    SpeedButton48.Enabled := True;

  if profissao = 4 then
    SpeedButton76.Enabled := False
  else
    SpeedButton76.Enabled := True;

  if profissao = 5 then
  begin
    SpeedButton51.Enabled := False;
    SpeedButton54.Enabled := False;
  end
  else
  begin
    SpeedButton51.Enabled := True;
    SpeedButton54.Enabled := True;
  end;
end;

function TfrmPrincipal.AvaNivelHabilidade(nivel: string): string;
var
  nivelAtual: integer;
begin
  nivelAtual := StrToInt(nivel) + 1;
  Result := IntToStr(nivelAtual);
end;

function TfrmPrincipal.TotalHabilidade(nivel, ajuste: string): string;
var
  HabilidadeTotal: integer;
begin
  if StrToInt(nivel) = 0 then
    ajuste := '0';
  HabilidadeTotal := StrToInt(nivel) + StrToInt(ajuste);
  Result := IntToStr(HabilidadeTotal);
end;

procedure TfrmPrincipal.CustoHabilidade1;
begin
  edtPontosRestantes.Text := IntToStr(StrToInt(edtPontosRestantes.Text) - 1);
end;

procedure TfrmPrincipal.CustoHabilidade2;
begin
  edtPontosRestantes.Text := IntToStr(StrToInt(edtPontosRestantes.Text) - 2);
end;

procedure TfrmPrincipal.CustoHabilidade3;
begin
  edtPontosRestantes.Text := IntToStr(StrToInt(edtPontosRestantes.Text) - 3);
end;

function TfrmPrincipal.TotalArma(arma: integer): string;
begin
  case arma of
    0: Result := IntToStr(StrToInt(edtCD.Text) + StrToInt(edtAgilidadeFinal.Text));
    1, 2: Result := IntToStr(StrToInt(edtCl.Text) + StrToInt(edtAgilidadeFinal.Text));
    3, 4: Result := IntToStr(StrToInt(edtEl.Text) + StrToInt(edtAgilidadeFinal.Text));
    5, 6, 7: Result := IntToStr(StrToInt(edtCmE.Text) +
        StrToInt(edtAgilidadeFinal.Text));
    8, 9, 10: Result := IntToStr(StrToInt(edtCmM.Text) +
        StrToInt(edtAgilidadeFinal.Text));
    11, 12, 13, 14: Result := IntToStr(StrToInt(edtEm.Text) +
        StrToInt(edtAgilidadeFinal.Text));
    15, 16, 17: Result := IntToStr(StrToInt(edtPmA.Text) +
        StrToInt(edtAgilidadeFinal.Text));
    18, 19, 20: Result := IntToStr(StrToInt(edtPmL.Text) +
        StrToInt(edtAgilidadeFinal.Text));
    21, 22, 23: Result := IntToStr(StrToInt(edtCpE.Text) +
        StrToInt(edtAgilidadeFinal.Text));
    24, 25: Result := IntToStr(StrToInt(edtCpM.Text) + StrToInt(edtAgilidadeFinal.Text));
    26, 27, 28: Result := IntToStr(StrToInt(edtEp.Text) +
        StrToInt(edtAgilidadeFinal.Text));
    29, 30: Result := IntToStr(StrToInt(edtPp.Text) + StrToInt(edtAgilidadeFinal.Text));
  end;
end;

function TfrmPrincipal.ImgToB64: string;
var
  ImagemMemoria: TMemoryStream;
  ImagemTexto: TStringStream;
begin
  ImagemMemoria := TMemoryStream.Create;
  ImagemTexto := TStringStream.Create('');

  image1.Picture.SaveToStream(ImagemMemoria);

  Imagemtexto.CopyFrom(ImagemMemoria, 0);
  ImagemTexto.Position := 0;

  Result := EncodeStringBase64(ImagemTexto.DataString);

  ImagemMemoria.Free;
  ImagemTexto.Free;
end;

function TfrmPrincipal.Magias(nivel, custo: string): string;
begin
  if nivel = '' then
    Result := '1'
  else
    Result := IntToStr(StrToInt(nivel) + 1);

  edtPontosRestantesMagia.Text :=
    IntToStr(StrToInt(edtPontosRestantesMagia.Text) - StrToInt(custo));
end;

procedure TfrmPrincipal.AbrirFichaXML(Local: string);
var
  xmlFichaSalva: TXMLDocument;
  PassNode: TDOMNode;
  i: integer;
  Imagem: TStringList;
  DecodeImage: string;
  foto: TStringStream;
begin
  NovoPersonagem;

  ReadXMLFile(xmlFichaSalva, Local);

  EstadoSalvar := False;

  try
    //Caracteristicas
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('Nome');
    edtNome.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('Estagio');
    edtEstagio.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Caracteristicas').FindNode(
      'Experiencia');
    edtExperiencia.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('Raca');
    cbxRaca.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
    cbxRacaChange(cbxRaca);

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Caracteristicas').FindNode(
      'Profissao');
    cbxProfissao.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
    cbxProfissaoChange(cbxProfissao);

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Caracteristicas').FindNode(
      'Especializacao');
    cbxEspecializacao.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('Altura');
    edtAltura.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('Peso');
    edtPeso.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('Idade');
    edtIdade.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('Olhos');
    edtOlhos.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('Cabelos');
    edtCabelos.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('Pele');
    edtPele.Text := PassNode.FirstChild.NodeValue;


    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('Deus');
    cbxDeus.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('ClasseSocial');
    edtClasseSocial.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('TerraNatal');
    edtTerraNatal.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Caracteristicas').FindNode('Historia');
    memHistoria.Text := PassNode.FirstChild.NodeValue;

    //Atributos
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Atributos').FindNode('Intelecto');
    edtIntelectoFinal.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Atributos').FindNode('Aura');
    edtAuraFinal.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Atributos').FindNode('Carisma');
    edtCarismaFinal.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Atributos').FindNode('Forca');
    edtForcaFinal.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Atributos').FindNode('Fisico');
    edtFisicoFinal.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Atributos').FindNode('Agilidade');
    edtAgilidadeFinal.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Atributos').FindNode('Percepcao');
    edtPercepcaoFinal.Text := PassNode.FirstChild.NodeValue;

    //Habilidades
    //Profissional
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Profissional').FindNode('Carpintaria');
    edtNivelCarpintaria.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Profissional').FindNode('Engenharia');
    edtNivelEngenharia.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Profissional').FindNode('Medicina');
    edtNivelMedicina.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Profissional').FindNode('Nautica');
    edtNivelNautica.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Profissional').FindNode('TrabalhoMetal');
    edtNivelTrabalhoMetal.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Profissional').FindNode('TrabalhosManuais');
    edtNivelTrabalhosManuais.Text := PassNode.FirstChild.NodeValue;

    //Manobra
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Manobra').FindNode('Acrobacias');
    edtNivelAcrobacias.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Manobra').FindNode('Corrida');
    edtNivelCorrida.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Manobra').FindNode('EscalarSuperficies');
    edtNivelEscalarSuperficies.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Manobra').FindNode('Malabarismo');
    edtNivelMalabarismo.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Manobra').FindNode('MontarAnimais');
    edtNivelMontarAnimais.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Manobra').FindNode('Natacao');
    edtNivelNatacao.Text := PassNode.FirstChild.NodeValue;

    //Conhecimento
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Conhecimento').FindNode('Escrita');
    edtNivelEscrita.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Conhecimento').FindNode('Herbalismo');
    edtNivelHerbalismo.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Conhecimento').FindNode('Lingua');
    edtNivelLingua.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Conhecimento').FindNode('Misticismo');
    edtNivelMisticismo.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Conhecimento').FindNode('Religiao');
    edtNivelReligiao.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Conhecimento').FindNode('Veneficio');
    edtNivelVeneficio.Text := PassNode.FirstChild.NodeValue;

    //Subterfúgio
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Subterfugio').FindNode('AcoesFurtivas');
    edtNivelAcoesFurtivas.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Subterfugio').FindNode('DestrancarFechaduras');
    edtNivelDestrancarFechaduras.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Subterfugio').FindNode('Disfarces');
    edtNivelDisfarces.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Subterfugio').FindNode('Escapar');
    edtNivelEscapar.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Subterfugio').FindNode('Falsificacao');
    edtNivelFalsificacao.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Subterfugio').FindNode('FurtarObjetos');
    edtNivelFurtarObjetos.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Subterfugio').FindNode('Jogatina');
    edtNivelJogatina.Text := PassNode.FirstChild.NodeValue;

    //Influência
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Influencia').FindNode('Arte');
    edtNivelArte.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Influencia').FindNode('Barganha');
    edtNivelBarganha.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Influencia').FindNode('Comercio');
    edtNivelComercio.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Influencia').FindNode('Etiqueta');
    edtNivelEtiqueta.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Influencia').FindNode('Lideranca');
    edtNivelLideranca.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Influencia').FindNode('Persuasao');
    edtNivelPersuasao.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Influencia').FindNode('Seducao');
    edtNivelSeducao.Text := PassNode.FirstChild.NodeValue;

    //Geral
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Geral').FindNode('Escutar');
    edtNivelEscutar.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Geral').FindNode('LidarAnimais');
    edtNivelLidarAnimais.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Geral').FindNode('ManusearArmadilhas');
    edtNivelManusearArmadilhas.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Geral').FindNode('Navegacao');
    edtNivelNavegacao.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Geral').FindNode('Observar');
    edtNivelObservar.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Geral').FindNode('SeguirTrilhas');
    edtNivelSeguirTrilhas.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Habilidades').FindNode('Geral').FindNode('Sobrevivencia');
    edtNivelSobrevivencia.Text := PassNode.FirstChild.NodeValue;

    //Combate
    //Arma 1
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Combate').FindNode('Armas').FindNode('Arma1');
    cbxArma1.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
    cbxArma1Change(cbxArma1);

    //Arma 2
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Combate').FindNode('Armas').FindNode('Arma2');
    cbxArma2.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
    cbxArma2Change(cbxArma2);

    //Arma 3
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Combate').FindNode('Armas').FindNode('Arma3');
    cbxArma3.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
    cbxArma3Change(cbxArma3);

    //Arma 4
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Combate').FindNode('Armas').FindNode('Arma4');
    cbxArma4.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
    cbxArma4Change(cbxArma4);

    //Arma 5
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'Combate').FindNode('Armas').FindNode('Arma5');
    cbxArma5.ItemIndex := StrToInt(PassNode.FirstChild.NodeValue);
    cbxArma5Change(cbxArma1);

    //Tecnicas de Combate
    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('CD');
    edtCD.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('CL');
    edtCl.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('El');
    edtEl.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('CmE');
    edtCmE.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('CmM');
    edtCmM.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('Em');
    edtEm.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('PmA');
    edtPmA.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('PmL');
    edtPmL.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('CpE');
    edtCpE.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('CpM');
    edtCpM.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('Ep');
    edtEp.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'HabilidadesArmas').FindNode('Pp');
    edtPp.Text := PassNode.FirstChild.NodeValue;

    //Tecnicas de Combate
    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'TecnicasCombate').FindNode('Ambidestria');
    edtAmbidestria.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'TecnicasCombate').FindNode('Aparar');
    edtAparar.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'TecnicasCombate').FindNode('AtaqueOportuno');
    edtAtaqueOportuno.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'TecnicasCombate').FindNode('AtaqueSurpresa');
    edtAtaqueSurpresa.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'TecnicasCombate').FindNode('AtirarMovimento');
    edtAtirarMovimento.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'TecnicasCombate').FindNode('Carga');
    edtCarga.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'TecnicasCombate').FindNode('CombateMontado');
    edtCombateMontado.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'TecnicasCombate').FindNode('Esquiva');
    edtEsquiva.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'TecnicasCombate').FindNode('LutaCegas');
    edtLutaCegas.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'TecnicasCombate').FindNode('ResistenciaDor');
    edtResistenciaDor.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Combate').FindNode(
      'TecnicasCombate').FindNode('CombateNaoLetal');
    edtCombateNaoLetal.Text := PassNode.FirstChild.NodeValue;

    //Magias
    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia1');
    edtNivelMagia1.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia2');
    edtNivelMagia2.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia3');
    edtNivelMagia3.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia4');
    edtNivelMagia4.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia5');
    edtNivelMagia5.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia6');
    edtNivelMagia6.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia7');
    edtNivelMagia7.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia8');
    edtNivelMagia8.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia9');
    edtNivelMagia9.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia10');
    edtNivelMagia10.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia11');
    edtNivelMagia11.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia12');
    edtNivelMagia12.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia13');
    edtNivelMagia13.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia14');
    edtNivelMagia14.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia15');
    edtNivelMagia15.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Magias').FindNode('Magia16');
    edtNivelMagia16.Text := PassNode.FirstChild.NodeValue;

    //Pertences e Afins
    //Equipamentos
    PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
      'Equipamentos').FindNode('Armadura');
    cbxArmadura.ItemIndex := StrToInt(PassNode.Attributes.Item[0].NodeValue);

    PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
      'Equipamentos').FindNode('Escudo');
    cbxEscudo.ItemIndex := StrToInt(PassNode.Attributes.Item[0].NodeValue);

    PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
      'Equipamentos').FindNode('Elmo');
    cbxElmo.ItemIndex := StrToInt(PassNode.Attributes.Item[0].NodeValue);

    PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
      'Equipamentos').FindNode('Armadura');
    edtBonusArmadura.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
      'Equipamentos').FindNode('Escudo');
    edtBonusEscudo.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
      'Equipamentos').FindNode('Elmo');
    edtBonusElmo.Text := PassNode.FirstChild.NodeValue;

    //Dinheiro
    PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
      'Dinheiro').FindNode('MoedasCobre');
    edtMoedasCobre.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
      'Dinheiro').FindNode('MoedasPrata');
    edtMoedasPrata.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('PertencesAfins').FindNode(
      'Dinheiro').FindNode('MoedasOuro');
    edtMoedasOuro.Text := PassNode.FirstChild.NodeValue;

    //Objetos
    PassNode := xmlFichaSalva.DocumentElement.FindNode(
      'PertencesAfins').FindNode('Objetos');
    memObjetos.Lines.Text := PassNode.FirstChild.NodeValue;

    //Controle
    PassNode := xmlFichaSalva.DocumentElement.FindNode('Controle').FindNode(
      'Especializacao');
    cbxEspecializacao.Enabled := StrToBool(PassNode.FirstChild.NodeValue);

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Controle').FindNode(
      'PontosAtributos');
    edtPontos.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Controle').FindNode(
      'PontosHabilidades');
    edtPontosRestantes.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Controle').FindNode(
      'PontosGrupoArmas');
    edtPontosRestantesGrupoArmas.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Controle').FindNode(
      'PontosTecnicasCombate');
    edtPontosRestantesTecnicasCombate.Text := PassNode.FirstChild.NodeValue;

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Controle').FindNode(
      'PontosMagia');
    edtPontosRestantesMagia.Text := PassNode.FirstChild.NodeValue;

    //Imagem

    PassNode := xmlFichaSalva.DocumentElement.FindNode('Imagem').FindNode('Foto');
    try
      Imagem := TStringList.Create;

      Imagem.Text := PassNode.FirstChild.NodeValue;

      DecodeImage := DecodeStringBase64(Imagem.Text);

      foto := TStringStream.Create(DecodeImage);

      Image1.Picture.LoadFromStream(foto);

    finally
      Imagem.Free;
      foto.Free;
    end;

  finally
    xmlFichaSalva.Free;
    PassNode.Free;

    for i := 0 to ComponentCount - 1 do
      if Components[i] is TEdit then
        if TEdit(Components[i]).Text = 'null' then
          TEdit(Components[i]).Text := '';

    if memHistoria.Lines.Text = 'null' then
      memHistoria.Lines.Text := '';

    if memObjetos.Lines.Text = 'null' then
      memObjetos.Lines.Text := '';
  end;
end;

procedure TfrmPrincipal.NovoPersonagem;
begin
  pgcFicha.ActivePageIndex := 0;
  edtNome.Enabled := True;
  edtNome.SetFocus;
  cbxRaca.Enabled := True;
  cbxProfissao.Enabled := True;
  EstadoSalvar := True;

  //Caracteristicas
  edtNome.Clear;
  edtEstagio.Text := '1';
  edtExperiencia.Text := '0';
  cbxRaca.ItemIndex := 0;
  cbxProfissao.ItemIndex := 0;
  cbxEspecializacao.ItemIndex := -1;
  edtAltura.Clear;
  edtPeso.Clear;
  edtIdade.Clear;
  edtOlhos.Clear;
  edtCabelos.Clear;
  edtPele.Clear;
  cbxDeus.ItemIndex := -1;
  edtClasseSocial.Text := 'Livre';
  edtTerraNatal.Clear;
  memHistoria.Clear;

  //Atributos
  edtPontos.Text := '15';

  edtIntelecto.Text := '0';
  edtAura.Text := '0';
  edtCarisma.Text := '0';
  edtForca.Text := '0';
  edtFisico.Text := '0';
  edtAgilidade.Text := '0';
  edtPercepcao.Text := '0';

  edtIntelectoFinal.Text := '0';
  edtAuraFinal.Text := '0';
  edtCarismaFinal.Text := '0';
  edtForcaFinal.Text := '0';
  edtFisicoFinal.Text := '0';
  edtAgilidadeFinal.Text := '0';
  edtPercepcaoFinal.Text := '0';

  //Habilidades
  edtPontosAquisicao.Clear;
  edtPontosAquisicao.Text := '14';

  edtNivelCarpintaria.Text := '0';
  edtNivelEngenharia.Text := '0';
  edtNivelMedicina.Text := '0';
  edtNivelNautica.Text := '0';
  edtNivelTrabalhoMetal.Text := '0';
  edtNivelTrabalhosManuais.Text := '0';

  edtNivelAcrobacias.Text := '0';
  edtNivelCorrida.Text := '0';
  edtNivelEscalarSuperficies.Text := '0';
  edtNivelMalabarismo.Text := '0';
  edtNivelMontarAnimais.Text := '0';
  edtNivelNatacao.Text := '0';

  edtNivelEscrita.Text := '0';
  edtNivelHerbalismo.Text := '0';
  edtNivelLingua.Text := '0';
  edtNivelMisticismo.Text := '0';
  edtNivelReligiao.Text := '0';
  edtNivelVeneficio.Text := '0';

  edtNivelAcoesFurtivas.Text := '0';
  edtNivelDestrancarFechaduras.Text := '0';
  edtNivelDisfarces.Text := '0';
  edtNivelEscapar.Text := '0';
  edtNivelFalsificacao.Text := '0';
  edtNivelFurtarObjetos.Text := '0';
  edtNivelJogatina.Text := '0';

  edtNivelArte.Text := '0';
  edtNivelBarganha.Text := '0';
  edtNivelComercio.Text := '0';
  edtNivelEtiqueta.Text := '0';
  edtNivelLideranca.Text := '0';
  edtNivelPersuasao.Text := '0';
  edtNivelSeducao.Text := '0';

  edtNivelEscutar.Text := '0';
  edtNivelLidarAnimais.Text := '0';
  edtNivelManusearArmadilhas.Text := '0';
  edtNivelNavegacao.Text := '0';
  edtNivelObservar.Text := '0';
  edtNivelSeguirTrilhas.Text := '0';
  edtNivelSobrevivencia.Text := '0';

  //Combate
  edtPontosGrupoArmas.Text := '7';
  edtPontosTecnicasCombate.Text := '7';

  //Arma1
  cbxAlcanceArma1.ItemIndex := -1;
  cbxGrupoArma1.ItemIndex := -1;
  cbxArma1.ItemIndex := -1;

  edtLArma1.Clear;
  edtMArma1.Clear;
  edtPArma1.Clear;

  edtTotalArma1.Clear;

  edt100Arma1.Clear;
  edt75Arma1.Clear;
  edt50Arma1.Clear;
  edt25Arma1.Clear;

  btnLimparArma1.Enabled := False;

  //Arma2
  cbxAlcanceArma2.ItemIndex := -1;
  cbxGrupoArma2.ItemIndex := -1;
  cbxArma2.ItemIndex := -1;

  edtLArma2.Clear;
  edtMArma2.Clear;
  edtPArma2.Clear;

  edtTotalArma2.Clear;

  edt100Arma2.Clear;
  edt75Arma2.Clear;
  edt50Arma2.Clear;
  edt25Arma2.Clear;

  btnLimparArma2.Enabled := False;

  //Arma3
  cbxAlcanceArma3.ItemIndex := -1;
  cbxGrupoArma3.ItemIndex := -1;
  cbxArma3.ItemIndex := -1;

  edtLArma3.Clear;
  edtMArma3.Clear;
  edtPArma3.Clear;

  edtTotalArma3.Clear;

  edt100Arma3.Clear;
  edt75Arma3.Clear;
  edt50Arma3.Clear;
  edt25Arma3.Clear;

  btnLimparArma3.Enabled := False;

  //Arma4
  cbxAlcanceArma4.ItemIndex := -1;
  cbxGrupoArma4.ItemIndex := -1;
  cbxArma4.ItemIndex := -1;

  edtLArma4.Clear;
  edtMArma4.Clear;
  edtPArma4.Clear;

  edtTotalArma4.Clear;

  edt100Arma4.Clear;
  edt75Arma4.Clear;
  edt50Arma4.Clear;
  edt25Arma4.Clear;

  btnLimparArma4.Enabled := False;

  //Arma5
  cbxAlcanceArma5.ItemIndex := -1;
  cbxGrupoArma5.ItemIndex := -1;
  cbxArma5.ItemIndex := -1;

  edtLArma5.Clear;
  edtMArma5.Clear;
  edtPArma5.Clear;

  edtTotalArma5.Clear;

  edt100Arma5.Clear;
  edt75Arma5.Clear;
  edt50Arma5.Clear;
  edt25Arma5.Clear;

  btnLimparArma5.Enabled := False;

  //Habilidade Grupo de Arma
  edtCD.Text := '0';
  edtCl.Text := '0';
  edtEl.Text := '0';
  edtCmE.Text := '0';
  edtCmM.Text := '0';
  edtEm.Text := '0';
  edtPmA.Text := '0';
  edtPmL.Text := '0';
  edtCpE.Text := '0';
  edtCpM.Text := '0';
  edtEp.Text := '0';
  edtPp.Text := '0';

  //Tecnicas de Combate
  edtAmbidestria.Text := '0';
  edtAparar.Text := '0';
  edtAtaqueOportuno.Text := '0';
  edtAtaqueSurpresa.Text := '0';
  edtAtirarMovimento.Text := '0';
  edtCarga.Text := '0';
  edtCombateMontado.Text := '0';
  edtEsquiva.Text := '0';
  edtLutaCegas.Text := '0';
  edtResistenciaDor.Text := '0';
  edtCombateNaoLetal.Text := '0';

  //Magias
  edtMagia1.Clear;
  edtMagia2.Clear;
  edtMagia3.Clear;
  edtMagia4.Clear;
  edtMagia5.Clear;
  edtMagia6.Clear;
  edtMagia7.Clear;
  edtMagia8.Clear;
  edtMagia9.Clear;
  edtMagia10.Clear;
  edtMagia11.Clear;
  edtMagia12.Clear;
  edtMagia13.Clear;
  edtMagia14.Clear;
  edtMagia15.Clear;
  edtMagia16.Clear;

  edtNivelMagia1.Clear;
  edtNivelMagia2.Clear;
  edtNivelMagia3.Clear;
  edtNivelMagia4.Clear;
  edtNivelMagia5.Clear;
  edtNivelMagia6.Clear;
  edtNivelMagia7.Clear;
  edtNivelMagia8.Clear;
  edtNivelMagia9.Clear;
  edtNivelMagia10.Clear;
  edtNivelMagia11.Clear;
  edtNivelMagia12.Clear;
  edtNivelMagia13.Clear;
  edtNivelMagia14.Clear;
  edtNivelMagia15.Clear;
  edtNivelMagia16.Clear;

  edtCustoMagia1.Clear;
  edtCustoMagia2.Clear;
  edtCustoMagia3.Clear;
  edtCustoMagia4.Clear;
  edtCustoMagia5.Clear;
  edtCustoMagia6.Clear;
  edtCustoMagia7.Clear;
  edtCustoMagia8.Clear;
  edtCustoMagia9.Clear;
  edtCustoMagia10.Clear;
  edtCustoMagia11.Clear;
  edtCustoMagia12.Clear;
  edtCustoMagia13.Clear;
  edtCustoMagia14.Clear;
  edtCustoMagia15.Clear;
  edtCustoMagia16.Clear;

  edtTotalMagia1.Clear;
  edtTotalMagia2.Clear;
  edtTotalMagia3.Clear;
  edtTotalMagia4.Clear;
  edtTotalMagia5.Clear;
  edtTotalMagia6.Clear;
  edtTotalMagia7.Clear;
  edtTotalMagia8.Clear;
  edtTotalMagia9.Clear;
  edtTotalMagia10.Clear;
  edtTotalMagia11.Clear;
  edtTotalMagia12.Clear;
  edtTotalMagia13.Clear;
  edtTotalMagia14.Clear;
  edtTotalMagia15.Clear;
  edtTotalMagia16.Clear;

  //Pertences
  cbxArmadura.ItemIndex := 0;
  cbxEscudo.ItemIndex := 0;
  cbxElmo.ItemIndex := -1;

  memObjetos.Lines.Clear;

  edtMoedasCobre.Text := '5';
  edtMoedasPrata.Text := '0';
  edtMoedasOuro.Text := '0';

  //Foto
  {$IFDEF MSWINDOWS}
  Image1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '\data\imagens\sem_foto.png');
  {$ELSE}
  Image1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) +
    '/data/imagens/sem_foto.png');
  {$ENDIF}
end;

end.
