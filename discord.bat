@echo off
chcp 65001 >nul
:: 65001 - UTF-8

cd /d "%~dp0bin"

start "zapret: discord" /min "winws.exe" --wf-l3=ipv4 --wf-tcp=443 --wf-udp=50000-65535 ^
--filter-tcp=443 --hostlist="discord.txt" --dpi-desync=fake,split2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --dpi-desync-fake-tls="tls_clienthello_www_google_com.bin" --new ^
--filter-udp=50000-65535 --dpi-desync=fake --dpi-desync-any-protocol --dpi-desync-cutoff=d4