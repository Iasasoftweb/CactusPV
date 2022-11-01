object FrmTransaciones: TFrmTransaciones
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Control de Transaciones'
  ClientHeight = 513
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GP1: TcxGroupBox
    Left = 120
    Top = 24
    Enabled = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 65
    Width = 585
    object Label1: TLabel
      Left = 32
      Top = 27
      Width = 33
      Height = 25
      Caption = '000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 128
      Top = 18
      Width = 29
      Height = 13
      Caption = 'Fecha'
      FocusControl = cxDBSpinEdit2
    end
    object Label3: TLabel
      Left = 32
      Top = 18
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = cxDBSpinEdit2
    end
    object Label4: TLabel
      Left = 252
      Top = 18
      Width = 103
      Height = 13
      Caption = 'Estado de Transaci'#243'n'
      FocusControl = cxDBSpinEdit2
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 65
      Top = 27
      TabStop = False
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = DsZTBanco
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.ImmediatePost = True
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.BorderColor = clBtnFace
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.ButtonStyle = btsFlat
      Style.ButtonTransparency = ebtNone
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 46
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 125
      Top = 31
      DataBinding.DataField = 'FECHA'
      DataBinding.DataSource = DsZTBanco
      TabOrder = 1
      Width = 121
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 252
      Top = 31
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = DsZTBanco
      Properties.Items.Strings = (
        'ENTRADA'
        'SALIDA')
      TabOrder = 2
      Width = 121
    end
  end
  object GP2: TcxGroupBox
    Left = 120
    Top = 95
    Enabled = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    TabOrder = 1
    Height = 416
    Width = 585
    object Label5: TLabel
      Left = 65
      Top = 14
      Width = 106
      Height = 13
      Caption = 'Tipo de Transaci'#243'n'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 68
      Top = 62
      Width = 107
      Height = 13
      Caption = 'Numero de Cuenta '
      FocusControl = cxDBTextEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 112
      Width = 74
      Height = 14
      Caption = 'Observaci'#243'n'
      FocusControl = cxDBMemo1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 348
      Top = 232
      Width = 61
      Height = 16
      Caption = 'Monto $$'
      FocusControl = cxDBCalcEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 30
      Top = 253
      Width = 170
      Height = 13
      Caption = 'Cuentas Contrables Afectadas'
      FocusControl = cxDBTextEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 24
      Top = 25
      Width = 38
      Height = 25
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 980
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 0
      OnClick = cxButton2Click
    end
    object cxDBSpinEdit3: TcxDBSpinEdit
      Left = 65
      Top = 27
      DataBinding.DataField = 'ID_TIPOTRANS'
      DataBinding.DataSource = DsZTBanco
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = 10930928
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 50
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 117
      Top = 27
      DataBinding.DataField = 'TRANSACION'
      DataBinding.DataSource = DsZTBanco
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = 10930928
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 276
    end
    object cxButton3: TcxButton
      Left = 24
      Top = 72
      Width = 38
      Height = 25
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.ImageIndex = 980
      OptionsImage.Images = FrmHome.RibbonImages16
      TabOrder = 3
      OnClick = cxButton3Click
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 190
      Top = 75
      DataBinding.DataField = 'BANCO'
      DataBinding.DataSource = DsZTBanco
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = 10930928
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 203
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 67
      Top = 75
      DataBinding.DataField = 'NO_CTA'
      DataBinding.DataSource = DsZTBanco
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = 10930928
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo
      Left = 24
      Top = 128
      DataBinding.DataField = 'OBSERVACION'
      DataBinding.DataSource = DsZTBanco
      Properties.CharCase = ecUpperCase
      Style.LookAndFeel.SkinName = 'Caramel'
      StyleDisabled.LookAndFeel.SkinName = 'Caramel'
      StyleFocused.LookAndFeel.SkinName = 'Caramel'
      StyleHot.LookAndFeel.SkinName = 'Caramel'
      TabOrder = 6
      Height = 89
      Width = 545
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 415
      Top = 223
      DataBinding.DataField = 'MONTO'
      DataBinding.DataSource = DsZTBanco
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 154
    end
    object cxGrid1: TcxGrid
      Left = 24
      Top = 268
      Width = 537
      Height = 117
      TabOrder = 8
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.NoDataToDisplayInfoText = 'No Data'
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'No. Cta.'
          Width = 81
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Descripcion de Cta'
          Width = 390
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object nuevo: TcxButton
    Left = 8
    Top = 32
    Width = 98
    Height = 36
    Caption = '&Nuevo'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    OptionsImage.ImageIndex = 137
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 2
    OnClick = nuevoClick
  end
  object guardar: TcxButton
    Left = 8
    Top = 74
    Width = 98
    Height = 35
    Caption = '&Guardar '
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    OptionsImage.ImageIndex = 9
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 3
    OnClick = guardarClick
  end
  object cxButton1: TcxButton
    Left = 8
    Top = 115
    Width = 98
    Height = 35
    Caption = '&Cancelar'
    Enabled = False
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VisualStudio2013Light'
    OptionsImage.ImageIndex = 45
    OptionsImage.Images = FrmHome.RibbonImages16
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object Edit1: TEdit
    Left = 608
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object Numero: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(id) from TB_TBANCO')
    Params = <>
    Left = 72
    Top = 272
    object NumeroMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object DsZTBanco: TDataSource
    DataSet = datos.ZTBanco
    Left = 56
    Top = 344
  end
  object Actualiza: TZReadOnlyQuery
    Connection = datos.Data
    Params = <>
    Left = 600
    Top = 104
  end
  object NUmero2: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      'select max(id) from TB_TRANSACIONES')
    Params = <>
    Left = 32
    Top = 272
    object NUmero2MAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object Balance: TZReadOnlyQuery
    Connection = datos.Data
    SQL.Strings = (
      
        'select first 1 max(fecha) Fecha,   MAX(ID), ultimo from tb_trans' +
        'aciones'
      'group by ultimo, ID'
      'ORDER BY ID DESC'
      '')
    Params = <>
    Left = 536
    Top = 160
    object BalanceFECHA: TDateField
      FieldName = 'FECHA'
      ReadOnly = True
    end
    object BalanceULTIMO: TFloatField
      FieldName = 'ULTIMO'
    end
  end
end
