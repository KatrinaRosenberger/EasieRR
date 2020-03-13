function varargout = loadpopup3(varargin)
% LOADPOPUP3 MATLAB code for loadpopup3.fig
%      LOADPOPUP3, by itself, creates a new LOADPOPUP3 or raises the existing
%      singleton*.
%
%      H = LOADPOPUP3 returns the handle to a new LOADPOPUP3 or the handle to
%      the existing singleton*.
%
%      LOADPOPUP3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LOADPOPUP3.M with the given input arguments.
%
%      LOADPOPUP3('Property','Value',...) creates a new LOADPOPUP3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before loadpopup3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to loadpopup3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help loadpopup3

% Last Modified by GUIDE v2.5 07-May-2019 11:18:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @loadpopup3_OpeningFcn, ...
                   'gui_OutputFcn',  @loadpopup3_OutputFcn, ...
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


% --- Executes just before loadpopup3 is made visible.
function loadpopup3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to loadpopup3 (see VARARGIN)

% Choose default command line output for loadpopup3
handles.output = hObject;
fs=1/.004;
chan=1;
reftime=200;
peakP=.55
lowfreq=1;
highfreq=20;

reftimeS=sprintf('%.0f',reftime);
set(handles.setreftime,'String',reftimeS);

chanS=sprintf('%.0f',chan);
set(handles.setchannel,'String',chanS);

fsS=sprintf('%.0f',fs);
set(handles.setfs,'String',fsS);

peakPS=sprintf('%.4f',peakP)
set(handles.setpeakp,'String',peakPS);

lowfreqS=sprintf('%.0f',lowfreq);
set(handles.setlowfreq,'String',lowfreqS);

highfreqS=sprintf('%.0f',highfreq);
set(handles.sethighfreq,'String',highfreqS);
%set(gcf, 'units', 'normalized', 'position', [0.40 0.40 0.6 0.6])
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes loadpopup3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = loadpopup3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in loadbiopak.
function loadbiopak_Callback(hObject, eventdata, handles)
% hObject    handle to loadbiopak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filetype=1;
fs=str2double(get(handles.setfs, 'String'));
chan=str2double(get(handles.setchannel, 'String'));
reftime=str2double(get(handles.setreftime, 'String'));
peakP=str2double(get(handles.setpeakp, 'String'));
lowfreq=str2double(get(handles.setlowfreq, 'String'));
highfreq=str2double(get(handles.sethighfreq, 'String'));
reftimesec=reftime/1000;
uiresume
handles.fs=fs;
%save('temp.mat','fs','filetype','chan')
setappdata(0,'ftype',filetype);
setappdata(0,'fsvalue',fs);
setappdata(0,'reftimesec',reftimesec);
setappdata(0,'peakprom',peakP);
setappdata(0,'lowF',lowfreq);
setappdata(0,'highF',highfreq);
setappdata(0,'channel',chan);
guidata(hObject, handles);
close loadpopup3

%%
% --- Executes on button press in loadcsv.
function loadcsv_Callback(hObject, eventdata, handles)
% hObject    handle to loadcsv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% [dfile,dpathname]=uigetfile('*.txt','Load csv file');
% file = fullfile(dpathname,dfile);
% csvread(file)
filetype=2;
fs=str2double(get(handles.setfs, 'String'))
chan=str2double(get(handles.setchannel, 'String'))
reftime=str2double(get(handles.setreftime, 'String'));
peakP=str2double(get(handles.setpeakp, 'String'));
lowfreq=str2double(get(handles.setlowfreq, 'String'));
highfreq=str2double(get(handles.sethighfreq, 'String'));
reftimesec=reftime/1000;
uiresume
handles.fs=fs;
%save('temp.mat','fs','filetype','chan')
setappdata(0,'ftype',filetype);
setappdata(0,'fsvalue',fs);
setappdata(0,'reftimesec',reftimesec);
setappdata(0,'preakprom',peakP);
setappdata(0,'lowF',lowfreq);
setappdata(0,'highF',highfreq);
guidata(hObject, handles);
close loadpopup3

% --- Executes on button press in loadmatlab.
function loadmatlab_Callback(hObject, eventdata, handles)
% hObject    handle to loadmatlab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filetype=3;
fs=str2double(get(handles.setfs, 'String'))
chan=str2double(get(handles.setchannel, 'String'))
reftime=str2double(get(handles.setreftime, 'String'));
peakP=str2double(get(handles.setpeakp, 'String'));
lowfreq=str2double(get(handles.setlowfreq, 'String'));
highfreq=str2double(get(handles.sethighfreq, 'String'));
reftimesec=reftime/1000;
uiresume
handles.fs=fs;
%save('temp.mat','fs','filetype','chan')
setappdata(0,'ftype',filetype);
setappdata(0,'fsvalue',fs);
setappdata(0,'reftimesec',reftimesec);
setappdata(0,'preakprom',peakP);
setappdata(0,'lowF',lowfreq);
setappdata(0,'highF',highfreq);
guidata(hObject, handles);
close loadpopup3


function setfs_Callback(hObject, eventdata, handles)
% hObject    handle to setfs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of setfs as text
%        str2double(get(hObject,'String')) returns contents of setfs as a double


% --- Executes during object creation, after setting all properties.
function setfs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to setfs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function setchannel_Callback(hObject, eventdata, handles)
% hObject    handle to setchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of setchannel as text
%        str2double(get(hObject,'String')) returns contents of setchannel as a double


% --- Executes during object creation, after setting all properties.
function setchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to setchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function setreftime_Callback(hObject, eventdata, handles)
% hObject    handle to setreftime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of setreftime as text
%        str2double(get(hObject,'String')) returns contents of setreftime as a double


% --- Executes during object creation, after setting all properties.
function setreftime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to setreftime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function setpeakp_Callback(hObject, eventdata, handles)
% hObject    handle to setpeakp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of setpeakp as text
%        str2double(get(hObject,'String')) returns contents of setpeakp as a double


% --- Executes during object creation, after setting all properties.
function setpeakp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to setpeakp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sethighfreq_Callback(hObject, eventdata, handles)
% hObject    handle to sethighfreq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sethighfreq as text
%        str2double(get(hObject,'String')) returns contents of sethighfreq as a double


% --- Executes during object creation, after setting all properties.
function sethighfreq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sethighfreq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function setlowfreq_Callback(hObject, eventdata, handles)
% hObject    handle to setlowfreq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of setlowfreq as text
%        str2double(get(hObject,'String')) returns contents of setlowfreq as a double


% --- Executes during object creation, after setting all properties.
function setlowfreq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to setlowfreq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
