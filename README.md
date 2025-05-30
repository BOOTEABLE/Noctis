# 🚀 Gestión Masiva de Grupos/Usuarios con MySQL

Scripts Bash para administración **masiva** de grupos y usuarios en rangos numéricos, incluyendo sus bases de datos MySQL asociadas.

## 📦 Scripts Automatizados

### `add_range.sh`
**Función**:  
Crea múltiples grupos/usuarios en un rango numérico especificado, con:  
- Directorios personales  
- Bases de datos MySQL independientes  
- Estructura de permisos  

### `del_range.sh`  
**Función**:  
Elimina en lote todos los recursos de grupos/usuarios dentro de un rango:  
🗑️ Usuarios y grupos del sistema  
💾 Bases de datos MySQL asociadas  
📂 Directorios y archivos  

---

## 🛠️ Instalación y Configuración
```bash
git clone https://github.com/tu-repositorio/Noctis_Scripts.git
cd Noctis_Scripts/Public
chmod +x add_range.sh del_range.sh  # Permisos de ejecución
