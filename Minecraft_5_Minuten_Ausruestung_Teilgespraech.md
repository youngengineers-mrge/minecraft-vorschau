# Minecraft – 5 Minuten Ausrüstungszeit und anschließendes Überlebensspiel

**Zusammenfassung des Teilgesprächs vom 20. Oktober 2026**  
**Projekt:** Young Engineers – Minecraft-LAN-Spiel  
**Zielumgebung:** Minecraft Java 26.2, UltimMC-Offline-Profile, vom Spielleiter im Einzelspielermodus geöffnete LAN-Welt

## 1. Grundidee

Die Schüler betreten eine vom Spielleiter bereitgestellte Minecraft-Welt. Sie haben **fünf Minuten**, um sich **unbegrenzt** mit Gegenständen ihrer Wahl auszurüsten. Dies soll **über Chat-Befehle** erfolgen und so das effektive Arbeiten mit der Minecraft-Befehlszeile trainieren. Anschließend sind Befehle zur Beschaffung neuer Gegenstände nicht mehr erlaubt; es beginnt ein Überlebensspiel mit einer begrenzten Vorbereitungszeit bis zur Nacht.

**Pädagogischer Zweck:** `/give` eingeben, Tab-Autovervollständigung, Befehlsverlauf, Bearbeiten und Wiederverwenden langer Eingaben, Item-Namen und Mengenangaben kennenlernen, Syntaxfehler korrigieren.

## 2. Vereinbarte Spielregeln und Ablauf

1. **Spielbeginn um 06:00 Minecraft-Zeit.** Die Spieler beginnen bereits im **Überlebensmodus**. Sie haben daher kein Kreativinventar und müssen zur Ausrüstung Befehle einsetzen.
2. **Phase A – Ausrüsten (5 Minuten):** Befehle sind für die beitretenden Spieler erlaubt. Gegenstände und Mengen sind unbegrenzt; die Schüler können sich mit `/give` ausrüsten.
3. **Ende der Ausrüstungsphase:** Eine Zeitwarnung bzw. ein Timer signalisiert den Ablauf. Der Spielleiter beendet die LAN-Sitzung und öffnet **dieselbe Welt** erneut, nun mit **„Befehle erlauben: Aus“** für LAN-Gäste.
4. **Phase B – Vorbereitung auf die Nacht:** Die Schüler betreten dieselbe Welt wieder im Überlebensmodus, mit ihrer gesammelten Ausrüstung. Sie bauen Schutzräume, bereiten Nahrung, Licht und Verteidigung vor.
5. **Phase C – Überleben in der Nacht:** Die anschließende Nacht stellt die eigentliche Herausforderung dar. Konkrete Ziele, Siegbedingungen und Monsterregeln sind noch nicht festgelegt.

## 3. Einstellungen der LAN-Welt

Der Spielleiter öffnet die Welt im Einzelspielermodus über **„Im LAN öffnen“**, mit einer festgelegten Portnummer.

| Abschnitt | Spielmodus der Gäste | Befehle erlauben |
|---|---|---|
| Erste LAN-Sitzung – Ausrüstungsphase | Überleben | An |
| Zweite LAN-Sitzung – Bau- und Überlebensphase | Überleben | Aus |

**Wesentliche Erkenntnis:** `/gamemode survival @a` ändert nur den Spielmodus, **nicht** die Befehlsberechtigungen. Wird die erste LAN-Sitzung mit „Befehle erlauben: An“ gestartet, könnten Schüler nicht nur `/give`, sondern auch andere privilegierte Befehle nutzen, etwa `/gamemode`, `/time` oder `/weather`. Ein bloßes Umschalten des Spielmodus genügt daher nicht als sichere Sperre.

**Vorläufiger Ansatz:** Die erste Sitzung schließen und dieselbe gespeicherte Welt erneut im LAN öffnen, diesmal ohne Befehlsrechte für Gäste. Das ist keine nahtlose Lösung: Die Schüler müssen sich neu verbinden. Vor dem Unterricht ist zu testen, ob die Berechtigungen in der tatsächlich verwendeten Minecraft-Version und UltimMC-Konfiguration wie erwartet umgesetzt werden.

## 4. Bleibt der Spielstand beim Neustart erhalten?

Beim Verlassen über **„Speichern und zum Hauptmenü“** und erneutem Öffnen **derselben Welt** bleiben normalerweise erhalten:

- Inventar und getragene Rüstung
- Position und Spielfortschritt
- Gesundheit, Hunger und Erfahrung
- Gebaute Strukturen und Veränderungen der Welt
- Gespeicherte Scoreboard-Werte

**Wichtig bei UltimMC-Offline-Profilen:** Die Schüler müssen dieselben Spielernamen und Identitäten wie zuvor verwenden. Ein geänderter Name oder ein abweichendes Profil kann dazu führen, dass der Spieler als neu erkannt wird. Auch das sollte mit zwei Schüler-PCs praktisch geprüft werden.

**Ablauf für den Spielleiter:**

1. Nach Ende der fünf Minuten die Ausrüstungsphase beenden.
2. `Esc` → **„Speichern und zum Hauptmenü“**. Dadurch werden die LAN-Gäste getrennt.
3. Dieselbe Welt erneut im Einzelspielermodus öffnen.
4. **„Im LAN öffnen“** → **Überleben**, **Befehle erlauben: Aus**, vereinbarter Port (sofern verfügbar).
5. Schüler verbinden sich mit denselben Offline-Profilen erneut.
6. Befehlsrechte und Inventare kontrollieren, anschließend die Vorbereitungsphase fortsetzen.

