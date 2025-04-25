import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
  // ← adjust this to your deploy path:
  // • "/" if you’re on a custom domain root
  // • "/my-repo-name/" for GitHub Pages under that repo
  base: '/portfolio/',
  plugins: [react()],
});
