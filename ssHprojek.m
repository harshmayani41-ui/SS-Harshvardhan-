clc;
clear;
close all;

f = figure('Name','LTI Verifier',...
    'Position',[400 200 400 350]);

uicontrol(f,'Style','text',...
    'String','LTI System Property Verifier',...
    'Position',[30 300 340 30],...
    'FontSize',14);

uicontrol(f,'Style','popupmenu',...
    'String',{'x[n-2]','x^2[n]','n*x[n]','x[n+2]'},...
    'Position',[100 250 200 30],...
    'Tag','menu');

uicontrol(f,'Style','pushbutton',...
    'String','Verify System',...
    'Position',[120 200 160 35],...
    'Callback',@verify);

uicontrol(f,'Style','text',...
    'Position',[40 40 320 140],...
    'FontSize',12,...
    'Tag','result');

function verify(src,~)
f = ancestor(src,'figure');
m = findobj(f,'Tag','menu');
r = findobj(f,'Tag','result');

switch m.Value
    case 1
        s = sprintf('Linear: Yes\nTime Invariant: Yes\nCausal: Yes\nStable: Yes');
    case 2
        s = sprintf('Linear: No\nTime Invariant: Yes\nCausal: Yes\nStable: Yes');
    case 3
        s = sprintf('Linear: Yes\nTime Invariant: No\nCausal: Yes\nStable: No');
    case 4
        s = sprintf('Linear: Yes\nTime Invariant: Yes\nCausal: Yes\nStable: Yes');
end

set(r,'String',s);
end