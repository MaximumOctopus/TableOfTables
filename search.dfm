object frmSearch: TfrmSearch
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Search'
  ClientHeight = 261
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 313
    Height = 65
    Caption = 'Search for ...'
    TabOrder = 0
    object eSearchTerm: TEdit
      Left = 16
      Top = 28
      Width = 281
      Height = 21
      TabOrder = 0
      OnKeyUp = eSearchTermKeyUp
    end
  end
  object bSearch: TBitBtn
    Left = 173
    Top = 230
    Width = 75
    Height = 25
    Caption = 'Search'
    Enabled = False
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000C21E0000C21E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE0EEE08FC0913B8D3F257A292577293B853F8FB991E0EBE0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBB7B7B77F7F7F6A
      6A6A686868787878B2B2B2E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFB5D9B7318F3542A05287CA9A9BD3AB9BD2AB83C7963D974C307C34B5D0
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D37F7F7F8F8F8FBEBEBEC9
      C9C9C8C8C8BABABA8686866F6F6FCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      B5DBBA258F2A6DBE83A8DBB587CC9866BC7D64BA7C86CB98A5D9B466B77D2472
      27B5D1B6FFFFFFFFFFFFFFFFFFFFFFFFD5D5D57D7D7DAFAFAFD1D1D1BFBFBFAD
      ADADABABABBEBEBECFCFCFA9A9A9656565CCCCCCFFFFFFFFFFFFFFFFFFE1F2E4
      33A14472C287A8DBB260BC775CBA7359B87059B56F58B56F5BB774A5D9B369B8
      7F317F35E1ECE1FFFFFFFFFFFFEFEFEF909090B3B3B3D0D0D0ABABABA9A9A9A7
      A7A7A4A4A4A4A4A4A7A7A7CFCFCFAAAAAA727272EAEAEAFFFFFFFFFFFF90D29F
      4CB064AADDB464C1795FBE7175C585D4ECD98ACD9956B66C58B56E5CB774A6DA
      B4419B4E8EBC90FFFFFFFFFFFFC8C8C89F9F9FD2D2D2B0B0B0ACACACB5B5B5E7
      E7E7C0C0C0A5A5A5A4A4A4A7A7A7D0D0D08A8A8AB4B4B4FFFFFFFFFFFF3FB55D
      91D29F8DD49A64C37479C987F2FAF4FFFFFFFDFEFD86CB9657B76D5BB97285CC
      9787C79A3B8B3FFFFFFFFFFFFFA3A3A3C5C5C5C6C6C6B1B1B1B9B9B9F9F9F9FF
      FFFFFEFEFEBEBEBEA6A6A6A8A8A8BFBFBFBBBBBB7D7D7DFFFFFFFFFFFF27B049
      A6DCAF70CA7F73CA80F0F9F1FFFFFFEBF7EDFFFFFFFBFDFC88CD965BB97167BE
      7DA0D7AF237F26FFFFFFFFFFFF9C9C9CD1D1D1B8B8B8B8B8B8F7F7F7FFFFFFF5
      F5F5FFFFFFFDFDFDBFBFBFA8A8A8AEAEAECDCDCD6E6E6EFFFFFFFFFFFF2EB751
      A7DDB172CC8066C773B0E1B7D2EED663C170B8E3BFFFFFFFFBFDFC8CD09969C1
      7EA1D7AE238426FFFFFFFFFFFFA2A2A2D2D2D2BABABAB4B4B4D6D6D6E7E7E7AF
      AFAFDADADAFFFFFFFDFDFDC2C2C2B1B1B1CCCCCC737373FFFFFFFFFFFF4BC56C
      95D7A191D79B69C97664C66F61C46E61C36F61C26FB9E4C0FFFFFFE3F4E68BD1
      998BCE9D3C993FFFFFFFFFFFFFB2B2B2C9C9C9C8C8C8B6B6B6B3B3B3B1B1B1B0
      B0B0AFAFAFDBDBDBFFFFFFF0F0F0C3C3C3C2C2C2898989FFFFFFFFFFFF9BDFAD
      57BF70AFE1B76DCC7A68C87265C77063C56E62C46E63C471B6E3BE6FC77EACDF
      B548A95E8FC894FFFFFFFFFFFFD4D4D4ADADADD6D6D6B9B9B9B5B5B5B4B4B4B2
      B2B2B1B1B1B1B1B1D9D9D9B6B6B6D4D4D4989898BEBEBEFFFFFFFFFFFFE5F7E9
      49C5667FCE90AEE1B56DCC7A6ACA7668C87268C87468C8756BC979ACDFB476C4
      8933A142E1F1E3FFFFFFFFFFFFF4F4F4B1B1B1BFBFBFD6D6D6B9B9B9B7B7B7B5
      B5B5B5B5B5B5B5B5B7B7B7D4D4D4B5B5B58F8F8FEEEEEEFFFFFFFFFFFFFFFFFF
      BFECCB3DC35C7FCE90AFE1B792D89D77CE8377CE8392D89DAEE1B578C88B27A1
      3BB5DFBEFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5AEAEAEBFBFBFD6D6D6CACACABC
      BCBCBCBCBCCACACAD6D6D6B9B9B98E8E8ED9D9D9FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFC0EDCB4AC86959C27496D7A3A5DCAEA5DCAE95D6A150B96A35B355B6E3
      C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6B4B4B4B0B0B0CACACAD0
      D0D0D0D0D0C9C9C9A6A6A6A0A0A0DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE5F8E99FE3B055CB723BC05C37BE5A49C36A97DCAAE1F5E7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5D8D8D8B8B8B8AB
      ABABA9A9A9B0B0B0D1D1D1F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 1
  end
  object bCancel: TBitBtn
    Left = 254
    Top = 230
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C21E0000C21E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E8F79EA9E1546BC73F
      59C03A53BF4C67C297A7DCE1E6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFC3C9ED5566CC3C52CC757AE88F92EE8F92EE7178E4334DC1405CBEB9C4
      E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C9EF5160CD5C65E0A1A6F57E86EF5B
      63E9595DE77D84EE9EA0F4515DD73452BAB9C4E7FFFFFFFFFFFFFFFFFFE8EAF9
      6571D4616BE3A1ACF5545FEC505CEA4D59E94E59E64C56E65056E69EA2F45460
      D6405CBFE2E7F5FFFFFFFFFFFFACB0EA4B56DBA2ABF65664F05266EE4D59E94D
      59E94D59E94D59E94C58E6525AE69FA3F53450C496A6DCFFFFFFFFFFFF7378DD
      818CEE7E91F75D73F34D59E94D59E94D59E94D59E94D59E94D59E94F5BE97B83
      F0757BE24C64C4FFFFFFFFFFFF6569DBA1ABF77086F86882F6FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF4D59E95C66EA969CF13956BEFFFFFFFFFFFF696EDC
      AFB9F97F93FA7085F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D59E95E6A
      EE969DF13D55C0FFFFFFFFFFFF7C7FE3A5AFF59DABFA778CF0545FEC545FEC54
      5FEC545FEC545FEC545FEC6377F2818EF4787FE9566BC9FFFFFFFFFFFFB5B5F0
      7D83EACDD4FC8B9DFA7E93F7758AEE6C84F66C84F66C84F66C84F66379F3A4AF
      F83E4FD0A0ABE1FFFFFFFFFFFFEBEBFB7978E3A3A7F3D4DBFD879AFA7F91F07A
      8EF17F94F87E92F9768CF8A8B6F8636EE35868CDE6E8F7FFFFFFFFFFFFFFFFFF
      CFCFF6706FE1AAADF2D8DCFDAEBAFA91A3FA8B9DFA9CA9FBBAC7FC707BE95462
      CEC3C9EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFF67979E28E93EDBEC3F8CC
      D3F9C4CBF9AAB4F46670E2646ED6C6CAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEBEBFBB6B6F07D7FE26A6BDE686BDC7479DEAFB3EBE8E9F9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ModalResult = 2
    TabOrder = 2
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 96
    Width = 313
    Height = 121
    Caption = 'Search in ...'
    TabOrder = 3
    object cbTitles: TCheckBox
      Left = 40
      Top = 63
      Width = 257
      Height = 17
      Caption = 'Table titles / descriptions'
      TabOrder = 0
    end
    object cbItems: TCheckBox
      Left = 40
      Top = 86
      Width = 257
      Height = 17
      Caption = 'Table rollable items'
      TabOrder = 1
    end
    object cbNames: TCheckBox
      Left = 40
      Top = 40
      Width = 257
      Height = 17
      Caption = 'Category / Sub-category names'
      TabOrder = 2
    end
  end
end
