-- Run this in Supabase SQL Editor after the customers and appointments tables exist.
-- These policies allow ONLY signed-in staff (Supabase Auth) to access customer data.

alter table public.customers enable row level security;
alter table public.appointments enable row level security;

drop policy if exists "staff can read customers" on public.customers;
create policy "staff can read customers" on public.customers
for select to authenticated using (true);

drop policy if exists "staff can insert customers" on public.customers;
create policy "staff can insert customers" on public.customers
for insert to authenticated with check (true);

drop policy if exists "staff can update customers" on public.customers;
create policy "staff can update customers" on public.customers
for update to authenticated using (true) with check (true);

drop policy if exists "staff can delete customers" on public.customers;
create policy "staff can delete customers" on public.customers
for delete to authenticated using (true);

drop policy if exists "staff can read appointments" on public.appointments;
create policy "staff can read appointments" on public.appointments
for select to authenticated using (true);

drop policy if exists "staff can insert appointments" on public.appointments;
create policy "staff can insert appointments" on public.appointments
for insert to authenticated with check (true);

drop policy if exists "staff can update appointments" on public.appointments;
create policy "staff can update appointments" on public.appointments
for update to authenticated using (true) with check (true);

drop policy if exists "staff can delete appointments" on public.appointments;
create policy "staff can delete appointments" on public.appointments
for delete to authenticated using (true);
