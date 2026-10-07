create table public.state(
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}',
  updated_at timestamptz default now());
alter table public.state enable row level security;
create policy "own row" on public.state for all
  using (auth.uid()=user_id) with check (auth.uid()=user_id);
alter publication supabase_realtime add table public.state;
