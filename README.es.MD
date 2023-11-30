# **LanguageBreak** 
Jailbreak para cualquier Kindle que ejecute el firmware 5.16.2.1.1 ó **INFERIOR**

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/E1E1QLG4D)

**El exploit funciona mejor con versiones 5.16.2, por lo tanto, si tiene una versión inferior del firmware deberías considerar actualizar**

No actualice a una versión superior a la 5.16.2.1.1 incluso después del jailbreak, ha habido grandes cambios desde entonces y **TODO** está roto, lo único que puedes hacer si tienes una versión superior, es hacer un downgrade (si su jailbreak ha sobrevivido).

Muchas gracias a Bluebotlabs por toda la ayuda a través de este camino y a GeorgeYellow y sus trucos por iluminar la vulnerabilidad hacia la luz.

El último tarball lo puede encontrar siempre [aquí]("https://github.com/notmarek/LanguageBreak/releases/latest").

Asegúrese de eliminar cualquier tipo de bloqueo por contraseña, si ha olvidado y esta atascado en la pantalla de contraseña, ingrese `111222777` y la Kindle se reestablecerá de fábrica.

**ADVERTENCIA**: Sus archivos **SERÁN** eliminados, asegúrese de hacer un respaldo de ellos.

# Instalación

## Antes del jailbreak

1. Lea las instrucciones completamente **ANTES** de proceder.
2. Habilite el modo vuelo.
3. Asegúrese de que no hayan archivos `.bin` o `update.bin.tmp.partial` perdidos en la Kindle.
4. Repite el paso número 3 a través del proceso.

## Jailbreak

1. Escriba `;enter_demo` en la barra de búsqueda de la Kindle y presione en la flecha de la barra.
2. Reinicie el dispositivo.
3. Una vez en el modo demo, salte la configuración del wifi y escriba cualquier valor en los campos de registro de la demo y presiona `"continue"`.
4. Presione `"Skip"` para salta la búsqueda del `"demo types"`.
5. Seleccione el tipo `"standard"`.
6. Presione `"Done"` en la pantalla de `"Add Content"`.
7. Una vez que se configura el `"modo demo"`, haga el "gesto secreto" (en la parte inferior derecha de la pantalla, haga tap con dos dedos y luego deslize hacia la izquierda).
8. Entre en el menú de configuración del modo `"demo"` escribiendo `;demo` en la barra de búsqueda y presiona en la flecha de la barra.
9. Seleccione la opción `"Sideload Content"`.
10. Copie el contenido del directorio `"LanguageBreak"` a la Kindle, sobrescriba y reemplaze todos los archivos.
11. Desconecte el cable y vuelva al menú `"demo"` (mire el paso 8).
12. Seleccione la opción `"Resell Device"` y presione `"Yes/Resell"`.
13. Ahora espere que aparezca la pantalla que indica `"Press power button to start"`.
14. En cuanto aparezca la pantalla, conecte el cable usb a su Kindle y copie el contenido del directorio `"LanguageBreak"` nuevamente sobrescribiendo todos los archivos y luego expulse el dispositivo de forma segura.
15. Mantenga el botón de encendido hasta que aparezcan unas instrucciones en pantalla, un menú de selección de idioma debería aparecer en unos segundos.
16. Escoja `"Chinese"` (简体中文) (generalmente es la última o antepenúltima opción del menú).
17. Su Kindle debería reiniciarse y deberían aparecer algunos de mensajes informativos en la pantalla.

## Después del jailbreak

1. Después de que el dispositivo de reinició, escriba `;uzb` en la barra de búsqueda.
2. Conecte el dispositivo al computador y copie el archivo `Update_hotfix_languagebreak-{idioma con el que desea que quede su Kindle}.bin` a la raíz del almacenamiento del Kindle.
3. Expulse el dispositivo y luego escriba `;dsts` en la barra de búsqueda o deslice hacia abajo y seleccione el ícono para entrar al menú de configuración del dispositivo.
4. Seleccione `"Update Your Kindle"` para instalar el hotfix.
5. Esto sacará su dispositivo del modo de demo y limpiará los archivos de jailbreak innecesarios.
6. En este punto probablemente estará en el modo `managed mode`.

## Saliendo del modo `managed/demo` después del jailbreak

### Para un Kindle no registrado

1. Escriba `;demo` en la barra de búsqueda y presiona en la flecha de la barra
2. El dispositivo te dirá que estará entrando al modo `"demo"`, pero en realidad se reestablecerá al modo normal en Ingles.
3. Luego verifique que exista un directorio de nombre `mkk` en su Kindle, si no está, entonces reinstale el hotfix.

### Para un Kindle registrado

1. Escriba `;enter_demo` en la barra de búsqueda.
2. Reinicie el dispositivo.
3. El dispositivo estará en modo demo completo, así que realice la configuración sin wifi y con valores aleatorios.
4. Realice el `gesto secreto` para entrar en la UI de la Kindle (paso 7 de la sección de jailbreak).
5. Escriba `;demo` en la barra de búsqueda.
6. Seleccione `Resell device` y presione `Resell/Yes`.
7. El dispositivo se reiniciará en modo normal en Ingles.
8. Luego verifique que exista un directorio de nombre `mkk` en su Kindle, si no está, entonces reinstale el hotfix.

# FAQ

Q: ¿Como compruebo que funcionó?
- A1: (Antes de instalar el hotfix): Instale el hotfix, si puede hacer eso entonces funcionó.
- A2: (Después de instalar el hotfix): Escriba `;log` en la barra de búsqueda, esto debería mostrar algo de texto en la parte superior de la pantalla.

Q: ¿Dónde están los archivos del hotfix?
- A: En el tarball, su estructura es la siguiente:

```
LanguageBreak.tar.gz
|-- LanguageBreak
|	|-- documents
|	|	|-- dictionaries
|	|	|	|-- a; export SLASH=$(awk 'BEGIN {print substr(ARGV[1], 0, 1)}' ${PWD}); sh ${SLASH}mnt${SLASH}us${SLASH}jb
|	|	|	|-- amisane
|	|-- DONT_CHECK_BATTERY
|	|-- jb
|	|-- patchedUks
|	|-- .demo
|	|	|-- boot.flag
|-- Update_hotfix_languagebreak-*.bin
```

# Solución de problemas

#### No puedo hacer que funcione
El exploit funciona mejor con versiones 5.16.2, por lo tanto, si tiene una versión inferior del firmware deberías considerar actualizar.

Descargue el archivo de actualización de la versión de Kindle en la que se encuentra actualmente desde Amazon, instálelo e inténtelo nuevamente.

```
PW5: https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_paperwhite_11th_5.XX.X.bin
PW4: https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_paperwhite_v2_5.XX.X.bin
PW3: https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_paperwhite_5.XX.X.bin
Kindle 11th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_11th_5.XX.X.bin
Kindle 10th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_10th_5.XX.X.bin
Kindle 8th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_8th_5.XX.X.bin
Scribe: https://s3.amazonaws.com/firmwaredownloads/update_kindle_scribe_5.XX.X.bin
Oasis 10th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_oasis_v2_5.XX.X.bin
Oasis 9th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_oasis_5.XX.X.bin
Oasis 8th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_oasis_5.XX.X.bin
```

Considerando lo anterior, si tiene la versión 5.16.2.1.1 para PW4, debería descargar el archivo de actualización [https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_paperwhite_v2_5.16.2.1.1.bin](]https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_paperwhite_v2_5.16.2.1.1.bin)


[Considere comprarme un café :)]("https://ko-fi.com/notmarek")
