// https://dotnet.microsoft.com/download/dotnet/5.0

[Code]
procedure dotnet50desktop;
begin
	if not netcoreinstalled('Microsoft.WindowsDesktop.App 5.0.0') then begin
		AddProduct('dotnet50desktop' + GetArchitectureSuffix + '.exe',
			'/lcid ' + IntToStr(GetUILanguage) + ' /passive /norestart',
			'.NET Desktop Runtime 5.0' + GetArchitectureTitle,
			GetString('https://download.visualstudio.microsoft.com/download/pr/b2780d75-e54a-448a-95fc-da9721b2b4c2/62310a9e9f0ba7b18741944cbae9f592/windowsdesktop-runtime-5.0.0-win-x86.exe', 'https://download.visualstudio.microsoft.com/download/pr/1b3a8899-127a-4465-a3c2-7ce5e4feb07b/1e153ad470768baa40ed3f57e6e7a9d8/windowsdesktop-runtime-5.0.0-win-x64.exe'),
			'', False, False, False);
	end;
end;
