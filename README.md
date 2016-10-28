# Zabbix-printers-hpux
# Zabbix Version: 2.4+
# HPUX Version: 11.31

1 - Create a Discovery Rule in HP-UX host that is configured Zabbix monitoring system.

1.1 - Create a name for this Rule "Discovery Printers HP-UX"

1.2 - Select the type Zabbix Agent

1.3 - Add Key: system.run [ "/ usr / bin / sh (Patch )"] Example: system.run [ "/ usr / bin / sh /usr/local/etc/scripts/imp_discovery.sh" ]

1.4 - Add filter: Macro Field -> {#PRINTNAME}

1.5 - Select enable and then create.

2 - Create a Prototype Item on the host you want to monitor.

2.1 - Item Name: Queue impression {#PRINTNAME}

2.2 - Type: Zabbix Agent

2.3 - Key: system.run [ "/usr/bin/sh (Patch imp_date.sh script) {#PRINTNAME}"]

2.4 - Data Type: Decimal

