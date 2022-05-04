object frmViewer: TfrmViewer
  Left = 0
  Top = 0
  Caption = 'Content Viewer'
  ClientHeight = 457
  ClientWidth = 917
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mViewer: TMemo
    Left = 211
    Top = 0
    Width = 706
    Height = 457
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object pcTables: TPageControl
    Left = 0
    Top = 0
    Width = 211
    Height = 457
    ActivePage = tsMain
    Align = alLeft
    TabOrder = 1
    object tsMain: TTabSheet
      Caption = 'Category'
      object pSidePanel: TPanel
        Left = 0
        Top = 0
        Width = 203
        Height = 429
        Align = alClient
        TabOrder = 0
        object Splitter2: TSplitter
          Left = 1
          Top = 174
          Width = 201
          Height = 5
          Cursor = crVSplit
          Align = alTop
          ExplicitTop = 169
          ExplicitWidth = 183
        end
        object pCategories: TPanel
          Left = 1
          Top = 1
          Width = 201
          Height = 173
          Align = alTop
          Caption = 'pCategories'
          TabOrder = 0
          object lbCategories: TListBox
            Left = 1
            Top = 27
            Width = 199
            Height = 145
            Style = lbOwnerDrawFixed
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = lbCategoriesClick
          end
          object pCategoriesTitle: TPanel
            Left = 1
            Top = 1
            Width = 199
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
          Width = 201
          Height = 249
          Align = alClient
          TabOrder = 1
          object lbSubCategories: TListBox
            Left = 1
            Top = 27
            Width = 199
            Height = 221
            Style = lbOwnerDrawFixed
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = lbSubCategoriesClick
          end
          object pSubCategoriesTitle: TPanel
            Left = 1
            Top = 1
            Width = 199
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
    end
    object TabSheet1: TTabSheet
      Caption = 'Name'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 203
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Table Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object lbName: TListBox
        Left = 0
        Top = 26
        Width = 203
        Height = 403
        Style = lbOwnerDrawFixed
        Align = alClient
        ItemHeight = 13
        Sorted = True
        TabOrder = 1
        OnClick = lbNameClick
      end
    end
  end
end
