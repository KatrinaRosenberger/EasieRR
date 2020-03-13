function varargout = savepopup(varargin)
% SAVEPOPUP MATLAB code for savepopup.fig
%      SAVEPOPUP, by itself, creates a new SAVEPOPUP or raises the existing
%      singleton*.
%
%      H = SAVEPOPUP returns the handle to a new SAVEPOPUP or the handle to
%      the existing singleton*.
%
%      SAVEPOPUP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SAVEPOPUP.M with the given input arguments.
%
%      SAVEPOPUP('Property','Value',...) creates a new SAVEPOPUP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before savepopup_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to savepopup_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help savepopup

% Last Modified by GUIDE v2.5 06-Mar-2019 10:01:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @savepopup_OpeningFcn, ...
                   'gui_OutputFcn',  @savepopup_OutputFcn, ...
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


% --- Executes just before savepopup is made visible.
function savepopup_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to savepopup (see VARARGIN)

% Choose default command line output for savepopup
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes savepopup wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = savepopup_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in commasave.
function commasave_Callback(hObject, eventdata, handles)
% hObject    handle to commasave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
savetype=1;
uiresume
setappdata(0,'stype',savetype);
%save('temp.mat','savetype')
guidata(hObject, handles);
close savepopup

% --- Executes on button press in periodsave.
function periodsave_Callback(hObject, eventdata, handles)
% hObject    handle to periodsave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
savetype=2;
uiresume
setappdata(0,'stype',savetype);
%save('temp.mat','savetype')
guidata(hObject, handles);
close savepopup

