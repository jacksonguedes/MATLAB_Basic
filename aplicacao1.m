function varargout = aplicacao1(varargin)
% APLICACAO1 MATLAB code for aplicacao1.fig
%      APLICACAO1, by itself, creates a new APLICACAO1 or raises the existing
%      singleton*.
%
%      H = APLICACAO1 returns the handle to a new APLICACAO1 or the handle to
%      the existing singleton*.
%
%      APLICACAO1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APLICACAO1.M with the given input arguments.
%
%      APLICACAO1('Property','Value',...) creates a new APLICACAO1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before aplicacao1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to aplicacao1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help aplicacao1

% Last Modified by GUIDE v2.5 18-Jun-2020 13:11:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @aplicacao1_OpeningFcn, ...
                   'gui_OutputFcn',  @aplicacao1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before aplicacao1 is made visible.
function aplicacao1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to aplicacao1 (see VARARGIN)

% Choose default command line output for aplicacao1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes aplicacao1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = aplicacao1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function vap_Callback(hObject, eventdata, handles)
% hObject    handle to vap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vap as text
%        str2double(get(hObject,'String')) returns contents of vap as a double

vp = str2double(get(hObject,'String')); %input damping
setappdata(0,'vp',vp);%save lika a global
% --- Executes during object creation, after setting all properties.
function vap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function juros_Callback(hObject, eventdata, handles)
% hObject    handle to juros (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of juros as text
%        str2double(get(hObject,'String')) returns contents of juros as a double
j = str2double(get(hObject,'String')); %input damping
setappdata(0,'j',j);%save lika a global

% --- Executes during object creation, after setting all properties.
function juros_CreateFcn(hObject, eventdata, handles)
% hObject    handle to juros (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tempo_Callback(hObject, eventdata, handles)
% hObject    handle to tempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tempo as text
%        str2double(get(hObject,'String')) returns contents of tempo as a double
t = str2double(get(hObject,'String')); %input damping
setappdata(0,'t',t);%save lika a global


% --- Executes during object creation, after setting all properties.
function tempo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close (aplicacao1);