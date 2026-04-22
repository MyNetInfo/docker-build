@ECHO OFF

net stop  EasyTier
sc delete EasyTier

REM C:\EasyTierWindows\NSSM224.64.exe remove    EasyTier
REM C:\EasyTierWindows\NSSM224.64.exe uninstall EasyTier
REM C:\EasyTierWindows\NSSM224.64.exe edit      EasyTier

C:\EasyTierWindows\NSSM224.64.exe install EasyTier

C:\EasyTierWindows\NSSM224.64.exe stop    EasyTier
C:\EasyTierWindows\NSSM224.64.exe start   EasyTier
C:\EasyTierWindows\NSSM224.64.exe restart EasyTier

net stop  EasyTier
net start EasyTier

PAUSE
