# Nike Store + Admin Dashboard

Mini e-commerce add-on for the Jogratz portfolio. Vanilla HTML/CSS/JS + Supabase.

## Files

| File          | Purpose                                              |
| ------------- | ---------------------------------------------------- |
| `ecom.html`   | Store page (products, cart, checkout)                |
| `admin.html`  | Admin dashboard (login, orders, status, delete)      |
| `config.js`   | Shared Supabase URL + anon key (edit this)           |
| `schema.sql`  | Creates `products` + `orders` tables and seeds data  |

## Setup

1. **Create tables** — in Supabase, open **SQL Editor**, paste the contents of
   `schema.sql`, and click **Run**. This creates both tables and seeds 5 shoes.

2. **Add your keys** — open `config.js` and replace `YOUR_PROJECT_URL` and
   `YOUR_ANON_KEY` with your Supabase project URL and **anon/public** key.
   (Project Settings → API). Never paste the `service_role` key here.

   > `.env` note: because this is a static site, the browser will not read a
   > `.env` file. Edit `config.js` directly, or have your host inject
   > `window.SUPABASE_URL` / `window.SUPABASE_ANON_KEY`.

3. **Create the admin login** — Supabase → **Authentication → Users → Add user**,
   enter an email + password, and check **Auto Confirm User**. Use those
   credentials on `admin.html`.

4. **Host** — deploy `port/` as usual. `index.html`, `ecom.html`, and
   `admin.html` live side by side, so the navbar links work.

## Links

- Store: `ecom.html`
- Admin: `admin.html`
- Both are linked from the portfolio navbar.
