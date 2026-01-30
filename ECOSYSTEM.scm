;; SPDX-License-Identifier: PMPL-1.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — deno-bunbridge

(ecosystem
  (version "0.1.0")
  (name "deno-bunbridge")
  (type "library")
  (purpose "Access Bun-specific APIs and ecosystem from Deno runtime")

  (position-in-ecosystem
    "Bridge layer enabling Deno to use Bun ecosystem. Part of hyperpolymath's
     Deno-as-hub infrastructure alongside bundeno, beamdeno, and v-deno.")

  (related-projects
    (project (name "bundeno")
             (url "https://github.com/hyperpolymath/bundeno")
             (relationship "sibling-bridge"))
    (project (name "beamdeno")
             (url "https://github.com/hyperpolymath/beamdeno")
             (relationship "sibling-bridge"))
    (project (name "v-deno")
             (url "https://github.com/hyperpolymath/v-deno")
             (relationship "sibling-bridge"))
    (project (name "deno")
             (url "https://deno.land")
             (relationship "runtime"))
    (project (name "bun")
             (url "https://bun.sh")
             (relationship "target-ecosystem")))

  (what-this-is
    "- Implementations of Bun-specific APIs for Deno"
    "- bun:sqlite compatible SQLite interface"
    "- Bun.file(), Bun.serve(), Bun.spawn() equivalents"
    "- FFI compatibility layer for Bun's Zig integration patterns")

  (what-this-is-not
    "- NOT a Bun runtime (use actual Bun for that)"
    "- NOT bundeno (that's for code portability, this is for API access)"
    "- NOT a general SQLite library (use for Bun API compatibility)"))
