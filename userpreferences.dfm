object frmPreferences: TfrmPreferences
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Preferences'
  ClientHeight = 247
  ClientWidth = 859
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bSave: TBitBtn
    Left = 693
    Top = 214
    Width = 75
    Height = 25
    Caption = 'Save'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C21E0000C21E00000000000000000000D8AB8ECD9570
      BD7342B76835B56835B46734B26634B06533AE6433AC6332AA6232A96132A860
      31A76132AB693CBC8661C37D4FEBC6ADEAC5ADFEFBF8FEFBF8FEFBF8FEFBF8FE
      FBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8C89A7CC79879AD6B40BA6C38EDCAB3
      E0A27AFEFAF762C08862C08862C08862C08862C08862C08862C08862C088FDF9
      F6CA8D65C99B7CA76132BB6C38EECCB6E1A27AFEFAF7BFDCC2BFDCC2BFDCC2BF
      DCC2BFDCC2BFDCC2BFDCC2BFDCC2FDF9F6CD9068CC9E81A86132BB6B38EFCEB8
      E1A279FEFAF762C08862C08862C08862C08862C08862C08862C08862C088FDF9
      F6CF936ACEA384AA6132BA6A36EFD0BBE2A27AFEFBF8FEFBF8FEFBF8FEFBF8FE
      FBF8FEFBF8FEFBF8FEFBF8FEFBF8FEFBF8D3966DD2A78AAB6232BB6A36F0D2BE
      E2A37AE2A37AE1A37AE2A37BE1A37BE0A178DE9F77DD9F76DC9D74D99B72D899
      71D69970D5AB8EAD6333BB6A36F2D5C2E3A37AE3A37AE2A37BE2A37BE2A47BE1
      A279E0A178DEA077DE9E75DC9D74DA9B73D99B73DAB095AF6433BB6A36F2D8C5
      E3A47BE3A37AE3A47AE2A47BE2A37BE1A37BE1A279DFA077DE9F76DD9E74DB9C
      72DC9D74DDB59AB16534BB6B36F4D9C7E6A67DC88C64C98D65C98E67CB926CCB
      926DCA9069C88C65C88C64C88C64C88C64DA9C74E1BA9FB36634BB6C37F4DCC9
      E7A77DF9ECE1F9ECE1F9EDE3FCF4EEFDFAF7FDF7F3FAEDE5F7E7DBF7E5D9F6E5
      D8DEA077E4BEA4B46734BD6E3AF5DDCCE7A87EFAF0E8FAF0E8C98D66FAF0E9FD
      F8F3FEFAF8FCF4EFF9E9DFF7E7DBF7E5D9E0A278E7C2A9B66835C07442F6DFD0
      E8A87EFCF6F1FCF6F1C88C64FAF1E9FBF4EEFDFAF7FDF9F6FAF0E8F8E8DDF7E6
      DBE1A37AEFD5C3B76A36C68255F6DFD1E9AA80FEFAF6FDFAF6C88C64FBF3EEFB
      F1EAFCF6F2FEFBF8FCF6F1F9ECE2F8E7DBEED0BAECD0BDBD7443D6A585F6E0D1
      F7E0D1FEFBF8FEFBF7FDF9F6FCF5F0FAF0EAFBF2EDFDF9F6FDFAF7FBF1EBF8E9
      DFECD1BECD926AE2C5B1E1BDA6D9AB8DC9895EC07543BD6E3ABB6C37BB6B36BB
      6A36BB6A36BC6C39BD6E3BBB6D3ABF7444C98D65E7CEBCD8AB8E}
    ModalResult = 1
    TabOrder = 0
    OnClick = bSaveClick
  end
  object bCancel: TBitBtn
    Left = 774
    Top = 214
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 201
    Height = 185
    Caption = ' Fonts '
    TabOrder = 2
    object sbSPLFont: TSpeedButton
      Left = 16
      Top = 51
      Width = 23
      Height = 22
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDE9877DA8F5EDB9060DA8C5CDE9E8AFBF3F1F4
        DFDBD98E78D47D52D67E51D57C4DD58166F1D9D4FFFFFFFFFFFFFFFFFFFDF9F7
        F1D4C8E1A475DD9564F1D6CDFFFFFFFFFFFFFAF1EFE1A493DC966BDB8F60E9C0
        B6FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE4AB8AE2A97CE0A387FFFFFFFF
        FFFFFFFFFFDC9374DFA077DA895AF6E5E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBF2EEDE9C6BE2A779DF9869DD9775DC9472DB8E61E3A881DA895AF8EB
        E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC9B6E0A06DE1A071EF
        CEC0F6E4DDE0A082E1A67ADA8C5CFCF6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFDFDE4AA81E0A26FEBC2AEFDF9F7E4AB92E1A679DC9165FEFB
        FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ECE4E2A675E0
        A372EFCEBCE7B49AE2A97CE1A080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEBC0A4E3A974E6AE82E5AE89E4AE82E2A789FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1E9E6
        B284E4AD7AE2AB78E2A775E5AE8CFDFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF2D7C0E6B27FE9BC91E7BA8FE7B78BE2A573E2A3
        78FDF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E1CFEB
        C29DEABD95EABD96E9BA93E7B58CE7B394FCF7F5FFFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = sbSPLFontClick
    end
    object Label1: TLabel
      Left = 64
      Top = 32
      Width = 87
      Height = 13
      Caption = 'Side Panel Lists'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lSPLName: TLabel
      Left = 80
      Top = 51
      Width = 46
      Height = 13
      Caption = 'lSPLName'
    end
    object lSPLSize: TLabel
      Left = 80
      Top = 70
      Width = 29
      Height = 13
      Caption = 'lName'
    end
    object Label2: TLabel
      Left = 64
      Top = 104
      Width = 100
      Height = 13
      Caption = 'Main Pane Output'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lMPLName: TLabel
      Left = 80
      Top = 123
      Width = 46
      Height = 13
      Caption = 'lSPLName'
    end
    object lMPLSize: TLabel
      Left = 80
      Top = 142
      Width = 29
      Height = 13
      Caption = 'lName'
    end
    object sbMPLFont: TSpeedButton
      Left = 16
      Top = 123
      Width = 23
      Height = 22
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDE9877DA8F5EDB9060DA8C5CDE9E8AFBF3F1F4
        DFDBD98E78D47D52D67E51D57C4DD58166F1D9D4FFFFFFFFFFFFFFFFFFFDF9F7
        F1D4C8E1A475DD9564F1D6CDFFFFFFFFFFFFFAF1EFE1A493DC966BDB8F60E9C0
        B6FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE4AB8AE2A97CE0A387FFFFFFFF
        FFFFFFFFFFDC9374DFA077DA895AF6E5E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBF2EEDE9C6BE2A779DF9869DD9775DC9472DB8E61E3A881DA895AF8EB
        E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC9B6E0A06DE1A071EF
        CEC0F6E4DDE0A082E1A67ADA8C5CFCF6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFDFDE4AA81E0A26FEBC2AEFDF9F7E4AB92E1A679DC9165FEFB
        FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ECE4E2A675E0
        A372EFCEBCE7B49AE2A97CE1A080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEBC0A4E3A974E6AE82E5AE89E4AE82E2A789FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF1E9E6
        B284E4AD7AE2AB78E2A775E5AE8CFDFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF2D7C0E6B27FE9BC91E7BA8FE7B78BE2A573E2A3
        78FDF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E1CFEB
        C29DEABD95EABD96E9BA93E7B58CE7B394FCF7F5FFFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = sbMPLFontClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 223
    Top = 8
    Width = 154
    Height = 95
    Caption = ' Display Method '
    TabOrder = 3
    object rbOutputMode1: TRadioButton
      Left = 16
      Top = 31
      Width = 129
      Height = 17
      Caption = 'Split content by line'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbOutputMode2: TRadioButton
      Left = 16
      Top = 54
      Width = 129
      Height = 17
      Caption = 'Content by paragraph'
      TabOrder = 1
    end
  end
  object GroupBox4: TGroupBox
    Left = 391
    Top = 8
    Width = 458
    Height = 185
    Caption = ' Display Options '
    TabOrder = 4
    object Label3: TLabel
      Left = 16
      Top = 32
      Width = 76
      Height = 13
      Caption = 'Description text'
    end
    object sDescriptionColour: TShape
      Left = 88
      Top = 51
      Width = 49
      Height = 17
      Cursor = crHandPoint
      OnMouseDown = sDescriptionColourMouseDown
    end
    object Label4: TLabel
      Left = 16
      Top = 82
      Width = 85
      Height = 13
      Caption = 'Rolled option text'
    end
    object sOptionColour: TShape
      Left = 88
      Top = 101
      Width = 49
      Height = 17
      Cursor = crHandPoint
      OnMouseDown = sDescriptionColourMouseDown
    end
    object Label5: TLabel
      Left = 168
      Top = 32
      Width = 79
      Height = 13
      Caption = 'Header title text'
    end
    object sHeaderColour: TShape
      Left = 240
      Top = 51
      Width = 49
      Height = 17
      Cursor = crHandPoint
      OnMouseDown = sDescriptionColourMouseDown
    end
    object Label6: TLabel
      Left = 168
      Top = 82
      Width = 56
      Height = 13
      Caption = 'Locked item'
    end
    object sLockedColour: TShape
      Left = 240
      Top = 101
      Width = 49
      Height = 17
      Cursor = crHandPoint
      OnMouseDown = sDescriptionColourMouseDown
    end
    object Label7: TLabel
      Left = 16
      Top = 132
      Width = 90
      Height = 13
      Caption = 'Favourite Highlight'
    end
    object Label8: TLabel
      Left = 168
      Top = 132
      Width = 90
      Height = 13
      Caption = 'Favourite Highlight'
    end
    object sFavouriteInvColour: TShape
      Left = 240
      Top = 151
      Width = 49
      Height = 17
      Cursor = crHandPoint
      OnMouseDown = sDescriptionColourMouseDown
    end
    object sFavouriteColour: TShape
      Left = 88
      Top = 151
      Width = 49
      Height = 17
      Cursor = crHandPoint
      OnMouseDown = sDescriptionColourMouseDown
    end
    object Label9: TLabel
      Left = 320
      Top = 32
      Width = 99
      Height = 13
      Caption = 'NPC Description text'
    end
    object sNPCDescriptionColour: TShape
      Left = 392
      Top = 51
      Width = 49
      Height = 17
      Cursor = crHandPoint
      OnMouseDown = sDescriptionColourMouseDown
    end
    object Label10: TLabel
      Left = 320
      Top = 82
      Width = 108
      Height = 13
      Caption = 'NPC Rolled option text'
    end
    object sNPCOptionColour: TShape
      Left = 392
      Top = 101
      Width = 49
      Height = 17
      Cursor = crHandPoint
      OnMouseDown = sDescriptionColourMouseDown
    end
    object cbDescriptionBold: TCheckBox
      Left = 24
      Top = 51
      Width = 49
      Height = 17
      Caption = 'Bold'
      TabOrder = 0
    end
    object cbOptionBold: TCheckBox
      Left = 24
      Top = 101
      Width = 49
      Height = 17
      Caption = 'Bold'
      TabOrder = 1
    end
    object cbHeaderBold: TCheckBox
      Left = 176
      Top = 51
      Width = 49
      Height = 17
      Caption = 'Bold'
      TabOrder = 2
    end
    object cbLockedBold: TCheckBox
      Left = 176
      Top = 101
      Width = 49
      Height = 17
      Caption = 'Bold'
      TabOrder = 3
    end
    object cbFavouriteInvBold: TCheckBox
      Left = 176
      Top = 151
      Width = 49
      Height = 17
      Caption = 'Bold'
      TabOrder = 4
    end
    object cbFavouriteBold: TCheckBox
      Left = 24
      Top = 151
      Width = 49
      Height = 17
      Caption = 'Bold'
      TabOrder = 5
    end
    object cbNPCDescriptionBold: TCheckBox
      Left = 328
      Top = 51
      Width = 49
      Height = 17
      Caption = 'Bold'
      TabOrder = 6
    end
    object cbNPCOptionBold: TCheckBox
      Left = 328
      Top = 101
      Width = 49
      Height = 17
      Caption = 'Bold'
      TabOrder = 7
    end
  end
  object cbDebug: TCheckBox
    Left = 8
    Top = 222
    Width = 97
    Height = 17
    Caption = 'Debug mode'
    TabOrder = 5
  end
  object GroupBox2: TGroupBox
    Left = 223
    Top = 109
    Width = 154
    Height = 84
    Caption = ' Units '
    TabOrder = 6
    object rbUnitsMetric: TRadioButton
      Left = 16
      Top = 31
      Width = 129
      Height = 17
      Caption = 'Metric'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbUnitsImperial: TRadioButton
      Left = 16
      Top = 54
      Width = 129
      Height = 17
      Caption = 'Imperial'
      TabOrder = 1
    end
  end
  object fdPreferences: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 200
    Top = 192
  end
  object cdPreferences: TColorDialog
    Left = 136
    Top = 192
  end
end