## 5. Minecraft-Tageszeit und Spielzeit

Ein vollständiger Minecraft-Tag dauert bei normalem Tageslauf **20 Minuten Echtzeit**. Von 06:00 bis zum Beginn des Sonnenuntergangs um 18:00 vergehen **10 Minuten**; die Abenddämmerung bis ungefähr 19:00 dauert weitere **50 Sekunden**.

| Ereignis | Minecraft-Uhrzeit | `/time set` | Aktive Spielzeit ab 06:00 |
|---|---:|---|---:|
| Beginn Ausrüstung | 06:00 | `/time set 0` | 0:00 |
| Ende Ausrüstung | 12:00 | `/time set 6000` | 5:00 |
| Beginn Sonnenuntergang | 18:00 | `/time set 12000` | 10:00 |
| Ungefährer Beginn der Nacht | 19:00 | `/time set 13000` | 10:50 |

**Folgerung:** Nach fünf Minuten Ausrüstungszeit bleiben bei normal fortlaufender Zeit etwa **fünf Minuten bis zum Sonnenuntergang**, beziehungsweise **fünf Minuten und 50 Sekunden bis ungefähr 19:00 Uhr**. Das Unterbrechen der Sitzung zählt dabei nicht als aktive Spielzeit.

Der Spielleiter kann die Zeit jederzeit selbst setzen, insbesondere beim erneuten Öffnen der Welt:

```mcfunction
/time set 6000
```

Damit beginnt die Bauphase kontrolliert um **12:00 Minecraft-Zeit**. Soll mehr Vorbereitungszeit zur Verfügung stehen, kann der Spielleiter die Uhr entsprechend früher stellen. Deshalb ist ein **unabhängiger Fünf-Minuten-Timer** besser als ein Timer, der sich ausschließlich aus der Minecraft-Tageszeit ergibt.

## 6. Beispielbefehle für Schüler

```mcfunction
/give @s minecraft:diamond_sword
/give @s minecraft:bow
/give @s minecraft:arrow 64
/give @s minecraft:bread 32
/give @s minecraft:diamond_chestplate
```

Die Befehle werden im Chat mit führendem `/` eingegeben. Jeder Spieler darf während der fünf Minuten nach Belieben Gegenstände anfordern.

## 7. Datapack und bisheriger Entwicklungsstand

Im Teilgespräch wurde ein erster Prototyp **„Young Engineers – 5 Minuten, Version 1.0“** als ZIP-Datei erstellt (`Young_Engineers_5_Minuten_v1.0_26.2.zip`). Für den ursprünglichen Ansatz war ein gemeinsamer Countdown vorgesehen, mit Warnungen und automatischem Spielmoduswechsel. Als Befehle wurden genannt:

```mcfunction
/function young5:start
/function young5:reset
```

**Wichtig:** Seitdem wurde das Spielkonzept geändert: Der Start soll **bereits im Überlebensmodus** erfolgen. Ein automatischer Wechsel von Kreativ nach Überleben ist dafür nicht mehr nötig. Der Prototyp wurde noch **nicht praktisch in Minecraft getestet** und sollte vor einer Unterrichtsverwendung an die neue Regel angepasst und überprüft werden. Eine automatische Änderung von Spieler-Befehlsrechten ist damit nicht nachgewiesen.

Die spätere Alternative wäre eine geeignete serverseitige Rechteverwaltung beziehungsweise eine dafür geeignete Mod. Das ist **keine Voraussetzung** für die erste LAN-Testversion.

## 8. Offene Punkte und Testplan

**Offene Designfragen:** Was genau müssen die Spieler in der Nacht erreichen? Wie wird gewonnen? Ist PvP erlaubt? Dürfen die Spieler Betten benutzen, damit die Nacht übersprungen wird? Sollen Bau- und Abbaurechte begrenzt werden?

**Praktischer Test mit zwei Schüler-PCs:**

1. Backup der Welt erstellen und beide Schüler mit festen UltimMC-Profilen anmelden.
2. Erste LAN-Sitzung im Überlebensmodus mit Befehlen eröffnen; `/give` testen.
3. Fünf Minuten Ausrüsten und Inventare sowie Positionen notieren.
4. Welt speichern und schließen; mit deaktivierten LAN-Gastbefehlen neu öffnen.
5. Prüfen, ob beide Schüler Inventar, Position, Erfahrung und Status behalten haben.
6. Prüfen, dass `/give` und `/gamemode creative` für Gäste nicht mehr funktionieren, während der Spielleiter weiterhin administrieren kann.
7. Mit `/time set 6000` Mittag setzen und Ablauf bis zur Nacht testen.

## 9. Ergebnis

**Bevorzugte erste Spielversion:** Eine vom Spielleiter bereitgestellte LAN-Welt, fünf Minuten **unbegrenzte Ausrüstung ausschließlich mittels Chat-Befehlen im Überlebensmodus**, danach dieselbe Welt ohne Befehlsrechte der LAN-Gäste, anschließend Vorbereitung auf und Überleben in der Nacht. Der Spielleiter kann den Tageslauf jederzeit korrigieren.

Das Konzept verbindet **Befehlsunterricht, bewusste Ausrüstungsplanung, gemeinsames Bauen und Überleben**. Die technische Absicherung der Befehlsrechte durch den LAN-Neustart muss vor dem Einsatz praktisch getestet werden.