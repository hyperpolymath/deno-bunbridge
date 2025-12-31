;;; STATE.scm — deno-bunbridge
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define metadata
  '((version . "0.1.0")
    (schema-version . "1.0")
    (created . "2025-12-31")
    (updated . "2025-12-31")
    (project . "deno-bunbridge")
    (repo . "https://github.com/hyperpolymath/deno-bunbridge")))

(define project-context
  '((name . "deno-bunbridge")
    (tagline . "Access Bun ecosystem from Deno")
    (tech-stack . ("TypeScript" "Deno FFI"))))

(define current-position
  '((phase . "v0.1 - Foundation")
    (overall-completion . 5)
    (components
      ((sqlite-bridge ((status . "planned") (completion . 0)))
       (file-bridge ((status . "planned") (completion . 0)))
       (serve-bridge ((status . "planned") (completion . 0)))
       (spawn-bridge ((status . "planned") (completion . 0)))
       (ffi-compat ((status . "planned") (completion . 0)))
       (documentation ((status . "in-progress") (completion . 30)))))
    (working-features ())))

(define route-to-mvp
  '((milestones
      ((v0.1.0
         (name . "SQLite Bridge")
         (status . "planned")
         (items
           ("bun:sqlite compatible API" . pending)
           ("FFI to libsqlite3" . pending)
           ("Query builder" . pending)
           ("Tests" . pending)))
       (v0.2.0
         (name . "File & Serve")
         (status . "planned")
         (items
           ("Bun.file() equivalent" . pending)
           ("Bun.serve() wrapper" . pending)
           ("Bun.write() wrapper" . pending)))
       (v0.3.0
         (name . "FFI Compat")
         (status . "planned")
         (items
           ("Zig library loading" . pending)
           ("Type mapping" . pending)))))))

(define blockers-and-issues
  '((critical ())
    (high-priority
      (("Decide SQLite implementation" . "FFI to libsqlite3 vs better-sqlite3 npm")))
    (medium-priority ())
    (low-priority ())))

(define critical-next-actions
  '((immediate
      (("Implement bun:sqlite API" . high)
       ("Set up test suite" . high)))
    (this-week
      (("Add Bun.file equivalent" . medium)))
    (this-month
      (("Complete serve bridge" . low)))))

(define session-history
  '((snapshots
      ((date . "2025-12-31")
       (session . "initial-setup")
       (accomplishments ("Created repository" "Added README.adoc"))
       (notes . "Project scaffolding")))))

(define state-summary
  '((project . "deno-bunbridge")
    (completion . 5)
    (blockers . 0)
    (phase . "Foundation")
    (updated . "2025-12-31")))
