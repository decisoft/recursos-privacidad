# Recursos para Raspberry Pi: tutoriales, consejos y utilidades

En este apartado encontrarás recursos para tu Raspberry Pi. Hay consejos, tutoriales y, sobre todo, servicios que puedes alojar. Ya sabes que hay mil listas de opciones a alojar, como esta de [awesome-selfhosted](https://github.com/awesome-selfhosted/awesome-selfhosted), pero puede abrumar de la cantidad de software que hay en cada categoría. 

Así que aquí te presentamos una pequeña selección, con los programas que uso y que la comunidad ha contribuido a esta lista, porque han sido probados por los usuarios y son su día a día.

Si llegas aquí y echas un servicio en falta que utilices, por favor, ¡añádelo! Puedes hacerlo a través de un [issue](https://github.com/decisoft/recursos-privacidad/issues), señalando [RPi] en el asunto, o bien directamente creando una pull request con los datos.

## Índice

- [Antes de empezar](https://github.com/decisoft/recursos-privacidad/blob/main/raspberry.md#atenci%C3%B3n-antes-de-empezar)
- [Docker](https://github.com/decisoft/recursos-privacidad/blob/main/raspberry.md#docker).
- [Acceso seguro desde el exterior](https://github.com/decisoft/recursos-privacidad/blob/main/raspberry.md#acceso-desde-el-exterior-vpn--ddns).
- [Servicios](https://github.com/decisoft/recursos-privacidad/blob/main/raspberry.md#a-la-carga-servicios-que-puedes-alojar).

## ¡Atención! Antes de empezar

Si usas Raspbian como sistema operativo, debes saber que, desde hace unos meses, está incluido, **por defecto**, un repositorio de `Microsoft`. Si, como a mí, esto te chirría, pero quieres seguir usando Raspbian, puedes eliminar su repositorio siguiendo este tutorial:

- [Tutorial rápido para eliminar repositorios](https://www.youtube.com/watch?v=CHv8JSvdW8U). Vídeo de YouTube en inglés pero muy conciso.
- Por si acaso, puedes bloquear en tu archivo `/etc/hosts` lo siguiente. `127.0.0.1 packages.microsoft.com` o `0.0.0.0 packages.microsoft.com`. También lo puedes hacer en tu pi-hole o AdGuard.

Si esto no te convence, puedes buscar otros sistemas operativos, como DietPi.

## Docker

Una parte importante para levantar los diferentes servicios que corren sobre la Raspberry, sobre todo, de forma eficiente, es Docker. Este servicio lo que hace es levantar contenedores, en vez de máquinas virtuales enteras, para ahorrar recursos y optimizar el funcionamiento.

- [Cómo instalar Docker](https://www.docker.com/get-started).
- [Cómo instalar Docker Compose](https://docs.docker.com/compose/install/).
- [Algunos docker-compose para iniciados](https://www.reddit.com/r/selfhosted/comments/mdshuv/lets_make_some_newbies_life_better_and_post_a_few/). Ejemplos.
- [DockSTARTer](https://dockstarter.com/). Documentación y [tutorial](https://www.youtube.com/watch?app=desktop&v=urPGw4lCdfM).
- [Portainer](https://www.wundertech.net/portainer-raspberry-pi-install-how-to-install-docker-and-portainer/): gestor gráfico para Docker y docker-compose.

## Acceso desde el exterior: VPN + DDNS

- [Crear VPN con PiVPN + Wireguard](https://www.youtube.com/watch?v=DUpIOSbbvKk). Vídeo en YouTube (inglés).
- [Configurar Wireguard + interfaz web](https://github.com/WeeJeWel/wg-easy). Repositorio en Github.
- [Configurar DuckDNS](https://www.youtube.com/watch?v=uhJ1zQIjujg). Vídeo en YouTube (inglés). 
- [Docker de DuckDNS](https://hub.docker.com/r/linuxserver/duckdns). DockerHub.
- **Extra** [WireHole: Wireguard + pi-hole + Unbound](https://github.com/IAmStoxe/wirehole): GitHub. Para uso con DDNS.

## Acceso desde el exterior: proxy inverso + DDNS

- [NGINX proxy manager](https://nginxproxymanager.com/). Disponible en Docker.
- [SWAG](https://telegra.ph/Como-configurar-SWAG-como-proxy-inverso-en-Unraid-y-cualquier-otro-NAS-usando-docker-05-09). También disponible en Docker, pero de más dificultad. Tutorial realizado por Carpe Diem de NASeros. (Para cambiar las networks internas del docker sin eliminarlo y volver a empezar, está este [tutorial](https://stackoverflow.com/questions/54720587/how-to-change-the-network-of-a-running-docker-container)).

## ¡A la carga! Servicios que puedes alojar

- [Homer](https://github.com/bastienwirtz/homer). Dashboard para tener todos los servicios instalados de un plumazo. También disponible en Docker.
- [pi-hole](https://github.com/pi-hole/pi-hole). Bloqueador de anuncios y rastreadores a nivel de DNS. También disponible en Docker.
- [Send](https://github.com/timvisee/send). Fork de Firefox Send, alternativa local a WeTransfer. También disponible en Docker.
- [Vaultwarden](https://github.com/dani-garcia/vaultwarden). Cliente del gestor de contraseñas de Bitwarden. También disponible en Docker.
- [Piwigo](https://github.com/Piwigo/Piwigo). Alternativa a Google Fotos. También disponible en Docker gracias a la [gente de LinuxServer.io](https://hub.docker.com/r/linuxserver/piwigo).
- [PhotoStructure](https://github.com/photostructure/photostructure-for-servers). Alternativa a Google Fotos (para las funciones más avanzadas, tiene un plan de pago). También disponible en Docker.
- [Monica](https://github.com/monicahq/monica). Gestor de relaciones personales (una especie de calendario + agenda a lo bestia). También disponible en Docker.
- [Calibre-web](https://github.com/janeczku/calibre-web). Gestor de libros electrónicos. También disponible en Docker.
- [HomeAssistant](https://github.com/home-assistant/core). Gestor de domótica. También disponible en Docker.
- [Paperless-ng](https://github.com/jonaswinkler/paperless-ng). Para la digitalización de documentos. También disponible en Docker.
- [Standard Notes](https://github.com/standardnotes/web). Aplicación para tomar notas e2e. También disponible en Docker.