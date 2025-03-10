object frmMain: TfrmMain
  Left = 250
  Top = 217
  Caption = 'MarkDown Text Editor'
  ClientHeight = 585
  ClientWidth = 1003
  Color = clAppWorkSpace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  Position = poScreenCenter
  ShowHint = True
  OnAfterMonitorDpiChanged = FormAfterMonitorDpiChanged
  OnBeforeMonitorDpiChanged = FormBeforeMonitorDpiChanged
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnResize = FormResize
  DesignSize = (
    1003
    585)
  TextHeight = 15
  object ClientPanel: TPanel
    AlignWithMargins = True
    Left = 42
    Top = 38
    Width = 961
    Height = 67
    Margins.Left = 42
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    ParentColor = True
    TabOrder = 4
    object StyledToolbar: TStyledToolbar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 953
      Height = 28
      ButtonHeight = 28
      ButtonWidth = 28
      Caption = 'StyledToolbar'
      Images = VirtualImageListToolbar
      Indent = 3
      TabOrder = 0
      object btHeader1: TStyledToolButton
        Left = 0
        Top = 0
        Action = acHeader1
      end
      object btHeader2: TStyledToolButton
        Left = 28
        Top = 0
        Action = acHeader2
      end
      object btHeader3: TStyledToolButton
        Left = 56
        Top = 0
        Action = acHeader3
      end
      object btSeparator1: TStyledToolButton
        Left = 84
        Top = 0
        Style = tbsSeparator
      end
      object btLink: TStyledToolButton
        Left = 90
        Top = 0
        Action = acLink
      end
      object btImage: TStyledToolButton
        Left = 118
        Top = 0
        Action = acImage
      end
      object btTable: TStyledToolButton
        Left = 146
        Top = 0
        Action = acTable
      end
      object btSeparator2: TStyledToolButton
        Left = 174
        Top = 0
        Style = tbsSeparator
      end
      object btBold: TStyledToolButton
        Left = 180
        Top = 0
        Action = acBold
      end
      object btItalic: TStyledToolButton
        Left = 208
        Top = 0
        Action = acItalic
      end
      object btStrike: TStyledToolButton
        Left = 236
        Top = 0
        Action = acStrike
      end
      object btUnderline: TStyledToolButton
        Left = 264
        Top = 0
        Action = acUnderline
      end
      object btCode: TStyledToolButton
        Left = 292
        Top = 0
        Action = acCode
      end
      object btMarker: TStyledToolButton
        Left = 320
        Top = 0
        Action = acMarker
      end
      object btSuperscript: TStyledToolButton
        Left = 348
        Top = 0
        Action = acSuperscript
      end
      object btSubscript: TStyledToolButton
        Left = 376
        Top = 0
        Action = acSubscript
      end
      object btSeparator3: TStyledToolButton
        Left = 404
        Top = 0
        Style = tbsSeparator
      end
      object btUnorderedList: TStyledToolButton
        Left = 410
        Top = 0
        Action = acUnorderedList
      end
      object btOrderedList: TStyledToolButton
        Left = 438
        Top = 0
        Action = acOrderedList
      end
      object btBlockquote: TStyledToolButton
        Left = 466
        Top = 0
        Action = acBlockquote
      end
      object btHorizontalRule: TStyledToolButton
        Left = 494
        Top = 0
        Action = acHorizontalRule
      end
      object btSeparator4: TStyledToolButton
        Left = 522
        Top = 0
        Style = tbsSeparator
      end
      object btHelp: TStyledToolButton
        Left = 528
        Top = 0
        Action = acHelp
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 566
    Width = 1003
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Alignment = taCenter
        Width = 40
      end
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Width = 100
      end
      item
        Width = 80
      end
      item
        Width = 80
      end>
  end
  object SV: TSplitView
    Left = 0
    Top = 36
    Width = 44
    Height = 527
    CloseStyle = svcCompact
    Color = clHighlight
    CompactWidth = 44
    DisplayMode = svmOverlay
    Opened = False
    OpenedWidth = 160
    ParentDoubleBuffered = True
    Placement = svpLeft
    TabOrder = 0
    OnClosed = SVClosed
    OnClosing = SVClosing
    OnOpened = SVOpened
    OnOpening = SVOpening
    OnResize = SVResize
    object catMenuItems: TStyledCategoryButtons
      Left = 0
      Top = 0
      Width = 44
      Height = 527
      Align = alClient
      BackgroundGradientDirection = gdVertical
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonHeight = 36
      ButtonWidth = 36
      ButtonOptions = [boFullSize, boBoldCaptions, boCaptionOnlyBorder]
      Categories = <
        item
          Caption = 'File'
          Color = clNone
          Collapsed = False
          Items = <
            item
              Action = acNewFile
            end
            item
              Action = acOpenFile
            end
            item
              Action = OpenRecentAction
            end
            item
              Action = acClose
            end
            item
              Action = acCloseAll
            end
            item
              Action = acSave
            end
            item
              Action = acSaveAll
            end
            item
              Action = actnSaveAs
            end
            item
              Action = acSaveHTMLFile
            end
            item
              Action = acSavePDFFile
            end>
        end
        item
          Caption = 'Text'
          Color = clNone
          Collapsed = False
          Items = <
            item
              Action = acEditSelectAll
            end
            item
              Action = acEditUndo
            end
            item
              Action = acEditCut
            end
            item
              Action = acEditCopy
            end
            item
              Action = acEditPaste
            end
            item
              Action = acSearch
            end
            item
              Action = acSearchAgain
            end
            item
              Action = acReplace
              ImageName = 'Replace'
            end>
        end
        item
          Caption = 'Print'
          Color = clNone
          Collapsed = False
          Items = <
            item
              Action = actnPrint
            end
            item
              Action = actnPrintPreview
              ImageName = 'Print-preview'
            end>
        end>
      Color = clBtnFace
      DoubleBuffered = True
      HotButtonColor = 12500670
      Images = VirtualImageList
      ParentDoubleBuffered = False
      RegularButtonColor = clNone
      SelectedButtonColor = clNone
      TabOrder = 0
      OnGetHint = catMenuItemsGetHint
      OnMouseLeave = catMenuItemsMouseLeave
      OnMouseMove = catMenuItemsMouseMove
    end
  end
  object panlTop: TPanel
    Left = 0
    Top = 0
    Width = 1003
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object lblTitle: TLabel
      AlignWithMargins = True
      Left = 45
      Top = 3
      Width = 116
      Height = 32
      Align = alLeft
      Caption = 'MarkDown Text Editor'
      Layout = tlCenter
    end
    object SettingsToolBar: TStyledToolbar
      AlignWithMargins = True
      Left = 696
      Top = 3
      Width = 304
      Height = 32
      Align = alRight
      ButtonHeight = 32
      ButtonWidth = 32
      Images = VirtualImageList
      Indent = 3
      TabOrder = 0
      object btLayoutBoth: TStyledToolButton
        Left = 0
        Top = 0
        Action = acLayoutBoth
        Grouped = True
        Style = tbsCheck
      end
      object btLayoutMarkDown: TStyledToolButton
        Left = 32
        Top = 0
        Action = acLayoutMarkDown
        Grouped = True
        Style = tbsCheck
      end
      object btLayoutViewer: TStyledToolButton
        Left = 64
        Top = 0
        Action = acLayoutViewer
        Grouped = True
        Style = tbsCheck
      end
      object SepLayoutButtons: TStyledToolButton
        Left = 96
        Top = 0
        Style = tbsSeparator
      end
      object ColorSettingsToolButton: TStyledToolButton
        Left = 102
        Top = 0
        Action = actnSettings
      end
      object EditOptionsToolButton: TStyledToolButton
        Left = 134
        Top = 0
        Action = actnEditOptions
      end
      object PageSetupToolButton: TStyledToolButton
        Left = 166
        Top = 0
        Action = actnPageSetup
      end
      object PrinterSetupToolButton: TStyledToolButton
        Left = 198
        Top = 0
        Action = actnPrinterSetup
      end
      object SepToolButton: TStyledToolButton
        Left = 230
        Top = 0
        Style = tbsSeparator
      end
      object AboutToolButton: TStyledToolButton
        Left = 236
        Top = 0
        Action = acAbout
      end
      object QuitToolButton: TStyledToolButton
        Left = 268
        Top = 0
        Action = acQuit
        ImageName = 'Exit'
      end
    end
    object MenuButtonToolbar: TStyledToolbar
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 36
      Height = 32
      Align = alLeft
      ButtonHeight = 32
      ButtonWidth = 36
      Images = VirtualImageList
      Indent = 3
      TabOrder = 1
      object MenuToolButton: TStyledToolButton
        Left = 0
        Top = 0
        Action = actMenu
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'MarkDown Text files (.md)|*.md'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 300
    Top = 196
  end
  object ActionList: TActionList
    Images = VirtualImageList
    OnExecute = ActionListExecute
    OnUpdate = ActionListUpdate
    Left = 308
    Top = 108
    object acNewFile: TAction
      Category = 'File'
      Caption = 'New ...'
      Hint = 'New MarkDown File'
      ImageIndex = 2
      ImageName = 'New'
      OnExecute = acNewFileExecute
    end
    object acOpenFile: TAction
      Category = 'File'
      Caption = 'Open ...'
      Hint = 'Open MarkDown File...'
      ImageIndex = 1
      ImageName = 'Open'
      OnExecute = acOpenFileExecute
    end
    object acEditCut: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Enabled = False
      Hint = 'Cuts the selection and puts it on the Clipboard'
      ImageIndex = 10
      ImageName = 'Cut'
      ShortCut = 16472
      OnExecute = acEditCutExecute
      OnUpdate = actionForFileUpdate
    end
    object acSearch: TAction
      Category = 'Edit'
      Caption = 'Search ...'
      Hint = 'Search into text...'
      ImageIndex = 6
      ImageName = 'Search'
      ShortCut = 16454
      OnExecute = acSearchExecute
      OnUpdate = acSearchUpdate
    end
    object acSearchAgain: TAction
      Category = 'Edit'
      Caption = 'Repeat search'
      Hint = 'Repeat last search'
      ImageIndex = 7
      ImageName = 'Search-repeat'
      ShortCut = 114
      OnExecute = acSearchAgainExecute
      OnUpdate = acSearchAgainUpdate
    end
    object acClose: TAction
      Category = 'File'
      Caption = 'Close'
      Hint = 'Close File'
      ImageIndex = 3
      ImageName = 'Close'
      ShortCut = 16499
      OnExecute = acCloseExecute
      OnUpdate = actnEditingUpdate
    end
    object acEditCopy: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Enabled = False
      Hint = 'Copies the selection and puts it on the Clipboard'
      ImageIndex = 8
      ImageName = 'Copy'
      ShortCut = 16451
      OnExecute = acEditCopyExecute
      OnUpdate = acEditCopyUpdate
    end
    object acEditPaste: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Enabled = False
      Hint = 'Inserts Clipboard contents'
      ImageIndex = 9
      ImageName = 'Paste'
      ShortCut = 16470
      OnExecute = acEditPasteExecute
      OnUpdate = actionForFileUpdate
    end
    object acEditSelectAll: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Selects the entire document'
      ImageIndex = 18
      ImageName = 'Select-all'
      ShortCut = 16449
      OnExecute = acEditSelectAllExecute
      OnUpdate = actionForFileUpdate
    end
    object acEditUndo: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Reverts the last action'
      ImageIndex = 11
      ImageName = 'Undo'
      ShortCut = 16474
      OnExecute = acEditUndoExecute
      OnUpdate = acEditUndoUpdate
    end
    object acSave: TAction
      Category = 'File'
      Caption = 'Save'
      Hint = 'Save File'
      ImageIndex = 12
      ImageName = 'Save'
      ShortCut = 16467
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acReplace: TAction
      Category = 'Edit'
      Caption = 'Replace ...'
      Hint = 'Search and Replace'
      ImageIndex = 20
      ImageName = 'replace'
      ShortCut = 16466
      OnExecute = acReplaceExecute
      OnUpdate = acReplaceUpdate
    end
    object acQuit: TAction
      Category = 'File'
      Caption = 'Quit'
      Hint = 'Close application'
      ImageIndex = 22
      ImageName = 'exit'
      ShortCut = 16465
      OnExecute = acQuitExecute
    end
    object acAbout: TAction
      Category = 'Help'
      Caption = 'About ...'
      Hint = 'About MarkDown Text Editor'
      ImageIndex = 23
      ImageName = 'about'
      OnExecute = acAboutExecute
    end
    object acCloseAll: TAction
      Category = 'File'
      Caption = 'Close All'
      Hint = 'Close all files'
      ImageIndex = 4
      ImageName = 'Close-all'
      OnExecute = acCloseAllExecute
      OnUpdate = acCloseAllUpdate
    end
    object acSaveAll: TAction
      Category = 'File'
      Caption = 'Save All'
      Hint = 'Save all changes'
      ImageIndex = 13
      ImageName = 'Save-all'
      OnExecute = acSaveAllExecute
      OnUpdate = acSaveAllUpdate
    end
    object actnPrint: TAction
      Category = 'File'
      Caption = 'Print file ...'
      Hint = 'Print file'
      ImageIndex = 15
      ImageName = 'Print'
      OnExecute = actnPrintExecute
      OnUpdate = actnEditingUpdate
    end
    object actnPrinterSetup: TAction
      Category = 'Settings'
      Caption = 'Printer Setup ...'
      Hint = 'Printer Setup'
      ImageIndex = 17
      ImageName = 'Print-settings'
      OnExecute = actnPrinterSetupExecute
    end
    object actnPrintPreview: TAction
      Category = 'File'
      Caption = 'Print Preview'
      Hint = 'Print Preview'
      ImageIndex = 16
      ImageName = 'print-preview'
      OnExecute = actnPrintPreviewExecute
      OnUpdate = actnEditingUpdate
    end
    object actnPageSetup: TAction
      Category = 'Settings'
      Caption = 'Page Setup ...'
      Hint = 'Printer Page Setup'
      ImageIndex = 30
      ImageName = 'view_details'
      OnExecute = actnPageSetupExecute
      OnUpdate = actnEditingUpdate
    end
    object actnEditOptions: TAction
      Category = 'Settings'
      Caption = 'Editor Options ...'
      Hint = 'Editor Options'
      ImageIndex = 44
      ImageName = 'Support'
      OnExecute = actnEditOptionsExecute
    end
    object actnEnlargeFont: TAction
      Category = 'Settings'
      Caption = 'Font +'
      Hint = 'Enlarge Font'
      ImageIndex = 26
      ImageName = 'plus'
      OnExecute = actnFontExecute
    end
    object actnReduceFont: TAction
      Category = 'Settings'
      Caption = 'Font -'
      Hint = 'Reduce Font'
      ImageIndex = 25
      ImageName = 'Minus'
      OnExecute = actnFontExecute
    end
    object actnSaveAs: TAction
      Category = 'File'
      Caption = 'Save As ...'
      Hint = 'Save File As ...'
      ImageIndex = 14
      ImageName = 'Save-as'
      OnExecute = actnSaveAsExecute
      OnUpdate = actnEditingUpdate
    end
    object actnSettings: TAction
      Category = 'Settings'
      Caption = 'Theme settings'
      Hint = 'Theme settings (colors, font, themes)'
      ImageIndex = 28
      ImageName = 'preferences-desktop'
      OnExecute = actnSettingsExecute
      OnUpdate = actnSettingsUpdate
    end
    object actMenu: TAction
      Caption = 'Collapse'
      Hint = 'Collapse'
      ImageIndex = 24
      ImageName = 'menu'
      OnExecute = actMenuExecute
    end
    object OpenRecentAction: TAction
      Category = 'File'
      Caption = 'Open recent...'
      Hint = 'Open recent MarkDown File...'
      ImageIndex = 5
      ImageName = 'Close-all-folder'
      OnExecute = OpenRecentActionExecute
    end
    object acZoomIn: TAction
      Category = 'HTMLViewer'
      Caption = 'Zoom +'
      ImageIndex = 26
      ImageName = 'plus'
      OnExecute = acZoomExecute
      OnUpdate = acHTMLViewerUpdate
    end
    object acZoomOut: TAction
      Category = 'HTMLViewer'
      Caption = 'Zoom -'
      ImageIndex = 25
      ImageName = 'Minus'
      OnExecute = acZoomExecute
      OnUpdate = acHTMLViewerUpdate
    end
    object acSaveHTMLFile: TAction
      Category = 'HTMLViewer'
      Caption = 'Save in HTML...'
      Hint = 'Save document in HTML format...'
      ImageIndex = 51
      ImageName = 'save_html'
      OnExecute = acSaveHTMLFileExecute
      OnUpdate = acHTMLViewerUpdate
    end
    object acSavePDFFile: TAction
      Category = 'HTMLViewer'
      Caption = 'Save in PDF...'
      Hint = 'Save document in PDF format...'
      ImageIndex = 52
      ImageName = 'save_pdf'
      OnExecute = acSavePDFFileExecute
      OnUpdate = acHTMLViewerUpdate
    end
    object acRefresh: TAction
      Category = 'HTMLViewer'
      Caption = 'Refresh'
      Hint = 'Refresh Viewer content'
      ImageIndex = 58
      ImageName = 'refresh'
      ShortCut = 116
      OnExecute = acRefreshExecute
      OnUpdate = acHTMLViewerUpdate
    end
    object acLayoutBoth: TAction
      Category = 'Layout'
      AutoCheck = True
      Caption = 'Editor and Viewer'
      Checked = True
      GroupIndex = 1
      Hint = 'Show MarkDown Editor and HTML Viewer'
      ImageIndex = 59
      ImageName = 'layout_both'
      OnExecute = acLayoutExecute
      OnUpdate = acLayoutUpdate
    end
    object acLayoutMarkDown: TAction
      Category = 'Layout'
      AutoCheck = True
      Caption = 'Only Editor'
      GroupIndex = 1
      Hint = 'Show only MarkDown Editor'
      ImageIndex = 60
      ImageName = 'layout_left'
      OnExecute = acLayoutExecute
      OnUpdate = acLayoutUpdate
    end
    object acLayoutViewer: TAction
      Category = 'Layout'
      AutoCheck = True
      Caption = 'Only Viewer'
      GroupIndex = 1
      Hint = 'Show only HTML Viewer'
      ImageIndex = 61
      ImageName = 'layout_right'
      OnExecute = acLayoutExecute
      OnUpdate = acLayoutUpdate
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'MarkDown files (.md)|*.md'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 300
    Top = 264
  end
  object popEditor: TPopupMenu
    Images = VirtualImageList
    Left = 456
    Top = 152
    object CloseMenuItem: TMenuItem
      Action = acClose
    end
    object SaveMenuItem: TMenuItem
      Action = acSave
    end
    object CloseAllMenuItem: TMenuItem
      Action = acCloseAll
    end
    object Sep1MenuItem: TMenuItem
      Caption = '-'
    end
    object SelectAllMenuItem: TMenuItem
      Action = acEditSelectAll
    end
    object CopyMenuItem: TMenuItem
      Action = acEditCopy
    end
    object CutMenuItem: TMenuItem
      Action = acEditCut
    end
    object PasteMenuItem: TMenuItem
      Action = acEditPaste
    end
    object Sep2MenuItem: TMenuItem
      Caption = '-'
    end
    object SearchMenuItem: TMenuItem
      Action = acSearch
    end
    object ReplaceMenuItem: TMenuItem
      Action = acReplace
      ImageName = 'Replace'
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object PrinterSetupDialog: TPrinterSetupDialog
    Left = 657
    Top = 261
  end
  object PrintDialog: TPrintDialog
    Left = 656
    Top = 313
  end
  object SynEditPrint: TSynEditPrint
    Copies = 1
    Header.FrameTypes = [ftBox, ftShaded]
    Header.DefaultFont.Charset = DEFAULT_CHARSET
    Header.DefaultFont.Color = clBlack
    Header.DefaultFont.Height = -13
    Header.DefaultFont.Name = 'Arial'
    Header.DefaultFont.Style = []
    Footer.FrameTypes = [ftBox, ftShaded]
    Footer.DefaultFont.Charset = DEFAULT_CHARSET
    Footer.DefaultFont.Color = clBlack
    Footer.DefaultFont.Height = -13
    Footer.DefaultFont.Name = 'Arial'
    Footer.DefaultFont.Style = []
    Margins.UnitSystem = usCM
    Margins.Left = 1.500000000000000000
    Margins.Right = 1.500000000000000000
    Margins.Top = 2.000000000000000000
    Margins.Bottom = 2.000000000000000000
    Margins.Header = 1.500000000000000000
    Margins.Footer = 1.500000000000000000
    Margins.LeftHFTextIndent = 0.200000000000000000
    Margins.RightHFTextIndent = 0.200000000000000000
    Margins.HFInternalMargin = 0.050000000000000000
    Margins.MirrorMargins = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Colors = True
    TabWidth = 8
    Color = clWhite
    Left = 656
    Top = 208
  end
  object SynEditSearch: TSynEditSearch
    Left = 204
    Top = 192
  end
  object VirtualImageList: TVirtualImageList
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'Style'
        Name = 'Style'
      end
      item
        CollectionIndex = 1
        CollectionName = 'Open'
        Name = 'Open'
      end
      item
        CollectionIndex = 2
        CollectionName = 'New'
        Name = 'New'
      end
      item
        CollectionIndex = 3
        CollectionName = 'Close'
        Name = 'Close'
      end
      item
        CollectionIndex = 4
        CollectionName = 'Close-all'
        Name = 'Close-all'
      end
      item
        CollectionIndex = 5
        CollectionName = 'Close-all-folder'
        Name = 'Close-all-folder'
      end
      item
        CollectionIndex = 6
        CollectionName = 'Search'
        Name = 'Search'
      end
      item
        CollectionIndex = 7
        CollectionName = 'Search-repeat'
        Name = 'Search-repeat'
      end
      item
        CollectionIndex = 8
        CollectionName = 'Copy'
        Name = 'Copy'
      end
      item
        CollectionIndex = 9
        CollectionName = 'Paste'
        Name = 'Paste'
      end
      item
        CollectionIndex = 10
        CollectionName = 'Cut'
        Name = 'Cut'
      end
      item
        CollectionIndex = 11
        CollectionName = 'Undo'
        Name = 'Undo'
      end
      item
        CollectionIndex = 12
        CollectionName = 'Save'
        Name = 'Save'
      end
      item
        CollectionIndex = 13
        CollectionName = 'Save-all'
        Name = 'Save-all'
      end
      item
        CollectionIndex = 14
        CollectionName = 'Save-as'
        Name = 'Save-as'
      end
      item
        CollectionIndex = 15
        CollectionName = 'Print'
        Name = 'Print'
      end
      item
        CollectionIndex = 16
        CollectionName = 'Print-preview'
        Name = 'Print-preview'
      end
      item
        CollectionIndex = 17
        CollectionName = 'Print-settings'
        Name = 'Print-settings'
      end
      item
        CollectionIndex = 18
        CollectionName = 'Select-all'
        Name = 'Select-all'
      end
      item
        CollectionIndex = 19
        CollectionName = 'Reformat'
        Name = 'Reformat'
      end
      item
        CollectionIndex = 20
        CollectionName = 'Replace'
        Name = 'Replace'
      end
      item
        CollectionIndex = 21
        CollectionName = 'Settings'
        Name = 'Settings'
      end
      item
        CollectionIndex = 22
        CollectionName = 'Exit'
        Name = 'Exit'
      end
      item
        CollectionIndex = 23
        CollectionName = 'about'
        Name = 'about'
      end
      item
        CollectionIndex = 24
        CollectionName = 'menu'
        Name = 'menu'
      end
      item
        CollectionIndex = 25
        CollectionName = 'Minus'
        Name = 'Minus'
      end
      item
        CollectionIndex = 26
        CollectionName = 'plus'
        Name = 'plus'
      end
      item
        CollectionIndex = 27
        CollectionName = 'back'
        Name = 'back'
      end
      item
        CollectionIndex = 28
        CollectionName = 'preferences-desktop'
        Name = 'preferences-desktop'
      end
      item
        CollectionIndex = 29
        CollectionName = 'preferences-desktop-color'
        Name = 'preferences-desktop-color'
      end
      item
        CollectionIndex = 30
        CollectionName = 'view_details'
        Name = 'view_details'
      end
      item
        CollectionIndex = 31
        CollectionName = 'left'
        Name = 'left'
      end
      item
        CollectionIndex = 32
        CollectionName = 'right'
        Name = 'right'
      end
      item
        CollectionIndex = 33
        CollectionName = 'binoculars'
        Name = 'binoculars'
      end
      item
        CollectionIndex = 34
        CollectionName = 'whole-page'
        Name = 'whole-page'
      end
      item
        CollectionIndex = 35
        CollectionName = 'page-width'
        Name = 'page-width'
      end
      item
        CollectionIndex = 36
        CollectionName = 'svg-logo'
        Name = 'svg-logo'
      end
      item
        CollectionIndex = 37
        CollectionName = 'svg-logo-gray'
        Name = 'svg-logo-gray'
      end
      item
        CollectionIndex = 38
        CollectionName = 'export'
        Name = 'export'
      end
      item
        CollectionIndex = 46
        CollectionName = 'error'
        Name = 'error'
      end
      item
        CollectionIndex = 47
        CollectionName = 'info'
        Name = 'info'
      end
      item
        CollectionIndex = 48
        CollectionName = 'attachment'
        Name = 'attachment'
      end
      item
        CollectionIndex = 49
        CollectionName = 'xml'
        Name = 'markdown'
      end
      item
        CollectionIndex = 50
        CollectionName = 'xsl'
        Name = 'markdown-gray'
      end
      item
        CollectionIndex = 41
        CollectionName = 'Support'
        Name = 'Support'
      end
      item
        CollectionIndex = 49
        CollectionName = 'xml'
        Name = 'xml'
      end
      item
        CollectionIndex = 50
        CollectionName = 'xsl'
        Name = 'xsl'
      end
      item
        CollectionIndex = 51
        CollectionName = 'xml-gray'
        Name = 'xml-gray'
      end
      item
        CollectionIndex = 52
        CollectionName = 'xsl-gray'
        Name = 'xsl-gray'
      end
      item
        CollectionIndex = 53
        CollectionName = 'file'
        Name = 'file'
      end
      item
        CollectionIndex = 54
        CollectionName = 'file-gray'
        Name = 'file-gray'
      end
      item
        CollectionIndex = 55
        CollectionName = 'save_html'
        Name = 'save_html'
      end
      item
        CollectionIndex = 56
        CollectionName = 'save_pdf'
        Name = 'save_pdf'
      end
      item
        CollectionIndex = 57
        CollectionName = 'save_xml'
        Name = 'save_xml'
      end
      item
        CollectionIndex = 58
        CollectionName = 'markdown-black'
        Name = 'markdown-black'
      end
      item
        CollectionIndex = 59
        CollectionName = 'markdown-white'
        Name = 'markdown-white'
      end
      item
        CollectionIndex = 60
        CollectionName = 'markdown-black-gray'
        Name = 'markdown-black-gray'
      end
      item
        CollectionIndex = 61
        CollectionName = 'markdown-white-gray'
        Name = 'markdown-white-gray'
      end
      item
        CollectionIndex = 79
        CollectionName = 'refresh'
        Name = 'refresh'
      end
      item
        CollectionIndex = 84
        CollectionName = 'layout_both'
        Name = 'layout_both'
      end
      item
        CollectionIndex = 85
        CollectionName = 'layout_left'
        Name = 'layout_left'
      end
      item
        CollectionIndex = 86
        CollectionName = 'layout_right'
        Name = 'layout_right'
      end>
    ImageCollection = dmResources.SVGIconImageCollection
    Width = 24
    Height = 24
    Left = 448
    Top = 304
  end
  object RecentPopupMenu: TPopupMenu
    OnPopup = RecentPopupMenuPopup
    Left = 456
    Top = 216
  end
  object PopHTMLViewer: TPopupMenu
    Images = VirtualImageList
    Left = 528
    Top = 152
    object ZoomInMenuItem: TMenuItem
      Action = acZoomIn
    end
    object ZoomOutMenuItem: TMenuItem
      Action = acZoomOut
    end
    object SaveHTMLfileMenuItem: TMenuItem
      Action = acSaveHTMLFile
    end
    object SavePDFfileMenuItem: TMenuItem
      Action = acSavePDFFile
    end
    object RefreshMenuItem: TMenuItem
      Action = acRefresh
    end
    object PopHTMLSep: TMenuItem
      Caption = '-'
    end
    object Close_MenuItem: TMenuItem
      Action = acClose
    end
    object Close_AllMenuItem: TMenuItem
      Action = acCloseAll
    end
  end
  object VirtualImageList20: TVirtualImageList
    Images = <
      item
        CollectionIndex = 62
        CollectionName = 'close-circle-outline'
        Name = 'close-circle-outline'
      end
      item
        CollectionIndex = 58
        CollectionName = 'markdown-black'
        Name = 'markdown-black'
      end
      item
        CollectionIndex = 59
        CollectionName = 'markdown-white'
        Name = 'markdown-white'
      end
      item
        CollectionIndex = 60
        CollectionName = 'markdown-black-gray'
        Name = 'markdown-black-gray'
      end
      item
        CollectionIndex = 61
        CollectionName = 'markdown-white-gray'
        Name = 'markdown-white-gray'
      end>
    ImageCollection = dmResources.SVGIconImageCollection
    Width = 20
    Height = 20
    Left = 448
    Top = 368
  end
  object LoadTimer: TTimer
    Enabled = False
    OnTimer = LoadTimerTimer
    Left = 272
    Top = 352
  end
  object CheckFileChangedTimer: TTimer
    Interval = 3000
    OnTimer = CheckFileChangedTimerTimer
    Left = 144
    Top = 352
  end
  object VirtualImageListToolbar: TVirtualImageList
    Images = <
      item
        CollectionIndex = 65
        CollectionName = 'header1'
        Name = 'header1'
      end
      item
        CollectionIndex = 66
        CollectionName = 'header2'
        Name = 'header2'
      end
      item
        CollectionIndex = 67
        CollectionName = 'header3'
        Name = 'header3'
      end
      item
        CollectionIndex = 73
        CollectionName = 'link'
        Name = 'link'
      end
      item
        CollectionIndex = 70
        CollectionName = 'image'
        Name = 'image'
      end
      item
        CollectionIndex = 63
        CollectionName = 'bold'
        Name = 'bold'
      end
      item
        CollectionIndex = 72
        CollectionName = 'italic'
        Name = 'italic'
      end
      item
        CollectionIndex = 64
        CollectionName = 'code'
        Name = 'code'
      end
      item
        CollectionIndex = 75
        CollectionName = 'unordered_list'
        Name = 'unordered_list'
      end
      item
        CollectionIndex = 74
        CollectionName = 'ordered_list'
        Name = 'ordered_list'
      end
      item
        CollectionIndex = 71
        CollectionName = 'blockquote'
        Name = 'blockquote'
      end
      item
        CollectionIndex = 69
        CollectionName = 'horizontal_rule'
        Name = 'horizontal_rule'
      end
      item
        CollectionIndex = 68
        CollectionName = 'help'
        Name = 'help'
      end
      item
        CollectionIndex = 77
        CollectionName = 'subscript'
        Name = 'subscript'
      end
      item
        CollectionIndex = 78
        CollectionName = 'superscript'
        Name = 'superscript'
      end
      item
        CollectionIndex = 80
        CollectionName = 'marker'
        Name = 'marker'
      end
      item
        CollectionIndex = 81
        CollectionName = 'table'
        Name = 'table'
      end
      item
        CollectionIndex = 82
        CollectionName = 'strike'
        Name = 'strike'
      end
      item
        CollectionIndex = 83
        CollectionName = 'underline'
        Name = 'underline'
      end>
    ImageCollection = dmResources.SVGIconImageCollection
    Width = 20
    Height = 20
    Left = 448
    Top = 432
  end
  object ToolbarActionList: TActionList
    Images = VirtualImageListToolbar
    Left = 312
    Top = 432
    object acHeader1: TAction
      Category = 'MarkdownText'
      Caption = 'Header 1'
      Hint = 'Header 1'
      ImageIndex = 0
      ImageName = 'header1'
      OnExecute = acHeader1Execute
      OnUpdate = acToolbarUpdate
    end
    object acHeader2: TAction
      Category = 'MarkdownText'
      Caption = 'Header 2'
      Hint = 'Header 2'
      ImageIndex = 1
      ImageName = 'header2'
      OnExecute = acHeader2Execute
      OnUpdate = acToolbarUpdate
    end
    object acHeader3: TAction
      Category = 'MarkdownText'
      Caption = 'Header 3'
      Hint = 'Header 3'
      ImageIndex = 2
      ImageName = 'header3'
      OnExecute = acHeader3Execute
      OnUpdate = acToolbarUpdate
    end
    object acLink: TAction
      Category = 'MarkdownText'
      Caption = 'Link'
      Hint = 'Link'
      ImageIndex = 3
      ImageName = 'link'
      ShortCut = 16460
      OnExecute = acLinkExecute
      OnUpdate = acToolbarUpdate
    end
    object acImage: TAction
      Category = 'MarkdownText'
      Caption = 'Image'
      Hint = 'Image'
      ImageIndex = 4
      ImageName = 'image'
      ShortCut = 16464
      OnExecute = acImageExecute
      OnUpdate = acToolbarUpdate
    end
    object acTable: TAction
      Category = 'MarkdownText'
      Caption = 'Table'
      Hint = 'Table'
      ImageIndex = 16
      ImageName = 'table'
      ShortCut = 49236
      OnExecute = acTableExecute
      OnUpdate = acToolbarUpdate
    end
    object acBold: TAction
      Category = 'MarkdownText'
      Caption = 'Bold'
      Hint = 'Bold'
      ImageIndex = 5
      ImageName = 'bold'
      ShortCut = 16450
      OnExecute = acBoldExecute
      OnUpdate = acToolbarUpdate
    end
    object acItalic: TAction
      Category = 'MarkdownText'
      Caption = 'Italic'
      Hint = 'Italic'
      ImageIndex = 6
      ImageName = 'italic'
      ShortCut = 16457
      OnExecute = acItalicExecute
      OnUpdate = acToolbarUpdate
    end
    object acCode: TAction
      Category = 'MarkdownText'
      Caption = 'Code'
      Hint = 'Code'
      ImageIndex = 7
      ImageName = 'code'
      ShortCut = 49219
      OnExecute = acCodeExecute
      OnUpdate = acToolbarUpdate
    end
    object acSuperscript: TAction
      Category = 'MarkdownText'
      Hint = 'Superscript'
      ImageIndex = 14
      ImageName = 'superscript'
      OnExecute = acSuperscriptExecute
      OnUpdate = acToolbarUpdate
    end
    object acSubscript: TAction
      Category = 'MarkdownText'
      Hint = 'Subscript'
      ImageIndex = 13
      ImageName = 'subscript'
      OnExecute = acSubscriptExecute
      OnUpdate = acToolbarUpdate
    end
    object acUnorderedList: TAction
      Category = 'MarkdownText'
      Caption = 'Unordered List'
      Hint = 'Unordered List'
      ImageIndex = 8
      ImageName = 'unordered_list'
      ShortCut = 16469
      OnExecute = acUnorderedListExecute
      OnUpdate = acToolbarUpdate
    end
    object acOrderedList: TAction
      Category = 'MarkdownText'
      Caption = 'Ordered List'
      Hint = 'Ordered List'
      ImageIndex = 9
      ImageName = 'ordered_list'
      ShortCut = 16463
      OnExecute = acOrderedListExecute
      OnUpdate = acToolbarUpdate
    end
    object acBlockquote: TAction
      Category = 'MarkdownText'
      Caption = 'Block quote'
      Hint = 'Block quote'
      ImageIndex = 10
      ImageName = 'blockquote'
      ShortCut = 16459
      OnExecute = acBlockquoteExecute
      OnUpdate = acToolbarUpdate
    end
    object acHorizontalRule: TAction
      Category = 'MarkdownText'
      Caption = 'Horizontal Rule'
      Hint = 'Horizontal Rule'
      ImageIndex = 11
      ImageName = 'horizontal_rule'
      ShortCut = 49234
      OnExecute = acHorizontalRuleExecute
      OnUpdate = acToolbarUpdate
    end
    object acHelp: TAction
      Category = 'MarkdownText'
      Caption = 'Example'
      Hint = 'Show an example of markdown file'
      ImageIndex = 12
      ImageName = 'help'
      ShortCut = 112
      OnExecute = acHelpExecute
      OnUpdate = acHelpUpdate
    end
    object acMarker: TAction
      Category = 'MarkdownText'
      Caption = 'Marker'
      Hint = 'Marker'
      ImageIndex = 15
      ImageName = 'marker'
      ShortCut = 49229
      OnExecute = acMarkerExecute
      OnUpdate = acToolbarUpdate
    end
    object acStrike: TAction
      Category = 'MarkdownText'
      Caption = 'Strike'
      Hint = 'Strike'
      ImageIndex = 17
      ImageName = 'strike'
      ShortCut = 49235
      OnExecute = acStrikeExecute
      OnUpdate = acToolbarUpdate
    end
    object acUnderline: TAction
      Category = 'MarkdownText'
      Caption = 'Underline'
      Hint = 'Underline'
      ImageIndex = 18
      ImageName = 'underline'
      ShortCut = 49237
      OnExecute = acUnderlineExecute
      OnUpdate = acToolbarUpdate
    end
  end
end
