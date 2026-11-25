-- Pega todo esto en Supabase: SQL Editor > New query > Run

create table if not exists categories (
  name text primary key
);

create table if not exists products (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  category text not null default 'General',
  brand text not null default '',
  price numeric not null default 0,
  qty integer not null default 0,
  min_qty integer not null default 5,
  photo text not null default '',
  created_at timestamptz not null default now()
);

-- Seguridad: solo las personas con sesión iniciada pueden leer y cambiar datos.
alter table categories enable row level security;
alter table products enable row level security;

create policy "solo usuarios con sesion" on categories
  for all to authenticated using (true) with check (true);
create policy "solo usuarios con sesion" on products
  for all to authenticated using (true) with check (true);

insert into categories (name) values ('General') on conflict do nothing;

-- Cambios en vivo entre dispositivos
alter publication supabase_realtime add table products;
alter publication supabase_realtime add table categories;
