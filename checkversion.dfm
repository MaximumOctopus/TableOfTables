object frmCheckVersion: TfrmCheckVersion
  Left = 615
  Top = 395
  BorderStyle = bsDialog
  Caption = 'Table of Tables'
  ClientHeight = 271
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 496
    Height = 38
    Align = alTop
    Pen.Color = clWhite
  end
  object Label5: TLabel
    Left = 8
    Top = 7
    Width = 116
    Height = 24
    Caption = 'Update check'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object BitBtn1: TBitBtn
    Left = 424
    Top = 240
    Width = 65
    Height = 25
    Caption = '&Close'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EEE08FC0913B8D3F25
      7A292577293B853F8FB991E0EBE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFB5D9B7318F3542A05287CA9A9BD3AB9BD2AB83C7963D974C307C34B5D0
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA258F2A6DBE83A8DBB587CC9866
      BC7D64BA7C86CB98A5D9B466B77D247227B5D1B6FFFFFFFFFFFFFFFFFFE1F2E4
      33A14472C287A8DBB260BC775CBA7359B87059B56F58B56F5BB774A5D9B369B8
      7F317F35E1ECE1FFFFFFFFFFFF90D29F4CB064AADDB464C1795FBE7175C585D4
      ECD98ACD9956B66C58B56E5CB774A6DAB4419B4E8EBC90FFFFFFFFFFFF3FB55D
      91D29F8DD49A64C37479C987F2FAF4FFFFFFFDFEFD86CB9657B76D5BB97285CC
      9787C79A3B8B3FFFFFFFFFFFFF27B049A6DCAF70CA7F73CA80F0F9F1FFFFFFEB
      F7EDFFFFFFFBFDFC88CD965BB97167BE7DA0D7AF237F26FFFFFFFFFFFF2EB751
      A7DDB172CC8066C773B0E1B7D2EED663C170B8E3BFFFFFFFFBFDFC8CD09969C1
      7EA1D7AE238426FFFFFFFFFFFF4BC56C95D7A191D79B69C97664C66F61C46E61
      C36F61C26FB9E4C0FFFFFFE3F4E68BD1998BCE9D3C993FFFFFFFFFFFFF9BDFAD
      57BF70AFE1B76DCC7A68C87265C77063C56E62C46E63C471B6E3BE6FC77EACDF
      B548A95E8FC894FFFFFFFFFFFFE5F7E949C5667FCE90AEE1B56DCC7A6ACA7668
      C87268C87468C8756BC979ACDFB476C48933A142E1F1E3FFFFFFFFFFFFFFFFFF
      BFECCB3DC35C7FCE90AFE1B792D89D77CE8377CE8392D89DAEE1B578C88B27A1
      3BB5DFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0EDCB4AC86959C27496D7A3A5
      DCAEA5DCAE95D6A150B96A35B355B6E3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE5F8E99FE3B055CB723BC05C37BE5A49C36A97DCAAE1F5E7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ModalResult = 2
    TabOrder = 0
  end
  object bHistory: TBitBtn
    Left = 176
    Top = 240
    Width = 83
    Height = 25
    Caption = '&History >>'
    Enabled = False
    TabOrder = 1
    OnClick = bHistoryClick
  end
  object mHistory: TMemo
    Left = 8
    Top = 272
    Width = 481
    Height = 217
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object bDownload: TBitBtn
    Left = 8
    Top = 240
    Width = 81
    Height = 25
    Caption = '&Download'
    Enabled = False
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000C21E0000C21E00000000000000000000FFFFFFFFFFFF
      FEFEFE9C9C9C7E7E7E7979797474747070708A8A8AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9C9C9C7E7E7E79797974747470
      70708A8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F6F6F6929292D5D3D3E2E0DFDFDCDBE1DFDF767676FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6929292D3D3D3E0E0E0DCDCDCDF
      DFDF767676FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFCFCFCFA9A9A9C4C2C1D4CFCE808080ACACAC9191917474747070706B6B
      6B676767636363797979FFFFFFFFFFFFFFFFFFCFCFCFA9A9A9C2C2C2CFCFCF80
      8080ACACAC9191917474747070706B6B6B676767636363797979CECECEB5B5B5
      B0B0B0ACACAC9F9F9F9E9E9E9A9A9A858585848484878786878685A2A09FD3CE
      CDD3CECDE8E5E5646464CECECEB5B5B5B0B0B0ACACAC9F9F9F9E9E9E9A9A9A85
      8585848484878787868686A0A0A0CECECECECECEE5E5E5646464AEAEAEE4E2E2
      D7D5D5D5D3D2D1CECDCAC4C3C8C3C2CDC9C8CCCACACCCAC9D8D6D6747373B9B1
      AEB7AFAED3CECD686868AEAEAEE2E2E2D5D5D5D3D3D3CECECEC4C4C4C3C3C3C9
      C9C9CACACACACACAD6D6D6737373B1B1B1B0B0B0CECECE686868B4B4B4E0DDDD
      A7724DA7724DA7724DA7724DA7724DA7724DA7724DA7724DDAD5D4787878BAB2
      B1B9B1AFD4CFCE6D6D6DB4B4B4DDDDDD70707070707070707070707070707070
      7070707070707070D5D5D5787878B3B3B3B1B1B1CFCFCF6D6D6DBABABADEDBDB
      B5805ACE9870D8AE91D9AF91D9AF91DAAF91D6A077A7724DD7D3D17E7E7EBBB4
      B3BBB3B1D4D0CF737373BABABADBDBDB7D7D7D959595ABABABACACACACACACAC
      ACAC9C9C9C707070D3D3D37E7E7EB5B5B5B3B3B3D0D0D0737373C0C0C0DFDCDC
      B47F59CB956ECD976FCF9971D19B72D29C74D49E75A7724DD7D4D38484843BA1
      42379437D6D1D0787878C0C0C0DCDCDC7C7C7C92929294949496969697979799
      99999A9A9A707070D4D4D48484848E8E8E828282D1D1D1787878C5C5C5E1DEDC
      B37D58C7916BC9936DCB956ECD9770CF9971D19B73A7724DD9D5D48B8B8BA0C8
      A450A956D7D3D17E7E7EC5C5C5DEDEDE7B7B7B8E8E8E90909092929294949496
      9696989898707070D5D5D58B8B8BBEBEBE979797D3D3D37E7E7ECACACAE1DFDE
      B17C57C48E68C6906AC8926BCA946DCC966FCE9870A7724DDBD6D6919191C1BB
      B9C0B9B8D7D3D3848484CACACADFDFDF7979798B8B8B8D8D8D8F8F8F91919193
      9393959595707070D6D6D6919191BBBBBBB9B9B9D3D3D3848484CECECEE2DFDF
      B07B56B17B56B17C57B27D58B37E58B47F59B5805AA7724DDCD8D79898988D8D
      8D8A8A8AD9D5D48B8B8BCECECEDFDFDF7878787979797979797A7A7A7B7B7B7C
      7C7C7D7D7D707070D8D8D89898988D8D8D8A8A8AD5D5D58B8B8BD3D3D3F1EFEF
      E2DFDFE2DFDFE1DFDEE1DEDDE0DDDCDFDCDBDEDBDBDEDBD9EDECEB9E9E9EC5BF
      BEC3BDBBDAD6D5919191D3D3D3EFEFEFDFDFDFDFDFDFDFDFDFDEDEDEDDDDDDDC
      DCDCDBDBDBDBDBDBECECEC9E9E9EBFBFBFBDBDBDD6D6D6919191D7D7D7D3D3D3
      D0D0D0CCCCCCC8C8C8C3C3C3BFBFBFBABABAB5B5B5B0B0B0AAAAAAA5A5A59493
      93929191DBD7D6989898D7D7D7D3D3D3D0D0D0CCCCCCC8C8C8C3C3C3BFBFBFBA
      BABAB5B5B5B0B0B0AAAAAAA5A5A5939393919191D7D7D7989898FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF1F1F1D1D1D1DFDFDFEAEAEACFCAC9CBC6C5CAC4C3C8C3
      C1C7C1C1DCD9D89E9E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1D1D1D1DF
      DFDFEAEAEACACACAC6C6C6C4C4C4C3C3C3C2C2C2D9D9D99E9E9EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCDDDDDDDCDCDCE6E3E3E1DEDCDFDCDCDFDC
      DBDEDBDBEEECECA5A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCDD
      DDDDDCDCDCE3E3E3DEDEDEDCDCDCDCDCDCDBDBDBECECECA5A5A5FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0CACACAC4C4C4C0C0C0BBBB
      BBB6B6B6B0B0B0C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE0E0E0CACACAC4C4C4C0C0C0BBBBBBB6B6B6B0B0B0C8C8C8}
    NumGlyphs = 2
    TabOrder = 3
    OnClick = bDownloadClick
  end
  object bWebsite: TBitBtn
    Left = 97
    Top = 240
    Width = 72
    Height = 25
    Caption = '&Website'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7AB980579E5E619C6646784A59755B7C7C7C87878789
      89898B8B8B8C8C8C6969695C7D5F48864E6099643A7B3E598A5B6AB97366B470
      72BF7D62B46D5E9162E5E5E5828282A9A9A9ACACAC898989E2E2E276BC7E84CA
      8F74C18055A45E337638E2F3E5C3E3C77CBA82528E58A2C1A4F0F0F07E7E7EA4
      A4A4A6A6A6858585F0F0F0A1D6A859AF626AAE72A0C8A4C0D7C2FFFFFFFFFFFF
      FFFFFF8B8B8BF0F0F0EFEFEF7B7B7B9E9E9EA1A1A1818181EFEFEFF4F4F47171
      71E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090F1F1F1EFEFEF77777799
      99999C9C9C7C7C7CEFEFEFF4F4F4767676E6E6E6FFFFFFFFFFFFFFFFFFC7DBEA
      679CC38D8F91F6F6F6EFEFEF747474767676777777787878EFEFEFF4F4F48A8B
      8D4E618EC1C9D9FFFFFFC7DCEC3B85BB5796C23F80B3DCDEE0EDEDEDEFEFEFEF
      EFEFEFEFEFEFEFEFEFEFEFDFE1E32D4B813A5F9027407AC1C9D9629BCA5395C6
      7AAFD35797C44387BACDCFD0EEEEEEEFEFEFEFEFEFEFEFEFD9DADB3864974470
      9F5C8CB13C6494566B97FAFCFD3F85BE5293C679AED35597C44287BACACBCCED
      EDEDEFEFEFD9DBDC3D76A64D80AE6B9ABD4775A2395D91FAFBFCFFFFFFFAFCFD
      3E81BE5091C676ADD35495C64189BCD2D4D5D2D4D54183B4558DBB77A5C75084
      B23E70A3FAFBFDFFFFFFFFFFFFFFFFFFFAFCFD3C80BC4D90C473ABD35294C63B
      83BA3C85B95695C27DACCF5591BC4380B1FAFCFDFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFAFCFD3C7EBB4B8DC370AAD271AAD274ACD27AAFD35697C44589BBFAFC
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCFD3A7BB9488BC26A
      A6D06EA9D15193C64389BFFAFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFAFCFD427FBB3577B7367BB94788C1FAFCFDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCFDE9
      F0F7EAF0F7FAFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 4
    OnClick = bWebsiteClick
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 48
    Width = 481
    Height = 65
    Caption = 'Installed Version'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Label6: TLabel
      Left = 24
      Top = 24
      Width = 23
      Height = 13
      Caption = 'Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4063255
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 40
      Width = 35
      Height = 13
      Caption = 'Version'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4063255
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lIVDate: TLabel
      Left = 80
      Top = 24
      Width = 25
      Height = 13
      Caption = '......'
    end
    object lIVVersion: TLabel
      Left = 80
      Top = 40
      Width = 25
      Height = 13
      Caption = '......'
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 120
    Width = 481
    Height = 65
    Caption = 'Latest Available Online'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object Label10: TLabel
      Left = 24
      Top = 24
      Width = 23
      Height = 13
      Caption = 'Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4063255
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 24
      Top = 40
      Width = 35
      Height = 13
      Caption = 'Version'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4063255
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lLADate: TLabel
      Left = 80
      Top = 24
      Width = 25
      Height = 13
      Caption = '......'
    end
    object lLAVersion: TLabel
      Left = 80
      Top = 40
      Width = 25
      Height = 13
      Caption = '......'
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 192
    Width = 481
    Height = 41
    TabOrder = 7
    object lWhat: TLabel
      Left = 21
      Top = 15
      Width = 12
      Height = 13
      Caption = '....'
    end
  end
  object bUpdateNow: TBitBtn
    Left = 320
    Top = 240
    Width = 97
    Height = 25
    Hint = 'shoud work, let me know if you have problems :-)'
    Caption = 'Update Now'
    Enabled = False
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C21E0000C21E00000000000000000000FFFFFFAEAEAE
      3E3E3E171717FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF696969C9C9C9959595161616FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF696969
      DEDEDE313131454545151515FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4343438181813535353E3E3E151515FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF4747478383833737373F3F3F151515FFFFFFFFFFFFFFFFFFBAE9FBFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5858588484843737373F
      3F3F151515FFFFFFC3EDFC48C7F5FFFFFFF9FDFFB7E8FAFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF4E4E4E6767673737374040401616166CD4F703B4F1C6EE
      FC30C0F496DEF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E4E4E67
      67673838384242424D4D4D4BCCF519BDF20DB7F2E1F6FDFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFE4F7FE5BD1F74F4F4F6767678C8C8CA9A9A94197B477D9
      F803B6F133C4F480D9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFAFE59
      D1F64C4C4CCACACAF7F7F7D3D3D34BA1BF74D9F80CB8F2C7EFFCFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90E0FA51CFF64FA5C2F8F8F8FEFEFE5AB0
      CD6AD6F72AC3F3E0F6FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFAFE62D3F825
      C1F54ECEF783DDF84EA4C25BB1CF68BFDC41CAF608BCF168D6F7FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95E1FA5AD0F76DD7F87DDCF84BCD
      F619BFF3F4FCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF54CFF767D4F867D3F850CEF798E3FA27C3F4ACE8FBFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F8FEA9E6FBFFFFFFC1EEFC53CEF7FFFF
      FFE2F7FEA5E6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFF8FDFFACE8FBFFFFFFFFFFFFFFFFFFFFFFFF}
    ModalResult = 8
    TabOrder = 8
  end
  object httpMain: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 
      'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gec' +
      'ko) Chrome/28.0.1468.0 Safari/537.36'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 440
    Top = 8
  end
end
