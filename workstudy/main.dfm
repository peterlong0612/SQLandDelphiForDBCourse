object mainwindow: Tmainwindow
  Left = 0
  Top = 0
  Caption = #29702#24037#22823#23398#21220#24037#21161#23398#31649#29702#31995#32479
  ClientHeight = 486
  ClientWidth = 824
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 486
    Align = alClient
    Caption = 'Panel1'
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 822
      Height = 484
      ActivePage = cal_money
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object pagesearch: TTabSheet
        Caption = #26597#35810#26174#31034
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 814
          Height = 369
          Align = alTop
          Caption = 'Panel11'
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 812
            Height = 367
            Align = alClient
            DataSource = DataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 369
          Width = 814
          Height = 87
          Align = alClient
          Caption = 'Panel12'
          TabOrder = 1
          object sqlmessageList: TListBox
            Left = 1
            Top = 1
            Width = 812
            Height = 85
            Align = alClient
            Color = clInfoBk
            ItemHeight = 13
            Items.Strings = (
              #28040#24687#65306)
            TabOrder = 0
          end
        end
      end
      object pageinsert: TTabSheet
        Caption = #25554#20837#20540
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PageControlinsert: TPageControl
          Left = 0
          Top = 0
          Width = 814
          Height = 456
          ActivePage = insertxb
          Align = alClient
          TabOrder = 0
          OnChange = PageControlinsertChange
          object insertxb: TTabSheet
            Caption = #31995#34920'-xb'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object insertxb_panel: TPanel
              Left = 0
              Top = 0
              Width = 806
              Height = 428
              Align = alClient
              Color = clGradientInactiveCaption
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
              object insertxb_label_xdh: TLabel
                Left = 403
                Top = 113
                Width = 48
                Height = 19
                Caption = #31995#20195#21495
              end
              object insertxb_label_xmc: TLabel
                Left = 403
                Top = 169
                Width = 48
                Height = 19
                Caption = #31995#21517#31216
              end
              object insertxb_edit1: TEdit
                Left = 464
                Top = 111
                Width = 121
                Height = 27
                TabOrder = 0
              end
              object insertxb_edit2: TEdit
                Left = 464
                Top = 167
                Width = 121
                Height = 27
                TabOrder = 1
              end
              object insertxb_btn1: TButton
                Left = 473
                Top = 240
                Width = 96
                Height = 25
                Caption = #30830#35748
                TabOrder = 2
                OnClick = insertxb_btn1Click
              end
              object insertxb_ListBox1: TListBox
                Left = 1
                Top = 1
                Width = 200
                Height = 426
                Align = alLeft
                ItemHeight = 19
                TabOrder = 3
              end
            end
          end
          object insertdw: TTabSheet
            Caption = #21333#20301'-dw'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 1
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object insertdw_label1: TLabel
              Left = 327
              Top = 34
              Width = 45
              Height = 19
              Caption = #21333#20301'id'
            end
            object insertdw_label2: TLabel
              Left = 327
              Top = 82
              Width = 64
              Height = 19
              Caption = #21333#20301#21517#31216
            end
            object insertdw_label3: TLabel
              Left = 329
              Top = 131
              Width = 32
              Height = 19
              Caption = #31867#22411
            end
            object insertdw_label4: TLabel
              Left = 327
              Top = 179
              Width = 64
              Height = 19
              Caption = #32852#31995#30005#35805
            end
            object insertdw_label5: TLabel
              Left = 327
              Top = 227
              Width = 32
              Height = 19
              Caption = #22320#22336
            end
            object insertdw_label6: TLabel
              Left = 327
              Top = 275
              Width = 48
              Height = 19
              Caption = #36127#36131#20154
            end
            object insertdw_label7: TLabel
              Left = 327
              Top = 323
              Width = 112
              Height = 19
              Caption = #36127#36131#20154#32852#31995#30005#35805
            end
            object insertdw_btn1: TButton
              Left = 377
              Top = 376
              Width = 96
              Height = 25
              Caption = #30830#35748
              TabOrder = 0
              OnClick = insertdw_btn1Click
            end
            object insertdw_dwid: TEdit
              Left = 448
              Top = 31
              Width = 121
              Height = 27
              TabOrder = 1
            end
            object insertdw_mc: TEdit
              Left = 448
              Top = 79
              Width = 121
              Height = 27
              TabOrder = 2
            end
            object ListBox1: TListBox
              Left = 0
              Top = 0
              Width = 200
              Height = 428
              Align = alLeft
              ItemHeight = 19
              TabOrder = 3
            end
            object insertdw_lx: TEdit
              Left = 448
              Top = 128
              Width = 121
              Height = 27
              TabOrder = 4
            end
            object insertdw_tel: TEdit
              Left = 448
              Top = 176
              Width = 121
              Height = 27
              TabOrder = 5
            end
            object insertdw_addr: TEdit
              Left = 448
              Top = 224
              Width = 121
              Height = 27
              TabOrder = 6
            end
            object insertdw_pcp: TEdit
              Left = 448
              Top = 272
              Width = 121
              Height = 27
              TabOrder = 7
            end
            object insertdw_pcptel: TEdit
              Left = 448
              Top = 323
              Width = 121
              Height = 27
              TabOrder = 8
            end
          end
          object insertxs: TTabSheet
            Caption = #23398#29983'-xs'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 2
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 806
              Height = 428
              Align = alClient
              TabOrder = 0
              object insertxs_label1: TLabel
                Left = 536
                Top = 40
                Width = 32
                Height = 19
                Caption = #23398#21495
              end
              object insertxs_label2: TLabel
                Left = 536
                Top = 91
                Width = 32
                Height = 19
                Caption = #22995#21517
              end
              object insertxs_label3: TLabel
                Left = 536
                Top = 147
                Width = 48
                Height = 19
                Caption = #31995#20195#21495
              end
              object insertxs_label4: TLabel
                Left = 536
                Top = 199
                Width = 64
                Height = 19
                Caption = #20986#29983#26085#26399
              end
              object insertxs_label6: TLabel
                Left = 536
                Top = 327
                Width = 32
                Height = 19
                Caption = #25163#26426
              end
              object insertxs_xh: TEdit
                Left = 608
                Top = 37
                Width = 121
                Height = 27
                TabOrder = 0
              end
              object insertxs_xm: TEdit
                Left = 608
                Top = 88
                Width = 121
                Height = 27
                TabOrder = 1
              end
              object insertxs_xdh: TEdit
                Left = 608
                Top = 144
                Width = 121
                Height = 27
                TabOrder = 2
              end
              object insertxs_csrq: TEdit
                Left = 608
                Top = 196
                Width = 121
                Height = 27
                TabOrder = 3
              end
              object insertxs_tel: TEdit
                Left = 608
                Top = 322
                Width = 121
                Height = 27
                TabOrder = 4
              end
              object insertxs_btn1: TBitBtn
                Left = 568
                Top = 371
                Width = 113
                Height = 30
                Caption = #30830#35748
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 5
                OnClick = insertxs_btn1Click
              end
              object insertxs_xb: TRadioGroup
                Left = 536
                Top = 240
                Width = 169
                Height = 65
                Caption = #24615#21035
                Columns = 2
                Items.Strings = (
                  #30007
                  #22899)
                TabOrder = 6
                OnClick = insertxs_xbClick
              end
            end
          end
          object insertly: TTabSheet
            Caption = #23703#20301#24405#29992'-ly'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 3
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 806
              Height = 428
              Align = alClient
              TabOrder = 0
              object insertly_label1: TLabel
                Left = 504
                Top = 99
                Width = 77
                Height = 19
                Caption = #24405#29992#21333#20301'id'
              end
              object insertly_label2: TLabel
                Left = 485
                Top = 182
                Width = 96
                Height = 19
                Caption = #24405#29992#23398#29983#23398#21495
              end
              object insertly_btn1: TBitBtn
                Left = 568
                Top = 243
                Width = 75
                Height = 25
                Caption = #30830#35748
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 0
                OnClick = insertly_btn1Click
              end
              object insertly_dwid: TEdit
                Left = 608
                Top = 96
                Width = 121
                Height = 27
                TabOrder = 1
              end
              object insertly_xh: TEdit
                Left = 608
                Top = 179
                Width = 121
                Height = 27
                TabOrder = 2
              end
            end
          end
          object insertcard: TTabSheet
            Caption = #38134#34892#21345#21495'-card'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 4
            ParentFont = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 806
              Height = 428
              Align = alClient
              TabOrder = 0
              object insertcard_label1: TLabel
                Left = 552
                Top = 110
                Width = 32
                Height = 19
                Caption = #23398#21495
              end
              object insertcard_label2: TLabel
                Left = 552
                Top = 182
                Width = 32
                Height = 19
                Caption = #21345#21495
              end
              object insertcard_btn1: TBitBtn
                Left = 576
                Top = 258
                Width = 75
                Height = 25
                Caption = #30830#35748
                DoubleBuffered = True
                ParentDoubleBuffered = False
                TabOrder = 0
                OnClick = insertcard_btn1Click
              end
              object insertcard_xh: TEdit
                Left = 600
                Top = 107
                Width = 121
                Height = 27
                TabOrder = 1
              end
              object insertcard_num: TEdit
                Left = 600
                Top = 179
                Width = 121
                Height = 27
                TabOrder = 2
              end
            end
          end
        end
      end
      object pageupdate: TTabSheet
        Caption = #26356#26032#20540
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 814
          Height = 456
          Align = alClient
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object update_Label1: TLabel
            Left = 171
            Top = 128
            Width = 64
            Height = 19
            Caption = #26356#25913#30340#34920
          end
          object update_Label2: TLabel
            Left = 203
            Top = 179
            Width = 32
            Height = 19
            Caption = #21015#21517
          end
          object update_Label3: TLabel
            Left = 96
            Top = 236
            Width = 148
            Height = 19
            Caption = 'set'#26032#20540#65288#27880#24847#33539#22260#65289
          end
          object update_Label4: TLabel
            Left = 96
            Top = 291
            Width = 139
            Height = 19
            Caption = #33539#22260#26465#20214#65288'where'#65289
          end
          object update_tablename: TComboBox
            Left = 250
            Top = 125
            Width = 220
            Height = 27
            TabOrder = 0
            Items.Strings = (
              'record'
              'ly'
              'creditcard'
              'dw'
              'xs'
              'xb')
          end
          object update_columnname: TEdit
            Left = 250
            Top = 176
            Width = 220
            Height = 27
            TabOrder = 1
          end
          object update_newvalue: TEdit
            Left = 250
            Top = 233
            Width = 220
            Height = 27
            TabOrder = 2
          end
          object update_condition: TEdit
            Left = 250
            Top = 288
            Width = 220
            Height = 27
            TabOrder = 3
          end
          object update_btn1: TBitBtn
            Left = 250
            Top = 376
            Width = 75
            Height = 25
            Caption = #30830#35748
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 4
            OnClick = update_btn1Click
          end
        end
      end
      object pagedelete: TTabSheet
        Caption = #21024#38500#20540
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 814
          Height = 456
          Align = alClient
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object delete_Label1: TLabel
            Left = 171
            Top = 128
            Width = 64
            Height = 19
            Caption = #26356#25913#30340#34920
          end
          object delete_Label2: TLabel
            Left = 105
            Top = 206
            Width = 139
            Height = 19
            Caption = #33539#22260#26465#20214#65288'where'#65289
          end
          object delete_tablename: TComboBox
            Left = 250
            Top = 125
            Width = 220
            Height = 27
            TabOrder = 0
            Items.Strings = (
              'record'
              'ly'
              'creditcard'
              'dw'
              'xs'
              'xb')
          end
          object delete_condition: TEdit
            Left = 250
            Top = 203
            Width = 220
            Height = 27
            TabOrder = 1
          end
          object delete_btn1: TBitBtn
            Left = 250
            Top = 288
            Width = 75
            Height = 25
            Caption = #30830#35748
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 2
            OnClick = delete_btn1Click
          end
        end
      end
      object pagemanual: TTabSheet
        Caption = 'DDL/SQL'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 814
          Height = 456
          Align = alClient
          Color = clCream
          ParentBackground = False
          TabOrder = 0
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 640
            Height = 454
            Align = alLeft
            Caption = 'Panel6'
            TabOrder = 0
            object DDLRichEdit: TRichEdit
              Left = 1
              Top = 1
              Width = 638
              Height = 452
              Align = alClient
              Color = clBlack
              Font.Charset = GB2312_CHARSET
              Font.Color = clAqua
              Font.Height = -16
              Font.Name = 'Consolas'
              Font.Style = [fsBold]
              Lines.Strings = (
                'DDLRichEdit')
              ParentFont = False
              TabOrder = 0
            end
          end
          object DDL_btn1: TBitBtn
            Left = 688
            Top = 24
            Width = 75
            Height = 25
            Caption = #22797#21046
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 1
            OnClick = DDL_btn1Click
          end
          object DDL_btn2: TBitBtn
            Left = 688
            Top = 72
            Width = 75
            Height = 25
            Caption = #21098#20999
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 2
            OnClick = DDL_btn2Click
          end
          object DDL_btn3: TBitBtn
            Left = 688
            Top = 120
            Width = 75
            Height = 25
            Caption = #31896#36148
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 3
            OnClick = DDL_btn3Click
          end
          object DDL_btn4: TBitBtn
            Left = 688
            Top = 166
            Width = 75
            Height = 25
            Caption = #21024#38500
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 4
            OnClick = DDL_btn4Click
          end
          object DDL_btn5: TBitBtn
            Left = 688
            Top = 216
            Width = 75
            Height = 25
            Caption = #25764#38144
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 5
            OnClick = DDL_btn5Click
          end
          object DDL_btn6: TBitBtn
            Left = 688
            Top = 264
            Width = 75
            Height = 25
            Caption = #20840#36873
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 6
            OnClick = DDL_btn6Click
          end
          object DDL_btn7: TBitBtn
            Left = 688
            Top = 313
            Width = 75
            Height = 25
            Caption = 'SUBMIT'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 7
            OnClick = DDL_btn7Click
          end
        end
      end
      object pagerecord: TTabSheet
        Caption = #24405#20837
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 814
          Height = 456
          Align = alClient
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object recordselect_Label1: TLabel
            Left = 66
            Top = 100
            Width = 26
            Height = 14
            Caption = #26597#35810
            Color = clHighlight
            ParentColor = False
          end
          object recordinsert_Label: TLabel
            Left = 28
            Top = 195
            Width = 78
            Height = 14
            Caption = #38656#35201#24405#20837#30340#34920
          end
          object recordLabel_xh: TLabel
            Left = 432
            Top = 67
            Width = 26
            Height = 14
            Caption = #23398#21495
          end
          object recordLabel_date: TLabel
            Left = 432
            Top = 123
            Width = 26
            Height = 14
            Caption = #26085#26399
          end
          object recordLabel_cin: TLabel
            Left = 432
            Top = 179
            Width = 52
            Height = 14
            Caption = #31614#20837#26102#38388
          end
          object recordLabel_cout: TLabel
            Left = 432
            Top = 235
            Width = 52
            Height = 14
            Caption = #31614#20986#26102#38388
          end
          object recordLabel_whatwork: TLabel
            Left = 432
            Top = 291
            Width = 52
            Height = 14
            Caption = #24037#20316#20869#23481
          end
          object recordLabel_dateformat: TLabel
            Left = 643
            Top = 123
            Width = 136
            Height = 14
            Caption = '(yyyy-mm-dd'#65292#40664#35748#24403#22825')'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 607
            Top = 204
            Width = 194
            Height = 14
            Caption = #65288#26102#38388#29992#23567#25968#34920#31034#65292'12'#65306'30=12.5'#65289
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object recordsearch_dw: TComboBox
            Left = 134
            Top = 97
            Width = 171
            Height = 22
            TabOrder = 0
            OnChange = recordsearch_dwChange
            Items.Strings = (
              #23398#29983#20107#21153#20013#24515
              #23398#29983#24037#20316#37096
              #26657#22242#22996#21150#20844#23460
              #30591#20449#20070#38498#21150#20844#23460
              #35745#31639#26426#23398#38498#21150#20844#23460
              #21270#23398#19982#21270#24037#23398#38498#21150#20844#23460)
          end
          object recordinsert_date: TEdit
            Left = 493
            Top = 120
            Width = 121
            Height = 22
            TabOrder = 1
          end
          object recordinsert_xh: TEdit
            Left = 493
            Top = 64
            Width = 121
            Height = 22
            TabOrder = 2
          end
          object recordinsert_dw: TComboBox
            Left = 134
            Top = 192
            Width = 171
            Height = 22
            TabOrder = 3
            Items.Strings = (
              #23398#29983#20107#21153#20013#24515
              #23398#29983#24037#20316#37096
              #26657#22242#22996#21150#20844#23460
              #30591#20449#20070#38498#21150#20844#23460
              #35745#31639#26426#23398#38498#21150#20844#23460
              #21270#23398#19982#21270#24037#23398#38498#21150#20844#23460)
          end
          object recordinsert_cin: TEdit
            Left = 493
            Top = 176
            Width = 121
            Height = 22
            TabOrder = 4
          end
          object recordinsert_whatwork: TEdit
            Left = 490
            Top = 288
            Width = 236
            Height = 22
            TabOrder = 5
          end
          object recordinsert_cout: TEdit
            Left = 493
            Top = 232
            Width = 121
            Height = 22
            TabOrder = 6
          end
          object record_btn1: TBitBtn
            Left = 493
            Top = 344
            Width = 100
            Height = 33
            Caption = #30830#23450
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 7
            OnClick = record_btn1Click
          end
        end
      end
      object cal_money: TTabSheet
        Caption = #37329#39069
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 814
          Height = 456
          Align = alClient
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object benkebox: TGroupBox
            Left = 112
            Top = 40
            Width = 593
            Height = 121
            Caption = #26412#31185#29983#37329#39069#35745#31639
            Color = clCream
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            object benkelabel1: TLabel
              Left = 240
              Top = 56
              Width = 97
              Height = 19
              Caption = 'RMB per hour'
            end
            object benkemult: TEdit
              Left = 57
              Top = 56
              Width = 161
              Height = 27
              TabOrder = 0
              Text = '13'
            end
          end
          object yanbobox: TGroupBox
            Left = 112
            Top = 216
            Width = 593
            Height = 161
            Caption = #30740#31350#12289#21338#22763#29983#37329#39069#35745#31639
            Color = clCream
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            object yanbolabel1: TLabel
              Left = 307
              Top = 64
              Width = 143
              Height = 19
              Caption = 'RMB'#65292#27599#26376#22522#26412#24037#36164
            end
            object yanbolabel2: TLabel
              Left = 307
              Top = 117
              Width = 288
              Height = 19
              Caption = #26102#38388#20998#30028#65292#22823#20110#35813#26102#38271#30340#37096#20998#21644#26412#31185#19968#26679
            end
            object yanboplus: TEdit
              Left = 57
              Top = 57
              Width = 228
              Height = 27
              TabOrder = 0
              Text = '800'
            end
            object yanboup: TEdit
              Left = 57
              Top = 112
              Width = 228
              Height = 27
              TabOrder = 1
              Text = '10'
            end
          end
          object money_btn1: TBitBtn
            Left = 576
            Top = 400
            Width = 113
            Height = 33
            Caption = #30830#35748
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 2
            OnClick = money_btn1Click
          end
        end
      end
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=workstudy;Data Source=.'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 632
    Top = 65528
  end
  object MainMenu1: TMainMenu
    Left = 456
    Top = 65520
    object N1: TMenuItem
      Caption = #26597#35810'[&S]'
      object N2: TMenuItem
        Caption = #31995#34920
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #21333#20301#34920
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #23398#29983#34920
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #23703#20301#24405#29992#34920
        OnClick = N5Click
      end
    end
    object N8: TMenuItem
      Caption = #25554#20837'[&I]'
      OnClick = N8Click
    end
    object N9: TMenuItem
      Caption = #26356#26032'[&U]'
      OnClick = N9Click
    end
    object N10: TMenuItem
      Caption = #21024#38500'[&D]'
      OnClick = N10Click
    end
    object N6: TMenuItem
      Caption = #20540#29677#35760#24405
      OnClick = N6Click
    end
    object N11: TMenuItem
      Caption = #26356#22810'[&M]'
      object N12: TMenuItem
        Caption = #30005#23376#26102#38047
        OnClick = N12Click
      end
      object shoudong1: TMenuItem
        Caption = #25163#21160#25805#20316'SQL'
        OnClick = shoudong1Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select xdh'#39#31995#20195#21495#39', xmc'#39#31995#21517#39' from xb order by xdh;')
    Left = 632
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 632
    Top = 88
  end
end
