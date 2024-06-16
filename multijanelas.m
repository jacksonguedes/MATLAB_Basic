function varargout = multijanelas(varargin)
% MULTIJANELAS MATLAB code for multijanelas.fig
%      MULTIJANELAS, by itself, creates a new MULTIJANELAS or raises the existing
%      singleton*.
%
%      H = MULTIJANELAS returns the handle to a new MULTIJANELAS or the handle to
%      the existing singleton*.
%
%      MULTIJANELAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MULTIJANELAS.M with the given input arguments.
%
%      MULTIJANELAS('Property','Value',...) creates a new MULTIJANELAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before multijanelas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to multijanelas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help multijanelas

% Last Modified by GUIDE v2.5 18-Jun-2020 12:47:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @multijanelas_OpeningFcn, ...
                   'gui_OutputFcn',  @multijanelas_OutputFcn, ...
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


% --- Executes just before multijanelas is made visible.
function multijanelas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to multijanelas (see VARARGIN)

% Choose default command line output for multijanelas
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes multijanelas wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = multijanelas_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in prop.
function prop_Callback(hObject, eventdata, handles)
% hObject    handle to prop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
massa_mola

% --- Executes on button press in graf.
function graf_Callback(hObject, eventdata, handles)
% hObject    handle to graf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

m = getappdata(0,'m');  %read mass
k = getappdata(0,'k');  %read stiffness
c = getappdata(0,'c');  %read damping
f = 0:0.01:100;
w = 2*pi*f;
H = 1./(-w.^2*m+j*w*c+k);

axes(handles.axes1);

plot(f,abs(H),'r','linewidth',2),grid;
xlim([1e0,50]);
xlabel ('Frequência (Hz)');
ylabel('Magnitude');
legend ('H (j\omega) = X/F');
guidata(hObject,handles); 
