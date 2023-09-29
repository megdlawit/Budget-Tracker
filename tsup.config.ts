import { defineConfig } from "tsup"

export default defineConfig({
  clean: true,
  //dts: true,
  entry: ["src/index.ts"],
  format: ["esm", "cjs", "iife"],
  sourcemap: true,
  target: "ESNext",
  outDir: "dist",
})
