function varargout = financeiro_guide(varargin)
% FINANCEIRO_GUIDE MATLAB code for financeiro_guide.fig
%      FINANCEIRO_GUIDE, by itself, creates a new FINANCEIRO_GUIDE or raises the existing
%      singleton*.
%
%      H = FINANCEIRO_GUIDE returns the handle to a new FINANCEIRO_GUIDE or the handle to
%      the existing singleton*.
%
%      FINANCEIRO_GUIDE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINANCEIRO_GUIDE.M with the given input arguments.
%
%      FINANCEIRO_GUIDE('Property','Value',...) creates a new FINANCEIRO_GUIDE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before financeiro_guide_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to financeiro_guide_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help financeiro_guide

% Last Modified by GUIDE v2.5 23-Jun-2020 19:07:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @financeiro_guide_OpeningFcn, ...
                   'gui_OutputFcn',  @financeiro_guide_OutputFcn, ...
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


% --- Executes just before financeiro_guide is made visible.
function financeiro_guide_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to financeiro_guide (see VARARGIN)

% Choose default command line output for financeiro_guide
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes financeiro_guide wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = financeiro_guide_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in ap1.
function ap1_Callback(hObject, eventdata, handles)
% hObject    handle to ap1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
aplicacao1

% --- Executes on button press in ap2.
function ap2_Callback(hObject, eventdata, handles)
% hObject    handle to ap2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
aplicacao1


% --- Executes on button press in Grafico.
function Grafico_Callback(hObject, eventdata, handles)
% hObject    handle to Grafico (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
vp1 = getappdata(0,'vp')
j1 = getappdata(0,'j')  
t1 = getappdata(0,'t')


i=1;
temp1 = 1:1:t1;
if t1>1
    c1(1) = vp1*(1+(j1/100));
    while i<t1
         i= i+1;
         c1(i) = c1(i-1)*(1+(j1/100));
    end
else 
     c1(1) = vp1*(1+(j1/100));
end
            
vp2 = getappdata(0,'vp2')
j2 = getappdata(0,'j2') 
t2 = getappdata(0,'t2') 

i=1;
temp2 = 1:1:t2;
if t2>1
    c2(1) = vp2*(1+(j2/100));
    while i<t1
         i= i+1;
         c2(i) = c2(i-1)*(1+(j2/100));
    end
else 
     c2(1) = vp2*(1+(j2/100));
end
            
axes(handles.axes1);

plot(temp1,c1,'r','linewidth',2),grid;
hold on
plot(temp2,c2,'b','linewidth',2),grid;
xlabel ('Tempo em meses');
ylabel('Valor em R$');
legend ('Aplicação 1','Aplicação 2');
guidata(hObject,handles); 


lucro1 = c1(end)-vp1(end);
set(handles.lucro_val1,'String',num2str(lucro1) );
lucro2 = c2(end)-vp2(end);
set(handles.lucro_val2,'String', num2str(lucro2) );
clear all;
       
% --- Executes on button press in limpar.
function limpar_Callback(hObject, eventdata, handles)
% hObject    handle to limpar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset; % Do a complete and total reset of the axes.
cla (handles.axes1);
