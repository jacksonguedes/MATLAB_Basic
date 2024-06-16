function varargout = calculadora_guide(varargin)
% CALCULADORA_GUIDE MATLAB code for calculadora_guide.fig
%      CALCULADORA_GUIDE, by itself, creates a new CALCULADORA_GUIDE or raises the existing
%      singleton*.
%
%      H = CALCULADORA_GUIDE returns the handle to a new CALCULADORA_GUIDE or the handle to
%      the existing singleton*.
%
%      CALCULADORA_GUIDE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULADORA_GUIDE.M with the given input arguments.
%
%      CALCULADORA_GUIDE('Property','Value',...) creates a new CALCULADORA_GUIDE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculadora_guide_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculadora_guide_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculadora_guide

% Last Modified by GUIDE v2.5 23-Jun-2020 18:32:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculadora_guide_OpeningFcn, ...
                   'gui_OutputFcn',  @calculadora_guide_OutputFcn, ...
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


% --- Executes just before calculadora_guide is made visible.
function calculadora_guide_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculadora_guide (see VARARGIN)

% Choose default command line output for calculadora_guide
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculadora_guide wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculadora_guide_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function valor1_Callback(hObject, eventdata, handles)
% hObject    handle to valor1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valor1 as text
%        str2double(get(hObject,'String')) returns contents of valor1 as a double


% --- Executes during object creation, after setting all properties.
function valor1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valor1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valor2_Callback(hObject, eventdata, handles)
% hObject    handle to valor2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valor2 as text
%        str2double(get(hObject,'String')) returns contents of valor2 as a double


% --- Executes during object creation, after setting all properties.
function valor2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valor2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculo.
function calculo_Callback(hObject, eventdata, handles)
% hObject    handle to calculo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = str2num(get(handles.valor1,'String'));
b = str2num(get(handles.valor2,'String'));
c = a*b;
set(handles.resultado,'String',c);
