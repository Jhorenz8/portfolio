// Replace with your Supabase project URL and anon key.
// Note: a .env file is NOT read by the browser on a static site — edit here,
// or have your host inject window.SUPABASE_URL / window.SUPABASE_ANON_KEY.
window.SUPABASE_URL = "https://tfgjqiglqtmxeicyagqk.supabase.co";
window.SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRmZ2pxaWdscXRteGVpY3lhZ3FrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3OTE3NjYyOTgsImV4cCI6MjEwNzM0MjI5OH0.fcwVkdh4mm9AFdIdXUOcDtnqc6hvN3pLoRgUXcfBiB0";

window.isSupabaseConfigured = function () {
    return !!(
        window.SUPABASE_URL &&
        window.SUPABASE_URL !== "YOUR_PROJECT_URL" &&
        window.SUPABASE_ANON_KEY &&
        window.SUPABASE_ANON_KEY !== "YOUR_ANON_KEY"
    );
};