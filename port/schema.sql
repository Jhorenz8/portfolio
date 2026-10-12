-- Run in Supabase SQL Editor. Idempotent (safe to re-run).

create table if not exists public.products (
    id          uuid primary key default gen_random_uuid(),
    name        text not null,
    price       numeric not null default 0,
    image_url   text not null,
    description text,
    sizes       integer[] default '{6,7,8,9,10,11,12}',
    created_at  timestamptz default now()
);

create table if not exists public.orders (
    id            uuid primary key default gen_random_uuid(),
    customer_name text not null,
    email         text not null,
    phone         text,
    address       text,
    items         jsonb not null default '[]'::jsonb,
    total         numeric not null default 0,
    status        text not null default 'Pending',
    created_at    timestamptz default now()
);

insert into public.products (id, name, price, image_url, description, sizes) values
    ('11111111-1111-1111-1111-111111111111', 'Nike Air Force 1 Low', 120, 'nike1.jpg', 'Classic low-top with premium leather and a clean silhouette.', '{6,7,8,9,10,11,12}'),
    ('22222222-2222-2222-2222-222222222222', 'Jordan 1 Retro Bred',  170, 'nike2.jpg', 'Iconic black and red colorway from the original 1985 release.', '{6,7,8,9,10,11,12}'),
    ('33333333-3333-3333-3333-333333333333', 'Nike Dunk Orange',     150, 'nike3.jpg', 'Vibrant orange Dunk low with a crisp white midsole.', '{6,7,8,9,10,11,12}'),
    ('44444444-4444-4444-4444-444444444444', 'Jordan 1 Mocha',       180, 'nike4.jpg', 'Mocha brown suede overlays with a premium leather base.', '{6,7,8,9,10,11,12}'),
    ('55555555-5555-5555-5555-555555555555', 'Nike Dunk Navy',       155, 'nike5.jpg', 'Navy blue Dunk low, a versatile everyday classic.', '{6,7,8,9,10,11,12}')
on conflict (id) do nothing;
