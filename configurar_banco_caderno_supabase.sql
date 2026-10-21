-- Caderno de Campo — Supabase
-- Execute no SQL Editor do seu projeto Supabase.
-- A tabela separa os dados por usuário e as políticas RLS impedem acesso entre contas.

create table if not exists public.field_notes (
  id text primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  payload jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.field_notes enable row level security;

create policy "Users can read their own field notes"
on public.field_notes for select
to authenticated
using (auth.uid() = user_id);

create policy "Users can insert their own field notes"
on public.field_notes for insert
to authenticated
with check (auth.uid() = user_id);

create policy "Users can update their own field notes"
on public.field_notes for update
to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

create policy "Users can delete their own field notes"
on public.field_notes for delete
to authenticated
using (auth.uid() = user_id);

create index if not exists field_notes_user_id_idx
on public.field_notes (user_id);

-- Não desative RLS. Nunca use a chave service_role no HTML público.
