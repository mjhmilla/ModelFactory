%% ModelFactory
% Licensed under the zlib license. See LICENSE for more details.
%

function mainFig = ui_setupCustomOptions(mainFig)

txt_demark3 = uicontrol('Style', 'text',...
    'Parent', mainFig,...
    'String', '----------------------------------',...
    'Horizontalalignment','center',...
    'FontSize', 10,...
    'Backgroundcolor',[0.7 0.7 0.7],...
    'Units', 'normalized',...
    'Position', [0.03,0.19,0.15,.02]);

txt_CustomLengths = uicontrol('Style', 'text',...
    'Parent', mainFig,...
    'String', 'Custom Segment Lengths',...
    'Tag','txt_CustomLengths',...
    'Horizontalalignment','left',...
    'FontSize', 12,...
    'Backgroundcolor',[0.7 0.7 0.7],...
    'Units', 'normalized',...
    'Enable', 'off',...
    'Position', [0.02,0.17,0.15,.02]);

popup_CustomLengths = uicontrol('Style', 'pushbutton',...
    'String','Reload',...
    'Tag','popup_CustomLengths',...
    'Parent', mainFig,...
    'FontSize', 12,...
    'Enable','off',...
    'Units', 'normalized',...
    'Position', [0.16,0.17,0.04,0.02], ...
    'Callback',  @ui_readCustomLengthsFile);

txt_customSegmentLengthsFileName = uicontrol('Style', 'text',...
    'Parent', mainFig,...
    'Tag','txt_customSegmentLengthsFileName',...
    'String', '',...
    'Horizontalalignment','left',...
    'FontSize', 8,...
    'Backgroundcolor',[0.7 0.7 0.7],...
    'Units', 'normalized',...
    'Position', [0.03,0.15,0.15,.02]);

%%%%%%%%%%%%%% CUSTOM CONSTRAINTS %%%%%%%%%%%%%%
txt_CustomConstraints = uicontrol('Style', 'text',...
    'Parent', mainFig,...
    'String', 'Custom Constraints',...
    'Tag','txt_CustomConstraints',...
    'Horizontalalignment','left',...
    'FontSize', 12,...
    'Backgroundcolor',[0.7 0.7 0.7],...
    'Units', 'normalized',...
    'Enable', 'off',...
    'Position', [0.02,0.13,0.15,.02]);

popup_CustomConstraints = uicontrol('Style', 'pushbutton',...
    'String','Reload',...
    'Tag','popup_CustomLengths',...
    'Parent', mainFig,...
    'FontSize', 12,...
    'Enable','off',...
    'Units', 'normalized',...
    'Position', [0.16,0.13,0.04,0.02], ...
    'Callback',  @ui_readCustomConstraintsFile);
 
txt_customConstraintsFileName = uicontrol('Style', 'text',...
    'Parent', mainFig,...
    'Tag','txt_customConstraintsFileName',...
    'String', '',...
    'Horizontalalignment','left',...
    'FontSize', 8,...
    'Backgroundcolor',[0.7 0.7 0.7],...
    'Units', 'normalized',...
    'Position', [0.03,0.11,0.15,.02]);
 
%%%%%%%%%%%%%% CUSTOM MARKERS %%%%%%%%%%%%%%
txt_CustomMarkers = uicontrol('Style', 'text',...
    'Parent', mainFig,...
    'String', 'Custom Markers',...
    'Tag','txt_CustomMarkers',...
    'Horizontalalignment','left',...
    'FontSize', 12,...
    'Backgroundcolor',[0.7 0.7 0.7],...
    'Units', 'normalized',...
    'Enable', 'off',...
    'Position', [0.02,0.09,0.15,.02]);

popup_CustomMarkers = uicontrol('Style', 'pushbutton',...
    'String','Reload',...
    'Tag','popup_CustomMarkers',...
    'Parent', mainFig,...
    'FontSize', 12,...
    'Enable','off',...
    'Units', 'normalized',...
    'Position', [0.16,0.09,0.04,0.02], ...
    'Callback',  @ui_readCustomMarkersFile);

txt_customMarkersFileName = uicontrol('Style', 'text',...
    'Parent', mainFig,...
    'Tag','txt_customMarkersFileName',...
    'String', '',...
    'Horizontalalignment','left',...
    'FontSize', 8,...
    'Backgroundcolor',[0.7 0.7 0.7],...
    'Units', 'normalized',...
    'Position', [0.03,0.07,0.15,.02]);