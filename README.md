Dev-Team hat ein Namespace.yaml mit folgenden zusätzen:
  - user:  Uxxxxxx
  - group: ADxxxxxx
  - size:  small|medium|large

Mithilfe des Watch Kommandos wird die Erstellung neuer Namespaces überwacht.

  - ADDED: Prüfen ob Namespace das Flag init: done besitzt
	- Wenn nicht: 
	  - size auslesen und gemäss Template Quota erzeugen und deployen
	  - RBAC template mit user und group erstellen und deployen
	  - init: done annotation auf Namespace setzen
	  - event auf namespace objekt schreiben: init: done
	- Wenn vorhanden:
	  - Nichts machen
	  
  - MODIFIED: 
    - quota im Namespace löschen
    - size auslesen und gemäss Template Quota erzeugen und deployen
    
  - DELETED: Nichts machen
