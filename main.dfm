object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 686
  ClientWidth = 1150
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object sbMain: TStatusBar
    Left = 0
    Top = 667
    Width = 1150
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 1150
    Height = 667
    ActivePage = tsMainTables
    Align = alClient
    Images = ilTabs
    TabOrder = 1
    object tsMainTables: TTabSheet
      Caption = 'Tables'
      object Splitter1: TSplitter
        Left = 200
        Top = 28
        Width = 5
        Height = 610
        OnCanResize = Splitter1CanResize
        ExplicitLeft = 248
        ExplicitTop = 25
        ExplicitHeight = 693
      end
      object CoolBar1: TCoolBar
        Left = 0
        Top = 0
        Width = 1142
        Height = 28
        AutoSize = True
        Bands = <
          item
            Control = tbMain
            ImageIndex = -1
            MinHeight = 24
            Width = 1136
          end>
        object tbMain: TToolBar
          Left = 11
          Top = 0
          Width = 1127
          Height = 24
          Caption = 'tbMain'
          DisabledImages = ImageList2
          Images = ImageList1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Hint = 'Re-roll!'
            ImageIndex = 2
            OnClick = Refresh1Click
          end
          object ToolButton2: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'ToolButton2'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object tbSearch: TToolButton
            Left = 31
            Top = 0
            Hint = 'Search'
            ImageIndex = 1
            OnClick = tbSearchClick
          end
          object ToolButton3: TToolButton
            Left = 54
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object tbCopyToClipboard: TToolButton
            Left = 62
            Top = 0
            Hint = 'Copy to clipboard'
            ImageIndex = 0
            OnClick = tbCopyToClipboardClick
          end
          object ToolButton4: TToolButton
            Left = 85
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object tbLockRollAll: TToolButton
            Left = 93
            Top = 0
            Hint = 'lock all items'
            Caption = 'tbLockRollAll'
            ImageIndex = 4
            OnClick = tbLockRollAllClick
          end
          object tbUnlockAll: TToolButton
            Left = 116
            Top = 0
            Hint = 'unlock all items'
            ImageIndex = 5
            OnClick = tbUnlockAllClick
          end
          object tbLockRoll: TToolButton
            Left = 139
            Top = 0
            Hint = 'lock/unlock the selected item'#39's roll (toggle)'
            Enabled = False
            ImageIndex = 3
            OnClick = tbLockRollClick
          end
          object ToolButton5: TToolButton
            Left = 162
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object tbAddNewTab: TToolButton
            Left = 170
            Top = 0
            Hint = 'add new tab'
            ImageIndex = 7
            OnClick = tbAddNewTabClick
          end
          object tbRemoveTable: TToolButton
            Left = 193
            Top = 0
            Hint = 'remove the current tab'
            Enabled = False
            ImageIndex = 8
            OnClick = tbRemoveTableClick
          end
          object ToolButton7: TToolButton
            Left = 216
            Top = 0
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object tbRenameCurrentTab: TToolButton
            Left = 224
            Top = 0
            Hint = 'rename the current tab'
            Caption = 'tbRenameCurrentTab'
            ImageIndex = 12
            OnClick = tbRenameCurrentTabClick
          end
          object ToolButton6: TToolButton
            Left = 247
            Top = 0
            Width = 8
            Caption = 'ToolButton6'
            ImageIndex = 11
            Style = tbsSeparator
          end
          object tbAddToFavs: TToolButton
            Left = 255
            Top = 0
            Hint = 'add this roll to favourites'
            ImageIndex = 9
            OnClick = tbAddToFavsClick
          end
          object tbDeleteFromFavs: TToolButton
            Left = 278
            Top = 0
            Hint = 'delete this favourite'
            Caption = 'tbDeleteFromFavs'
            Enabled = False
            ImageIndex = 11
            OnClick = tbDeleteFromFavsClick
          end
          object tbShowFavourites: TToolButton
            Left = 301
            Top = 0
            DropdownMenu = puRollFavourites
            Enabled = False
            ImageIndex = 10
            Style = tbsDropDown
          end
        end
      end
      object pSidePanel: TPanel
        Left = 0
        Top = 28
        Width = 200
        Height = 610
        Align = alLeft
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 1
          Top = 174
          Width = 198
          Height = 5
          Cursor = crVSplit
          Align = alTop
          ExplicitTop = 169
          ExplicitWidth = 183
        end
        object pCategories: TPanel
          Left = 1
          Top = 1
          Width = 198
          Height = 173
          Align = alTop
          Caption = 'pCategories'
          TabOrder = 0
          object lbCategories: TListBox
            Left = 1
            Top = 27
            Width = 196
            Height = 145
            Style = lbOwnerDrawFixed
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = lbCategoriesClick
            OnDrawItem = lbCategoriesDrawItem
          end
          object pCategoriesTitle: TPanel
            Left = 1
            Top = 1
            Width = 196
            Height = 26
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Categories'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 179
          Width = 198
          Height = 430
          Align = alClient
          TabOrder = 1
          object lbSubCategories: TListBox
            Left = 1
            Top = 27
            Width = 196
            Height = 402
            Style = lbOwnerDrawFixed
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = lbSubCategoriesClick
            OnDrawItem = lbSubCategoriesDrawItem
          end
          object pSubCategoriesTitle: TPanel
            Left = 1
            Top = 1
            Width = 196
            Height = 26
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Sub-categories'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      object pcTables: TPageControl
        Left = 205
        Top = 28
        Width = 937
        Height = 610
        ActivePage = tsMain
        Align = alClient
        TabOrder = 2
        OnChange = pcTablesChange
        object tsMain: TTabSheet
          Caption = 'Table #1'
          object lOutput: TRichEdit
            Left = 0
            Top = 0
            Width = 929
            Height = 582
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PopupMenu = puOutput
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
            StyleElements = [seClient, seBorder]
            Zoom = 100
            OnClick = lOutputClick
          end
        end
      end
    end
    object tsMainGenerators: TTabSheet
      Caption = 'Generators'
      ImageIndex = 1
      object pcGenerators: TPageControl
        Left = 0
        Top = 0
        Width = 1142
        Height = 638
        ActivePage = tsGenName
        Align = alClient
        Images = ilTabs
        TabOrder = 0
        object tsGenName: TTabSheet
          Caption = 'Name Generator'
          ImageIndex = 2
          DesignSize = (
            1134
            609)
          object Splitter5: TSplitter
            Left = 200
            Top = 0
            Width = 5
            Height = 609
            OnCanResize = Splitter5CanResize
            ExplicitLeft = 248
            ExplicitTop = 25
            ExplicitHeight = 721
          end
          object pNameGen: TPanel
            Left = 0
            Top = 0
            Width = 200
            Height = 609
            Align = alLeft
            TabOrder = 0
            object Panel2: TPanel
              Left = 1
              Top = 1
              Width = 198
              Height = 607
              Align = alClient
              TabOrder = 0
              object Splitter8: TSplitter
                Left = 1
                Top = 145
                Width = 196
                Height = 5
                Cursor = crVSplit
                Align = alTop
                ExplicitTop = 265
              end
              object lbNGNames: TListBox
                Left = 1
                Top = 27
                Width = 196
                Height = 118
                Align = alTop
                ItemHeight = 13
                TabOrder = 0
                OnClick = lbNGNamesClick
              end
              object Panel4: TPanel
                Left = 1
                Top = 150
                Width = 196
                Height = 50
                Align = alTop
                BevelOuter = bvNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                DesignSize = (
                  196
                  50)
                object lNGObjects: TLabel
                  Left = 0
                  Top = 6
                  Width = 192
                  Height = 13
                  Alignment = taCenter
                  Anchors = [akLeft, akTop, akRight]
                  AutoSize = False
                  Caption = 'Object'
                end
                object cbNGType: TComboBox
                  Left = 0
                  Top = 25
                  Width = 192
                  Height = 21
                  Style = csDropDownList
                  Anchors = [akLeft, akTop, akRight]
                  ItemIndex = 0
                  TabOrder = 0
                  Text = 'Titles'
                  OnChange = cbNGTypeChange
                  Items.Strings = (
                    'Titles'
                    'Names'
                    'Adjectives'
                    'Nouns'
                    'Other')
                end
              end
              object Panel1: TPanel
                Left = 1
                Top = 1
                Width = 196
                Height = 26
                Align = alTop
                BevelOuter = bvNone
                Caption = 'Names'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object lbNGContents: TListBox
                Left = 1
                Top = 200
                Width = 196
                Height = 406
                Align = alClient
                ItemHeight = 13
                TabOrder = 3
              end
            end
          end
          object GroupBox1: TGroupBox
            Left = 224
            Top = 16
            Width = 553
            Height = 549
            Anchors = [akLeft, akTop, akBottom]
            Caption = 'Options'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            DesignSize = (
              553
              549)
            object Label1: TLabel
              Left = 16
              Top = 77
              Width = 49
              Height = 13
              Caption = 'Templates'
            end
            object Label2: TLabel
              Left = 16
              Top = 136
              Width = 81
              Height = 13
              Caption = 'Generated Name'
            end
            object sbNGClear: TSpeedButton
              Left = 450
              Top = 96
              Width = 23
              Height = 22
              Hint = 'clear the current template'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F8AF7A51B87A45AF784DF1EFECFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EDE9ECE8E2FFFFFFFFFFFFB4
                825DE7B263C69D61DDAB62B07A51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                D1C5B3CB9F5ED8A65BB88A5FEFECE8B27A4DD2A25AE9E6E2BAA484B57741F4F2
                F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC8E56DAAC69C09E6CECB666B48455B3
                7847C79A59FFFFFFC0B19BB77840EDEAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C19053C1A377FFFFFFC1A986E7B066CAA275E5B167AE8560C4A16CB27643F9F9
                F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC9A75D6A65FDCD4C7D2C7B7E4AD60DC
                BD9BEFCDA5EFB767D8A65DC3B8A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F1EDE9BC905DDCAA60D2A35CEAB365D8BA99F8EBE1C3A883D4CDC1FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFECE7BD9A76BF9563C19E77C9
                AB85F0E0D0C7AA83FDFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEFDFDFFFFFFD7C2A5F5E9DDE2CDB4D3BC9CFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6
                C0A3F1E2D3D1B692F5E9DCD8C5AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6C1A4EDDECED7C4A8D8C2A6E7D6C4E7DC
                CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7
                C4A9E6D4C0F0E9DFF2ECE4D9C3A7D8C0A3F5F0E9FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9C6ABDEC8AEF3EDE4FFFFFFEEE7DCD6BE
                9ECEB593FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA
                C7AED6BEA0F9F6F1FFFFFFFFFFFFEDE4D8C6A880FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAC9B0D1B794FBF9F7FFFFFFFFFFFFFFFF
                FFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE
                E6DBC8AD87FDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = sbNGClearClick
            end
            object sbNGCopy: TSpeedButton
              Left = 421
              Top = 96
              Width = 23
              Height = 22
              Hint = 'copy this template to clipboard'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C21E0000C21E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFD39570CC8357C87646CA7B4ECB7B4ECA7B4ECA7B
                4ECA7B4ECA8155CD865CFF00FF4A80AB206398206398206398206398C98F67FC
                F3ECFAF1E8FAF0E7FBF1E9FBF2EAFBF2EAFBF2EBFDF4EECB83585588B174ADD8
                7BB2DD78AEDC75AADA74A9DADAA97DEFF1E7FFE9D9FFEADBFFE9D9FFE7D7FFE5
                D2FFE2CBEFF2E8CE815620639880B9E15395D15092D04E8ECE4D8CCDD6A97DFB
                F5EEFFE9D9FFEADBFFE9D9FFE7D7FFE5D2FFE2CBFBF6EFCC835620639884BFE2
                569AD35397D15092CF5091CFD6A97DFFF7F1FFE9D9FFEADBFFE9D9FFE7D7FFE5
                D2FFE2CBFFF7F1CB855620639888C4E6599FD6569BD35397D15395D1D7AC7FFF
                F7F0FFE7D5FDE7D6FDE6D4FCE4D0FBE3CBFADCC2FEF3E8CC86572063988BC9E7
                5CA5D759A0D5579CD3569AD3D7AC7FFFF7F2FEE7D5FEE7D5FDE5D1FAE0CAF9DE
                C4F7D9BCFDF2E7CC875820639891CDE95FA9D95DA5D85AA0D6599FD6D8AD81FE
                F7F1FCE5D2FCE4D1FBE2CCF9DDC4F6D7BBF3D1AFFAEFE4CC875920639898D2EB
                65AEDA60AAD95DA6D85CA5D7D9AF84FEF6F0FCE2CDFCE3CDFADFC8F7D9BCF5E9
                DDFAF3EBFBF8F3CA83542063989ED6ED6BB2DC66AFDC60AADA5FA9D9D9AF84FE
                F5EDFCDEC5FBE0C7F9DCC2F5D3B4FEF9F3FAE2C4ECC193D2986E206398A5DAEF
                6FB5DE68B0DC60A9D95FA9D9D7AD81FFFFFEFDF3E9FDF3EAFCF2E8FAEFE3FAF2
                E7EABB88D39469FF00FF206398AADDF174B9E070B6DF6CB3DD6BB2DCD9AF84D7
                AE81D7AC7FD7AC7FCCA070CD9F71B38F67D39B71FF00FFFF00FF206398B0E1F2
                79BDE24498DD4497DC4396DC4296DC4295DC4195DB539ED489C6E6206398FF00
                FFFF00FFFF00FFFF00FF3B76A595C9E0AEE2F24E9DDFB5EEFD75D4F075D4F0B5
                EEFD4B9BDE8ECBE993CDE92A6A9DFF00FFFF00FFFF00FFFF00FFFF00FF6392B7
                2063983775A4B6EFFE80DBF380DBF3B6EFFE2E6EA12063986F9ABCFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF20639820639820639820639820
                63982D6C9EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              OnClick = sbNGCopyClick
            end
            object SpeedButton1: TSpeedButton
              Left = 519
              Top = 155
              Width = 23
              Height = 22
              Hint = 'copy this name to the clipboard'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C21E0000C21E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFD39570CC8357C87646CA7B4ECB7B4ECA7B4ECA7B
                4ECA7B4ECA8155CD865CFF00FF4A80AB206398206398206398206398C98F67FC
                F3ECFAF1E8FAF0E7FBF1E9FBF2EAFBF2EAFBF2EBFDF4EECB83585588B174ADD8
                7BB2DD78AEDC75AADA74A9DADAA97DEFF1E7FFE9D9FFEADBFFE9D9FFE7D7FFE5
                D2FFE2CBEFF2E8CE815620639880B9E15395D15092D04E8ECE4D8CCDD6A97DFB
                F5EEFFE9D9FFEADBFFE9D9FFE7D7FFE5D2FFE2CBFBF6EFCC835620639884BFE2
                569AD35397D15092CF5091CFD6A97DFFF7F1FFE9D9FFEADBFFE9D9FFE7D7FFE5
                D2FFE2CBFFF7F1CB855620639888C4E6599FD6569BD35397D15395D1D7AC7FFF
                F7F0FFE7D5FDE7D6FDE6D4FCE4D0FBE3CBFADCC2FEF3E8CC86572063988BC9E7
                5CA5D759A0D5579CD3569AD3D7AC7FFFF7F2FEE7D5FEE7D5FDE5D1FAE0CAF9DE
                C4F7D9BCFDF2E7CC875820639891CDE95FA9D95DA5D85AA0D6599FD6D8AD81FE
                F7F1FCE5D2FCE4D1FBE2CCF9DDC4F6D7BBF3D1AFFAEFE4CC875920639898D2EB
                65AEDA60AAD95DA6D85CA5D7D9AF84FEF6F0FCE2CDFCE3CDFADFC8F7D9BCF5E9
                DDFAF3EBFBF8F3CA83542063989ED6ED6BB2DC66AFDC60AADA5FA9D9D9AF84FE
                F5EDFCDEC5FBE0C7F9DCC2F5D3B4FEF9F3FAE2C4ECC193D2986E206398A5DAEF
                6FB5DE68B0DC60A9D95FA9D9D7AD81FFFFFEFDF3E9FDF3EAFCF2E8FAEFE3FAF2
                E7EABB88D39469FF00FF206398AADDF174B9E070B6DF6CB3DD6BB2DCD9AF84D7
                AE81D7AC7FD7AC7FCCA070CD9F71B38F67D39B71FF00FFFF00FF206398B0E1F2
                79BDE24498DD4497DC4396DC4296DC4295DC4195DB539ED489C6E6206398FF00
                FFFF00FFFF00FFFF00FF3B76A595C9E0AEE2F24E9DDFB5EEFD75D4F075D4F0B5
                EEFD4B9BDE8ECBE993CDE92A6A9DFF00FFFF00FFFF00FFFF00FFFF00FF6392B7
                2063983775A4B6EFFE80DBF380DBF3B6EFFE2E6EA12063986F9ABCFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF20639820639820639820639820
                63982D6C9EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              OnClick = SpeedButton1Click
            end
            object sbNGHistoryCopy: TSpeedButton
              Left = 519
              Top = 200
              Width = 23
              Height = 22
              Hint = 'copy these names to the clipboard'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C21E0000C21E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFD39570CC8357C87646CA7B4ECB7B4ECA7B4ECA7B
                4ECA7B4ECA8155CD865CFF00FF4A80AB206398206398206398206398C98F67FC
                F3ECFAF1E8FAF0E7FBF1E9FBF2EAFBF2EAFBF2EBFDF4EECB83585588B174ADD8
                7BB2DD78AEDC75AADA74A9DADAA97DEFF1E7FFE9D9FFEADBFFE9D9FFE7D7FFE5
                D2FFE2CBEFF2E8CE815620639880B9E15395D15092D04E8ECE4D8CCDD6A97DFB
                F5EEFFE9D9FFEADBFFE9D9FFE7D7FFE5D2FFE2CBFBF6EFCC835620639884BFE2
                569AD35397D15092CF5091CFD6A97DFFF7F1FFE9D9FFEADBFFE9D9FFE7D7FFE5
                D2FFE2CBFFF7F1CB855620639888C4E6599FD6569BD35397D15395D1D7AC7FFF
                F7F0FFE7D5FDE7D6FDE6D4FCE4D0FBE3CBFADCC2FEF3E8CC86572063988BC9E7
                5CA5D759A0D5579CD3569AD3D7AC7FFFF7F2FEE7D5FEE7D5FDE5D1FAE0CAF9DE
                C4F7D9BCFDF2E7CC875820639891CDE95FA9D95DA5D85AA0D6599FD6D8AD81FE
                F7F1FCE5D2FCE4D1FBE2CCF9DDC4F6D7BBF3D1AFFAEFE4CC875920639898D2EB
                65AEDA60AAD95DA6D85CA5D7D9AF84FEF6F0FCE2CDFCE3CDFADFC8F7D9BCF5E9
                DDFAF3EBFBF8F3CA83542063989ED6ED6BB2DC66AFDC60AADA5FA9D9D9AF84FE
                F5EDFCDEC5FBE0C7F9DCC2F5D3B4FEF9F3FAE2C4ECC193D2986E206398A5DAEF
                6FB5DE68B0DC60A9D95FA9D9D7AD81FFFFFEFDF3E9FDF3EAFCF2E8FAEFE3FAF2
                E7EABB88D39469FF00FF206398AADDF174B9E070B6DF6CB3DD6BB2DCD9AF84D7
                AE81D7AC7FD7AC7FCCA070CD9F71B38F67D39B71FF00FFFF00FF206398B0E1F2
                79BDE24498DD4497DC4396DC4296DC4295DC4195DB539ED489C6E6206398FF00
                FFFF00FFFF00FFFF00FF3B76A595C9E0AEE2F24E9DDFB5EEFD75D4F075D4F0B5
                EEFD4B9BDE8ECBE993CDE92A6A9DFF00FFFF00FFFF00FFFF00FFFF00FF6392B7
                2063983775A4B6EFFE80DBF380DBF3B6EFFE2E6EA12063986F9ABCFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF20639820639820639820639820
                63982D6C9EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              OnClick = sbNGHistoryCopyClick
            end
            object sbNGClearHistory: TSpeedButton
              Left = 519
              Top = 228
              Width = 23
              Height = 22
              Hint = 'clear the name history'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F8AF7A51B87A45AF784DF1EFECFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EDE9ECE8E2FFFFFFFFFFFFB4
                825DE7B263C69D61DDAB62B07A51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                D1C5B3CB9F5ED8A65BB88A5FEFECE8B27A4DD2A25AE9E6E2BAA484B57741F4F2
                F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC8E56DAAC69C09E6CECB666B48455B3
                7847C79A59FFFFFFC0B19BB77840EDEAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C19053C1A377FFFFFFC1A986E7B066CAA275E5B167AE8560C4A16CB27643F9F9
                F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC9A75D6A65FDCD4C7D2C7B7E4AD60DC
                BD9BEFCDA5EFB767D8A65DC3B8A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F1EDE9BC905DDCAA60D2A35CEAB365D8BA99F8EBE1C3A883D4CDC1FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFECE7BD9A76BF9563C19E77C9
                AB85F0E0D0C7AA83FDFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEFDFDFFFFFFD7C2A5F5E9DDE2CDB4D3BC9CFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6
                C0A3F1E2D3D1B692F5E9DCD8C5AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6C1A4EDDECED7C4A8D8C2A6E7D6C4E7DC
                CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7
                C4A9E6D4C0F0E9DFF2ECE4D9C3A7D8C0A3F5F0E9FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9C6ABDEC8AEF3EDE4FFFFFFEEE7DCD6BE
                9ECEB593FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA
                C7AED6BEA0F9F6F1FFFFFFFFFFFFEDE4D8C6A880FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAC9B0D1B794FBF9F7FFFFFFFFFFFFFFFF
                FFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE
                E6DBC8AD87FDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = sbNGClearHistoryClick
            end
            object Label3: TLabel
              Left = 16
              Top = 182
              Width = 118
              Height = 13
              Caption = 'Generated Name History'
            end
            object bNGTitle: TBitBtn
              Left = 128
              Top = 32
              Width = 75
              Height = 25
              Hint = 'add title to template'
              Caption = 'Title'
              TabOrder = 0
              OnClick = bNGTitleClick
            end
            object bNGName: TBitBtn
              Tag = 1
              Left = 209
              Top = 32
              Width = 75
              Height = 25
              Hint = 'add name to template'
              Caption = 'Name'
              TabOrder = 1
              OnClick = bNGTitleClick
            end
            object bNGAdjective: TBitBtn
              Tag = 2
              Left = 290
              Top = 32
              Width = 75
              Height = 25
              Hint = 'add adjective to template'
              Caption = 'Adjective'
              TabOrder = 2
              OnClick = bNGTitleClick
            end
            object bNGNoun: TBitBtn
              Tag = 3
              Left = 371
              Top = 32
              Width = 75
              Height = 25
              Hint = 'add noun to template'
              Caption = 'Noun'
              TabOrder = 3
              OnClick = bNGTitleClick
            end
            object bNGOther: TBitBtn
              Tag = 4
              Left = 452
              Top = 32
              Width = 75
              Height = 25
              Hint = 'add other to template'
              Caption = 'Other'
              TabOrder = 4
              OnClick = bNGTitleClick
            end
            object cbNGTemplates: TComboBox
              Left = 16
              Top = 96
              Width = 399
              Height = 21
              TabOrder = 5
              OnChange = cbNGTemplatesChange
              OnKeyDown = cbNGTemplatesKeyDown
            end
            object eNGName: TEdit
              Left = 16
              Top = 155
              Width = 497
              Height = 21
              TabOrder = 6
            end
            object bNGNewName: TBitBtn
              Left = 16
              Top = 32
              Width = 75
              Height = 25
              Caption = 'New Name'
              TabOrder = 7
              OnClick = bNGNewNameClick
            end
            object mNGHistory: TMemo
              Left = 16
              Top = 200
              Width = 497
              Height = 325
              Anchors = [akLeft, akTop, akBottom]
              ScrollBars = ssVertical
              TabOrder = 8
            end
          end
        end
        object tsGenNPC: TTabSheet
          Caption = 'NPC Generator'
          ImageIndex = 5
          DesignSize = (
            1134
            609)
          object Label5: TLabel
            Left = 36
            Top = 43
            Width = 41
            Height = 13
            Caption = 'Gender'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState: TSpeedButton
            Left = 13
            Top = 58
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object sbNPCFlipLockState1: TSpeedButton
            Tag = 1
            Left = 13
            Top = 101
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label10: TLabel
            Left = 36
            Top = 86
            Width = 28
            Height = 13
            Caption = 'Race'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 36
            Top = 129
            Width = 97
            Height = 13
            Caption = 'Lawful Alignment'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState2: TSpeedButton
            Tag = 2
            Left = 13
            Top = 144
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object sbNPCFlipLockState3: TSpeedButton
            Tag = 3
            Left = 13
            Top = 187
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label15: TLabel
            Left = 36
            Top = 172
            Width = 93
            Height = 13
            Caption = 'Moral Alignment'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState11: TSpeedButton
            Tag = 11
            Left = 13
            Top = 230
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label17: TLabel
            Left = 36
            Top = 215
            Width = 111
            Height = 13
            Caption = 'Distinguishing Mark'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 36
            Top = 258
            Width = 64
            Height = 13
            Caption = 'High Ability'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState12: TSpeedButton
            Tag = 12
            Left = 13
            Top = 273
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label21: TLabel
            Left = 36
            Top = 301
            Width = 61
            Height = 13
            Caption = 'Low Ability'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState13: TSpeedButton
            Tag = 13
            Left = 13
            Top = 316
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object sbNPCFlipLockState4: TSpeedButton
            Tag = 4
            Left = 13
            Top = 359
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label23: TLabel
            Left = 36
            Top = 344
            Width = 36
            Height = 13
            Caption = 'Talent'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCRefreshItem: TSpeedButton
            Left = 237
            Top = 58
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton11: TSpeedButton
            Tag = 1
            Left = 237
            Top = 101
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton12: TSpeedButton
            Tag = 2
            Left = 237
            Top = 144
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton13: TSpeedButton
            Tag = 3
            Left = 237
            Top = 187
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton14: TSpeedButton
            Tag = 4
            Left = 237
            Top = 230
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton15: TSpeedButton
            Tag = 5
            Left = 237
            Top = 273
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton16: TSpeedButton
            Tag = 6
            Left = 237
            Top = 317
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton17: TSpeedButton
            Tag = 7
            Left = 237
            Top = 359
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object Label12: TLabel
            Left = 308
            Top = 43
            Width = 27
            Height = 13
            Caption = 'Trait'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState6: TSpeedButton
            Tag = 6
            Left = 285
            Top = 59
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object sbNPCFlipLockState7: TSpeedButton
            Tag = 7
            Left = 285
            Top = 102
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label13: TLabel
            Left = 308
            Top = 86
            Width = 28
            Height = 13
            Caption = 'Bond'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 308
            Top = 129
            Width = 25
            Height = 13
            Caption = 'Flaw'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState8: TSpeedButton
            Tag = 8
            Left = 285
            Top = 145
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label16: TLabel
            Left = 308
            Top = 172
            Width = 29
            Height = 13
            Caption = 'Ideal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState14: TSpeedButton
            Tag = 14
            Left = 285
            Top = 188
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label18: TLabel
            Left = 308
            Top = 215
            Width = 46
            Height = 13
            Caption = 'Emotion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState9: TSpeedButton
            Tag = 9
            Left = 285
            Top = 231
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label20: TLabel
            Left = 308
            Top = 258
            Width = 65
            Height = 13
            Caption = 'Social Class'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState10: TSpeedButton
            Tag = 10
            Left = 285
            Top = 274
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label22: TLabel
            Left = 308
            Top = 301
            Width = 63
            Height = 13
            Caption = 'Occupation'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState15: TSpeedButton
            Tag = 15
            Left = 285
            Top = 317
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label24: TLabel
            Left = 308
            Top = 344
            Width = 63
            Height = 13
            Caption = 'Mannerism'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState5: TSpeedButton
            Tag = 5
            Left = 285
            Top = 360
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object SpeedButton33: TSpeedButton
            Tag = 15
            Left = 509
            Top = 360
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton32: TSpeedButton
            Tag = 14
            Left = 509
            Top = 317
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton31: TSpeedButton
            Tag = 13
            Left = 509
            Top = 274
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton30: TSpeedButton
            Tag = 12
            Left = 509
            Top = 231
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton29: TSpeedButton
            Tag = 11
            Left = 509
            Top = 188
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton28: TSpeedButton
            Tag = 10
            Left = 509
            Top = 145
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton27: TSpeedButton
            Tag = 9
            Left = 509
            Top = 102
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton26: TSpeedButton
            Tag = 8
            Left = 509
            Top = 59
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object sbNPCFlipLockState20: TSpeedButton
            Tag = 20
            Left = 571
            Top = 58
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object sbNPCFlipLockState21: TSpeedButton
            Tag = 21
            Left = 571
            Top = 101
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object sbNPCFlipLockState22: TSpeedButton
            Tag = 22
            Left = 571
            Top = 144
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object sbNPCFlipLockState23: TSpeedButton
            Tag = 23
            Left = 571
            Top = 187
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object sbNPCFlipLockState24: TSpeedButton
            Tag = 24
            Left = 571
            Top = 230
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object sbNPCFlipLockState25: TSpeedButton
            Tag = 25
            Left = 571
            Top = 273
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label62: TLabel
            Left = 595
            Top = 258
            Width = 37
            Height = 13
            Caption = 'Height'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label61: TLabel
            Left = 595
            Top = 215
            Width = 51
            Height = 13
            Caption = 'Physique'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label60: TLabel
            Left = 595
            Top = 172
            Width = 59
            Height = 13
            Caption = 'Age Group'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label59: TLabel
            Left = 595
            Top = 129
            Width = 62
            Height = 13
            Caption = 'Hair Colour'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label58: TLabel
            Left = 595
            Top = 86
            Width = 58
            Height = 13
            Caption = 'Eye Shape'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label57: TLabel
            Left = 595
            Top = 43
            Width = 59
            Height = 13
            Caption = 'Eye Colour'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton47: TSpeedButton
            Tag = 16
            Left = 797
            Top = 58
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton46: TSpeedButton
            Tag = 17
            Left = 797
            Top = 101
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton45: TSpeedButton
            Tag = 18
            Left = 797
            Top = 144
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton44: TSpeedButton
            Tag = 19
            Left = 797
            Top = 187
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton43: TSpeedButton
            Tag = 20
            Left = 797
            Top = 230
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton42: TSpeedButton
            Tag = 21
            Left = 797
            Top = 273
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object Label49: TLabel
            Left = 884
            Top = 40
            Width = 44
            Height = 13
            Caption = 'Parents'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton55: TSpeedButton
            Tag = 22
            Left = 1085
            Top = 59
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton54: TSpeedButton
            Tag = 23
            Left = 1085
            Top = 102
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton53: TSpeedButton
            Tag = 24
            Left = 1085
            Top = 145
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton52: TSpeedButton
            Tag = 25
            Left = 1085
            Top = 188
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton51: TSpeedButton
            Tag = 26
            Left = 1085
            Top = 231
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton50: TSpeedButton
            Tag = 27
            Left = 1085
            Top = 274
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton49: TSpeedButton
            Tag = 28
            Left = 1085
            Top = 317
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object SpeedButton48: TSpeedButton
            Tag = 29
            Left = 1085
            Top = 360
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFDFEFD9FC2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BBC905E9D63FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF9BCBA066B06E61AA683D8B4437833E327B373D7F436496689EBC
              A0E6EDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD8AF73BD7C96D19F94CF9C8F
              CD968ACA9185C78B7ABE8165AD6C4B925168976BCDDCCEFFFFFFFFFFFFFFFFFF
              FFFFFFA9DBAF79C4839ED7A79BD4A497D29F92CF9A8DCC9588CA907AC2827EC4
              855DA46369996CE6EDE6FFFFFFFFFFFFFFFFFFFFFFFFA4DAAB7BC78577C28154
              AB5E4EA357499B5163AC6B83C38B87C98F82C689509756A0BFA2FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF9ED8A57BC784FFFFFFFFFFFFFFFFFF9BC9A05BA26286C6
              8E88C98F6FB376699D6DB8D7BBB6D4B9B4D1B6B2CEB4AFCBB1FDFEFDB4E2BAFF
              FFFFFFFFFFFFFFFFFFFFFFA4CFA854A05B48954F408B47478B4E5DA9644C9C54
              48954F49904F97BE9BFFFFFFFFFFFFFFFFFFFFFFFF92B294FCFDFCBEDFC2BCDC
              BFBAD9BDB7D6BBB5D3B884C38B80C3898DCC9583C48A54995A90BA94FFFFFFFF
              FFFFFFFFFF4A814D739C76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7DEBB75BF7E
              98D2A194CF9C86C78D5EA765398640347E3A2E763349904F458B4A7EA581FFFF
              FFFFFFFFFFFFFFFFFFFFEDF7EE8ECD9685C98E9BD4A48FCE9892CF9A8DCC9588
              CA9083C68B7EC48579C17F478D4C87AC89FFFFFFFFFFFFFFFFFFFFFFFFDCF0DE
              90CF9779C38389CA9294D09C95D19E90CF998CCB9487C98F80C4874E95548FB3
              92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF8EFB9E1BE89C99064B46C50A65A4B
              9E5345964D60A8685BA2628CB690FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67AB6E8BBC90FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACD4B0FDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCRefreshItemClick
          end
          object Label56: TLabel
            Left = 884
            Top = 344
            Width = 80
            Height = 13
            Caption = 'Marital Status'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label55: TLabel
            Left = 884
            Top = 301
            Width = 110
            Height = 13
            Caption = 'Family Relationship'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState36: TSpeedButton
            Tag = 36
            Left = 859
            Top = 316
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object sbNPCFlipLockState37: TSpeedButton
            Tag = 37
            Left = 859
            Top = 359
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object sbNPCFlipLockState35: TSpeedButton
            Tag = 35
            Left = 859
            Top = 273
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label54: TLabel
            Left = 884
            Top = 258
            Width = 46
            Height = 13
            Caption = 'Children'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState34: TSpeedButton
            Tag = 34
            Left = 859
            Top = 230
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label53: TLabel
            Left = 884
            Top = 215
            Width = 37
            Height = 13
            Caption = 'Uncles'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState33: TSpeedButton
            Tag = 33
            Left = 859
            Top = 187
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label52: TLabel
            Left = 884
            Top = 172
            Width = 33
            Height = 13
            Caption = 'Aunts'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState32: TSpeedButton
            Tag = 32
            Left = 859
            Top = 144
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label51: TLabel
            Left = 884
            Top = 129
            Width = 43
            Height = 13
            Caption = 'Cousins'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState31: TSpeedButton
            Tag = 31
            Left = 859
            Top = 101
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object Label50: TLabel
            Left = 884
            Top = 86
            Width = 43
            Height = 13
            Caption = 'Siblings'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object sbNPCFlipLockState30: TSpeedButton
            Tag = 30
            Left = 859
            Top = 58
            Width = 23
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFF8C8C8C
              8989898585858282827F7F7F7C7C7C7979797676767373737171716F6F6F6D6D
              6D6B6B6B696969FFFFFFFFFFFF909090DEDEDEDFDFDFE2E2E2E6E6E6EAEAEAEC
              ECECEBEBEBE6E6E6DEDEDED9D9D9D7D7D7D7D7D76B6B6BFFFFFFFFFFFF949494
              E0E0E0AFAFAF9C9C9CA4A4A4AAAAAAAEAEAEACACACA2A2A29393938A8A8A9A9A
              9AD7D7D76E6E6EFFFFFFFFFFFF989898E1E1E1B3B3B3BCBCBCC7C7C7CFCFCFD3
              D3D3D0D0D0C4C4C4B0B0B0A2A2A29C9C9CD9D9D9717171FFFFFFFFFFFF9B9B9B
              E2E2E2B6B6B6A1A1A1A9A9A9D1D1D18A8A8A7D7D7DC8C8C89999998E8E8EA0A0
              A0D9D9D9757575FFFFFFFFFFFF9F9F9FE4E4E4B9B9B9C4C4C4CECECED2D2D28D
              8D8D858585CACACAB8B8B8A8A8A8A3A3A3DBDBDB787878FFFFFFFFFFFFA2A2A2
              E5E5E5BCBCBCA7A7A7ACACACD2D2D2919191999999CDCDCD9D9D9D929292A4A4
              A4DCDCDC7C7C7CFFFFFFFFFFFFA5A5A5E5E5E5BFBFBFCACACAD0D0D0D1D1D1DA
              DADAD9D9D9D1D1D1BDBDBDAEAEAEA8A8A8DDDDDD808080FFFFFFFFFFFFA7A7A7
              E6E6E6E7E7E7ECECECEDEDEDEDEDEDF1F1F1F1F1F1EEEEEEE7E7E7E1E1E1DFDF
              DFDFDFDF848484FFFFFFFFFFFFA8A8A89A9A9A9191918E8E8EA1A1A1A0A0A09D
              9D9D9B9B9B9898989494947878787676767A7A7A898989FFFFFFFFFFFFFFFFFF
              B1B1B1C6C6C6949494FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7D7D7DABAB
              AB969696FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCC4C4C4A1A1A1EEEEEEFFFFFFFF
              FFFFFFFFFFFFFFFFEBEBEB898989A9A9A9A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF
              D4D4D4BABABABFBFBFA6A6A6F2F2F2FDFDFDFDFDFDF1F1F1939393A8A8A89E9E
              9EC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBAEAEAEC4C4C4BEBEBEA1A1A196
              9696939393979797AEAEAEAEAEAE959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFEEEEEEAEAEAEBCBCBCCACACACCCCCCCACACAC2C2C2ADADAD9B9B9BE9E9
              E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0BABABAB1
              B1B1AEAEAEB3B3B3C9C9C9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = sbNPCFlipLockStateClick
          end
          object eNPCGender: TEdit
            Left = 36
            Top = 59
            Width = 200
            Height = 21
            TabOrder = 0
          end
          object eNPCRace: TEdit
            Left = 36
            Top = 102
            Width = 200
            Height = 21
            TabOrder = 1
          end
          object eNPCLA: TEdit
            Left = 36
            Top = 145
            Width = 200
            Height = 21
            TabOrder = 2
          end
          object eNPCMA: TEdit
            Left = 36
            Top = 188
            Width = 200
            Height = 21
            TabOrder = 3
          end
          object eNPCMark: TEdit
            Left = 36
            Top = 231
            Width = 200
            Height = 21
            TabOrder = 4
          end
          object CoolBar3: TCoolBar
            Left = 0
            Top = 0
            Width = 1134
            Height = 28
            AutoSize = True
            Bands = <
              item
                Control = ToolBar2
                ImageIndex = -1
                MinHeight = 24
                Width = 1128
              end>
            object ToolBar2: TToolBar
              Left = 11
              Top = 0
              Width = 1119
              Height = 24
              Caption = 'tbMain'
              DisabledImages = ImageList2
              Images = ImageList1
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              object ToolButton8: TToolButton
                Left = 0
                Top = 0
                Hint = 'Re-roll!'
                ImageIndex = 2
                OnClick = Refresh1Click
              end
              object ToolButton9: TToolButton
                Left = 23
                Top = 0
                Width = 8
                Caption = 'ToolButton2'
                ImageIndex = 0
                Style = tbsSeparator
              end
              object tbCopyNPCToClipboard: TToolButton
                Left = 31
                Top = 0
                Hint = 'Copy to clipboard'
                ImageIndex = 0
                OnClick = tbCopyNPCToClipboardClick
              end
              object ToolButton10: TToolButton
                Left = 54
                Top = 0
                Width = 8
                Caption = 'ToolButton10'
                ImageIndex = 1
                Style = tbsSeparator
              end
              object tbNPCLockAll: TToolButton
                Left = 62
                Top = 0
                ImageIndex = 4
                OnClick = tbNPCLockAllClick
              end
              object tbNPCUnlockAll: TToolButton
                Left = 85
                Top = 0
                ImageIndex = 5
                OnClick = tbNPCUnlockAllClick
              end
              object ToolButton11: TToolButton
                Left = 108
                Top = 0
                Width = 8
                Caption = 'ToolButton11'
                ImageIndex = 6
                Style = tbsSeparator
              end
              object cbNPCList: TComboBox
                Left = 116
                Top = 0
                Width = 165
                Height = 21
                Style = csDropDownList
                TabOrder = 0
                OnChange = cbNPCListChange
              end
            end
          end
          object eNPCHighAbility: TEdit
            Left = 36
            Top = 274
            Width = 200
            Height = 21
            TabOrder = 6
          end
          object eNPCLowAbility: TEdit
            Left = 36
            Top = 317
            Width = 200
            Height = 21
            TabOrder = 7
          end
          object eNPCTalent: TEdit
            Left = 36
            Top = 360
            Width = 200
            Height = 21
            TabOrder = 8
          end
          object eNPCTrait: TEdit
            Left = 308
            Top = 59
            Width = 200
            Height = 21
            TabOrder = 9
          end
          object eNPCBond: TEdit
            Left = 308
            Top = 102
            Width = 200
            Height = 21
            TabOrder = 10
          end
          object eNPCFlaw: TEdit
            Left = 308
            Top = 145
            Width = 200
            Height = 21
            TabOrder = 11
          end
          object eNPCIdeal: TEdit
            Left = 308
            Top = 188
            Width = 200
            Height = 21
            TabOrder = 12
          end
          object eNPCEmotion: TEdit
            Left = 308
            Top = 231
            Width = 200
            Height = 21
            TabOrder = 13
          end
          object eNPCSocialClass: TEdit
            Left = 308
            Top = 274
            Width = 200
            Height = 21
            TabOrder = 14
          end
          object eNPCOccupation: TEdit
            Left = 308
            Top = 317
            Width = 200
            Height = 21
            TabOrder = 15
          end
          object eNPCMannerism: TEdit
            Left = 308
            Top = 360
            Width = 200
            Height = 21
            TabOrder = 16
          end
          object eNPCHeight: TEdit
            Left = 595
            Top = 274
            Width = 200
            Height = 21
            TabOrder = 17
          end
          object eNPCPhysique: TEdit
            Left = 595
            Top = 231
            Width = 200
            Height = 21
            TabOrder = 18
          end
          object eNPCAgeGroup: TEdit
            Left = 595
            Top = 188
            Width = 200
            Height = 21
            TabOrder = 19
          end
          object eNPCHairColour: TEdit
            Left = 595
            Top = 145
            Width = 200
            Height = 21
            TabOrder = 20
          end
          object eNPCEyeShape: TEdit
            Left = 595
            Top = 102
            Width = 200
            Height = 21
            TabOrder = 21
          end
          object eNPCEyeColour: TEdit
            Left = 595
            Top = 59
            Width = 200
            Height = 21
            TabOrder = 22
          end
          object eNPCParents: TEdit
            Left = 884
            Top = 59
            Width = 200
            Height = 21
            TabOrder = 23
          end
          object eNPCSiblings: TEdit
            Left = 884
            Top = 102
            Width = 200
            Height = 21
            TabOrder = 24
          end
          object eNPCCousins: TEdit
            Left = 884
            Top = 145
            Width = 200
            Height = 21
            TabOrder = 25
          end
          object eNPCAunts: TEdit
            Left = 884
            Top = 188
            Width = 200
            Height = 21
            TabOrder = 26
          end
          object eNPCUncles: TEdit
            Left = 884
            Top = 231
            Width = 200
            Height = 21
            TabOrder = 27
          end
          object eNPCChildren: TEdit
            Left = 884
            Top = 274
            Width = 200
            Height = 21
            TabOrder = 28
          end
          object eNPCFamily: TEdit
            Left = 884
            Top = 317
            Width = 200
            Height = 21
            TabOrder = 29
          end
          object eNPCMaritalStatus: TEdit
            Left = 884
            Top = 360
            Width = 200
            Height = 21
            TabOrder = 30
          end
          object reNPCOutput: TRichEdit
            Left = 13
            Top = 394
            Width = 1115
            Height = 189
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PopupMenu = puOutput
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 31
            Zoom = 100
            OnClick = lOutputClick
          end
        end
      end
    end
    object tsMainImages: TTabSheet
      Caption = 'Images'
      ImageIndex = 3
      object iImages: TImage
        Left = 188
        Top = 0
        Width = 954
        Height = 638
        Align = alClient
        Proportional = True
        ExplicitLeft = 425
        ExplicitTop = 128
        ExplicitWidth = 1254
        ExplicitHeight = 688
      end
      object Splitter3: TSplitter
        Left = 185
        Top = 0
        Height = 638
        OnCanResize = Splitter3CanResize
        ExplicitLeft = 248
        ExplicitTop = 200
        ExplicitHeight = 100
      end
      object pImages: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 638
        Align = alLeft
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 183
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object sbImagesClear: TSpeedButton
            Left = 0
            Top = 0
            Width = 23
            Height = 22
            Hint = 'clear all images'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFE2C0AACC8D66BC6B36BC6B36BC6A36BC
              6A36BB6A35BB6A35BB6935BD6E3BCA8B63E3C2AEFF00FFFF00FFFF00FFFF00FF
              C57C4DF8F1EAF8F3EDF8F3EDF8F3EDF8F3EDFAF3EBFAF2EAF8F3EDF8F3EDF8F3
              EDC37A4DFF00FFFF00FFFF00FFFF00FFC68046F7F0E6F8F3EDF8F3EDF8F3EDF8
              F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDC1743CFF00FFFF00FFFF00FFFF00FF
              C78448F8F1E8F8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3
              EDC37A41FF00FFFF00FFFF00FFFF00FFC7864BF8F2EBF8F3EDF8F3EDF8F3EDF8
              F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDC78045FF00FFFF00FFFF00FFFF00FF
              C8884DF9F3ECF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3
              EDC88448FF00FFFF00FFFF00FFFF00FFC88C4FF9F4EDF8F3EDF8F3EDF8F3EDF8
              F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDC8864BFF00FFFF00FFFF00FFFF00FF
              C88C50F8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDFAF4
              EFC8874CFF00FFFF00FFFF00FFFF00FFC88D51F8F3EDF8F3EDF8F3EDF8F3EDF8
              F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F4F0C6864CFF00FFFF00FFFF00FFFF00FF
              C88D51F8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF8F3EDF7F2ECFBF7F3F5EF
              E9C38048FF00FFFF00FFFF00FFFF00FFC88D52F9F5F1F8F3EDF8F3EDF8F3EDF8
              F3EDF8F3EDF8F3EDFCE6CDFAE5C9E2B684D5A884FF00FFFF00FFFF00FFFF00FF
              CA925AFAF6F2F8F3EDF8F3EDF8F3EDF8F3EDF8F3EDFFFBF8F6D8B4E1B07DDC96
              69FF00FFFF00FFFF00FFFF00FFFF00FFD2A274F8F3EDF8F3EDF8F3EDF8F3EDF8
              F2ECF7F2ECF2E6D7E2B27DDC986BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              E8CEB9D7AA7CCA9055CA9055CA9155CB9055C98F55CF9D69DDB190FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            OnClick = sbImagesClearClick
          end
          object sbImagesAdd: TSpeedButton
            Left = 28
            Top = 0
            Width = 23
            Height = 22
            Hint = 'open files'
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000C21E0000C21E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84B094257341196B
              3725734184B094FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFAAAAAA6767675F5F5F676767AAAAAAFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88B297288C5364BA8D95D2
              B264BA8D288C5381AE91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFACACAC7E7E7EADADADC9C9C9ADADAD7E7E7EA7A7A7FFFFFFA2CAEE
              76B2E63E91DB348CD9348CD9348CD9348CD9348CD91C6D3E62BA8B60BA87FFFF
              FF60B98767BC8F20703DFFFFFFD3D3D3BFBFBFA3A3A39F9F9F9F9F9F9F9F9F9F
              9F9F9F9F9F616161ADADADACACACFFFFFFACACACAFAFAF646464FFFFFF4799DD
              DEF1FAA8DDF49EDBF496DAF38ED8F386D7F37FD4F2317B4C9CD4B6FFFFFFFFFF
              FFFFFFFF95D2B2196B37FFFFFFA9A9A9F3F3F3E0E0E0DEDEDEDDDDDDDBDBDBDA
              DADAD8D8D86F6F6FCBCBCBFFFFFFFFFFFFFFFFFFC9C9C95F5F5FFFFFFF3B97DB
              EFFAFEA1E9F991E5F881E1F772DEF663DAF554D7F444896290D3B192D6B1FFFF
              FF65BC8C67BC8F20703DFFFFFFA7A7A7FBFBFBEAEAEAE6E6E6E2E2E2DFDFDFDC
              DCDCDADADA7E7E7EC9C9C9CBCBCBFFFFFFAFAFAFAFAFAF646464FFFFFF3C9DDB
              F2FAFDB3EDFAA4E9F995E6F885E2F776DEF665DBF554B3AE61AB8195D4B4BAE6
              D06ABB8F2D8F5781AE91FFFFFFAAAAAAFBFBFBEEEEEEEAEAEAE7E7E7E3E3E3E0
              E0E0DDDDDDAEAEAE9F9F9FCBCBCBDFDFDFAEAEAE818181A7A7A7FFFFFF3BA3DB
              F6FCFEC8F2FCB9EFFBACECFA9CE8F98BE3F77CE0F66CDCF65BB7B45897754F8E
              66478A61358E94FFFFFFFFFFFFAEAEAEFDFDFDF3F3F3EFEFEFECECECE9E9E9E4
              E4E4E1E1E1DEDEDEB2B2B28D8D8D8383837F7F7F8C8C8CFFFFFFFFFFFF3BA8DB
              FEFFFFF8FDFFF6FDFFF5FCFFF3FCFED8F6FC94E6F885E3F776DFF668DBF55CD8
              F4D7F4FC3BA7DBFFFFFFFFFFFFB2B2B2FFFFFFFEFEFEFEFEFEFDFDFDFCFCFCF6
              F6F6E7E7E7E4E4E4E0E0E0DDDDDDDADADAF5F5F5B1B1B1FFFFFFFFFFFF39ADDB
              E8F6FB94D4EF88CEEE73C1E9C9E9F6F2FCFEF3FCFEF2FCFEF0FCFEEFFBFEEEFB
              FEFEFFFF3CAEDBFFFFFFFFFFFFB4B4B4F7F7F7D8D8D8D3D3D3C8C8C8EBEBEBFC
              FCFCFCFCFCFCFCFCFCFCFCFBFBFBFBFBFBFFFFFFB5B5B5FFFFFFFFFFFF40AEDC
              F1FAFD94DEF593DCF481D5F26ACAED6CCBEA85D3EF80D2EF7AD0EF76CFEE72CF
              EEE9F7FB3EB2DCFFFFFFFFFFFFB6B6B6FBFBFBE0E0E0DEDEDED9D9D9CFCFCFCF
              CFCFD6D6D6D6D6D6D4D4D4D3D3D3D3D3D3F7F7F7B8B8B8FFFFFFFFFFFF41B4DC
              F7FCFE8EE4F891DEF59FE0F5ACE1F6EFFBFEF4FDFEF3FCFEF1FCFEEFFBFEEEFB
              FEFAFDFF58BCE0FFFFFFFFFFFFB9B9B9FDFDFDE5E5E5E0E0E0E2E2E2E4E4E4FB
              FBFBFDFDFDFCFCFCFCFCFCFBFBFBFBFBFBFEFEFEC1C1C1FFFFFFFFFFFF3CB5DB
              FDFEFEFEFFFFFEFEFFFDFEFFFEFFFFEAF7FB6EC8E56FC9E46FC9E46FC9E47DCF
              E784D0E8BAE5F2FFFFFFFFFFFFBABABAFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFF8
              F8F8CBCBCBCBCBCBCBCBCBCBCBCBD1D1D1D3D3D3E7E7E7FFFFFFFFFFFF59C2E0
              61C3E263C4E363C4E363C4E362C4E356C0E0EDF8FCF3FAFDF3FAFDF3FAFDF3FA
              FDF3FBFDFCFEFEFFFFFFFFFFFFC6C6C6C7C7C7C8C8C8C8C8C8C8C8C8C8C8C8C4
              C4C4F9F9F9FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFEFEFEFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            NumGlyphs = 2
            OnClick = sbImagesAddClick
          end
          object sbImagesSaveList: TSpeedButton
            Left = 81
            Top = 0
            Width = 23
            Height = 22
            Hint = 'save this list of images'
            Enabled = False
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000C21E0000C21E00000000000000000000D8AB8ECD9570
              BD7342B76835B56835B46734B26634B06533AE6433AC6332AA6232A96132A860
              31A76132AB693CBC8661A8A8A893939371717167676766666666666665656564
              64646363636262626161616060605F5F5F606060676767838383C37D4FEBC6AD
              EAC5ADFEFBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFB
              F8C89A7CC79879AD6B407B7B7BC4C4C4C3C3C3FBFBFBFBFBFBFBFBFBFBFBFBFB
              FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB989898969696696969BA6C38EDCAB3
              E0A27AFEFAF762C08862C08862C08862C08862C08862C08862C08862C088FDF9
              F6CA8D65C99B7CA761326A6A6AC8C8C89F9F9FFAFAFAB1B1B1B1B1B1B1B1B1B1
              B1B1B1B1B1B1B1B1B1B1B1B1B1B1F9F9F98A8A8A989898606060BB6C38EECCB6
              E1A27AFEFAF7BFDCC2BFDCC2BFDCC2BFDCC2BFDCC2BFDCC2BFDCC2BFDCC2FDF9
              F6CD9068CC9E81A861326B6B6BCACACA9F9F9FFAFAFAD6D6D6D6D6D6D6D6D6D6
              D6D6D6D6D6D6D6D6D6D6D6D6D6D6F9F9F98D8D8D9C9C9C606060BB6B38EFCEB8
              E1A279FEFAF762C08862C08862C08862C08862C08862C08862C08862C088FDF9
              F6CF936ACEA384AA61326A6A6ACCCCCC9F9F9FFAFAFAB1B1B1B1B1B1B1B1B1B1
              B1B1B1B1B1B1B1B1B1B1B1B1B1B1F9F9F9909090A0A0A0606060BA6A36EFD0BB
              E2A27AFEFBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFB
              F8D3966DD2A78AAB6232696969CECECE9F9F9FFBFBFBFBFBFBFBFBFBFBFBFBFB
              FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB939393A4A4A4616161BB6A36F0D2BE
              E2A37AE2A37AE1A37AE2A37BE1A37BE0A178DE9F77DD9F76DC9D74D99B72D899
              71D69970D5AB8EAD6333696969D0D0D0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A09E
              9E9E9C9C9C9C9C9C9A9A9A989898979797969696A8A8A8626262BB6A36F2D5C2
              E3A37AE3A37AE2A37BE2A37BE2A47BE1A279E0A178DEA077DE9E75DC9D74DA9B
              73D99B73DAB095AF6433696969D3D3D3A0A0A0A0A0A0A0A0A0A0A0A0A1A1A19F
              9F9F9E9E9E9D9D9D9B9B9B9A9A9A999999989898AEAEAE636363BB6A36F2D8C5
              E3A47BE3A37AE3A47AE2A47BE2A37BE1A37BE1A279DFA077DE9F76DD9E74DB9C
              72DC9D74DDB59AB16534696969D6D6D6A1A1A1A0A0A0A1A1A1A1A1A1A0A0A0A0
              A0A09F9F9F9D9D9D9C9C9C9B9B9B9999999A9A9AB2B2B2646464BB6B36F4D9C7
              E6A67DC88C64C98D65C98E67CB926CCB926DCA9069C88C65C88C64C88C64C88C
              64DA9C74E1BA9FB366346A6A6AD7D7D7A3A3A38989898A8A8A8B8B8B8F8F8F90
              90908D8D8D8A8A8A898989898989898989999999B7B7B7656565BB6C37F4DCC9
              E7A77DF9ECE1F9ECE1F9EDE3FCF4EEFDFAF7FDF7F3FAEDE5F7E7DBF7E5D9F6E5
              D8DEA077E4BEA4B467346B6B6BDADADAA4A4A4EBEBEBEBEBEBECECECF4F4F4FA
              FAFAF7F7F7EDEDEDE6E6E6E4E4E4E4E4E49D9D9DBBBBBB666666BD6E3AF5DDCC
              E7A87EFAF0E8FAF0E8C98D66FAF0E9FDF8F3FEFAF8FCF4EFF9E9DFF7E7DBF7E5
              D9E0A278E7C2A9B668356C6C6CDBDBDBA5A5A5EFEFEFEFEFEF8B8B8BF0F0F0F8
              F8F8FAFAFAF4F4F4E8E8E8E6E6E6E4E4E49F9F9FC0C0C0676767C07442F6DFD0
              E8A87EFCF6F1FCF6F1C88C64FAF1E9FBF4EEFDFAF7FDF9F6FAF0E8F8E8DDF7E6
              DBE1A37AEFD5C3B76A36727272DDDDDDA5A5A5F6F6F6F6F6F6898989F0F0F0F4
              F4F4FAFAFAF9F9F9EFEFEFE7E7E7E5E5E5A0A0A0D3D3D3686868C68255F6DFD1
              E9AA80FEFAF6FDFAF6C88C64FBF3EEFBF1EAFCF6F2FEFBF8FCF6F1F9ECE2F8E7
              DBEED0BAECD0BDBD7443808080DEDEDEA7A7A7FAFAFAFAFAFA898989F3F3F3F1
              F1F1F6F6F6FBFBFBF6F6F6EBEBEBE6E6E6CDCDCDCECECE727272D6A585F6E0D1
              F7E0D1FEFBF8FEFBF7FDF9F6FCF5F0FAF0EAFBF2EDFDF9F6FDFAF7FBF1EBF8E9
              DFECD1BECD926AE2C5B1A3A3A3DEDEDEDEDEDEFBFBFBFBFBFBF9F9F9F5F5F5F0
              F0F0F2F2F2F9F9F9FAFAFAF1F1F1E8E8E8CFCFCF8F8F8FC3C3C3E1BDA6D9AB8D
              C9895EC07543BD6E3ABB6C37BB6B36BB6A36BB6A36BC6C39BD6E3BBB6D3ABF74
              44C98D65E7CEBCFFFFFFBBBBBBA8A8A88686867373736C6C6C6B6B6B6A6A6A69
              69696969696B6B6B6D6D6D6B6B6B7373738A8A8ACCCCCCFFFFFF}
            NumGlyphs = 2
            OnClick = sbImagesSaveListClick
          end
          object sbImagesLoadList: TSpeedButton
            Left = 52
            Top = 0
            Width = 23
            Height = 22
            Hint = 'load a list of files'
            Glyph.Data = {
              36060000424D3606000000000000360000002800000020000000100000000100
              18000000000000060000C21E0000C21E00000000000000000000FFFFFF3A8FDA
              3A8EDA3A8FDA3A8FDA3A8FDA3A8FDA3A8FDA3A8FDA3A8FDA3A8FDA3A8EDA3A8F
              DA68A8E3FFFFFFFFFFFFB7B7B7A2A2A2A1A1A1A2A2A2A2A2A2A2A2A2A2A2A2A2
              A2A2A2A2A2A2A2A2A2A2A2A1A1A1A2A2A2B7B7B7FFFFFFFFFFFF3991DAEAF3FB
              A6E5F8A7E5F8AAE5F8ACE5F7AFE5F7AFE5F7B1E5F7B2E5F7B3E4F7B7E4F7E9F3
              FB3594DAFFFFFFFFFFFFA2A2A2F5F5F5E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
              E7E7E7E7E7E7E7E7E7E7E7E7E7E7F5F5F5A4A4A4FFFFFFFFFFFF4198DCFAFEFE
              8FE4F88AE3F785E2F77EE0F777DEF66FDDF667DBF55CD9F450D5F347D3F3F6FC
              FE3594DAFFFFFFFFFFFFA8A8A8FEFEFEE5E5E5E4E4E4E3E3E3E2E2E2E0E0E0DF
              DFDFDDDDDDDBDBDBD8D8D8D6D6D6FDFDFDA4A4A4FFFFFFFFFFFF409EDCF9FDFE
              91E5F88EE4F88BE3F885E2F781E1F77BE0F773DEF669DBF65CD8F450D5F3F4FC
              FE3594DAFFFFFFFFFFFFACACACFDFDFDE6E6E6E5E5E5E4E4E4E3E3E3E2E2E2E2
              E2E2DFDFDFDDDDDDDADADAD8D8D8FDFDFDA4A4A4FFFFFFFFFFFF40A3DCFAFDFE
              92E5F890E5F88FE4F88CE4F88AE3F885E2F780E1F777DFF66CDCF663DAF5F6FC
              FE3594DAFFFFFFFFFFFFAFAFAFFDFDFDE6E6E6E6E6E6E5E5E5E5E5E5E4E4E4E3
              E3E3E2E2E2E0E0E0DEDEDEDCDCDCFDFDFDA4A4A4FFFFFFFFFFFF40A8DBFDFEFF
              F0FCFEEDFBFEEBFAFEE8FAFE96E6F88BE3F888E3F882E1F779DFF670DDF5F6FC
              FE3594DAFFFFFFFFFFFFB2B2B2FEFEFEFCFCFCFBFBFBFAFAFAFAFAFAE7E7E7E4
              E4E4E4E4E4E2E2E2E1E1E1DEDEDEFDFDFDA4A4A4FFFFFFFFFFFF40ABDBFAFEFE
              72BFE955ADE34BA6E18CC9EDE6F9FDE7F9FEE2F5FCD9E1F6D7DFF6DDF1FBFEFF
              FF3594DAFFFFFFFFFFFFB4B4B4FEFEFEC6C6C6B8B8B8B2B2B2CFCFCFF9F9F9F9
              F9F9F6F6F6E5E5E5E4E4E4F3F3F3FFFFFFA4A4A4FFFFFFFFFFFF40AEDCF7FCFE
              98E0F697DEF566BEE93594DA3594DA3594DA3594DA3594DA3594DA3594DA3594
              DA3594DAFFFFFFFFFFFFB6B6B6FDFDFDE2E2E2E0E0E0C5C5C5A4A4A4A4A4A4A4
              A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4FFFFFFFFFFFF41B4DCF7FCFE
              8EE4F891DEF59FE0F5A2D3F3878DE7494CE09096F9898DFF8083FF898FF93133
              D02859C6E8E8F7FFFFFFB9B9B9FDFDFDE5E5E5E0E0E0E2E2E2D9D9D9A7A7A781
              8181B2B2B2AFAFAFA9A9A9AEAEAE7171717C7C7CEFEFEFFFFFFF3CB5DBFDFEFE
              FEFFFFFEFEFFE6E7FC7577E98E93F6AAAEFF888BFF7B7AFF7677FF7B7EFF9DA2
              FF6E75ED4D4DC9E0E0F4BABABAFEFEFEFFFFFFFEFEFEECECEC9B9B9BAFAFAFC4
              C4C4AEAEAEA5A5A5A3A3A3A7A7A7BCBCBC9B9B9B828282E9E9E959C2E061C3E2
              63C4E363C4E36188E8A1A6F9ABAFFF9090FF8C8DFF8B8BFF8688FF7F7FFF7778
              FF9194FF7578ED7474D4C6C6C6C7C7C7C8C8C8C8C8C8A3A3A3BDBDBDC4C4C4B1
              B1B1AFAFAFAEAEAEACACACA7A7A7A4A4A4B3B3B39D9D9D9E9E9EFFFFFFFFFFFF
              FFFFFFFFFFFF9496F6BEC1FFA0A1FF9D9DFF9A9AFF9393FF8F8FFF8D8CFF8686
              FF7C7DFFA5A9FF3D3ECEFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3D1D1D1BBBBBBB9
              B9B9B7B7B7B3B3B3B0B0B0AFAFAFABABABA6A6A6C1C1C1787878FFFFFFFFFFFF
              FFFFFFFFFFFF9C9DF8C4C6FFABABFFA9AAFFA4A3FFA7A7FFA4A5FF9596FF9394
              FF8989FFA7A9FF4040D2FFFFFFFFFFFFFFFFFFFFFFFFB8B8B8D5D5D5C2C2C2C1
              C1C1BDBDBDBFBFBFBEBEBEB5B5B5B4B4B4ADADADC1C1C17B7B7BFFFFFFFFFFFF
              FFFFFFFFFFFFA7A8FBC6CBFFBCBEFFB2B3FFBCBDFFBABEFDB5B9FDB3B3FF9C9D
              FF9C9DFFB7BAFF4848D4FFFFFFFFFFFFFFFFFFFFFFFFC1C1C1D8D8D8CFCFCFC8
              C8C8CECECECECECECBCBCBC8C8C8B9B9B9B9B9B9CCCCCC808080FFFFFFFFFFFF
              FFFFFFFFFFFFD1D1FE9EA1FCC9CBFEC8CBFEB5B7FB898AF08384EDA4A6F7C3C7
              FFC1C4FE8B8DF09090E5FFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBABABAD8D8D8D8
              D8D8C9C9C9ACACACA8A8A8BCBCBCD5D5D5D3D3D3AAAAAAB3B3B3FFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFFD4D3FEACADFBA4A4FAADAEF9EDEDFDEEEEFD989AF1797A
              ED6F71EA9A9AECF4F4FDFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE0E0E0C4C4C4BE
              BEBEC6C6C6F2F2F2F3F3F3B9B9B99E9E9E9A9A9ABBBBBBF8F8F8}
            NumGlyphs = 2
            OnClick = sbImagesLoadListClick
          end
        end
        object lbImages: TListBox
          Left = 1
          Top = 25
          Width = 183
          Height = 612
          Align = alClient
          ItemHeight = 13
          TabOrder = 1
          OnClick = lbImagesClick
        end
      end
    end
    object tsMainShop: TTabSheet
      Caption = 'Shop'
      ImageIndex = 4
      object Splitter6: TSplitter
        Left = 200
        Top = 28
        Width = 5
        Height = 610
        OnCanResize = Splitter1CanResize
        ExplicitLeft = 208
        ExplicitTop = 0
        ExplicitHeight = 559
      end
      object pShopCategory: TPanel
        Left = 0
        Top = 28
        Width = 200
        Height = 610
        Align = alLeft
        TabOrder = 0
        object Splitter4: TSplitter
          Left = 1
          Top = 151
          Width = 198
          Height = 5
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = -39
          ExplicitTop = 129
        end
        object Splitter7: TSplitter
          Left = 1
          Top = 322
          Width = 198
          Height = 5
          Cursor = crVSplit
          Align = alTop
          ExplicitLeft = -4
          ExplicitTop = 340
        end
        object pShopTop: TPanel
          Left = 1
          Top = 1
          Width = 198
          Height = 150
          Align = alTop
          Caption = 'pCategories'
          TabOrder = 0
          object lbShopCategory: TListBox
            Left = 1
            Top = 27
            Width = 196
            Height = 122
            Style = lbOwnerDrawFixed
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = lbShopCategoryClick
            OnDrawItem = lbShopCategoryDrawItem
          end
          object pShopCategories: TPanel
            Left = 1
            Top = 1
            Width = 196
            Height = 26
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Categories'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object Panel8: TPanel
          Left = 1
          Top = 327
          Width = 198
          Height = 282
          Align = alClient
          TabOrder = 1
          object lbShopItems: TListBox
            Left = 1
            Top = 27
            Width = 196
            Height = 254
            Style = lbOwnerDrawFixed
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = lbShopItemsClick
            OnDrawItem = lbShopItemsDrawItem
          end
          object pShopItems: TPanel
            Left = 1
            Top = 1
            Width = 196
            Height = 26
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Items'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object pShopMiddle: TPanel
          Left = 1
          Top = 156
          Width = 198
          Height = 166
          Align = alTop
          TabOrder = 2
          object lbShopSubCategory: TListBox
            Left = 1
            Top = 27
            Width = 196
            Height = 138
            Style = lbOwnerDrawFixed
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = lbShopSubCategoryClick
            OnDrawItem = lbShopSubCategoryDrawItem
          end
          object pShopSubCategories: TPanel
            Left = 1
            Top = 1
            Width = 196
            Height = 26
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Sub-categories'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      object CoolBar2: TCoolBar
        Left = 0
        Top = 0
        Width = 1142
        Height = 28
        AutoSize = True
        Bands = <
          item
            Control = ToolBar1
            ImageIndex = -1
            MinHeight = 24
            Width = 1136
          end>
        object ToolBar1: TToolBar
          Left = 11
          Top = 0
          Width = 1127
          Height = 24
          Caption = 'tbMain'
          DisabledImages = ImageList2
          Images = ImageList1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object tbSearchShop: TToolButton
            Left = 0
            Top = 0
            Hint = 'Search'
            ImageIndex = 1
            OnClick = tbSearchClick
          end
          object ToolButton13: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 4
            Style = tbsSeparator
          end
        end
      end
      object Panel9: TPanel
        Left = 205
        Top = 28
        Width = 937
        Height = 610
        Align = alClient
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Panel7: TPanel
          Left = 1
          Top = 129
          Width = 935
          Height = 104
          Align = alTop
          TabOrder = 0
          object lSLAC: TLabel
            Left = 13
            Top = 19
            Width = 75
            Height = 13
            Caption = 'Armour Class'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 13
            Top = 38
            Width = 50
            Height = 13
            Caption = 'Strength'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 13
            Top = 57
            Width = 41
            Height = 13
            Caption = 'Stealth'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 13
            Top = 76
            Width = 40
            Height = 13
            Caption = 'Weight'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lShopAC: TLabel
            Left = 109
            Top = 19
            Width = 20
            Height = 13
            Caption = '.....'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lShopStrength: TLabel
            Left = 109
            Top = 38
            Width = 20
            Height = 13
            Caption = '.....'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lShopStealth: TLabel
            Left = 109
            Top = 57
            Width = 20
            Height = 13
            Caption = '.....'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lShopWeight: TLabel
            Left = 109
            Top = 76
            Width = 20
            Height = 13
            Caption = '.....'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 277
            Top = 19
            Width = 47
            Height = 13
            Caption = 'Damage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lShopDamage: TLabel
            Left = 373
            Top = 19
            Width = 20
            Height = 13
            Caption = '.....'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 277
            Top = 38
            Width = 59
            Height = 13
            Caption = 'Properties'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lShopProperties: TLabel
            Left = 373
            Top = 38
            Width = 20
            Height = 13
            Caption = '.....'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
        object Panel11: TPanel
          Left = 1
          Top = 511
          Width = 935
          Height = 98
          Align = alBottom
          TabOrder = 1
          object lShopCost: TLabel
            Left = 1
            Top = 1
            Width = 210
            Height = 96
            Align = alLeft
            Alignment = taRightJustify
            Caption = 'lShopCost'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -48
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 58
          end
          object lShopCurrency: TLabel
            Left = 211
            Top = 1
            Width = 723
            Height = 96
            Margins.Left = 0
            Margins.Top = 0
            Align = alClient
            Caption = 'Label4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -48
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 138
            ExplicitHeight = 58
          end
        end
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 935
          Height = 64
          Align = alTop
          TabOrder = 2
          object lShopName: TLabel
            Left = 13
            Top = 9
            Width = 200
            Height = 48
            Caption = 'lShopName'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -40
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
        object Panel13: TPanel
          Left = 1
          Top = 65
          Width = 935
          Height = 64
          Align = alTop
          TabOrder = 3
          DesignSize = (
            935
            64)
          object lShopDescription: TLabel
            Left = 13
            Top = 14
            Width = 916
            Height = 39
            Anchors = [akLeft, akTop, akRight, akBottom]
            AutoSize = False
            Caption = 'Label4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object tsMisc: TTabSheet
      Caption = 'Misc'
      ImageIndex = 6
      object Label25: TLabel
        Left = 8
        Top = 16
        Width = 94
        Height = 13
        Caption = 'Hoard Calculator'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 8
        Top = 56
        Width = 35
        Height = 13
        Caption = 'Copper'
      end
      object Label27: TLabel
        Left = 8
        Top = 83
        Width = 26
        Height = 13
        Caption = 'Silver'
      end
      object Label28: TLabel
        Left = 8
        Top = 110
        Width = 21
        Height = 13
        Caption = 'Gold'
      end
      object Label29: TLabel
        Left = 120
        Top = 34
        Width = 55
        Height = 13
        Caption = '# of coins'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 225
        Top = 34
        Width = 40
        Height = 13
        Caption = 'Weight'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 8
        Top = 137
        Width = 40
        Height = 13
        Caption = 'Platinum'
      end
      object eHCWCopper: TLabel
        Left = 183
        Top = 56
        Width = 82
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object eHCWSilver: TLabel
        Left = 183
        Top = 83
        Width = 82
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object eHCWGold: TLabel
        Left = 183
        Top = 110
        Width = 82
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object eHCWPlatinum: TLabel
        Left = 183
        Top = 137
        Width = 82
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object Label36: TLabel
        Left = 319
        Top = 34
        Width = 42
        Height = 13
        Caption = 'Volume'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object eHCVCopper: TLabel
        Left = 279
        Top = 56
        Width = 82
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object eHCVSilver: TLabel
        Left = 279
        Top = 83
        Width = 82
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object eHCVGold: TLabel
        Left = 279
        Top = 110
        Width = 82
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object eHCVPlatinum: TLabel
        Left = 279
        Top = 137
        Width = 82
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object lHCTotal: TLabel
        Left = 8
        Top = 177
        Width = 29
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lHCTotalWeight: TLabel
        Left = 199
        Top = 177
        Width = 66
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object lHCTotalCoins: TLabel
        Left = 120
        Top = 177
        Width = 57
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object lHCTotalVolume: TLabel
        Left = 279
        Top = 177
        Width = 82
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
      end
      object eHCCopper: TEdit
        Left = 120
        Top = 53
        Width = 57
        Height = 21
        Alignment = taRightJustify
        TabOrder = 0
        Text = '0'
        OnChange = eHCCopperChange
        OnExit = eHCCopperExit
      end
      object eHCSilver: TEdit
        Left = 120
        Top = 80
        Width = 57
        Height = 21
        Alignment = taRightJustify
        TabOrder = 1
        Text = '0'
        OnChange = eHCCopperChange
        OnExit = eHCCopperExit
      end
      object eHCGold: TEdit
        Left = 120
        Top = 107
        Width = 57
        Height = 21
        Alignment = taRightJustify
        TabOrder = 2
        Text = '0'
        OnChange = eHCCopperChange
        OnExit = eHCCopperExit
      end
      object eHCPlatinum: TEdit
        Left = 120
        Top = 134
        Width = 57
        Height = 21
        Alignment = taRightJustify
        TabOrder = 3
        Text = '0'
        OnChange = eHCCopperChange
        OnExit = eHCCopperExit
      end
    end
  end
  object ImageList1: TImageList
    Left = 427
    Bitmap = {
      494C01010D001100080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DE987700DA8F5E00DB90
      6000DA8C5C00DE9E8A00FBF3F100F4DFDB00D98E7800D47D5200D67E5100D57C
      4D00D5816600F1D9D40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDF9F700F1D4C800E1A4
      7500DD956400F1D6CD000000000000000000FAF1EF00E1A49300DC966B00DB8F
      6000E9C0B600FEFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00E4AB
      8A00E2A97C00E0A38700000000000000000000000000DC937400DFA07700DA89
      5A00F6E5E2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBF2
      EE00DE9C6B00E2A77900DF986900DD977500DC947200DB8E6100E3A88100DA89
      5A00F8EBE8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEC9B600E0A06D00E1A07100EFCEC000F6E4DD00E0A08200E1A67A00DA8C
      5C00FCF6F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFDFD00E4AA8100E0A26F00EBC2AE00FDF9F700E4AB9200E1A67900DC91
      6500FEFBFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9ECE400E2A67500E0A37200EFCEBC00E7B49A00E2A97C00E1A0
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBC0A400E3A97400E6AE8200E5AE8900E4AE8200E2A7
      8900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF1E900E6B28400E4AD7A00E2AB7800E2A77500E5AE
      8C00FDFAF9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2D7C000E6B27F00E9BC9100E7BA8F00E7B78B00E2A5
      7300E2A37800FDF9F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5E1CF00EBC29D00EABD9500EABD9600E9BA9300E7B5
      8C00E7B39400FCF7F500FFFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084B094002573
      4100196B37002573410084B0940000000000000000003A8FDA003A8EDA003A8F
      DA003A8FDA003A8FDA003A8FDA003A8FDA003A8FDA003A8FDA003A8FDA003A8E
      DA003A8FDA0068A8E30000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000095B0E300235C
      C2000543BC001F59C10086A6DD00000000000000000000000000000000000000
      0000E5E8F7009EA9E100546BC7003F59C0003A53BF004C67C20097A7DC00E1E6
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C1C1F000AAAAEB0088B29700288C530064BA
      8D0095D2B20064BA8D00288C530081AE91003991DA00EAF3FB00A6E5F800A7E5
      F800AAE5F800ACE5F700AFE5F700AFE5F700B1E5F700B2E5F700B3E4F700B7E4
      F700E9F3FB003594DA0000000000000000000000000000000000000000000000
      0000000000000000000000000000C1C1F000AAAAEB008CABE1002866CA002177
      E6000579EA000164DD00074FBE0086A6DD00000000000000000000000000C3C9
      ED005566CC003C52CC00757AE8008F92EE008F92EE007178E400334DC100405C
      BE00B9C4E7000000000000000000000000000000000000000000000000000000
      000000000000F4F4FD009898E7004848D4006064E5001F6D3E0062BA8B0060BA
      87000000000060B9870067BC8F0020703D004198DC00FAFEFE008FE4F8008AE3
      F70085E2F7007EE0F70077DEF6006FDDF60067DBF5005CD9F40050D5F30047D3
      F300F6FCFE003594DA0000000000000000000000000000000000000000000000
      000000000000F4F4FD009898E7004848D4006064E500104BBD00639DF400187F
      FF000076F8000076EE000368E1001E59C0000000000000000000C5C9EF005160
      CD005C65E000A1A6F5007E86EF005B63E900595DE7007D84EE009EA0F400515D
      D7003452BA00B9C4E70000000000000000000000000000000000000000000000
      0000DFDFF8007F7FE300797CEB00BABFFF00B6BCFF00317B4C009CD4B6000000
      0000000000000000000095D2B200196B3700409EDC00F9FDFE0091E5F8008EE4
      F8008BE3F80085E2F70081E1F7007BE0F70073DEF60069DBF6005CD8F40050D5
      F300F4FCFE003594DA0000000000000000000000000000000000000000000000
      0000DFDFF8007F7FE300797CEB00BABFFF00B6BCFF000442BC00AECDFE00FFFF
      FF00FFFFFF00FFFFFF00187FEF000543BC0000000000E8EAF9006571D400616B
      E300A1ACF500545FEC00505CEA004D59E9004E59E6004C56E6005056E6009EA2
      F4005460D600405CBF00E2E7F500000000000000000000000000F7F7FE00B6B6
      F1007272E300999CF200B2B7FF00797DFF006D6FFF004788620090D3B10092D6
      B1000000000065BC8C0067BC8F0020703D0040A3DC00FAFDFE0092E5F80090E5
      F8008FE4F8008CE4F8008AE3F80085E2F70080E1F70077DFF6006CDCF60063DA
      F500F6FCFE003594DA0000000000000000000000000000000000F7F7FE00B6B6
      F1007272E300999CF200B2B7FF00797DFF006D6FFF001952C2008DB5F6004D92
      FF001177FF002186FF00408AEB00245CC20000000000ACB0EA004B56DB00A2AB
      F6005664F0005266EE004D59E9004D59E9004D59E9004D59E9004C58E600525A
      E6009FA3F5003450C40096A6DC000000000000000000E9E9FB009A9AED008D91
      F200C0C4FD00A6AEFF00797AFF007A7BFF007778FF005F7FB30061AB810095D4
      B400BAE6D0006ABB8F002D8F570081AE910040A8DB00FDFEFF00F0FCFE00EDFB
      FE00EBFAFE00E8FAFE0096E6F8008BE3F80088E3F80082E1F70079DFF60070DD
      F500F6FCFE003594DA00000000000000000000000000E9E9FB009A9AED008D91
      F200C0C4FD00A6AEFF00797AFF007A7BFF007778FF004863E3003A74D2008DB5
      F700B8D6FE0072A8F5002F6CCB0094AFE200000000007378DD00818CEE007E91
      F7005D73F3004D59E9004D59E9004D59E9004D59E9004D59E9004D59E9004F5B
      E9007B83F000757BE2004C64C40000000000F1F1FD009C9CF000AAADF700C1C5
      FF00979AFF008585FF008585FF008283FF007F80FF007C7DFF006785B9005A93
      75004F8E6600448561003B5F8F00EAEAFA0040ABDB00FAFEFE0072BFE90055AD
      E3004BA6E1008CC9ED00E6F9FD00E7F9FE00E2F5FC00D9E1F600D7DFF600DDF1
      FB00FEFFFF003594DA000000000000000000F1F1FD009C9CF000AAADF700C1C5
      FF00979AFF008585FF008585FF008283FF007F80FF007C7DFF004C68E3001B53
      C7000542BC00134EBF002847C60000000000000000006569DB00A1ABF7007086
      F8006882F6000000000000000000000000000000000000000000000000004D59
      E9005C66EA00969CF1003956BE0000000000C3C3F800AAADF900C5C9FF009496
      FF009494FF009292FF008F91FF008B8BFF00888AFF008484FF008080FF007C7D
      FF007475FF00A5ABFF008385E9008989E30040AEDC00F7FCFE0098E0F60097DE
      F50066BEE9003594DA003594DA003594DA003594DA003594DA003594DA003594
      DA003594DA003594DA000000000000000000C3C3F800AAADF900C5C9FF009496
      FF009494FF009292FF008F91FF008B8BFF00888AFF008484FF008080FF007C7D
      FF007475FF00A5ABFF008385E9008989E30000000000696EDC00AFB9F9007F93
      FA007085F0000000000000000000000000000000000000000000000000004D59
      E9005E6AEE00969DF1003D55C00000000000AFAFF600D1D4FD00ABADFF00A0A1
      FF009D9DFF009A9AFF009696FF009393FF009090FF008C8CFF008989FF008585
      FF008182FF008386FF00C1C5FD004B4BD40041B4DC00F7FCFE008EE4F80091DE
      F5009FE0F500A2D3F300878DE700494CE0009096F900898DFF008083FF00898F
      F9003133D0002859C600E8E8F70000000000AFAFF600D1D4FD00ABADFF00A0A1
      FF009D9DFF009A9AFF009696FF009393FF009090FF008C8CFF008989FF008585
      FF008182FF008386FF00C1C5FD004B4BD400000000007C7FE300A5AFF5009DAB
      FA00778CF000545FEC00545FEC00545FEC00545FEC00545FEC00545FEC006377
      F200818EF400787FE900566BC90000000000AFAFF800D5D8FE00B0B1FF00A9A9
      FF00A7A8FF00A2A2FF009F9FFF009A9AFF009696FF009494FF009292FF008F91
      FF008A8AFF008788FF00BFC3FD005353D7003CB5DB00FDFEFE00FEFFFF00FEFE
      FF00E6E7FC007577E9008E93F600AAAEFF00888BFF007B7AFF007677FF007B7E
      FF009DA2FF006E75ED004D4DC900E0E0F400AFAFF800D5D8FE00B0B1FF00A9A9
      FF00A7A8FF00A2A2FF009F9FFF009A9AFF009696FF009494FF009292FF008F91
      FF008A8AFF008788FF00BFC3FD005353D70000000000B5B5F0007D83EA00CDD4
      FC008B9DFA007E93F700758AEE006C84F6006C84F6006C84F6006C84F6006379
      F300A4AFF8003E4FD000A0ABE10000000000B6B6FA00D8DBFE00B7B9FF00B0B0
      FF00AEAFFF00ABABFF00A6A6FF00B4B5FF00B5B8FF009C9CFF009A9CFF009696
      FF009496FF009091FF00C5C8FD005858D90059C2E00061C3E20063C4E30063C4
      E3006188E800A1A6F900ABAFFF009090FF008C8DFF008B8BFF008688FF007F7F
      FF007778FF009194FF007578ED007474D400B6B6FA00D8DBFE00B7B9FF00B0B0
      FF00AEAFFF00ABABFF00A6A6FF00B4B5FF00B5B8FF009C9CFF009A9CFF009696
      FF009496FF009091FF00C5C8FD005858D90000000000EBEBFB007978E300A3A7
      F300D4DBFD00879AFA007F91F0007A8EF1007F94F8007E92F900768CF800A8B6
      F800636EE3005868CD00E6E8F70000000000C7C7FC00CACDFE00CCCFFF00B4B5
      FF00B2B2FF00AEAEFF00CBCFFF00C6CBFD00C0C3FC00C9CBFF009F9FFF009D9D
      FF009898FF00A2A5FF00C7CAFC006969DE000000000000000000000000000000
      00009496F600BEC1FF00A0A1FF009D9DFF009A9AFF009393FF008F8FFF008D8C
      FF008686FF007C7DFF00A5A9FF003D3ECE00C7C7FC00CACDFE00CCCFFF00B4B5
      FF00B2B2FF00AEAEFF00CBCFFF00C6CBFD00C0C3FC00C9CBFF009F9FFF009D9D
      FF009898FF00A2A5FF00C7CAFC006969DE000000000000000000CFCFF600706F
      E100AAADF200D8DCFD00AEBAFA0091A3FA008B9DFA009CA9FB00BAC7FC00707B
      E9005462CE00C3C9EE000000000000000000E9E9FE00B0B2FC00D6D9FE00D9DB
      FF00D4D6FF00DADCFF00BDBFFA00A1A1F300A1A1F100B0B2F700D2D4FF00C0C4
      FF00C3C6FF00D4D6FF008D8FEE00ADADED000000000000000000000000000000
      00009C9DF800C4C6FF00ABABFF00A9AAFF00A4A3FF00A7A7FF00A4A5FF009596
      FF009394FF008989FF00A7A9FF004040D200E9E9FE00B0B2FC00D6D9FE00D9DB
      FF00D4D6FF00DADCFF00BDBFFA00A1A1F300A1A1F100B0B2F700D2D4FF00C0C4
      FF00C3C6FF00D4D6FF008D8FEE00ADADED00000000000000000000000000CFCF
      F6007979E2008E93ED00BEC3F800CCD3F900C4CBF900AAB4F4006670E200646E
      D600C6CAEF0000000000000000000000000000000000E0E0FE00B8B8FC00B9BB
      FC00BCBDFC00AFB1FA00B1B1F700ECECFD00EFEFFD00A4A4F200A0A2F400C3C6
      FB00B6B9F8008789ED00A3A3ED00F8F8FE000000000000000000000000000000
      0000A7A8FB00C6CBFF00BCBEFF00B2B3FF00BCBDFF00BABEFD00B5B9FD00B3B3
      FF009C9DFF009C9DFF00B7BAFF004848D40000000000E0E0FE00B8B8FC00B9BB
      FC00BCBDFC00AFB1FA00B1B1F700ECECFD00EFEFFD00A4A4F200A0A2F400C3C6
      FB00B6B9F8008789ED00A3A3ED00F8F8FE000000000000000000000000000000
      0000EBEBFB00B6B6F0007D7FE2006A6BDE00686BDC007479DE00AFB3EB00E8E9
      F900000000000000000000000000000000000000000000000000F4F4FF00E0E0
      FE00D9D9FD00E2E2FD00FAFAFE000000000000000000F8F8FE00D1D1F8009898
      EF00A2A2EF00D9D9F80000000000000000000000000000000000000000000000
      0000D1D1FE009EA1FC00C9CBFE00C8CBFE00B5B7FB00898AF0008384ED00A4A6
      F700C3C7FF00C1C4FE008B8DF0009090E5000000000000000000F4F4FF00E0E0
      FE00D9D9FD00E2E2FD00FAFAFE000000000000000000F8F8FE00D1D1F8009898
      EF00A2A2EF00D9D9F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFF00D4D3FE00ACADFB00A4A4FA00ADAEF900EDEDFD00EEEEFD00989A
      F100797AED006F71EA009A9AEC00F4F4FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000369DD9003199D8002C94
      D7002890D600238CD5001E88D4001A84D3001580D200117CD1000E79D1000A76
      D0000773CF000470CF00016ECE000000000000000000369DD9003199D8002C94
      D7002890D600238CD5001E88D4001A84D3001580D200117CD1000E79D1000A76
      D0000773CF000470CF00016ECE0000000000000000000000000000000000B1E0
      F200000000000000000000000000000000000000000000000000000000000000
      0000ABD2ED00F9FCFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCEBFA00BCEB
      FC00BFEEFE0000000000CEF8FF0000000000000000000000000000000000B3E4
      F900000000000000000000000000000000000000000000000000BCEBFA00BCEB
      FC00BFEEFE0000000000CEF8FF0000000000000000000000000000000000B3E4
      F9000000000000000000000000000000000000000000000000000000000032B0
      DF0030ADDE0087CEEB00000000000000000000000000000000009ACDEB002290
      D3000D81CC000000000000000000000000000000000000000000000000000000
      0000E5F0E700A0C8A600569C5E003F8F49003C8D45004C95530098C19B00E1ED
      E300000000000000000000000000000000000000000000000000BFECFB0059CF
      F50041B0EC00000000005AC2EF00000000005CC4EF004CB6EF0037A5E6002A9A
      E10000000000B1E3F8000975D000000000000000000000000000BFECFB0059CF
      F50041B0EC00000000005AC2EF00000000005CC4EF004CB6EF0037A5E6002A9A
      E10000000000B1E3F8000975D0000000000000000000000000000000000044B8
      E30050CBEF0039B7E5002AA9DD0073C5E70082CAEA00269ED9002AA3DD0039AE
      E500198CD100000000000000000000000000000000000000000000000000C4DE
      C90057A06400419950007DC28F0096D0A60096CFA60078BE8900368D4200418D
      4800B9D5BC000000000000000000000000000000000049ADDC00000000000000
      0000000000007FE5FF008FEDFF000000000093EDFF007CDFFF005BCCF80046BE
      EF0000000000B3E3F9000E79D100000000000000000049ADDC00000000000000
      0000000000007FE5FF008FEDFF000000000093EDFF007CDFFF005BCCF80046BE
      EF0000000000B3E3F9000E79D100000000000000000000000000000000005BC3
      E7004DCAEE0054CEF10050C8EF0040BAE80039B5E50046BDEB0044BAEB003EB3
      E8002C9AD6000000000000000000000000000000000000000000C6E0CC0055A0
      640064B47800A8DBB50087CC980066BC7D0064BA7C0086CB9800A5D9B40058AA
      6B0035863D00B9D5BC000000000000000000000000004EB2DD000000000065D6
      F800000000005ABDEF0095EBFF00000000004D82AB0084E1FF0041A9E900329F
      E10000000000B4E5F900137ED20000000000000000004EB2DD000000000065D6
      F800000000005ABDEF0095EBFF00000000004D82AB0084E1FF0041A9E900329F
      E10000000000B4E5F900137ED200000000000000000000000000000000007AD0
      EC0049C8EC0049CCF10031C3ED0042C4EE0046C3ED002CB6EA0026B1E8003CB4
      E70046ABDD0000000000000000000000000000000000E9F3EB0067AC76006AB9
      7D00A8DBB20060BC77005CBA730059B8700059B56F0058B56F005BB77400A5D9
      B3005AAA6C00428F4900E2EEE300000000000000000053B7DE00000000006AD9
      F8000000000090E8FF0099E9FF0000000000548BB2008AE2FF006AD0F90050C5
      F10000000000B6E7F9001883D300000000000000000053B7DE00000000006AD9
      F8000000000090E8FF0099E9FF0000000000548BB2008AE2FF006AD0F90050C5
      F10000000000B6E7F9001883D300000000000000000000000000000000009BDC
      F10044C6EA0057D2F20027C2ED0023BDEC001FB7EA001BB3E90036B9EA003AB3
      E60067BDE40000000000000000000000000000000000AFD5B80053AB6800AADD
      B40064C179005FBE710060BC7700000000000000000059B8700058B56E005CB7
      7400A6DAB400388F430097C19B00000000000000000058BBDF00C7F1FC000000
      000056BBED0061BDEF009BE7FF00000000004BA4E10090E2FF0049ADE90038A4
      E30000000000B8E8F9001E88D400000000000000000058BBDF00C7F1FC000000
      000056BBED0061BDEF009BE7FF00000000004BA4E10090E2FF0049ADE90038A4
      E30000000000B8E8F9001E88D400000000000000000000000000F5FCFE0046C2
      E60059D5F20046D0F20029C4EE0025C0ED0022BBEB001DB6E90021B4E90046BD
      EB002AA7DB00E6F4FB0000000000000000000000000077B888008ACC980089D3
      96006BC67A0063C1700055AB6500000000000000000059B8700059B870005BB9
      720085CC97007BBE8D004D96550000000000000000005CBFE000C8F3FC0075DF
      F90089E6FD0095E7FF009AE5FF00AAEEFF00A8EDFF0099E3FF0074D5F90059CC
      F3004FC8F100BBE9FA00248DD50000000000000000005CBFE000C8F3FC0075DF
      F90089E6FD0095E7FF009AE5FF00AAEEFF00A8EDFF0099E3FF0074D5F90059CC
      F3004FC8F100BBE9FA00248DD5000000000000000000FAFEFE004DC8E9004ACE
      ED005EDBF50030CDF1002CC8EF0027C3EE0024BEEC0020B8EA001CB4E90049C0
      EC0037B2E4002DA8DD00EBF7FC0000000000000000006AB27F00A9DDB3007DCF
      8A0075CC810000000000000000000000000000000000000000000000000059B8
      700067BE7D009CD4AB003B8C4400000000000000000060C2E100C9F3FC00CBF3
      FD00D4F6FE00D7F6FF00D8F4FF00E0F8FF00DFF8FF00DAF5FF00CDF1FC00C2ED
      FA00BDEBFA00BDEBFA002B93D600000000000000000060C2E100C9F3FC00CBF3
      FD00D4F6FE00D7F6FF00D8F4FF00E0F8FF00DFF8FF00DAF5FF00369AD500369A
      D500369AD500BDEBFA002B93D600000000000000000054CEEB004CD2EE0063E1
      F60041D6F40032CFF2002ECBF0002AC6EF0026C1ED0022BCEB001FB7EA0020B4
      E90047BEEC0036B2E40032ABDD00EFF8FC00000000006EB58300B6E2BE008BD5
      97007AC9860000000000000000000000000000000000000000000000000059B8
      700069C17E009DD4AA003F8F4900000000000000000061C3E10088A0A8009191
      91008E8E8E005AB9DC0055B8DF0051B5DE004DB1DD0049ADDC0046A8D7007878
      780076767600657E8D003199D800000000000000000061C3E100909395009191
      91008E8E8E005AB9DC0055B8DF0051B5DE004DB1DD0049ADDC0080C3E400B4D9
      EF0070B7E100359AD6003199D800000000005ED3EE004DD5EF0058DCF2005EDE
      F50060DEF5005FDCF60048D4F3002DC9EF0029C4EE0035C4ED0050C9EF004CC4
      EE0045BEEB003DB7E70033B0E20036ADDE000000000082BF9500ACDDB600A6DF
      AF0081CB8C007CC986006EBD790000000000000000005BAC6A0060BC77005CBA
      73008BD1990080C59200589E6100000000000000000000000000B1B1B100C6C6
      C60094949400FBFBFB0000000000000000000000000000000000FBFBFB007D7D
      7D00ABABAB00969696000000000000000000000000000000000097979700B9B9
      B9009A9A9A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6FDFE00B6EBF7007FDCF1005BD0
      ED0042C7E90049CEED005BD9F40047D3F2003ACBF00055CFF1003EBFE80035B7
      E2004BBCE4006EC8E900A3DBF100E6F5FB0000000000B8DCC40085C79700D2EE
      D70095D9A0008AD394007FC88900000000000000000079CD85006BC37C006FC7
      7E00ACDFB500459E5700A1C9A700000000000000000000000000BCBCBC00C4C4
      C400A1A1A100EEEEEE0000000000000000000000000000000000EBEBEB008989
      8900A9A9A900A4A4A4000000000000000000000000000000000098989800BCBC
      BC00999999000000000000000000000000000000000098989800939393009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000009CE2F30049CEED005DD9F40059D6F30043C5EA0079D1ED000000
      00000000000000000000000000000000000000000000ECF6EF007FBF9300AADA
      B700D8F1DC0092D89D0088CD930084CC8E008BD496008AD4950083D28E00AFE0
      B7006BB97D005BA36700E6F1E800000000000000000000000000D4D4D400BABA
      BA00BFBFBF00A6A6A600F2F2F200FDFDFD00FDFDFD00F1F1F10093939300A8A8
      A8009E9E9E00C3C3C300000000000000000000000000000000009B9B9B00C0C0
      C000ACACAC00D8D8D8000000000000000000D2D2D2008F8F8F00A2A2A2008D8D
      8D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000047CAEA0056D6F20059D6F3003AC0E600FAFDFE000000
      0000000000000000000000000000000000000000000000000000D1E9D90076BB
      8C00AFDCBB00DCF2E000B6E4BD009BDBA50096D9A000A5DFAF00C0E8C50079C2
      8A0058A26600C5DECA0000000000000000000000000000000000FBFBFB00AEAE
      AE00C4C4C400BEBEBE00A1A1A100969696009393930097979700AEAEAE00AEAE
      AE0095959500FBFBFB0000000000000000000000000000000000F0F0F000B1B1
      B100C7C7C700AAAAAA0092929200929292009F9F9F00B4B4B40098989800B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BCECF70048CEED0048CDED009BE0F300000000000000
      000000000000000000000000000000000000000000000000000000000000D1E9
      D9007FBF930094CEA400C3E6CB00CFEBD400C9E9CE00AFDDB8006DB97F0068AE
      7800C7E0CD00000000000000000000000000000000000000000000000000EEEE
      EE00AEAEAE00BCBCBC00CACACA00CCCCCC00CACACA00C2C2C200ADADAD009B9B
      9B00E9E9E900000000000000000000000000000000000000000000000000D9D9
      D900AEAEAE00C8C8C800CACACA00CACACA00BEBEBE009B9B9B00CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000058D1EC0047CBEA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ECF6EF00B9DDC50082C0950071B786006EB5820079B98A00B1D6BA00E9F3
      EB00000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00D0D0D000BABABA00B1B1B100AEAEAE00B3B3B300C9C9C900FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700BEBEBE00A2A2A2009E9E9E00B6B6B600E3E3E300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8F5FB00C1EEF80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3957000CC835700C8764600CA7B4E00CB7B4E00CA7B
      4E00CA7B4E00CA7B4E00CA815500CD865C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEAE003E3E3E001717
      1700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000369DD9003199D8002C94
      D7002890D600238CD5001E88D4001A84D3001580D200117CD1000E79D1000A76
      D0000773CF000470CF00016ECE0000000000000000004A80AB00206398002063
      98002063980020639800C98F6700FCF3EC00FAF1E800FAF0E700FBF1E900FBF2
      EA00FBF2EA00FBF2EB00FDF4EE00CB8358000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000069696900C9C9C9009595
      9500161616000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003DA3DA00BCEBFA00BCEB
      FC00BFEEFE00C6F4FF00CEF8FF00D3FAFF00D0F8FF00C7F2FF00BAE9FC00B3E4
      F900B0E2F800B0E2F8000571CF00000000005588B10074ADD8007BB2DD0078AE
      DC0075AADA0074A9DA00DAA97D00EFF1E700FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00EFF2E800CE8156000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006494
      BA0022679D0081A8C60000000000000000000000000069696900DEDEDE003131
      3100454545001515150000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000043A8DB00BFECFB0059CF
      F50041B0EC004EBAEF005AC2EF0060C6EF005CC4EF004CB6EF0037A5E6002A9A
      E10038B8EE00B1E3F8000975D000000000002063980080B9E1005395D1005092
      D0004E8ECE004D8CCD00D6A97D00FBF5EE00FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00FBF6EF00CC8356000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006F9CC200558D
      BC0089B5DD00185F970000000000000000000000000000000000434343008181
      8100353535003E3E3E0015151500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000049ADDC00C1EEFB005FD3
      F7006CDBFC007FE5FF008FEDFF0097F2FF0093EDFF007CDFFF005BCCF80046BE
      EF003CBAEE00B3E3F9000E79D100000000002063980084BFE200569AD3005397
      D1005092CF005091CF00D6A97D00FFF7F100FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00FFF7F100CB8556000000000000000000000000000000
      000000000000000000000000000000000000000000007BA4CA006497C5009DC1
      E4006699C7003171A50000000000000000000000000000000000000000004747
      470083838300373737003F3F3F0015151500000000000000000000000000BAE9
      FB0000000000000000000000000000000000000000004EB2DD00C3EFFB0065D6
      F8004CB6EC005ABDEF0095EBFF003097DD004D82AB0084E1FF0041A9E900329F
      E10042BEEF00B4E5F900137ED200000000002063980088C4E600599FD600569B
      D3005397D1005395D100D7AC7F00FFF7F000FFE7D500FDE7D600FDE6D400FCE4
      D000FBE3CB00FADCC200FEF3E800CC865700000000000000000000000000E8CF
      BA00DBB29200D3A68000D0A17C00D2A68500AEA1990075A2CC00ABCBE80076A4
      CE00407BAF000000000000000000000000000000000000000000000000000000
      00005858580084848400373737003F3F3F001515150000000000C3EDFC0048C7
      F50000000000F9FDFF00B7E8FA00000000000000000053B7DE00C6F0FC006AD9
      F8007CE2FD0090E8FF0099E9FF00329FDF00548BB2008AE2FF006AD0F90050C5
      F10046C1F000B6E7F9001883D30000000000206398008BC9E7005CA5D70059A0
      D500579CD300569AD300D7AC7F00FFF7F200FEE7D500FEE7D500FDE5D100FAE0
      CA00F9DEC400F7D9BC00FDF2E700CC8758000000000000000000E8CAB000E8C9
      AE00F5E1CD00F7E5D300F7E5D100F3DDC800DFBA9C00C7A8910086AED5005087
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000004E4E4E00676767003737370040404000161616006CD4F70003B4
      F100C6EEFC0030C0F40096DEF900000000000000000058BBDF00C7F1FC006FDC
      F90056BBED0061BDEF009BE7FF0035A6E2004BA4E10090E2FF0049ADE90038A4
      E30049C4F000B8E8F9001E88D400000000002063980091CDE9005FA9D9005DA5
      D8005AA0D600599FD600D8AD8100FEF7F100FCE5D200FCE4D100FBE2CC00F9DD
      C400F6D7BB00F3D1AF00FAEFE400CC87590000000000F1DBC800EDD0B700F8E8
      D900F5DEC800F3D8BD00F3D6BB00F4DBC200F7E4D200DFBB9D00A09795000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004E4E4E006767670038383800424242004D4D4D004BCC
      F50019BDF2000DB7F200E1F6FD0000000000000000005CBFE000C8F3FC0075DF
      F90089E6FD0095E7FF009AE5FF00AAEEFF00A8EDFF0099E3FF0074D5F90059CC
      F3004FC8F100BBE9FA00248DD500000000002063980098D2EB0065AEDA0060AA
      D9005DA6D8005CA5D700D9AF8400FEF6F000FCE2CD00FCE3CD00FADFC800F7D9
      BC00F5E9DD00FAF3EB00FBF8F300CA83540000000000EECEB200F7E7D700F6E1
      CC00F4DBC200F4DAC000F3D8BD00F3D7BB00F4DBC200F3DEC900D2A887000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4F7FE005BD1F7004F4F4F00676767008C8C8C00A9A9A9004197
      B40077D9F80003B6F10033C4F40080D9F8000000000060C2E100C9F3FC00CBF3
      FD00D4F6FE00D7F6FF00D8F4FF00E0F8FF00DFF8FF00DAF5FF00CDF1FC00C2ED
      FA00BDEBFA00BDEBFA002B93D60000000000206398009ED6ED006BB2DC0066AF
      DC0060AADA005FA9D900D9AF8400FEF5ED00FCDEC500FBE0C700F9DCC200F5D3
      B400FEF9F300FAE2C400ECC19300D2986E0000000000F0CEAF00F9ECDF00F5DF
      C800F5DDC600F4DCC300F4DAC100F3D9BE00F3D7BD00F8E6D300D3A680000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECFAFE0059D1F6004C4C4C00CACACA00F7F7F700D3D3
      D3004BA1BF0074D9F8000CB8F200C7EFFC000000000061C3E10088A0A8009191
      91008E8E8E005AB9DC0055B8DF0051B5DE004DB1DD0049ADDC0046A8D7007878
      780076767600657E8D003199D8000000000020639800A5DAEF006FB5DE0068B0
      DC0060A9D9005FA9D900D7AD8100FFFFFE00FDF3E900FDF3EA00FCF2E800FAEF
      E300FAF2E700EABB8800D39469000000000000000000F4D3B500F9EDE100F6E1
      CC00F5DFC900F5DEC700F4DCC400F4DBC200F4DAC000F8E7D600D7AB87000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000090E0FA0051CFF6004FA5C200F8F8F800FEFE
      FE005AB0CD006AD6F7002AC3F300E0F6FD000000000000000000B1B1B100C6C6
      C600949494000000000000000000000000000000000000000000000000007D7D
      7D00ABABAB0096969600000000000000000020639800AADDF10074B9E00070B6
      DF006CB3DD006BB2DC00D9AF8400D7AE8100D7AC7F00D7AC7F00CCA07000CD9F
      7100B38F6700D39B7100000000000000000000000000F8DBC100F9EBDE00F7E7
      D600F6E1CC00F5E0CA00F5DEC800F5DDC500F6E1CB00F5E2D000DFB999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBFAFE0062D3F80025C1F5004ECEF70083DDF8004EA4C2005BB1
      CF0068BFDC0041CAF60008BCF10068D6F7000000000000000000BCBCBC00C4C4
      C400A1A1A1000000000000000000000000000000000000000000000000008989
      8900A9A9A900A4A4A400000000000000000020639800B0E1F20079BDE2004498
      DD004497DC004396DC004296DC004295DC004195DB00539ED40089C6E6002063
      98000000000000000000000000000000000000000000FCEAD800F8E2CC00FAEE
      E300F7E7D600F6E2CE00F6E1CB00F6E3D000F9EADD00ECCFB500ECD4BF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000095E1FA005AD0F7006DD7F8007DDC
      F8004BCDF60019BFF300F4FCFE00000000000000000000000000D4D4D400BABA
      BA00BFBFBF00A6A6A6000000000000000000000000000000000093939300A8A8
      A8009E9E9E00C3C3C30000000000000000003B76A50095C9E000AEE2F2004E9D
      DF00B5EEFD0075D4F00075D4F000B5EEFD004B9BDE008ECBE90093CDE9002A6A
      9D00000000000000000000000000000000000000000000000000FBE4CE00F9E2
      CD00FAECDE00F9EEE200F9EDE200F8E9DA00F0D5BD00EDD0B700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054CFF70067D4F80067D3F80050CE
      F70098E3FA0027C3F400ACE8FB0000000000000000000000000000000000AEAE
      AE00C4C4C400BEBEBE00A1A1A100969696009393930097979700AEAEAE00AEAE
      AE0095959500000000000000000000000000000000006392B700206398003775
      A400B6EFFE0080DBF30080DBF300B6EFFE002E6EA100206398006F9ABC000000
      000000000000000000000000000000000000000000000000000000000000FCEA
      D900FADDC200F6D6B900F4D3B500F3D4B800F5E0CD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7F8FE00A9E6FB0000000000C1EEFC0053CE
      F70000000000E2F7FE00A5E6FA0000000000000000000000000000000000EEEE
      EE00AEAEAE00BCBCBC00CACACA00CCCCCC00CACACA00C2C2C200ADADAD009B9B
      9B00E9E9E9000000000000000000000000000000000000000000000000002063
      9800206398002063980020639800206398002D6C9E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8FDFF00ACE8
      FB00000000000000000000000000000000000000000000000000000000000000
      000000000000D0D0D000BABABA00B1B1B100AEAEAE00B3B3B300C9C9C9000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF00000000000080030000000000008303000000000000C387000000000000
      E007000000000000F007000000000000F007000000000000F80F000000000000
      FC0F000000000000FC07000000000000FC03000000000000FC01000000000000
      FFFF000000000000FFFF000000000000FFFFFFC18003FFC1F00FFE000003FE00
      E007F8080003F800C003F01C0003F0008001C0080003C0008001800000038000
      800100000003000187E100000003000087E10000000100008001000000000000
      800100000000000080010000F0000000C0030000F0000000E0078000F0008000
      F00FC183F000C183FFFFFFFFF000FFFF80018001EFF3FFFF80008000E3C7F00F
      80018001E007E00780018001E007C00380018001E007800180018001E0078181
      80018001C003818180018001800187E180018001800087E18001800100008181
      C3C3C7FF00008181C3C3C78FF81F8001C003C30FFC1FC003C003C00FFC3FE007
      E007E01FFE7FF00FF00FF03FFE7FFFFFFC00FFFF8FFF80018000FFFF87FF8001
      0000FFE383FF80010000FFC3C1FF80010000FF83E0EF80010000E007F0498001
      0000C00FF80180010000801FFC0180010000801FF80080010000801FFC008001
      0001801FFE00C7E30003801FF800C7E3000F801FFF01C3C3000FC03FFF01E007
      801FE07FFE49E007E07FFFFFFFCFF81F00000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Left = 475
    Bitmap = {
      494C01010D001100080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DE987700DA8F5E00DB90
      6000DA8C5C00DE9E8A00FBF3F100F4DFDB00D98E7800D47D5200D67E5100D57C
      4D00D5816600F1D9D40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDF9F700F1D4C800E1A4
      7500DD956400F1D6CD000000000000000000FAF1EF00E1A49300DC966B00DB8F
      6000E9C0B600FEFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00E4AB
      8A00E2A97C00E0A38700000000000000000000000000DC937400DFA07700DA89
      5A00F6E5E2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBF2
      EE00DE9C6B00E2A77900DF986900DD977500DC947200DB8E6100E3A88100DA89
      5A00F8EBE8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEC9B600E0A06D00E1A07100EFCEC000F6E4DD00E0A08200E1A67A00DA8C
      5C00FCF6F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFDFD00E4AA8100E0A26F00EBC2AE00FDF9F700E4AB9200E1A67900DC91
      6500FEFBFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9ECE400E2A67500E0A37200EFCEBC00E7B49A00E2A97C00E1A0
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBC0A400E3A97400E6AE8200E5AE8900E4AE8200E2A7
      8900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF1E900E6B28400E4AD7A00E2AB7800E2A77500E5AE
      8C00FDFAF9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2D7C000E6B27F00E9BC9100E7BA8F00E7B78B00E2A5
      7300E2A37800FDF9F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5E1CF00EBC29D00EABD9500EABD9600E9BA9300E7B5
      8C00E7B39400FCF7F500FFFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084B094002573
      4100196B37002573410084B094000000000000000000A2A2A200A1A1A100A2A2
      A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A1A1
      A100A2A2A200B7B7B70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BABABA006E6E
      6E005B5B5B006B6B6B00AFAFAF00000000000000000000000000000000000000
      0000ECECEC00BCBCBC00888888007B7B7B007777770084848400B8B8B800EBEB
      EB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C1C1F000AAAAEB0088B29700288C530064BA
      8D0095D2B20064BA8D00288C530081AE9100A2A2A200F5F5F500E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700F5F5F500A4A4A40000000000000000000000000000000000000000000000
      0000000000000000000000000000D4D4D400C4C4C400B4B4B400757575008181
      8100787878006D6D6D005F5F5F00AFAFAF00000000000000000000000000D4D4
      D400878787007B7B7B009C9C9C00ADADAD00ADADAD0099999900737373007C7C
      7C00CFCFCF000000000000000000000000000000000000000000000000000000
      000000000000F4F4FD009898E7004848D4006064E5001F6D3E0062BA8B0060BA
      87000000000060B9870067BC8F0020703D00A8A8A800FEFEFE00E5E5E500E4E4
      E400E3E3E300E2E2E200E0E0E000DFDFDF00DDDDDD00DBDBDB00D8D8D800D6D6
      D600FDFDFD00A4A4A40000000000000000000000000000000000000000000000
      000000000000F8F8F800B8B8B800808080009696960061616100A9A9A9008989
      89007B7B7B0077777700707070006B6B6B000000000000000000D5D5D5008484
      84008D8D8D00BBBBBB00A5A5A500909090008C8C8C00A4A4A400B7B7B7008585
      850074747400CFCFCF0000000000000000000000000000000000000000000000
      0000DFDFF8007F7FE300797CEB00BABFFF00B6BCFF00317B4C009CD4B6000000
      0000000000000000000095D2B200196B3700ACACAC00FDFDFD00E6E6E600E5E5
      E500E4E4E400E3E3E300E2E2E200E2E2E200DFDFDF00DDDDDD00DADADA00D8D8
      D800FDFDFD00A4A4A40000000000000000000000000000000000000000000000
      0000E9E9E900A7A7A700A7A7A700D7D7D700D4D4D4005A5A5A00D4D4D400FFFF
      FF00FFFFFF00FFFFFF00838383005B5B5B0000000000EFEFEF00919191009191
      9100BFBFBF008F8F8F008D8D8D008B8B8B008A8A8A008888880088888800B8B8
      B800868686007D7D7D00ECECEC00000000000000000000000000F7F7FE00B6B6
      F1007272E300999CF200B2B7FF00797DFF006D6FFF004788620090D3B10092D6
      B1000000000065BC8C0067BC8F0020703D00AFAFAF00FDFDFD00E6E6E600E6E6
      E600E5E5E500E5E5E500E4E4E400E3E3E300E2E2E200E0E0E000DEDEDE00DCDC
      DC00FDFDFD00A4A4A40000000000000000000000000000000000FAFAFA00CECE
      CE009F9F9F00BDBDBD00D2D2D200AFAFAF00A8A8A80068686800BFBFBF00A2A2
      A200858585008E8E8E00939393006E6E6E0000000000C3C3C30083838300BFBF
      BF0093939300939393008B8B8B008B8B8B008B8B8B008B8B8B00898989008A8A
      8A00B9B9B90076767600B7B7B7000000000000000000E9E9FB009A9AED008D91
      F200C0C4FD00A6AEFF00797AFF007A7BFF007778FF005F7FB30061AB810095D4
      B400BAE6D0006ABB8F002D8F570081AE9100B2B2B200FEFEFE00FCFCFC00FBFB
      FB00FAFAFA00FAFAFA00E7E7E700E4E4E400E4E4E400E2E2E200E1E1E100DEDE
      DE00FDFDFD00A4A4A400000000000000000000000000F0F0F000BBBBBB00B6B6
      B600D9D9D900CBCBCB00AFAFAF00AFAFAF00AEAEAE008B8B8B0082828200BFBF
      BF00DADADA00B1B1B1007A7A7A00B9B9B9000000000099999900A8A8A800AEAE
      AE009B9B9B008B8B8B008B8B8B008B8B8B008B8B8B008B8B8B008B8B8B008C8C
      8C00A4A4A4009A9A9A008484840000000000F1F1FD009C9CF000AAADF700C1C5
      FF00979AFF008585FF008585FF008283FF007F80FF007C7DFF006785B9005A93
      75004F8E6600448561003B5F8F00EAEAFA00B4B4B400FEFEFE00C6C6C600B8B8
      B800B2B2B200CFCFCF00F9F9F900F9F9F900F6F6F600E5E5E500E4E4E400F3F3
      F300FFFFFF00A4A4A4000000000000000000F6F6F600BEBEBE00C9C9C900DBDB
      DB00C1C1C100B6B6B600B6B6B600B4B4B400B2B2B200B1B1B1008E8E8E006B6B
      6B005A5A5A00646464006D6D6D0000000000000000008E8E8E00BFBFBF00A8A8
      A800A5A5A5000000000000000000000000000000000000000000000000008B8B
      8B0091919100B3B3B3007878780000000000C3C3F800AAADF900C5C9FF009496
      FF009494FF009292FF008F91FF008B8BFF00888AFF008484FF008080FF007C7D
      FF007475FF00A5ABFF008385E9008989E300B6B6B600FDFDFD00E2E2E200E0E0
      E000C5C5C500A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4A400A4A4
      A400A4A4A400A4A4A4000000000000000000D8D8D800CACACA00DDDDDD00BFBF
      BF00BFBFBF00BEBEBE00BCBCBC00B9B9B900B8B8B800B5B5B500B3B3B300B1B1
      B100ACACAC00CACACA00ACACAC00ADADAD000000000091919100CACACA00B0B0
      B000A4A4A4000000000000000000000000000000000000000000000000008B8B
      8B0095959500B4B4B4007878780000000000AFAFF600D1D4FD00ABADFF00A0A1
      FF009D9DFF009A9AFF009696FF009393FF009090FF008C8CFF008989FF008585
      FF008182FF008386FF00C1C5FD004B4BD400B9B9B900FDFDFD00E5E5E500E0E0
      E000E2E2E200D9D9D900A7A7A70081818100B2B2B200AFAFAF00A9A9A900AEAE
      AE00717171007C7C7C000000000000000000CBCBCB00E3E3E300CDCDCD00C6C6
      C600C4C4C400C2C2C200C0C0C000BEBEBE00BCBCBC00BABABA00B8B8B800B6B6
      B600B4B4B400B5B5B500DADADA0082828200000000009F9F9F00C2C2C200C0C0
      C000A8A8A8008F8F8F008F8F8F008F8F8F008F8F8F008F8F8F008F8F8F009D9D
      9D00ACACAC009F9F9F008989890000000000AFAFF800D5D8FE00B0B1FF00A9A9
      FF00A7A8FF00A2A2FF009F9FFF009A9AFF009696FF009494FF009292FF008F91
      FF008A8AFF008788FF00BFC3FD005353D700BABABA00FEFEFE00FFFFFF00FEFE
      FE00ECECEC009B9B9B00AFAFAF00C4C4C400AEAEAE00A5A5A500A3A3A300A7A7
      A700BCBCBC009B9B9B008282820000000000CCCCCC00E6E6E600D0D0D000CBCB
      CB00CACACA00C7C7C700C5C5C500C2C2C200C0C0C000BFBFBF00BEBEBE00BCBC
      BC00B9B9B900B7B7B700D9D9D9008888880000000000C8C8C800A2A2A200DEDE
      DE00B7B7B700AFAFAF00A6A6A600A6A6A600A6A6A600A6A6A600A6A6A6009F9F
      9F00C2C2C2007B7B7B00BCBCBC0000000000B6B6FA00D8DBFE00B7B9FF00B0B0
      FF00AEAFFF00ABABFF00A6A6FF00B4B5FF00B5B8FF009C9CFF009A9CFF009696
      FF009496FF009091FF00C5C8FD005858D900C6C6C600C7C7C700C8C8C800C8C8
      C800A3A3A300BDBDBD00C4C4C400B1B1B100AFAFAF00AEAEAE00ACACAC00A7A7
      A700A4A4A400B3B3B3009D9D9D009E9E9E00D1D1D100E8E8E800D4D4D400D0D0
      D000CFCFCF00CDCDCD00CACACA00D2D2D200D3D3D300C4C4C400C3C3C300C0C0
      C000BFBFBF00BDBDBD00DCDCDC008C8C8C0000000000F0F0F0009B9B9B00BBBB
      BB00E3E3E300B5B5B500ACACAC00AAAAAA00B0B0B000AFAFAF00ABABAB00C7C7
      C7009393930088888800EDEDED0000000000C7C7FC00CACDFE00CCCFFF00B4B5
      FF00B2B2FF00AEAEFF00CBCFFF00C6CBFD00C0C3FC00C9CBFF009F9FFF009D9D
      FF009898FF00A2A5FF00C7CAFC006969DE000000000000000000000000000000
      0000B4B0B400D1D1D100BBBBBB00B9B9B900B7B7B700B3B3B300B0B0B000AFAF
      AF00ABABAB00A6A6A600C1C1C10078787800DCDCDC00DFDFDF00E1E1E100D2D2
      D200D1D1D100CECECE00E1E1E100DDDDDD00D9D9D900DFDFDF00C5C5C500C4C4
      C400C1C1C100C8C8C800DDDDDD00989898000000000000000000DCDCDC009595
      9500BFBFBF00E4E4E400CACACA00BBBBBB00B7B7B700BFBFBF00D4D4D4009C9C
      9C0085858500D5D5D5000000000000000000E9E9FE00B0B2FC00D6D9FE00D9DB
      FF00D4D6FF00DADCFF00BDBFFA00A1A1F300A1A1F100B0B2F700D2D4FF00C0C4
      FF00C3C6FF00D4D6FF008D8FEE00ADADED000000000000000000000000000000
      0000B9B5B900D5D5D500C2C2C200C1C1C100BDBDBD00BFBFBF00BEBEBE00B5B5
      B500B4B4B400ADADAD00C1C1C1007B7B7B00F1F1F100CFCFCF00E7E7E700E9E9
      E900E6E6E600E9E9E900D6D6D600C2C2C200C1C1C100CDCDCD00E4E4E400DADA
      DA00DCDCDC00E6E6E600B4B4B400C7C7C700000000000000000000000000DCDC
      DC009B9B9B00ADADAD00D0D0D000DCDCDC00D7D7D700C5C5C500939393008F8F
      8F00D6D6D60000000000000000000000000000000000E0E0FE00B8B8FC00B9BB
      FC00BCBDFC00AFB1FA00B1B1F700ECECFD00EFEFFD00A4A4F200A0A2F400C3C6
      FB00B6B9F8008789ED00A3A3ED00F8F8FE000000000000000000000000000000
      0000C1C1C100D8D8D800CFCFCF00C8C8C800CECECE00CECECE00CBCBCB00C8C8
      C800B9B9B900B9B9B900CCCCCC008080800000000000ECECEC00D3D3D300D4D4
      D400D6D6D600CDCDCD00CDCDCD00F3F3F300F5F5F500C3C3C300C2C2C200DADA
      DA00D1D1D100B0B0B000C1C1C100FAFAFA000000000000000000000000000000
      0000F0F0F000C9C9C9009F9F9F0090909000909090009A9A9A00C5C5C500EFEF
      EF00000000000000000000000000000000000000000000000000F4F4FF00E0E0
      FE00D9D9FD00E2E2FD00FAFAFE000000000000000000F8F8FE00D1D1F8009898
      EF00A2A2EF00D9D9F80000000000000000000000000000000000000000000000
      0000DFDFDF00BABABA00D8D8D800D8D8D800C9C9C900ACACAC00A8A8A800BCBC
      BC00D5D5D500D3D3D300AAAAAA00B3B3B3000000000000000000F8F8F800ECEC
      EC00E7E7E700EDEDED00FCFCFC000000000000000000FAFAFA00E1E1E100BBBB
      BB00C1C1C100E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E000C4C4C400BEBEBE00C6C6C6000000000000000000B9B9
      B9009E9E9E009A9A9A00BBBBBB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000369DD9003199D8002C94
      D7002890D600238CD5001E88D4001A84D3001580D200117CD1000E79D1000A76
      D0000773CF000470CF00016ECE000000000000000000369DD9003199D8002C94
      D7002890D600238CD5001E88D4001A84D3001580D200117CD1000E79D1000A76
      D0000773CF000470CF00016ECE0000000000000000000000000000000000E3E3
      E300000000000000000000000000000000000000000000000000000000000000
      0000D9D9D900FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCEBFA00BCEB
      FC00BFEEFE0000000000CEF8FF0000000000000000000000000000000000B3E4
      F900000000000000000000000000000000000000000000000000BCEBFA00BCEB
      FC00BFEEFE0000000000CEF8FF0000000000000000000000000000000000B3E4
      F90000000000000000000000000000000000000000000000000000000000B8B8
      B800B5B5B500D4D4D40000000000000000000000000000000000D4D4D400A0A0
      A000939393000000000000000000000000000000000000000000000000000000
      0000EEEEEE00C1C1C1008F8F8F007F7F7F007D7D7D0088888800B9B9B900EBEB
      EB00000000000000000000000000000000000000000000000000BFECFB0059CF
      F50041B0EC00000000005AC2EF00000000005CC4EF004CB6EF0037A5E6002A9A
      E10000000000B1E3F8000975D000000000000000000000000000BFECFB0059CF
      F50041B0EC00000000005AC2EF00000000005CC4EF004CB6EF0037A5E6002A9A
      E10000000000B1E3F8000975D00000000000000000000000000000000000BFBF
      BF00CFCFCF00BEBEBE00B3B3B300CBCBCB00D0D0D000A9A9A900AEAEAE00B8B8
      B8009D9D9D00000000000000000000000000000000000000000000000000D9D9
      D9009393930089898900B5B5B500C5C5C500C4C4C400B0B0B0007D7D7D007F7F
      7F00D0D0D0000000000000000000000000000000000049ADDC00000000000000
      0000000000007FE5FF008FEDFF000000000093EDFF007CDFFF005BCCF80046BE
      EF0000000000B3E3F9000E79D100000000000000000049ADDC00000000000000
      0000000000007FE5FF008FEDFF000000000093EDFF007CDFFF005BCCF80046BE
      EF0000000000B3E3F9000E79D10000000000000000000000000000000000C8C8
      C800CECECE00D2D2D200CDCDCD00C1C1C100BDBDBD00C4C4C400C2C2C200BCBC
      BC00A7A7A7000000000000000000000000000000000000000000DBDBDB009292
      9200A5A5A500D1D1D100BFBFBF00ADADAD00ABABAB00BEBEBE00CFCFCF009B9B
      9B0077777700D0D0D0000000000000000000000000004EB2DD000000000065D6
      F800000000005ABDEF0095EBFF00000000004D82AB0084E1FF0041A9E900329F
      E10000000000B4E5F900137ED20000000000000000004EB2DD000000000065D6
      F800000000005ABDEF0095EBFF00000000004D82AB0084E1FF0041A9E900329F
      E10000000000B4E5F900137ED20000000000000000000000000000000000D4D4
      D400CCCCCC00D0D0D000C9C9C900CACACA00C9C9C900BFBFBF00BBBBBB00BDBD
      BD00B5B5B50000000000000000000000000000000000F1F1F1009F9F9F00AAAA
      AA00D0D0D000ABABAB00A9A9A900A7A7A700A4A4A400A4A4A400A7A7A700CFCF
      CF009B9B9B0080808000ECECEC00000000000000000053B7DE00000000006AD9
      F8000000000090E8FF0099E9FF0000000000548BB2008AE2FF006AD0F90050C5
      F10000000000B6E7F9001883D300000000000000000053B7DE00000000006AD9
      F8000000000090E8FF0099E9FF0000000000548BB2008AE2FF006AD0F90050C5
      F10000000000B6E7F9001883D30000000000000000000000000000000000DFDF
      DF00CACACA00D6D6D600C8C8C800C4C4C400C0C0C000BDBDBD00C1C1C100BCBC
      BC00C5C5C50000000000000000000000000000000000CECECE009B9B9B00D2D2
      D200B0B0B000ACACAC00ABABAB000000000000000000A7A7A700A4A4A400A7A7
      A700D0D0D0007F7F7F00B9B9B900000000000000000058BBDF00C7F1FC000000
      000056BBED0061BDEF009BE7FF00000000004BA4E10090E2FF0049ADE90038A4
      E30000000000B8E8F9001E88D400000000000000000058BBDF00C7F1FC000000
      000056BBED0061BDEF009BE7FF00000000004BA4E10090E2FF0049ADE90038A4
      E30000000000B8E8F9001E88D400000000000000000000000000FCFCFC00C6C6
      C600D8D8D800D4D4D400CACACA00C7C7C700C3C3C300BFBFBF00BDBDBD00C4C4
      C400B1B1B100F5F5F500000000000000000000000000ACACAC00BFBFBF00C4C4
      C400B5B5B500AFAFAF009B9B9B000000000000000000A7A7A700A7A7A700A8A8
      A800BFBFBF00B1B1B1008888880000000000000000005CBFE000C8F3FC0075DF
      F90089E6FD0095E7FF009AE5FF00AAEEFF00A8EDFF0099E3FF0074D5F90059CC
      F3004FC8F100BBE9FA00248DD50000000000000000005CBFE000C8F3FC0075DF
      F90089E6FD0095E7FF009AE5FF00AAEEFF00A8EDFF0099E3FF0074D5F90059CC
      F3004FC8F100BBE9FA00248DD5000000000000000000FEFEFE00CBCBCB00D1D1
      D100DDDDDD00D1D1D100CDCDCD00C9C9C900C5C5C500C0C0C000BDBDBD00C7C7
      C700BBBBBB00B1B1B100F8F8F8000000000000000000A4A4A400D2D2D200BEBE
      BE00BABABA00000000000000000000000000000000000000000000000000A7A7
      A700AEAEAE00C9C9C9007D7D7D00000000000000000060C2E100C9F3FC00CBF3
      FD00D4F6FE00D7F6FF00D8F4FF00E0F8FF00DFF8FF00DAF5FF00CDF1FC00C2ED
      FA00BDEBFA00BDEBFA002B93D600000000000000000060C2E100C9F3FC00CBF3
      FD00D4F6FE00D7F6FF00D8F4FF00E0F8FF00DFF8FF00DAF5FF00369AD500369A
      D500369AD500BDEBFA002B93D6000000000000000000D1D1D100D4D4D400E1E1
      E100D8D8D800D2D2D200CFCFCF00CCCCCC00C7C7C700C3C3C300C0C0C000BDBD
      BD00C5C5C500BBBBBB00B4B4B400F9F9F90000000000A8A8A800D9D9D900C6C6
      C600B9B9B900000000000000000000000000000000000000000000000000A7A7
      A700B1B1B100C9C9C90080808000000000000000000061C3E10088A0A8009191
      91008E8E8E005AB9DC0055B8DF0051B5DE004DB1DD0049ADDC0046A8D7007878
      780076767600657E8D003199D800000000000000000061C3E100909395009191
      91008E8E8E005AB9DC0055B8DF0051B5DE004DB1DD0049ADDC0080C3E400B4D9
      EF0070B7E100359AD6003199D80000000000D5D5D500D7D7D700DDDDDD00DFDF
      DF00DFDFDF00DEDEDE00D7D7D700CECECE00CACACA00CACACA00CECECE00CACA
      CA00C5C5C500BFBFBF00B9B9B900B6B6B60000000000B4B4B400D3D3D300D3D3
      D300BBBBBB00B9B9B900ADADAD0000000000000000009C9C9C00ABABAB00A9A9
      A900C3C3C300B8B8B80091919100000000000000000000000000B1B1B100C6C6
      C60094949400FBFBFB0000000000000000000000000000000000FBFBFB007D7D
      7D00ABABAB00969696000000000000000000000000000000000097979700B9B9
      B9009A9A9A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00ECECEC00DEDEDE00D3D3
      D300CBCBCB00D1D1D100DBDBDB00D6D6D600CFCFCF00D3D3D300C5C5C500BDBD
      BD00C3C3C300CDCDCD00DFDFDF00F6F6F60000000000D5D5D500BBBBBB00E8E8
      E800CBCBCB00C4C4C400B8B8B8000000000000000000BCBCBC00B2B2B200B6B6
      B600D4D4D4008E8E8E00C1C1C100000000000000000000000000BCBCBC00C4C4
      C400A1A1A100EEEEEE0000000000000000000000000000000000EBEBEB008989
      8900A9A9A900A4A4A4000000000000000000000000000000000098989800BCBC
      BC00999999000000000000000000000000000000000098989800939393009A9A
      9A00000000000000000000000000000000000000000000000000000000000000
      000000000000E4E4E400D1D1D100DBDBDB00D9D9D900CACACA00D5D5D5000000
      00000000000000000000000000000000000000000000F4F4F400B4B4B400D1D1
      D100EBEBEB00CACACA00BFBFBF00BDBDBD00C5C5C500C5C5C500C1C1C100D5D5
      D500AAAAAA0095959500EFEFEF00000000000000000000000000D4D4D400BABA
      BA00BFBFBF00A6A6A600F2F2F200FDFDFD00FDFDFD00F1F1F10093939300A8A8
      A8009E9E9E00C3C3C300000000000000000000000000000000009B9B9B00C0C0
      C000ACACAC00D8D8D8000000000000000000D2D2D2008F8F8F00A2A2A2008D8D
      8D00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECECE00D8D8D800D9D9D900C5C5C500FEFEFE000000
      0000000000000000000000000000000000000000000000000000E5E5E500AFAF
      AF00D3D3D300EDEDED00DADADA00CECECE00CBCBCB00D3D3D300DFDFDF00B4B4
      B40094949400DADADA0000000000000000000000000000000000FBFBFB00AEAE
      AE00C4C4C400BEBEBE00A1A1A100969696009393930097979700AEAEAE00AEAE
      AE0095959500FBFBFB0000000000000000000000000000000000F0F0F000B1B1
      B100C7C7C700AAAAAA0092929200929292009F9F9F00B4B4B40098989800B7B7
      B700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDEDED00D1D1D100D0D0D000E2E2E200000000000000
      000000000000000000000000000000000000000000000000000000000000E5E5
      E500B3B3B300C3C3C300DFDFDF00E5E5E500E2E2E200D3D3D300ABABAB00A0A0
      A000DCDCDC00000000000000000000000000000000000000000000000000EEEE
      EE00AEAEAE00BCBCBC00CACACA00CCCCCC00CACACA00C2C2C200ADADAD009B9B
      9B00E9E9E900000000000000000000000000000000000000000000000000D9D9
      D900AEAEAE00C8C8C800CACACA00CACACA00BEBEBE009B9B9B00CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D3D300CECECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F400D6D6D600B5B5B500AAAAAA00A7A7A700ADADAD00CFCFCF00F1F1
      F100000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00D0D0D000BABABA00B1B1B100AEAEAE00B3B3B300C9C9C900FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700BEBEBE00A2A2A2009E9E9E00B6B6B600E3E3E300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F5F500EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3957000CC835700C8764600CA7B4E00CB7B4E00CA7B
      4E00CA7B4E00CA7B4E00CA815500CD865C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEAE003E3E3E001717
      1700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00898989008585
      8500828282007F7F7F007C7C7C00797979007676760073737300717171006F6F
      6F006D6D6D006B6B6B006969690000000000000000004A80AB00206398002063
      98002063980020639800C98F6700FCF3EC00FAF1E800FAF0E700FBF1E900FBF2
      EA00FBF2EA00FBF2EB00FDF4EE00CB8358000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000069696900C9C9C9009595
      9500161616000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090909000DEDEDE00DFDF
      DF00E2E2E200E6E6E600EAEAEA00ECECEC00EBEBEB00E6E6E600DEDEDE00D9D9
      D900D7D7D700D7D7D7006B6B6B00000000005588B10074ADD8007BB2DD0078AE
      DC0075AADA0074A9DA00DAA97D00EFF1E700FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00EFF2E800CE8156000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006494
      BA0022679D0081A8C60000000000000000000000000069696900DEDEDE003131
      3100454545001515150000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094949400E0E0E000AFAF
      AF009C9C9C00A4A4A400AAAAAA00AEAEAE00ACACAC00A2A2A200939393008A8A
      8A009A9A9A00D7D7D7006E6E6E00000000002063980080B9E1005395D1005092
      D0004E8ECE004D8CCD00D6A97D00FBF5EE00FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00FBF6EF00CC8356000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006F9CC200558D
      BC0089B5DD00185F970000000000000000000000000000000000434343008181
      8100353535003E3E3E0015151500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000098989800E1E1E100B3B3
      B300BCBCBC00C7C7C700CFCFCF00D3D3D300D0D0D000C4C4C400B0B0B000A2A2
      A2009C9C9C00D9D9D90071717100000000002063980084BFE200569AD3005397
      D1005092CF005091CF00D6A97D00FFF7F100FFE9D900FFEADB00FFE9D900FFE7
      D700FFE5D200FFE2CB00FFF7F100CB8556000000000000000000000000000000
      000000000000000000000000000000000000000000007BA4CA006497C5009DC1
      E4006699C7003171A50000000000000000000000000000000000000000004747
      470083838300373737003F3F3F0015151500000000000000000000000000BAE9
      FB0000000000000000000000000000000000000000009B9B9B00E2E2E200B6B6
      B600A1A1A100A9A9A900D1D1D1008A8A8A007D7D7D00C8C8C800999999008E8E
      8E00A0A0A000D9D9D90075757500000000002063980088C4E600599FD600569B
      D3005397D1005395D100D7AC7F00FFF7F000FFE7D500FDE7D600FDE6D400FCE4
      D000FBE3CB00FADCC200FEF3E800CC865700000000000000000000000000E8CF
      BA00DBB29200D3A68000D0A17C00D2A68500AEA1990075A2CC00ABCBE80076A4
      CE00407BAF000000000000000000000000000000000000000000000000000000
      00005858580084848400373737003F3F3F001515150000000000C3EDFC0048C7
      F50000000000F9FDFF00B7E8FA0000000000000000009F9F9F00E4E4E400B9B9
      B900C4C4C400CECECE00D2D2D2008D8D8D0085858500CACACA00B8B8B800A8A8
      A800A3A3A300DBDBDB007878780000000000206398008BC9E7005CA5D70059A0
      D500579CD300569AD300D7AC7F00FFF7F200FEE7D500FEE7D500FDE5D100FAE0
      CA00F9DEC400F7D9BC00FDF2E700CC8758000000000000000000E8CAB000E8C9
      AE00F5E1CD00F7E5D300F7E5D100F3DDC800DFBA9C00C7A8910086AED5005087
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000004E4E4E00676767003737370040404000161616006CD4F70003B4
      F100C6EEFC0030C0F40096DEF9000000000000000000A2A2A200E5E5E500BCBC
      BC00A7A7A700ACACAC00D2D2D2009191910099999900CDCDCD009D9D9D009292
      9200A4A4A400DCDCDC007C7C7C00000000002063980091CDE9005FA9D9005DA5
      D8005AA0D600599FD600D8AD8100FEF7F100FCE5D200FCE4D100FBE2CC00F9DD
      C400F6D7BB00F3D1AF00FAEFE400CC87590000000000F1DBC800EDD0B700F8E8
      D900F5DEC800F3D8BD00F3D6BB00F4DBC200F7E4D200DFBB9D00A09795000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004E4E4E006767670038383800424242004D4D4D004BCC
      F50019BDF2000DB7F200E1F6FD000000000000000000A5A5A500E5E5E500BFBF
      BF00CACACA00D0D0D000D1D1D100DADADA00D9D9D900D1D1D100BDBDBD00AEAE
      AE00A8A8A800DDDDDD0080808000000000002063980098D2EB0065AEDA0060AA
      D9005DA6D8005CA5D700D9AF8400FEF6F000FCE2CD00FCE3CD00FADFC800F7D9
      BC00F5E9DD00FAF3EB00FBF8F300CA83540000000000EECEB200F7E7D700F6E1
      CC00F4DBC200F4DAC000F3D8BD00F3D7BB00F4DBC200F3DEC900D2A887000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4F7FE005BD1F7004F4F4F00676767008C8C8C00A9A9A9004197
      B40077D9F80003B6F10033C4F40080D9F80000000000A7A7A700E6E6E600E7E7
      E700ECECEC00EDEDED00EDEDED00F1F1F100F1F1F100EEEEEE00E7E7E700E1E1
      E100DFDFDF00DFDFDF008484840000000000206398009ED6ED006BB2DC0066AF
      DC0060AADA005FA9D900D9AF8400FEF5ED00FCDEC500FBE0C700F9DCC200F5D3
      B400FEF9F300FAE2C400ECC19300D2986E0000000000F0CEAF00F9ECDF00F5DF
      C800F5DDC600F4DCC300F4DAC100F3D9BE00F3D7BD00F8E6D300D3A680000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECFAFE0059D1F6004C4C4C00CACACA00F7F7F700D3D3
      D3004BA1BF0074D9F8000CB8F200C7EFFC0000000000A8A8A8009A9A9A009191
      91008E8E8E00A1A1A100A0A0A0009D9D9D009B9B9B0098989800949494007878
      7800767676007A7A7A00898989000000000020639800A5DAEF006FB5DE0068B0
      DC0060A9D9005FA9D900D7AD8100FFFFFE00FDF3E900FDF3EA00FCF2E800FAEF
      E300FAF2E700EABB8800D39469000000000000000000F4D3B500F9EDE100F6E1
      CC00F5DFC900F5DEC700F4DCC400F4DBC200F4DAC000F8E7D600D7AB87000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000090E0FA0051CFF6004FA5C200F8F8F800FEFE
      FE005AB0CD006AD6F7002AC3F300E0F6FD000000000000000000B1B1B100C6C6
      C60094949400FBFBFB0000000000000000000000000000000000FBFBFB007D7D
      7D00ABABAB0096969600000000000000000020639800AADDF10074B9E00070B6
      DF006CB3DD006BB2DC00D9AF8400D7AE8100D7AC7F00D7AC7F00CCA07000CD9F
      7100B38F6700D39B7100000000000000000000000000F8DBC100F9EBDE00F7E7
      D600F6E1CC00F5E0CA00F5DEC800F5DDC500F6E1CB00F5E2D000DFB999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBFAFE0062D3F80025C1F5004ECEF70083DDF8004EA4C2005BB1
      CF0068BFDC0041CAF60008BCF10068D6F7000000000000000000BCBCBC00C4C4
      C400A1A1A100EEEEEE0000000000000000000000000000000000EBEBEB008989
      8900A9A9A900A4A4A400000000000000000020639800B0E1F20079BDE2004498
      DD004497DC004396DC004296DC004295DC004195DB00539ED40089C6E6002063
      98000000000000000000000000000000000000000000FCEAD800F8E2CC00FAEE
      E300F7E7D600F6E2CE00F6E1CB00F6E3D000F9EADD00ECCFB500ECD4BF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000095E1FA005AD0F7006DD7F8007DDC
      F8004BCDF60019BFF300F4FCFE00000000000000000000000000D4D4D400BABA
      BA00BFBFBF00A6A6A600F2F2F200FDFDFD00FDFDFD00F1F1F10093939300A8A8
      A8009E9E9E00C3C3C30000000000000000003B76A50095C9E000AEE2F2004E9D
      DF00B5EEFD0075D4F00075D4F000B5EEFD004B9BDE008ECBE90093CDE9002A6A
      9D00000000000000000000000000000000000000000000000000FBE4CE00F9E2
      CD00FAECDE00F9EEE200F9EDE200F8E9DA00F0D5BD00EDD0B700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054CFF70067D4F80067D3F80050CE
      F70098E3FA0027C3F400ACE8FB00000000000000000000000000FBFBFB00AEAE
      AE00C4C4C400BEBEBE00A1A1A100969696009393930097979700AEAEAE00AEAE
      AE0095959500FBFBFB000000000000000000000000006392B700206398003775
      A400B6EFFE0080DBF30080DBF300B6EFFE002E6EA100206398006F9ABC000000
      000000000000000000000000000000000000000000000000000000000000FCEA
      D900FADDC200F6D6B900F4D3B500F3D4B800F5E0CD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7F8FE00A9E6FB0000000000C1EEFC0053CE
      F70000000000E2F7FE00A5E6FA0000000000000000000000000000000000EEEE
      EE00AEAEAE00BCBCBC00CACACA00CCCCCC00CACACA00C2C2C200ADADAD009B9B
      9B00E9E9E9000000000000000000000000000000000000000000000000002063
      9800206398002063980020639800206398002D6C9E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8FDFF00ACE8
      FB00000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB00D0D0D000BABABA00B1B1B100AEAEAE00B3B3B300C9C9C900FAFA
      FA0000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF00000000000080030000000000008303000000000000C387000000000000
      E007000000000000F007000000000000F007000000000000F80F000000000000
      FC0F000000000000FC07000000000000FC03000000000000FC01000000000000
      FFFF000000000000FFFF000000000000FFFFFFC18003FFC1F00FFE000003FE00
      E007F8080003F800C003F01C0003F0008001C0080003C0008001800000038000
      800100000003000187E100000003000087E10000000300008001000000010000
      800100000000000080010000F0000000C0030000F0000000E0078000F0008000
      F00FC183F000C183FFFFFFFFF861FFFF80018001EFF3FFFF80008000E3C7F00F
      80018001E007E00780018001E007C00380018001E007800180018001E0078181
      80018001C003818180018001800187E180018001800087E18001800100008181
      C3C3C7FF00008181C3C3C78FF81F8001C003C30FFC1FC003C003C00FFC3FE007
      E007E01FFE7FF00FF00FF03FFE7FFFFFFC00FFFF8FFF80018000FFFF87FF8001
      0000FFE383FF80010000FFC3C1FF80010000FF83E0EF80010000E007F0498001
      0000C00FF80180010000801FFC0180010000801FF80080010000801FFC008001
      0001801FFE00C3C30003801FF800C3C3000F801FFF01C003000FC03FFF01C003
      801FE07FFE49E007E07FFFFFFFCFF00F00000000000000000000000000000000
      000000000000}
  end
  object puOutput: TPopupMenu
    OnPopup = puOutputPopup
    Left = 792
    object miOutputDescription: TMenuItem
      Caption = 'Nothing selected'
      Enabled = False
    end
    object miOutputAction: TMenuItem
      Caption = 'Action'
      OnClick = miOutputActionClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Rerollthisitem1: TMenuItem
      Caption = 'Reroll this item'
      OnClick = Rerollthisitem1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Reroll1: TMenuItem
      Caption = 'Reroll all'
      OnClick = Refresh1Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object miTableReferences: TMenuItem
      Caption = 'Table references'
    end
  end
  object opdMain: TOpenPictureDialog
    Options = [ofReadOnly, ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 587
  end
  object sdMain: TSaveDialog
    DefaultExt = 'totimages'
    Filter = 'Table of Tables Image List|.totimages'
    Left = 635
  end
  object odMain: TOpenDialog
    Filter = 'Table of Tables Image List (*.totimages)|*.totimages'
    Left = 675
  end
  object ilTabs: TImageList
    Left = 528
    Bitmap = {
      494C010107000900080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000082CFEC0041B4E10017A0
      D80041AEDD0080C8E800E0F1F9000000000000000000E7B9FC0080C8EB003EA9
      DF001492D5003DA2DA007FC1E500000000000000000000000000E2C0AA00CC8D
      6600C0714000BC6B3600BC6B3600BC6B3600BC6A3600BC6A3600BB6A3500BB6A
      3500BB693500BD6E3B00CA8B6300E3C2AE00000000000000000000000000FFFF
      FF00BFD8C0006DA46F00478B4900377F3A00377F3A0043874600659C6700B4CF
      B500FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000098DBF2005FCBED008AE0F60088E3
      F9006FDAF40047C1E6004FB4E0004AA3DF00218ED6002BA5DD004AC3EC0072DA
      F50071DEF70057D3F30039B8E500AEA1EF000000000000000000C57C4D00F8F2
      EB00F7ECDF00F6EBDE00F6EADE00F6EADC00F6EADC00FAF3EB00FAF3EB00FAF2
      EA00FCF7F300FCF8F400FEFEFD00C37A4D000000000000000000F5FAF60075AF
      79003D8C42009BC59D00B3C29D00BDC19C00BEC39D00B0D2B1007EC09A00317C
      3400639B6500ECF3ED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000065CCEE008EDDF4009EE6FC0085DE
      FA007BDDFA006CD3F20024A9DF0061D1F10072DEF9002CB6EC007EDAF500B5EE
      FE00A7EBFE008FE3FB0058CFF1005FB6E4000000000000000000C2774000F5EB
      DF00FCE4D100FCE4D100FCE4D100FCE4D100FCE4D100FCE4D100FCE4D100FCE4
      D100FCE4D100FCE4D100FDFBF800BC6B370000000000F6FAF60067AD6D0070B7
      8600AEE8C700C0D2A000C5B38100CAB47D00CCAF7800B9A7780080CC9500A0DA
      BC0066A87A004D8D5000EBF2EC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016B7E900BFF1FD0074D9F7005BD1
      F60044CBF5008EE6FC0012A2DC0047C7F4002EB6F10013AFEE00D6F7FF00BDEF
      FF00ABEBFF009FE7FF00AEF0FE000F98DC000000000000000000C37C4200F7ED
      E300FCE4D100FCE4D100FCE4D100FCE4D100FCE4D100FCE4D100FCE4D100FCE4
      D100FCE4D100FCE4D100FBF7F400BD6C37000000000084C38A0076C08D0099D7
      B30079C08000BCC27E00C6A96A00D7B16900D6AD6500BC9B5E0060AD6A005997
      680081C1990067A97B00639B6500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018BBEC00BDEFFC0099E3FB0089DF
      FA0074D9F90063DAF80013A8E0005BD2F90044C9F70016B5F100C2F0FD00CEF4
      FF00C6F4FF00B8EFFE0089E0F60031ABE6000000000000000000C77E4400E092
      6000E08C4C00FCE4D100E2964F00E2894100FCE4D100FCE4D100FCE4D100FCE4
      D100FCE4D100FCE4D100FCF9F500C1743C00D1EAD40056B06000B5EAD30069BC
      74006EBD7100BEB66D00C9A35B00DFAB5B00DDA85800C1924E009DA9580078B1
      66005A966700A6DCC000307B3300B6D0B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000019C0EF00AAEAFB0078DAF80061D4
      F60044CDF50066DBF80014ADE40036C1F2002BB7F1001AB1F2001BB7F40014B3
      F10013AFF00019AEED003FB9EE000000000000000000FCF4EF00D7814000E5A3
      6500E1915800FDE5D300E59D5C00E7A86800E3975F00F9DAC400FCE2CE00FCE2
      CC00FBE0C900FBE1C800FDFAF700C37A41008CCF940092D7AF00A0DEB40084C6
      7000A8D08000C5A55C00D0A75700E0AA5600DAA65100C7984A00B98C4700B69B
      5700819F650079BF900081BE9C00639B65000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001BC4F100CFF5FE00C3F0FE00BDEF
      FE00A2E7FC0099E8FC0015B3E7005ED3F90048CCF80036C2F50061D3F800169E
      DD0000000000000000000000000000000000F2CFB400E6A25A00E8AA6A00E39B
      5D00F9D8C300FDE7D600F9DBC300E5A05D00E8AA6A00E39B5600EEB69400FCE2
      CD00FBE1CB00FBE1C900FBF7F200C78045006FC67A00B0E9CF0083D49000BFDC
      8A00C3CB8200CCA25600DAAF5C00DCAF5B00C99A4B00BF864300B7844300B99A
      520096A5620065A67600A2D8BD00428644000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001BC8F400DAF7FE00D1F4FF00C3F1
      FF00B7EEFF00BFF2FE0017B7EB003AC4F3002DBBF20020B0EF0051C7F40018A1
      E00000000000000000000000000000000000E8AC6000ECB87900E5A45800F2D8
      C400FEE8D600FEE8D700FDE7D600F6D1B300E6A65A00E9B27500E49D5800FAE0
      C800FADFC700FADFC600FAF2EA00C884480066C57200BEEFDD0073D17D0090D1
      6C00BCE09E00C7A75E00D3B05E00C6995300C6BC6E00AFD17A00B4C46D00AFA9
      5F007BA957005AA36700B1E3CE0037823B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086E3FA0091E1FA00DFF8FF00D7F7
      FF00CCF4FF00A9E9FA002AC2F00064D6F9004CCFF8003BC6F60068D6F90014AA
      E20000000000000000000000000000000000F4D5B700EAAE6000EAB57100E8A6
      6300FADBC500FEE8D800FBDDC500E9AB6100EAB57100E8A75C00EFBA9300FAE0
      C700F9DDC300F8DCC200FAF4ED00C8864B0067C67400BEF0DC0081D8830077DB
      6D00BFE59A00CCDFA700CAA85D00C2BD6C00B8DA8B00A6D8600077D13F006AD0
      460059BC500063AB6C00B2E4CE003C8640000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000035D1F8001ECBF6001BC8
      F50020C7F4001AC2F20079DCF8003CC7F40030BFF30023B5F0006CD7F90014AF
      E5000000000000000000000000000000000000000000FDF6F000DE984900EBB6
      7200E8A76100FDE7D600ECB26500ECBB7600EAAC6700F9DAC100FADFC700F8DC
      C200F6DABD00F6D8BB00FAF4EF00C8874C0073CB7E00B3ECD2009BE2A2009DEA
      8D00D4EDB700D0EAC700CFB96E00CCB16600CBC9750076DB670066D94D0065D7
      4D006CD35D0073BB7E00A5DBC2004C9451000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000019C3F100A2E9FC0069D9FA0051D2F9003EC9F7005ACCF50015B3
      E800000000000000000000000000000000000000000000000000CA8D4F00E9B1
      6E00E8AE5F00FCE6D400ECB66500ECB26900F9DEC400FAE0C800F8DCC200F5D6
      BB00F3D4B500F1D2B300F8F4F000C6864C0094D79D0098DEB500B5EBCC00B1EF
      A700C9EEA900D1EAC900D5CF8D00D9CB8B00CDB46600BCBC67009AD6710082DE
      73007ADC710091D0A30088C8A40072AE77000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001BC6F30087E2FA0040CBF50034C4F30025BAF1005CCDF60017B7
      EB00000000000000000000000000000000000000000000000000C88D5100F8EF
      E600FCE3CF00FBE4D000FCE4CF00FCE3CD00FAE1CA00F9DDC400F6D9BC00F4E9
      DF00F7F2EC00FBF7F300F5EFE900C3804800DAF1DD0064C57100C0F3E200B5EF
      B400B5F0AC00C1EDB700D4E3B700D9D89C00DAD39500CDB56D00C7B36D00B5CB
      840094DF9A00AFE7CD00489C4F00C4DEC7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001CC9F400BAF0FD00AAEAFE00A2E9FE0079DDFB007BDFFB0017BB
      ED00000000000000000000000000000000000000000000000000C88D5200F9F5
      F100FCE3CD00FBE3CE00FBE3CD00FBE2CB00F9E0C800F8DCC200F5D6BA00FDFB
      F800FCE6CD00FAE5C900E2B68400D5A884000000000099D9A10087D7A000C0F2
      DE00C7F2D600D5EFD500D0E9CF00D5DBA600DCDEAB00DBCD9000D7C88B00C9C1
      8E00BDD5AF007AC791007EBD8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001CCCF600D6F7FF00BCEFFF00ABEBFF009AE6FF00A7EDFD0023B6
      F100000000000000000000000000000000000000000000000000CA925A00FAF6
      F200FAE0C700FBE1C900FBE2C900FBE0C800F9DFC500F8DBC100F4D6B800FFFB
      F800F6D8B400E1B07D00DC966900FDFBFA00000000000000000086D290008CD8
      A200CDF5E800D4EDDA00CEEDD300CFDFAF00D6DEB500D4D4A200CED0A100C4D0
      AA0087C9910072BD7A00F5FAF500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029D1F700A2E7FB00D3F6FF00C7F4FF00BBF1FF00A2E9FB0049BA
      F500000000000000000000000000000000000000000000000000D2A27400F8F3
      ED00F8F4EE00F8F4ED00F8F3ED00F8F3ED00F8F3ED00F8F2EC00F7F2EC00F2E6
      D700E2B27D00DC986B00FDFBFA000000000000000000000000000000000099D9
      A20065C67200A5E1BB00BAEACC00C5E0BE00C5DAB400BDD7B000A6D7AC0060BF
      6B0089CE9200F7FCF80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000036D4F90021CFF7001CCCF60022CBF50047D3F6000000
      0000000000000000000000000000000000000000000000000000E8CEB900D7AA
      7C00CC945B00CA905500CA905500CA905500CA915500CB905500C98F5500CF9D
      6900DDB19000FDFBFA000000000000000000000000000000000000000000FFFF
      FF00D9F1DC0096D89E0075CB800068C7740065C672006FC97B0091D69A00D2EE
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005199FF002981FF00217D
      FF0063A3FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFB49300D59D7400D196
      6800CE926300CB8E5E00C98A5B00C7875600C3845200C3845200C3845200C384
      5200C3845200C3845200D0A17D000000000065A7FF0061A4FF0097C2FF0094C0
      FF005198FF0065A3FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2977A00AA553800AD4C2B00AE4A2600AD482600AA482900A74D3100C77F
      5F000000000000000000000000000000000000000000D1B4A200BF937800AF76
      5000AF744E00AF744E00AF744E00AF744E00AF744E00AF744E00AF744E00AF74
      4E00AF744E00AF785500CFB19E000000000000000000D7A17500F8F2ED00F7F0
      EA00F6EDE600F4EAE200F3E7DE00F1E4DB00F0E2D800F0E2D800F0E2D800F0E2
      D800F0E2D800F0E2D800C58B5E00000000004995FF00A0C7FF0083B7FF007FB4
      FF0097C2FF005399FF0067A4FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BAD3EA00287BCE008863
      6300BF603500FEB96100FEB96200FEB96200FEB96200FEB96100FEB96100B149
      24007F6A73003482CF00B4CFE8000000000000000000B27E5E00EEECEA00F7F2
      F000F8F3F000F8F3EF00F7F3EF00F7F2EF00F7F2EE00F7F2EE00F7F2EE00F7F2
      EE00F8F2EE00F1EEEA00B07955000000000000000000D9A47A00F9F3EE00EBD2
      BE0000000000EBD3BF00000000000000000000000000EAC7AD00000000000000
      000000000000F0E2D800C68C5F0000000000539DFF00A4CBFF008BBCFF0077B0
      FF0080B5FF0098C3FF00569CFF006BA7FF000000000000000000000000000000
      000000000000000000000000000000000000000000002A7ED10082BAEE009F66
      5800F5BB8400FFAC5B00FEA85A00FEA25700FE9C5300FFA35500FF9F5000F8AE
      7800A45E4A0083BCEF002B78CA000000000000000000AB6D4600F6F0EC00FDE8
      D700FEE8D700FEE8D700FEE8D700FEE8D700FEE8D700FEE8D700FEE8D700FEE8
      D700FDE8D700F7ECE500AF744E000000000000000000DDA87E00F9F3EF00EBD0
      BA00EBD0BB00EBD0BB00EBD0BB00EBD0BB00EBD1BD00EACDB500EACDB500EACD
      B500EACDB500F0E2D800C68A5C0000000000A1CAFF0079B3FF00A5CCFF008DBD
      FF0079B2FF0083B6FF0099C3FF00589CFF006CA9FF0000000000000000000000
      000000000000000000000000000000000000000000002B7ECF0078B3EA00B39E
      9400FFB76000FFB66300FEB26100FEAC5D00FEA55900FD9E5300FE974E00FF8D
      4300BC8F82007EB8ED002D77C8000000000000000000AB6D4500F7F0EC008162
      4200AC825800AC825800AC825800AC825800AC825800AC825800AC825800AC82
      580081624200F6ECE500AF744E000000000000000000DFAA8200F9F3EF00EACE
      B70000000000EBD0BB00000000000000000000000000EACFBA00FBF6F2000000
      000000000000F0E2D800C88D5F000000000000000000A3CBFF007BB4FF00A6CC
      FF008EBEFF007CB3FF0085B8FF009BC5FF00599EFF0070ABFF00000000000000
      00000000000000000000000000000000000000000000E1C9BC008A544400FCC8
      AB00FFD19800FEC76D00FEBF6800FEB96400FEB15E00FEA85900FDA05400FFB7
      7A00FEA9800088504200D3BCAF000000000000000000AD6F4600F7F0EB00AC82
      5800E5AD7500E5AD7500E5AD7500E5AD7500E5AD7500E5AD7500E5AD7500E5AD
      7500AC825800F6EDE500AF7650000000000000000000E1AE8700FAF4F000EACB
      B200EACCB300EACCB300EACCB300EACCB300EACEB700E8C7AC00E8C7AC00E8C8
      B000E8C8AE00F0E2D800C4865400000000000000000000000000A5CBFF007CB6
      FF00A8CEFF0090BFFF008BBDFF00A0C8FF0061A4FF0061A0FB00000000000000
      0000000000000000000000000000000000000000000000000000DFB9A400C44C
      1F00F6E4D600FFE4A400FFD47200FFC96900FFC06300FFB65F00FFC18000F6D7
      C600C5491F00D7B09B00000000000000000000000000AD6F4600F7F1EC00AC82
      5800E5AD7500E5AD7500E5AD7500E5AD7500E5AD7500E5AD7500E5AD7500E5AD
      7500AC825800F6EDE500AF7650000000000000000000E3B18C00FAF6F100EAC9
      AE0000000000EAC9B000000000000000000000000000E8C7AC00000000000000
      000000000000F1E5DB00C686550000000000000000000000000000000000A7CD
      FF007EB7FF00A9CEFF00A8CDFF0070ACFF005F9AEE008C8C8C00EEEEEE000000
      000000000000000000000000000000000000000000000000000000000000DAB4
      9E00BC481C00F4E2D4004E7BA9004D7BA8004D7BA8004E7BA900F3D6C300BE46
      1C00D4AD980000000000000000000000000000000000AD6F4700F7F2ED00A67F
      5600DEAA7300DEAA7300DDA97300DDA87300DCA77200DCA77200DCA77200DCA7
      7200A47D5500F6EDE600AF7650000000000000000000E5B48F00FAF6F200E9C6
      AA00E9C6AC00EAC7AC00E9C7AD00E9C9AE00E9C9B000E8C7AC00E9C9B000E8C8
      B000E8CCB500F2E7DE00C88A5900000000000000000000000000000000000000
      0000A7CEFF0081B7FF007CB4FF006FA7F200D2D2D200B5B5B500898989008989
      89008787870097979700C8C8C800000000000000000000000000000000000000
      0000A0837500346DA7009CCCF800AFD4F700AFD4F700A5CFF6003474AE00997C
      71000000000000000000000000000000000000000000AD6F4700F7F3EE009C96
      6E00E6C79D00E2C59800DFC49600C8BD8800E4BA8200E4BA8300E4BA8300D3C1
      9900A59A7B00F6EDE600AF7650000000000000000000E7B79400FBF7F400E9C3
      A60000000000E8C4A900000000000000000000000000E8C7AC00000000000000
      000000000000F7F1EB00CB8F5F00000000000000000000000000000000000000
      000000000000A9CFFF0084B6F70094949400C7C7C700CCCCCC00C7C7C700C6C6
      C600C3C3C300C0C0C00089898900C8C8C8000000000000000000000000000000
      00005B81AB00A6CAEE00ABCCEA00A7D0F600A8D0F600ABCCEA00A7CDEE005781
      AE000000000000000000000000000000000000000000AD6F4700F7F4EF00B6A5
      8300F5DDB000F6DEB000F4DDAF00F1DCAD00F3DAAB00F3DAAC00F2D9AB00EFDA
      AE00B4A58400F4EEE600AF7650000000000000000000E9BA9800FBF7F400E9C3
      A600E9C3A600E9C3A600E9C3A600E9C3A600E9C3A600E9C3A600E9C3A600E9C3
      A600E9C3A600FBF7F400CE936400000000000000000000000000000000000000
      0000000000000000000000000000E1E1E10093939300D4D4D400C8C8C800BCBC
      BC00BABABA00C2C2C200C4C4C400999999000000000000000000000000000000
      00002F69A200D9E8F70097C5F1008EBBE5007FA9D10089B5DF00CDDFEE002F70
      AC000000000000000000000000000000000000000000AD6F4700F7F4F100BEAB
      8800FEE5B500FDE4B500FDE4B500FDE4B500FDE4B500FDE4B500FDE4B500FDE4
      B500BEAB8800F6EFE700AF7650000000000000000000EBBD9B00FBF7F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBF7F400D1976A00000000000000000000000000000000000000
      00000000000000000000000000000000000097979700DDDDDD00C5C5C500AAAA
      AA00A8A8A800ACACAC00D7D7D700898989000000000000000000000000000000
      00000C3E87007C97B8008AB7E400719CC80015406E001944720022456B00163F
      69000000000000000000000000000000000000000000AD6F4700F7F4F300B6A4
      8100F2DCAD00F5DEB000F2DDAF00F6DEAF00F7DFAF00F8E0B100FAE1B200FCE3
      B400BEAB8800F7EFE800B07650000000000000000000ECBF9E00FBF7F4009CD5
      A50098D3A10094D09D0090CE98008BCB930087C98E0082C689007EC384007AC1
      800076BE7C00FBF7F400D49B6F00000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A00E4E4E400CFCFCF00ACAC
      AC00000000008E8E8E008C8C8C008C8C8C000000000000000000000000000000
      00000F4B970012589F000F4A8A000F4B8700114B8700154C8500124175001C3E
      65000000000000000000000000000000000000000000AD765100F3F2F1009681
      5C00A69E7600A4A17D00ABA07A00BAA27A00BAA37C00BAA47E00BBA68000BCA8
      83008F806500F7F1EA00B07650000000000000000000EFC6A800FBF7F400FBF7
      F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7
      F400FBF7F400FBF7F400D8A37800000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB00E2E2E200E7E7E700B9B9
      B900939393000000000000000000000000000000000000000000000000000000
      000090A0B800124F960012589B0012589900115393000F4A87000F3F72008895
      A4000000000000000000000000000000000000000000B2856600DEDEDC00F3F3
      F200F7F4F300F7F4F200F7F4F100F7F4EF00F8F4EF00F8F3EE00F8F2ED00F8F2
      EB00F7F2EB00F1EEE800AF7955000000000000000000F7E1D200F1C8AC00EDC0
      9F00EBBE9D00EBBC9A00E9BA9600E7B79300E6B59000E4B28C00E2AF8800E0AC
      8400DDA98000DCA57D00E2B69600000000000000000000000000000000000000
      000000000000000000000000000000000000D4D4D4009F9F9F00E4E4E400EEEE
      EE00969696000000000000000000000000000000000000000000000000000000
      0000000000008C9CB6001C509200104B90000F488A001A4982008695AA000000
      00000000000000000000000000000000000000000000D0B6A400B3836700AD76
      5100AD6F4600AD6F4600AD6F4600AD6F4600AD6F4600AD6D4600AD6D4600AD6D
      4600AD6D4600AD744E00CEB19D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D4D400ACACAC009D9D
      9D009B9B9B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF008181C000E00700000000C000C0030000
      0000C000800100000000C000800100000000C000000000000001800000000000
      000F000000000000000F000000000000000F000000000000800F800000000000
      F80FC00000000000F80FC00000000000F80FC00080010000F80FC000C0010000
      F80FC001E0030000FC1FC003E00F0000FFFF87FFFFFFFFFF800103FFF00F8001
      800101FF800180018BB900FF800180018001007F800180018B99803F80018001
      8001C03FC00380018BB9E01FE00780018001F001F00F80018BB9F800F00F8001
      8001FE00F00F80019FF9FF00F00F80018001FF08F00F80018001FF07F00F8001
      8001FF07F81F8001FFFFFF87FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object puRollFavourites: TPopupMenu
    Left = 856
  end
  object MainMenu1: TMainMenu
    Images = ImageList1
    Left = 931
    object File1: TMenuItem
      Caption = 'File'
      object miLoadLayout: TMenuItem
        Caption = 'Load layout'
        OnClick = miLoadLayoutClick
      end
      object miSaveLayout: TMenuItem
        Caption = 'Save layout'
        OnClick = miSaveLayoutClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Caption = 'Exit'
        OnClick = miExitClick
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Refresh1: TMenuItem
        Caption = 'Re-roll!'
        ImageIndex = 2
        ShortCut = 116
        OnClick = Refresh1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Preferences1: TMenuItem
        Caption = 'Preferences'
        OnClick = Preferences1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object Addnewtab1: TMenuItem
        Caption = 'Add new tab'
        ShortCut = 16468
        OnClick = tbAddNewTabClick
      end
      object miRemoveCurrentTab: TMenuItem
        Caption = 'Close current tab'
        Enabled = False
        ShortCut = 16471
        OnClick = tbRemoveTableClick
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object miRenameCurrentTab: TMenuItem
        Caption = 'Rename tab'
        ShortCut = 16466
        OnClick = tbRenameCurrentTabClick
      end
    end
    object Search1: TMenuItem
      Caption = 'Search'
      object Find1: TMenuItem
        Caption = 'Find'
        ImageIndex = 1
        ShortCut = 16454
        OnClick = tbSearchClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Clearsearch1: TMenuItem
        Caption = 'Clear search'
        OnClick = Clearsearch1Click
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object Showall1: TMenuItem
        Caption = 'Show all'
        OnClick = Showall1Click
      end
    end
    object Favourites1: TMenuItem
      Caption = 'Favourites'
      object Favourite11: TMenuItem
        Caption = 'Favourite #1'
        object miFav1: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent1: TMenuItem
          Tag = 1
          Caption = 'Add current'
          ShortCut = 8304
          OnClick = Addcurrent1Click
        end
        object Rollfavourite1: TMenuItem
          Tag = 1
          Caption = 'Roll favourite'
          ShortCut = 16496
          OnClick = Rollfavourite1Click
        end
      end
      object Favourite12: TMenuItem
        Caption = 'Favourite #2'
        object miFav2: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent2: TMenuItem
          Tag = 2
          Caption = 'Add current'
          ShortCut = 8305
          OnClick = Addcurrent1Click
        end
        object Rollfavourite2: TMenuItem
          Tag = 2
          Caption = 'Roll favourite'
          ShortCut = 16497
          OnClick = Rollfavourite1Click
        end
      end
      object Favourite13: TMenuItem
        Caption = 'Favourite #3'
        object miFav3: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent3: TMenuItem
          Tag = 3
          Caption = 'Add current'
          ShortCut = 8306
          OnClick = Addcurrent1Click
        end
        object Rollfavourite3: TMenuItem
          Tag = 3
          Caption = 'Roll favourite'
          ShortCut = 16498
          OnClick = Rollfavourite1Click
        end
      end
      object Favourite14: TMenuItem
        Caption = 'Favourite #4'
        object miFav4: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent4: TMenuItem
          Tag = 4
          Caption = 'Add current'
          ShortCut = 8307
          OnClick = Addcurrent1Click
        end
        object Rollfavourite4: TMenuItem
          Tag = 4
          Caption = 'Roll favourite'
          ShortCut = 16499
          OnClick = Rollfavourite1Click
        end
      end
      object Favourite15: TMenuItem
        Caption = 'Favourite #5'
        object miFav5: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent5: TMenuItem
          Tag = 5
          Caption = 'Add current'
          ShortCut = 8308
          OnClick = Addcurrent1Click
        end
        object Rollfavourite5: TMenuItem
          Tag = 5
          Caption = 'Roll favourite'
          ShortCut = 16500
          OnClick = Rollfavourite1Click
        end
      end
      object Favourite16: TMenuItem
        Caption = 'Favourite #6'
        object miFav6: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent6: TMenuItem
          Tag = 6
          Caption = 'Add current'
          ShortCut = 8309
          OnClick = Addcurrent1Click
        end
        object Rollfavourite6: TMenuItem
          Tag = 6
          Caption = 'Roll favourite'
          ShortCut = 16501
          OnClick = Rollfavourite1Click
        end
      end
      object Favourite17: TMenuItem
        Caption = 'Favourite #7'
        object miFav7: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent7: TMenuItem
          Tag = 7
          Caption = 'Add current'
          ShortCut = 8310
          OnClick = Addcurrent1Click
        end
        object Rollfavourite7: TMenuItem
          Tag = 7
          Caption = 'Roll favourite'
          ShortCut = 16502
          OnClick = Rollfavourite1Click
        end
      end
      object Favourite18: TMenuItem
        Caption = 'Favourite #8'
        object miFav8: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent8: TMenuItem
          Tag = 8
          Caption = 'Add current'
          ShortCut = 8311
          OnClick = Addcurrent1Click
        end
        object Rollfavourite8: TMenuItem
          Tag = 8
          Caption = 'Roll favourite'
          ShortCut = 16503
          OnClick = Rollfavourite1Click
        end
      end
      object Favourite19: TMenuItem
        Caption = 'Favourite #9'
        object miFav9: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent9: TMenuItem
          Tag = 9
          Caption = 'Add current'
          ShortCut = 8312
          OnClick = Addcurrent1Click
        end
        object Rollfavourite9: TMenuItem
          Tag = 9
          Caption = 'Roll favourite'
          ShortCut = 16504
          OnClick = Rollfavourite1Click
        end
      end
      object Favourite110: TMenuItem
        Caption = 'Favourite #10'
        object miFav10: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent10: TMenuItem
          Tag = 10
          Caption = 'Add current'
          ShortCut = 8313
          OnClick = Addcurrent1Click
        end
        object Rollfavourite10: TMenuItem
          Tag = 10
          Caption = 'Roll favourite'
          ShortCut = 16505
          OnClick = Rollfavourite1Click
        end
      end
      object Favourite101: TMenuItem
        Caption = 'Favourite #11'
        object miFav11: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent11: TMenuItem
          Tag = 11
          Caption = 'Add current'
          ShortCut = 8314
          OnClick = Addcurrent1Click
        end
        object Rollfavourite11: TMenuItem
          Tag = 11
          Caption = 'Roll favourite'
          ShortCut = 16506
          OnClick = Rollfavourite1Click
        end
      end
      object Favourite102: TMenuItem
        Caption = 'Favourite #12'
        object miFav12: TMenuItem
          Caption = '# Empty'
          Enabled = False
        end
        object Addcurrent12: TMenuItem
          Tag = 12
          Caption = 'Add current'
          ShortCut = 8315
          OnClick = Addcurrent1Click
        end
        object Rollfavourite12: TMenuItem
          Tag = 12
          Caption = 'Roll favourite'
          ShortCut = 16507
          OnClick = Rollfavourite1Click
        end
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object Re1: TMenuItem
        Caption = 'Help readme'
        OnClick = Re1Click
      end
      object Customisinghowto1: TMenuItem
        Caption = 'Customising how-to'
        OnClick = Customisinghowto1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object VisitTableofTablesonReddit1: TMenuItem
        Caption = 'Visit Table of Tables on Reddit'
        OnClick = VisitTableofTablesonReddit1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Checkforupdates1: TMenuItem
        Caption = 'Check for updates'
        OnClick = Checkforupdates1Click
      end
      object UpdateDatabeta1: TMenuItem
        Caption = 'Update data (beta!!)'
        OnClick = UpdateDatabeta1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object About1: TMenuItem
        Caption = 'About'
        ImageIndex = 6
        OnClick = About1Click
      end
    end
    object miDebug: TMenuItem
      Caption = 'Debug'
      object Rollwithtablename1: TMenuItem
        Caption = 'Roll with table name'
        OnClick = Rollwithtablename1Click
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object miDebugRollAllTables: TMenuItem
        Caption = 'Roll all tables'
        OnClick = miDebugRollAllTablesClick
      end
      object Rollcurrenttable100times1: TMenuItem
        Caption = 'Roll current table 100 times'
        OnClick = Rollcurrenttable100times1Click
      end
      object Rollcurrenttable1000times1: TMenuItem
        Caption = 'Roll current table 1000 times'
        OnClick = Rollcurrenttable1000times1Click
      end
    end
  end
end
