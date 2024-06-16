function varargout = gerar_sinal(varargin)
% GERAR_SINAL MATLAB code for gerar_sinal.fig
%      GERAR_SINAL, by itself, creates a new GERAR_SINAL or raises the existing
%      singleton*.
%
%      H = GERAR_SINAL returns the handle to a new GERAR_SINAL or the handle to
%      the existing singleton*.
%
%      GERAR_SINAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GERAR_SINAL.M with the given input arguments.
%
%      GERAR_SINAL('Property','Value',...) creates a new GERAR_SINAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gerar_sinal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gerar_sinal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gerar_sinal

% Last Modified by GUIDE v2.5 18-Jun-2020 09:57:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gerar_sinal_OpeningFcn, ...
                   'gui_OutputFcn',  @gerar_sinal_OutputFcn, ...
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


% --- Executes just before gerar_sinal is made visible.
function gerar_sinal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gerar_sinal (see VARARGIN)

% Choose default command line output for gerar_sinal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gerar_sinal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gerar_sinal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in menu.
function menu_Callback(hObject, eventdata, handles)
% hObject    handle to menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from menu

% val = get(hObject,'Value')
% switch val
%     case 1
%         %seno
%     case 2
%         %cosseno
%     case 3
%         %tangente
%     case 4
%         %aleatorio
%     otherwise  
% end


% --- Executes during object creation, after setting all properties.
function menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


val = get(handles.menu,'Value');
A = str2num(get(handles.amplitude,'String')) %read the sampling frequency
F = str2num(get(handles.frequencia,'String'))   %read sampling number
if val ==1
    
    t=0:0.01:10;
    x = A*sin(pi*2*F*t);
    
    %Gráfico
    axes(handles.axes1);
    
    plot(t,x,'b','linewidth',2);
    xlabel('Tempo (s)');
    ylabel('Seno');
    guidata(hObject,handles);
elseif val == 2;
    t=0:0.01:10;
    x = A*cos(pi*2*F*t);
    
    %Gráfico
    axes(handles.axes1);
    
    plot(t,x,'b','linewidth',2);
    xlabel('Tempo (s)');
    ylabel('Cosseno');
    guidata(hObject,handles);

elseif val == 3;
    t=0:0.01:10;
    x = A*tan(pi*2*F*t);
    
    %Gráfico
    axes(handles.axes1);
    
    plot(t,x,'b','linewidth',2);
    xlabel('Tempo (s)');
    ylabel('Tangente');
    guidata(hObject,handles);
 elseif val == 4;
    t=0:0.01:10;
    x = randn(1,length(t));
    
    %Gráfico
    axes(handles.axes1);
    
    plot(t,x,'b','linewidth',2);
    xlabel('Tempo (s)');
    ylabel('aleatório');
    guidata(hObject,handles);
end


function amplitude_Callback(hObject, eventdata, handles)
% hObject    handle to amplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amplitude as text
%        str2double(get(hObject,'String')) returns contents of amplitude as a double


% --- Executes during object creation, after setting all properties.
function amplitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frequencia_Callback(hObject, eventdata, handles)
% hObject    handle to frequencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frequencia as text
%        str2double(get(hObject,'String')) returns contents of frequencia as a double


% --- Executes during object creation, after setting all properties.
function frequencia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frequencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
