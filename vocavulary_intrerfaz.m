function varargout = vocavulary_intrerfaz(varargin)
% VOCAVULARY_INTRERFAZ MATLAB code for vocavulary_intrerfaz.fig
%      VOCAVULARY_INTRERFAZ, by itself, creates a new VOCAVULARY_INTRERFAZ or raises the existing
%      singleton*.
%
%      H = VOCAVULARY_INTRERFAZ returns the handle to a new VOCAVULARY_INTRERFAZ or the handle to
%      the existing singleton*.
%
%      VOCAVULARY_INTRERFAZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VOCAVULARY_INTRERFAZ.M with the given input arguments.
%
%      VOCAVULARY_INTRERFAZ('Property','Value',...) creates a new VOCAVULARY_INTRERFAZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before vocavulary_intrerfaz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to vocavulary_intrerfaz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help vocavulary_intrerfaz

% Last Modified by GUIDE v2.5 30-May-2018 11:49:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @vocavulary_intrerfaz_OpeningFcn, ...
                   'gui_OutputFcn',  @vocavulary_intrerfaz_OutputFcn, ...
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


% --- Executes just before vocavulary_intrerfaz is made visible.
function vocavulary_intrerfaz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to vocavulary_intrerfaz (see VARARGIN)

% Choose default command line output for vocavulary_intrerfaz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes vocavulary_intrerfaz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = vocavulary_intrerfaz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function palabra_Callback(hObject, eventdata, handles)
% hObject    handle to palabra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of palabra as text
%        str2double(get(hObject,'String')) returns contents of palabra as a double
palabras=140;%cuantas palabras serán
a=0+1;%valor inicial+1
b=140+1;%valor final +1
errores=zeros(1,palabras);
guardar=zeros(1,100);%errores guardar
i=1;
m=1;aheag'
while i<=palabras 
    num=floor(a+(b-a).*rand(1));
    x=1;
     while x<=palabras 
         if  num==errores(x)
             num=floor(a+(b-a).*rand(1));
             x=1;
         else
             x=x+1;
         end
         
     end 
 errores(i)=num;

    [raw]=B(num)
    [raw]=A(num);
    out=char(raw);
    set(handles.vocabulary,'string',out)
    variable=get(handles.palabla,'string');
    tf = strcmp(variable,out);
    
    if tf ~= 1
        set(handles.resultado,'repasalo :/');
        set(handles.resultado,'string',out);
        errores(i)=0;
        i=i;
        guardar(m)=num;
        m=m+1;
    elseif tf == 1
        set(handles.resultado,'exelente :)');
        i=i+1;
    else
        set(handles.resultado,'algo salio mal, corre de nuevo');
        i=i+1;
        set(handles.resultado,'string',out);
    end
    
end

% --- Executes during object creation, after setting all properties.
function palabra_CreateFcn(hObject, eventdata, handles)
% hObject    handle to palabra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
