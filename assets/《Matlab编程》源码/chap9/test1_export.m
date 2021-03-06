function varargout = test1_export(varargin)
% TEST1_EXPORT M-file for test1_export.fig
%      TEST1_EXPORT, by itself, creates a new TEST1_EXPORT or raises the existing
%      singleton*.
%
%      H = TEST1_EXPORT returns the handle to a new TEST1_EXPORT or the handle to
%      the existing singleton*.
%
%      TEST1_EXPORT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST1_EXPORT.M with the given input arguments.
%
%      TEST1_EXPORT('Property','Value',...) creates a new TEST1_EXPORT or raises
%      the existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test1_export_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test1_export_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test1_export

% Last Modified by GUIDE v2.5 08-Feb-2004 17:48:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test1_export_OpeningFcn, ...
                   'gui_OutputFcn',  @test1_export_OutputFcn, ...
                   'gui_LayoutFcn',  @test1_export_LayoutFcn, ...
                   'gui_Callback',   []);
if nargin
   if isstr(varargin{1})
       gui_State.gui_Callback = str2func(varargin{1});
   elseif varargin{1}==gcbo
       gui_State.gui_Callback = str2func([varargin{1}.Tag, '_', varargin{end}]);
   end
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before test1_export is made visible.
function test1_export_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test1_export (see VARARGIN)

% Choose default command line output for test1_export
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

if strcmp(get(hObject,'Visible'),'off')
    initialize_gui(hObject, handles);
end

