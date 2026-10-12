// Replace with your Supabase project URL and anon key.
// Note: a `.env` file is NOT read by the browser on a static site — edit here,
// or have your host inject window.SUPABASE_URL / window.SUPABASE_ANON_KEY.
window.SUPABASE_URL = "YOUR_PROJECT_URL";
window.SUPABASE_ANON_KEY = "YOUR_ANON_KEY";

window.isSupabaseConfigured = function () {
    return !!(
        window.SUPABASE_URL &&
        window.SUPABASE_URL !== "YOUR_PROJECT_URL" &&
        window.SUPABASE_ANON_KEY &&
        window.SUPABASE_ANON_KEY !== "YOUR_ANON_KEY"
    );
};
