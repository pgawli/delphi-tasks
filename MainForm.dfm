object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object fpFlow: TFlowPanel
    Left = 0
    Top = 25
    Width = 624
    Height = 416
    Align = alClient
    TabOrder = 0
    ExplicitTop = 31
    object grpTaskUpdate: TGroupBox
      Left = 1
      Top = 1
      Width = 256
      Height = 96
      Caption = 'Update from TTask'
      TabOrder = 0
      object lbUpdate1: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 27
        Width = 246
        Height = 15
        Margins.Top = 10
        Align = alTop
        Alignment = taCenter
        Caption = 'Will be updated from task'
        ExplicitLeft = 32
        ExplicitTop = 32
        ExplicitWidth = 136
      end
      object btnTask: TButton
        AlignWithMargins = True
        Left = 5
        Top = 66
        Width = 246
        Height = 25
        Align = alBottom
        Caption = 'Update from Task'
        TabOrder = 0
        OnClick = btnTaskClick
        ExplicitLeft = 24
        ExplicitTop = 53
        ExplicitWidth = 161
      end
    end
    object grpFuture: TGroupBox
      Left = 257
      Top = 1
      Width = 256
      Height = 96
      Caption = 'Update from TFuture'
      TabOrder = 1
      object lbUpdate11: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 27
        Width = 246
        Height = 15
        Margins.Top = 10
        Align = alTop
        Alignment = taCenter
        Caption = 'Will be updated from task'
        ExplicitWidth = 136
      end
      object btnTask1: TButton
        AlignWithMargins = True
        Left = 5
        Top = 66
        Width = 246
        Height = 25
        Align = alBottom
        Caption = 'Update from Future'
        TabOrder = 0
        OnClick = btnTask1Click
        ExplicitLeft = 6
        ExplicitTop = 68
      end
    end
    object grpParallel: TGroupBox
      Left = 1
      Top = 97
      Width = 255
      Height = 192
      Caption = 'grpParallel'
      TabOrder = 2
      object btnStart: TButton
        Left = 3
        Top = 160
        Width = 75
        Height = 25
        Caption = 'Start'
        TabOrder = 0
        OnClick = btnStartClick
      end
      object Memo1: TMemo
        Left = 2
        Top = 17
        Width = 251
        Height = 137
        Align = alTop
        Lines.Strings = (
          'Memo1')
        TabOrder = 1
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 0
    Width = 624
    Height = 25
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = -5
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 384
    Top = 265
  end
end
