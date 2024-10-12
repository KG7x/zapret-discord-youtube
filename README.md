# Zapret (обход блокировки Discord'а и Youtube'а)
> [!CAUTION]  
> В сети появились правдоподобные копии аккаунтов, которые распространяют вредоносное ПО под видом Zapret. \
> Отличить оригинал от фейка вы всегда можете по количеству [⭐ звёзд](https://github.com/Flowseal/zapret-discord-youtube/stargazers) (в правом верхнем углу) у репозитория.

## Guides
### Windows
> [!IMPORTANT]  
> Если всё еще не скачан, то скачайте последний [релиз](https://github.com/Flowseal/zapret-discord-youtube/releases), разархивируйте в отдельную папку.

Запустите то, что вам нужно:
- **`discord.bat`** - запустить обход дискорда.
- **`discord+youtube.bat`** - запустить обход дискорда и ютуба.
###
- **`service_discord.cmd`** - запустить обход дискорда и поставить на автозапуск (в сервисах).
- **`service_discord+youtube.cmd`** - запустить обход дискорда и ютуба и поставить на автозапуск (в сервисах).
###
- **`service_goodbye_discord.cmd`** - запустить, если вы используете **СЕРВИС goodbyedpi**, и хотите, чтобы zapret обходил **только discord**.
  * **ВНИМАНИЕ**: Запускать ПОСЛЕ создания сервиса goodbyedpi. Первый раз goodbyedpi может вылететь - просто перезапустите устройство!
###
- **`service_remove.cmd`** - остановить и удалить сервисы выше
- **`service_stop.cmd`** - остановить сервис
- **`service_restart.cmd`** - перезапустить сервис

### Решение проблем
- Проверьте, запускаете ли вы файлы от имени администратора.
- Не работают bat файлы? Попробуйте выполнить очистку от драйвера WinDivert, как написано **[ЗДЕСЬ](#остановка-и-удаление-обхода)**
- Не работает сервис? Проверьте, чтобы в пути до файла **не было пробелов** и русских символов.
  * Также отключите программы, которые могут мешать созданию сервиса *(Антивирусы, клинеры с доп. защитой)*.
- Не работает вместе с VPN? Отключите функцию **TUN** (Tunneling) в настройках VPN.
- Не работает `service_goodbye_discord`? Удостовертесь, что сервис goodbyedpi запущен и имеет название GoodbyeDPI. После снова запустите `service_goodbye_discord.cmd` и перезапустите устройство.
- Не прогружается видео на ютубе? Попробуйте поставить **`Kyber`** и **`QUIC`** в default (`chrome://flags/`).
  * Также в файле, который открываете, в строчке с `--filter-tcp=443`: попробуйте поменять `--dpi-desync-fooling=md5sig` на `--dpi-desync-fooling=badseq`.
  * https://github.com/Flowseal/zapret-discord-youtube/issues/46
- Попробуйте обновить бинарники с оригинального репозитория.
- Не работает **YouTube**? Попробуйте найти ответ здесь - https://github.com/Flowseal/zapret-discord-youtube/issues/90
- Не работает **Discord**? Попробуйте найти ответ здесь - https://github.com/Flowseal/zapret-discord-youtube/issues/92

### Остановка и удаление обхода
Для удаления оставшегося драйвера WinDivert, откройте cmd от имени администратора и пропишите следующее:
```
sc stop WinDivert
sc delete WinDivert
```
> [!NOTE]  
> Возможно, драйвер у вас будет записан по-другому. Для уточнения названия пропишите `driverquery | find "Divert"` в cmd.

### Добавление дополнительных адресов заблокированных сайтов 
- Список можно дополнить используя `general.txt` (для `*discord+youtube`) и в список `discord.txt` (для файлов без `youtube` в названии).
> [!IMPORTANT]  
> После добавления сервис нужно перезапустить.

## Linux
В оригинальном репозитории [zapret](https://github.com/bol-van/zapret/) имеется достаточно информации для того, чтобы начать пользоваться обходом блокировок, но и стоит понимать, что нажатием одной кнопки ничего не заработает. \
Достаточно следовать следующим инструкциям и всё внимательно читать:
- [zapret/docs/quick_start.txt](https://github.com/bol-van/zapret/blob/master/docs/quick_start.txt)
- [zapret/docs/readme.txt](https://github.com/bol-van/zapret/blob/master/docs/readme.txt)
  * https://github.com/Flowseal/zapret-discord-youtube/issues/7
> [!WARNING]
> Если вы открываете Issue *(в этом репозитории)* с проблемой в использовании на **Linux**, то, как бы это не звучало, это ошибка. Все вопросы по работе на Linux нужно открывать в **[ОРИГИНАЛЬНОМ](https://github.com/bol-van/zapret/)** репозитории. Следовательно, задавайте вопросы [тут](https://github.com/bol-van/zapret/issues/).

* Many thanks to [bol-van](https://github.com/bol-van/), creator of original [zapret](https://github.com/bol-van/zapret/) repository.
