# smartdns4win

[ԭ��Ŀsmartdns](https://github.com/pymumu/smartdns)

## ʹ��˵��

### ����WSL

Win10��Ҫ��linux��ϵͳWSL֧�֣�WSL�Ŀ�����������:
`PowerShell` ��ִ�����������WSL����:

```bash
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux /all
```

��ͨ������cmd��ִ��:
```bash
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```
���������һ���õ��Ǿ������Win10ϵͳ�Ļ������������������Ҫ�õ�[���ָܻ���](https://moeclub.org/2018/11/27/704/?spm=35.5)������������ṩ��1809��1903�����汾�Ĺ��ָܻ���������ѡ�񼴿ɡ����ָܻ���ʹ�ú���Ҫ����������Ч��

�ο���ͼ�Ĳ����޸�һ��cmd�����ԣ���Ȼ��װWSL��ϵͳʵ�������

![CMD����](img/cmd setting.png)

�ο�΢��ٷ���[�ֶ����������� Linux �� Windows ��ϵͳ���а��](https://docs.microsoft.com/zh-cn/windows/wsl/install-manual)������Debian�����޸��ļ�����Ϊ `*.zip`����ѹ������Ҫ��װ��·��������: `D:\Program Files\Debian`��ִ��`debian.exe`��װ�������������û����ƺ�����...

### ��װsmartdns

���ҷ����smartdnsѹ������ѹ��**�����ո��·��**�У�����: `D:\Tools\smartdns`

��[ԭ��Ŀ��Release](https://github.com/pymumu/smartdns/releases)����Debian���õİ���`smartdns.1.***.x86_64-debian-all.deb`�����������Ŀ¼��

����ԱȨ��ִ���������ļ� `init.bat`���м���ͣ����Ҫ��������ո��½����û����룬һ·�س�����

�ֶ����ñ������ӵ���ѡdnsΪ `127.0.0.1`��

![DNS����](img/DNS Setting.png)

�������д��ڲ���һ�£�`nslookup www.google.com`��������������Ľ����˵���ɹ��ˣ�

```bash
C:\>nslookup www.google.com
������:  localdomain
Address:  127.0.0.1

��Ȩ��Ӧ��:
DNS request timed out.
    timeout was 2 seconds.
����:    www.google.com
Address:  69.63.184.14
```

**���߰���������**: https://pan.baidu.com/s/1_WakgCRpOjahlw760igYNg ��ȡ��: 2333

###��л: 
GitHub�û� [rufengsuixing](https://github.com/rufengsuixing)? �ṩ��[Win10һ����װ�ű�](https://github.com/pymumu/smartdns/issues/107)