% UIWAIT makes test1_export wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test1_export_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function density_CreateFcn(hObject, eventdata, handles)
% hObject    handle to density (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function density_Callback(hObject, eventdata, handles)
% hObject    handle to density (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of density as text
%        str2double(get(hObject,'String')) returns contents of density as a double
density = str2double(get(hObject, 'String'));
if isnan(density)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

handles.metricdata.density = density;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function volume_Callback(hObject, eventdata, handles)
% hObject    handle to volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of volume as text
%        str2double(get(hObject,'String')) returns contents of volume as a double
volume = str2double(get(hObject, 'String'));
if isnan(volume)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

handles.metricdata.volume = volume;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function mass_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.



function mass_Callback(hObject, eventdata, handles)
% hObject    handle to mass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mass as text
%        str2double(get(hObject,'String')) returns contents of mass as a double


% --- Executes on button press in english.
function english_Callback(hObject, eventdata, handles)
% hObject    handle to english (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of english

set(handles.english, 'Value', 1);
set(handles.si, 'Value', 0);

set(handles.text4, 'String', 'lb/cu.in');
set(handles.text5, 'String', 'cu.in');
set(handles.text6, 'String', 'lb');

% --- Executes on button press in si.
function si_Callback(hObject, eventdata, handles)
% hObject    handle to si (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of si

set(handles.english, 'Value', 0);
set(handles.si, 'Value', 1);

set(handles.text4, 'String', 'kg/cu.m');
set(handles.text5, 'String', 'cu.m');
set(handles.text6, 'String', 'kg');

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

mass = handles.metricdata.density * handles.metricdata.volume;
set(handles.mass, 'String', mass);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

initialize_gui(gcbf, handles);

function initialize_gui(fig_handle, handles)
handles.metricdata.density = 0;
handles.metricdata.volume  = 0;

set(handles.density, 'String', handles.metricdata.density);
set(handles.volume,  'String', handles.metricdata.volume);
set(handles.mass, 'String', 0);

set(handles.english, 'Value', 1);
set(handles.si,      'Value', 0);

set(handles.text4, 'String', 'lb/cu.in');
set(handles.text5, 'String', 'cu.in');
set(handles.text6, 'String', 'lb');

% Update handles structure
guidata(handles.figure1, handles);


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function frame2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frame2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




% --- Creates and returns a handle to the GUI figure. 
function h1 = test1_export_LayoutFcn(policy)
% policy - create a new figure or use a singleton. 'new' or 'reuse'.

persistent hsingleton;
if strcmpi(policy, 'reuse') & ishandle(hsingleton)
    h1 = hsingleton;
    return;
end

appdata = [];
appdata.GUIDEOptions = struct(...
    'active_h', [], ...
    'taginfo', struct(...
    'figure', 2, ...
    'pushbutton', 9, ...
    'text', 15, ...
    'edit', 6, ...
    'frame', 4, ...
    'radiobutton', [], ...
    'axes', []), ...
    'override', 0, ...
    'release', 13, ...
    'resize', 'on', ...
    'accessibility', 'callback', ...
    'mfile', 1, ...
    'callbacks', 1, ...
    'singleton', 1, ...
    'syscolorfig', 1, ...
    'blocking', 0, ...
    'lastSavedFile', 'D:\book\matlab\3e\rev1\chap9\test1.m');
appdata.UsedByGUIData_m = struct(...
    'figure1', [], ...
    'text1', [], ...
    'pushbutton1', 102.001098632813, ...
    'output', []);
appdata.lastValidTag = 'figure1';

h1 = figure(...
'PaperUnits',get(0,'defaultfigurePaperUnits'),...
'Color',[0.831372549019608 0.815686274509804 0.784313725490196],...
'Colormap',[0 0 0.5625;0 0 0.625;0 0 0.6875;0 0 0.75;0 0 0.8125;0 0 0.875;0 0 0.9375;0 0 1;0 0.0625 1;0 0.125 1;0 0.1875 1;0 0.25 1;0 0.3125 1;0 0.375 1;0 0.4375 1;0 0.5 1;0 0.5625 1;0 0.625 1;0 0.6875 1;0 0.75 1;0 0.8125 1;0 0.875 1;0 0.9375 1;0 1 1;0.0625 1 1;0.125 1 0.9375;0.1875 1 0.875;0.25 1 0.8125;0.3125 1 0.75;0.375 1 0.6875;0.4375 1 0.625;0.5 1 0.5625;0.5625 1 0.5;0.625 1 0.4375;0.6875 1 0.375;0.75 1 0.3125;0.8125 1 0.25;0.875 1 0.1875;0.9375 1 0.125;1 1 0.0625;1 1 0;1 0.9375 0;1 0.875 0;1 0.8125 0;1 0.75 0;1 0.6875 0;1 0.625 0;1 0.5625 0;1 0.5 0;1 0.4375 0;1 0.375 0;1 0.3125 0;1 0.25 0;1 0.1875 0;1 0.125 0;1 0.0625 0;1 0 0;0.9375 0 0;0.875 0 0;0.8125 0 0;0.75 0 0;0.6875 0 0;0.625 0 0;0.5625 0 0],...
'Dockable','on',...
'IntegerHandle','off',...
'InvertHardcopy',get(0,'defaultfigureInvertHardcopy'),...
'MenuBar','none',...
'Name','test1',...
'NumberTitle','off',...
'PaperPosition',get(0,'defaultfigurePaperPosition'),...
'PaperSize',[20.98404194812 29.67743169791],...
'PaperType',get(0,'defaultfigurePaperType'),...
'Position',[544 488 361 121],...
'Renderer',get(0,'defaultfigureRenderer'),...
'RendererMode','manual',...
'Resize','on',...
'CreateFcn', {@local_CreateFcn, 'test1_export(''figure1_CreateFcn'',gcbo,[],guidata(gcbo))', appdata} ,...
'HandleVisibility','callback',...
'Tag','figure1',...
'UserData',[],...
'Behavior',get(0,'defaultfigureBehavior'),...
'Visible','off');

appdata = [];
appdata.lastValidTag = 'frame3';

h2 = uicontrol(...
'Parent',h1,...
'CData',[],...
'ListboxTop',0,...
'Position',[222 41 132 71],...
'String',{  '' },...
'Style','frame',...
'Tag','frame3',...
'UserData',[],...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'frame2';

h3 = uicontrol(...
'Parent',h1,...
'ListboxTop',0,...
'Position',[10 10 202 102],...
'String',{  '' },...
'Style','frame',...
'CreateFcn', {@local_CreateFcn, 'test1_export(''frame2_CreateFcn'',gcbo,[],guidata(gcbo))', appdata} ,...
'Tag','frame2',...
'Behavior',get(0,'defaultuicontrolBehavior'));

appdata = [];
appdata.lastValidTag = 'text1';

h4 = uicontrol(...
'Parent',h1,...
'CData',[],...
'HorizontalAlignment','right',...
'ListboxTop',0,...
'Position',[17 82 60 15],...
'String','Density(D):',...
'Style','text',...
'Tag','text1',...
'UserData',[],...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'text2';

h5 = uicontrol(...
'Parent',h1,...
'CData',[],...
'HorizontalAlignment','right',...
'ListboxTop',0,...
'Position',[17 51 60 15],...
'String','Volume(V):',...
'Style','text',...
'Tag','text2',...
'UserData',[],...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'density';

h6 = uicontrol(...
'Parent',h1,...
'BackgroundColor',[1 1 1],...
'Callback','test1_export(''density_Callback'',gcbo,[],guidata(gcbo))',...
'HorizontalAlignment','right',...
'ListboxTop',0,...
'Position',[85 80 70 21],...
'String','0',...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, 'test1_export(''density_CreateFcn'',gcbo,[],guidata(gcbo))', appdata} ,...
'Tag','density',...
'Behavior',get(0,'defaultuicontrolBehavior'));

appdata = [];
appdata.lastValidTag = 'volume';

h7 = uicontrol(...
'Parent',h1,...
'BackgroundColor',[1 1 1],...
'Callback','test1_export(''volume_Callback'',gcbo,[],guidata(gcbo))',...
'HorizontalAlignment','right',...
'ListboxTop',0,...
'Position',[85 49 70 21],...
'String','0',...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, 'test1_export(''volume_CreateFcn'',gcbo,[],guidata(gcbo))', appdata} ,...
'Tag','volume',...
'Behavior',get(0,'defaultuicontrolBehavior'));

appdata = [];
appdata.lastValidTag = 'english';

h8 = uicontrol(...
'Parent',h1,...
'Callback','test1_export(''english_Callback'',gcbo,[],guidata(gcbo))',...
'CData',[],...
'HorizontalAlignment','left',...
'ListboxTop',0,...
'Position',[232 83 115 15],...
'String','English Unit System',...
'Style','radiobutton',...
'Value',1,...
'Tag','english',...
'UserData',[],...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'si';

h9 = uicontrol(...
'Parent',h1,...
'Callback','test1_export(''si_Callback'',gcbo,[],guidata(gcbo))',...
'CData',[],...
'HorizontalAlignment','left',...
'ListboxTop',0,...
'Position',[232 52 115 15],...
'String','S.I. Unit System',...
'Style','radiobutton',...
'Tag','si',...
'UserData',[],...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'mass';

h10 = uicontrol(...
'Parent',h1,...
'Callback','guidetemplate1(''mass_Callback'',gcbo,[],guidata(gcbo))',...
'CData',[],...
'Enable','inactive',...
'HorizontalAlignment','right',...
'ListboxTop',0,...
'Position',[85 16 66 15],...
'String','0',...
'Style','text',...
'CreateFcn', {@local_CreateFcn, 'test1_export(''mass_CreateFcn'',gcbo,[],guidata(gcbo))', appdata} ,...
'Tag','mass',...
'UserData',[],...
'Behavior',get(0,'defaultuicontrolBehavior'));

appdata = [];
appdata.lastValidTag = 'text3';

h11 = uicontrol(...
'Parent',h1,...
'CData',[],...
'HorizontalAlignment','right',...
'ListboxTop',0,...
'Position',[17 16 60 15],...
'String','Mass(D*V):',...
'Style','text',...
'Tag','text3',...
'UserData',[],...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'pushbutton1';

h12 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'Callback','test1_export(''pushbutton1_Callback'',gcbo,[],guidata(gcbo))',...
'CData',[],...
'ListboxTop',0,...
'Position',[41.5 -0.0625 10.1666666666667 1.3125],...
'String','Calculate',...
'Tag','pushbutton1',...
'UserData',[],...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'pushbutton2';

h13 = uicontrol(...
'Parent',h1,...
'Callback','test1_export(''pushbutton2_Callback'',gcbo,[],guidata(gcbo))',...
'CData',[],...
'ListboxTop',0,...
'Position',[300 20 61 21],...
'String','Reset',...
'Tag','pushbutton2',...
'UserData',[],...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'text6';

h14 = uicontrol(...
'Parent',h1,...
'CData',[],...
'HorizontalAlignment','left',...
'ListboxTop',0,...
'Position',[165 16 35 15],...
'String','lb',...
'Style','text',...
'Tag','text6',...
'UserData',[],...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'text4';

h15 = uicontrol(...
'Parent',h1,...
'HorizontalAlignment','left',...
'ListboxTop',0,...
'Position',[165 82 40 15],...
'String','lb/cu.in',...
'Style','text',...
'Tag','text4',...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'text5';

h16 = uicontrol(...
'Parent',h1,...
'HorizontalAlignment','left',...
'ListboxTop',0,...
'Position',[165 51 35 15],...
'String','cu.in',...
'Style','text',...
'Tag','text5',...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'text13';

h17 = uicontrol(...
'Parent',h1,...
'ListboxTop',0,...
'Position',[18 104 54 15],...
'String','Measures',...
'Style','text',...
'Tag','text13',...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'text14';

h18 = uicontrol(...
'Parent',h1,...
'ListboxTop',0,...
'Position',[230 104 30 15],...
'String','Units',...
'Style','text',...
'Tag','text14',...
'Behavior',get(0,'defaultuicontrolBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

appdata = [];
appdata.lastValidTag = 'axes1';

h19 = axes(...
'Parent',h1,...
'Units','characters',...
'Position',[28.5 -0.0625 8.33333333333333 3.125],...
'CameraPosition',[0.5 0.5 9.16025403784439],...
'CameraPositionMode',get(0,'defaultaxesCameraPositionMode'),...
'Color',get(0,'defaultaxesColor'),...
'ColorOrder',get(0,'defaultaxesColorOrder'),...
'LooseInset',[7.82166666666667 0.831875 5.71583333333333 0.5671875],...
'XColor',get(0,'defaultaxesXColor'),...
'YColor',get(0,'defaultaxesYColor'),...
'ZColor',get(0,'defaultaxesZColor'),...
'Tag','axes1',...
'Behavior',get(0,'defaultaxesBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

h20 = get(h19,'title');

set(h20,...
'Parent',h19,...
'Color',[0 0 0],...
'HorizontalAlignment','center',...
'Position',[0.490000000000001 1.15 1.00005459937205],...
'VerticalAlignment','bottom',...
'HandleVisibility','off',...
'Behavior',struct());

h21 = get(h19,'xlabel');

set(h21,...
'Parent',h19,...
'Color',[0 0 0],...
'HorizontalAlignment','center',...
'Position',[0.490000000000001 -0.53 1.00005459937205],...
'VerticalAlignment','cap',...
'HandleVisibility','off',...
'Behavior',struct());

h22 = get(h19,'ylabel');

set(h22,...
'Parent',h19,...
'Color',[0 0 0],...
'HorizontalAlignment','center',...
'Position',[-0.69 0.47 1.00005459937205],...
'Rotation',90,...
'VerticalAlignment','bottom',...
'HandleVisibility','off',...
'Behavior',struct());

h23 = get(h19,'zlabel');

set(h23,...
'Parent',h19,...
'Color',[0 0 0],...
'HorizontalAlignment','right',...
'Position',[-3.43 2.41 1.00005459937205],...
'HandleVisibility','off',...
'Behavior',struct(),...
'Visible','off');

appdata = [];
appdata.lastValidTag = 'axes2';

h24 = axes(...
'Parent',h1,...
'Units','characters',...
'Position',[33.1666666666667 -0.0625 8.33333333333333 3.125],...
'CameraPosition',[0.5 0.5 9.16025403784439],...
'CameraPositionMode',get(0,'defaultaxesCameraPositionMode'),...
'Color',get(0,'defaultaxesColor'),...
'ColorOrder',get(0,'defaultaxesColorOrder'),...
'LooseInset',[7.82166666666667 0.831875 5.71583333333333 0.5671875],...
'XColor',get(0,'defaultaxesXColor'),...
'YColor',get(0,'defaultaxesYColor'),...
'ZColor',get(0,'defaultaxesZColor'),...
'Tag','axes2',...
'Behavior',get(0,'defaultaxesBehavior'),...
'CreateFcn', {@local_CreateFcn, '', appdata} );

h25 = get(h24,'title');

set(h25,...
'Parent',h24,...
'Color',[0 0 0],...
'HorizontalAlignment','center',...
'Position',[0.49 1.15 1.00005459937205],...
'VerticalAlignment','bottom',...
'HandleVisibility','off',...
'Behavior',struct());

h26 = get(h24,'xlabel');

set(h26,...
'Parent',h24,...
'Color',[0 0 0],...
'HorizontalAlignment','center',...
'Position',[0.49 -0.53 1.00005459937205],...
'VerticalAlignment','cap',...
'HandleVisibility','off',...
'Behavior',struct());

h27 = get(h24,'ylabel');

set(h27,...
'Parent',h24,...
'Color',[0 0 0],...
'HorizontalAlignment','center',...
'Position',[-0.69 0.47 1.00005459937205],...
'Rotation',90,...
'VerticalAlignment','bottom',...
'HandleVisibility','off',...
'Behavior',struct());

h28 = get(h24,'zlabel');

set(h28,...
'Parent',h24,...
'Color',[0 0 0],...
'HorizontalAlignment','right',...
'Position',[-3.99 2.41 1.00005459937205],...
'HandleVisibility','off',...
'Behavior',struct(),...
'Visible','off');


hsingleton = h1;


% --- Set application data first then calling the CreateFcn. 
function local_CreateFcn(hObject, eventdata, createfcn, appdata)

if ~isempty(appdata)
   names = fieldnames(appdata);
   for i=1:length(names)
       name = char(names(i));
       setappdata(hObject, name, getfield(appdata,name));
   end
end

if ~isempty(createfcn)
   eval(createfcn);
end


% --- Handles default GUIDE GUI creation and callback dispatch
function varargout = gui_mainfcn(gui_State, varargin)


%   GUI_MAINFCN provides these command line APIs for dealing with GUIs
%
%      TEST1_EXPORT, by itself, creates a new TEST1_EXPORT or raises the existing
%      singleton*.
%
%      H = TEST1_EXPORT returns the handle to a new TEST1_EXPORT or the handle to
%      the existing singleton*.
%
%      TEST1_EXPORT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST1_EXPORT.M with the given input arguments.
%
%      TEST1_EXPORT('Property','Value',...) creates a new TEST1_EXPORT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".

%   Copyright 1984-2002 The MathWorks, Inc.
%   $Revision: 1.4.6.5 $ $Date: 2003/08/11 16:07:29 $

gui_StateFields =  {'gui_Name'
                    'gui_Singleton'
                    'gui_OpeningFcn'
                    'gui_OutputFcn'
                    'gui_LayoutFcn'
                    'gui_Callback'};
gui_Mfile = '';
for i=1:length(gui_StateFields)
    if ~isfield(gui_State, gui_StateFields{i})
        error('Could not find field %s in the gui_State struct in GUI M-file %s', gui_StateFields{i}, gui_Mfile);        
    elseif isequal(gui_StateFields{i}, 'gui_Name')
        gui_Mfile = [getfield(gui_State, gui_StateFields{i}), '.m'];
    end
end

numargin = length(varargin);

if numargin == 0
    % TEST1_EXPORT
    % create the GUI
    gui_Create = 1;
elseif ishandle(varargin{1}) & varargin{1}==gcbo
    % TEST1_EXPORT(ACTIVEX,...)    
    vin{1} = gui_State.gui_Name;
    vin{2} = [get(varargin{1}.Peer, 'Tag'), '_', varargin{end}];
    vin{3} = varargin{1};
    vin{4} = varargin{end-1};
    vin{5} = guidata(varargin{1}.Peer);
    feval(vin{:});
    return;
elseif ischar(varargin{1}) & ishandle(varargin{2})
    % TEST1_EXPORT('CALLBACK',hObject,eventData,handles,...)
    gui_Create = 0;
else
    % TEST1_EXPORT(...)
    % create the GUI and hand varargin to the openingfcn
    gui_Create = 1;
end

if gui_Create == 0
    varargin{1} = gui_State.gui_Callback;
    if nargout
        [varargout{1:nargout}] = feval(varargin{:});
    else
        feval(varargin{:});
    end
else
    if gui_State.gui_Singleton
        gui_SingletonOpt = 'reuse';
    else
        gui_SingletonOpt = 'new';
    end
    
    % Open fig file with stored settings.  Note: This executes all component
    % specific CreateFunctions with an empty HANDLES structure.
    
    % Do feval on layout code in m-file if it exists
    if ~isempty(gui_State.gui_LayoutFcn)
        gui_hFigure = feval(gui_State.gui_LayoutFcn, gui_SingletonOpt);
        % openfig (called by local_openfig below) does this for guis without
        % the LayoutFcn. Be sure to do it here so guis show up on screen.
        movegui(gui_hFigure,'onscreen')
    else
        gui_hFigure = local_openfig(gui_State.gui_Name, gui_SingletonOpt);            
        % If the figure has InGUIInitialization it was not completely created
        % on the last pass.  Delete this handle and try again.
        if isappdata(gui_hFigure, 'InGUIInitialization')
            delete(gui_hFigure);
            gui_hFigure = local_openfig(gui_State.gui_Name, gui_SingletonOpt);            
        end
    end
    
    % Set flag to indicate starting GUI initialization
    setappdata(gui_hFigure,'InGUIInitialization',1);

    % Fetch GUIDE Application options
    gui_Options = getappdata(gui_hFigure,'GUIDEOptions');
    
    if ~isappdata(gui_hFigure,'GUIOnScreen')
        % Adjust background color
        if gui_Options.syscolorfig 
            set(gui_hFigure,'Color', get(0,'DefaultUicontrolBackgroundColor'));
        end

        % Generate HANDLES structure and store with GUIDATA
        guidata(gui_hFigure, guihandles(gui_hFigure));
    end
    
    % If user specified 'Visible','off' in p/v pairs, don't make the figure
    % visible.
    gui_MakeVisible = 1;
    for ind=1:2:length(varargin)
        if length(varargin) == ind
            break;
        end
        len1 = min(length('visible'),length(varargin{ind}));
        len2 = min(length('off'),length(varargin{ind+1}));
        if ischar(varargin{ind}) & ischar(varargin{ind+1}) & ...
                strncmpi(varargin{ind},'visible',len1) & len2 > 1
            if strncmpi(varargin{ind+1},'off',len2)
                gui_MakeVisible = 0;
            elseif strncmpi(varargin{ind+1},'on',len2)
                gui_MakeVisible = 1;
            end
        end
    end
    
    % Check for figure param value pairs
    for index=1:2:length(varargin)
        if length(varargin) == index
            break;
        end
        try, set(gui_hFigure, varargin{index}, varargin{index+1}), catch, break, end
    end

    % If handle visibility is set to 'callback', turn it on until finished
    % with OpeningFcn
    gui_HandleVisibility = get(gui_hFigure,'HandleVisibility');
    if strcmp(gui_HandleVisibility, 'callback')
        set(gui_hFigure,'HandleVisibility', 'on');
    end
    
    feval(gui_State.gui_OpeningFcn, gui_hFigure, [], guidata(gui_hFigure), varargin{:});
    
    if ishandle(gui_hFigure)
        % Update handle visibility
        set(gui_hFigure,'HandleVisibility', gui_HandleVisibility);
        
        % Make figure visible
        if gui_MakeVisible
            set(gui_hFigure, 'Visible', 'on')
            if gui_Options.singleton 
                setappdata(gui_hFigure,'GUIOnScreen', 1);
            end
        end

        % Done with GUI initialization
        rmappdata(gui_hFigure,'InGUIInitialization');
    end
    
    % If handle visibility is set to 'callback', turn it on until finished with
    % OutputFcn
    if ishandle(gui_hFigure)
        gui_HandleVisibility = get(gui_hFigure,'HandleVisibility');
        if strcmp(gui_HandleVisibility, 'callback')
            set(gui_hFigure,'HandleVisibility', 'on');
        end
        gui_Handles = guidata(gui_hFigure);
    else
        gui_Handles = [];
    end
    
    if nargout
        [varargout{1:nargout}] = feval(gui_State.gui_OutputFcn, gui_hFigure, [], gui_Handles);
    else
        feval(gui_State.gui_OutputFcn, gui_hFigure, [], gui_Handles);
    end
    
    if ishandle(gui_hFigure)
        set(gui_hFigure,'HandleVisibility', gui_HandleVisibility);
    end
end    

function gui_hFigure = local_openfig(name, singleton)

% openfig with three arguments was new from R13. Try to call that first, if
% failed, try the old openfig.
try 
    gui_hFigure = openfig(name, singleton, 'auto');
catch
    % OPENFIG did not accept 3rd input argument until R13,
    % toggle default figure visible to prevent the figure
    % from showing up too soon.
    gui_OldDefaultVisible = get(0,'defaultFigureVisible');
    set(0,'defaultFigureVisible','off');
    gui_hFigure = openfig(name, singleton);
    set(0,'defaultFigureVisible',gui_OldDefaultVisible);
end

