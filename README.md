
---

**README.md para el repo con `add_range.sh` y `del_range.sh`:**

```markdown
# Gestión de Grupos por Rango (add_range.sh y del_range.sh)

Este repositorio contiene scripts para la creación y eliminación masiva de grupos y usuarios en un rango especificado, automatizando la gestión de bases de datos MySQL asociadas.

## Scripts incluidos

- `add_range.sh`: Script para crear múltiples grupos y usuarios en un rango definido, con sus bases de datos asociadas.
- `del_range.sh`: Script para eliminar múltiples grupos y usuarios en un rango definido, junto con sus bases de datos y archivos.

## Uso

### add_range.sh

Ejecuta el script para crear grupos/usuarios en un rango:

```bash
./add_range.sh
El script pedirá el rango inicial y final para crear los grupos.

del_range.sh
Ejecuta el script para eliminar grupos/usuarios en un rango:
./del_range.sh
El script pedirá el rango inicial y final para eliminar los grupos.

Requisitos
Permisos de superusuario para ejecutar comandos de usuario y bases de datos.

MariaDB/MySQL instalado y configurado.

Bash shell en Linux.
