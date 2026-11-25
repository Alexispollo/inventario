# Mi inventario: guía para publicarlo (sin editar ningún archivo)

Sitio web con contraseña, datos compartidos en línea y botón de instalar en la pantalla de inicio.
Todo gratis. No tienes que abrir ni modificar ningún archivo.

## Parte 1. Crear la base de datos (Supabase)

1. Entra a https://supabase.com y crea una cuenta gratis.
2. "New project": ponle nombre (por ejemplo "inventario"), elige una contraseña para la base de datos
   (guárdala) y la región más cercana. Espera a que termine.
3. Menú izquierdo "SQL Editor" > "New query": pega TODO el contenido de setup.sql y toca "Run".
4. Crea las cuentas de quienes entrarán: "Authentication" > "Users" > "Add user" > "Create new user".
   Escribe correo y contraseña, y activa "Auto Confirm User". Crea una para ti y otra para tu amigo.
5. Impide registros de extraños: "Authentication" > "Sign In / Providers" > Email, y desactiva
   "Allow new users to sign up".
6. Anota dos datos de "Project Settings" > "API": la "Project URL" y la clave "anon public"
   (o "publishable key"). Nunca uses la "service_role".

## Parte 2. Publicar el sitio (Netlify)

1. Entra a https://app.netlify.com/drop (cuenta gratis).
2. Arrastra la carpeta "inventario-web" completa. Netlify te da un enlace https://algo.netlify.app.

## Parte 3. Conectar y usar

1. Abre tu enlace. La primera vez la app te pide la URL y la clave de Supabase: pégalas y toca "Guardar y continuar".
2. Entra con tu correo y contraseña.
3. Toca "Invitar a mi amigo": se copia un enlace que ya lleva la conexión. Mándaselo por WhatsApp.
   Al abrirlo, tu amigo solo escribe su correo y contraseña.
4. Instálala en la pantalla de inicio:
   - iPhone (Safari): Compartir > "Añadir a pantalla de inicio".
   - Android (Chrome): menú de tres puntos > "Instalar app" o "Añadir a la pantalla de inicio".

## Notas

- Si dos personas cambian el mismo producto al mismo tiempo, se queda el último cambio.
- Sin señal, los cambios no se guardan: espera a tener cobertura.
- Supabase gratis pausa el proyecto tras una semana sin uso: en su panel toca "Restore" y no se pierde nada.
- Si olvidas una contraseña: Supabase > Authentication > Users.
