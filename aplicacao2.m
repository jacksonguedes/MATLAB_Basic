function varargout = aplicacao2(varargin)
% APLICACAO2 MATLAB code for aplicacao2.fig
%      APLICACAO2, by itself, creates a new APLICACAO2 or raises the existing
%      singleton*.
%
%      H = APLICACAO2 returns the handle to a new APLICACAO2 or the handle to
%      the existing singleton*.
%
%      APLICACAO2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APLICACAO2.M with the given input arguments.
%
%      APLICACAO2('Property','Value',...) creates a new APLICACAO2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before aplicacao2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to aplicacao2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help aplicacao2

% Last Modified by GUIDE v2.5 18-Jun-2020 13:12:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @aplicacao2_OpeningFcn, ...
                   'gui_OutputFcn',  @aplicacao2_OutputFcn, ...
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


% --- Executes just before aplicacao2 is made visible.
function aplicacao2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to aplicacao2 (see VARARGIN)

% Choose default command line output for aplicacao2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes aplicacao2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = aplicacao2_OutputFcn(hObject, eventdata, handles) 
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

vp2 = str2double(get(hObject,'String')); %input damping
setappdata(0,'vp2',vp2);%save lika a global


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
j2 = str2num(get(hObject,'String')); %input damping
setappdata(0,'j2',j2);%save lika a global

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
t2 = str2num(get(hObject,'String')); %input damping
setappdata(0,'t2',t2);%save lika a global


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
close (aplicacao2);
