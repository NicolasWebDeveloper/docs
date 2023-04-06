
# Linux Mint - Domänenbeitritt

Diese Schritte erklären, wie Sie Linux Mint einer Domäne anschließen können.

### Voraussetzungen:
- Ein Benutzerkonto mit Administratorrechten
- Ein Linux Mint Client welcher sich im selben Netzwerk wie die Domäne befindet

### Schritte:

#### 1) Installieren von Realmd
Installieren von Realmd mithilfe des folgenden Befehls:
```
sudo apt install realmd
```

#### 2) Der Domäne joinen
Mithilfe des folgenden Befehls fügen SIe Linux Mint der DOmäne hinzu:
```
sudo realm join DOMAIN.NAME
```

Der beitritt kann mit folgendem Befehl geprüft werden:

```
realm list
```

Geben Sie nun die Anmeldeinformationen eines Nutzers ein welcher ausreichende Berechtigungen hat um einer Domäne zu joinen.

#### 3) Automatisches erstellen eines Home Ordners

Um automatisch einen Home Ornder anlegen zu lassen müssen Sie die Datei /etc/pam.d/common-session bearbeiten. Dies ist mit folgendem Befehl möglich:

```
sudo nano /etc/pam.d/common-session
```

Am Ende Der Datei folgende Zeile hinzufügen:
```
session optional pam_mkhomedir.so skel=/etc/skel/ umask=0077
```


### Fazit: 
Linux Mint sollte nun in der Domäne sein und im Active Directory in der OU Computers angezeigt werden. 

Das Anmeldeformat sollte wie folgt aussehen:

```
USER@DOMAIN.NAME
```
