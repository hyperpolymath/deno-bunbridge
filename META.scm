;; SPDX-License-Identifier: PMPL-1.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; META.scm — deno-bunbridge

(define-module (deno-bunbridge meta)
  #:export (architecture-decisions development-practices design-rationale))

(define architecture-decisions
  '((adr-001
     (title . "API Mimicry over Abstraction")
     (status . "accepted")
     (date . "2025-12-31")
     (context . "Users want to run Bun code on Deno without changes")
     (decision . "Exactly mirror Bun API signatures, not abstract them")
     (consequences . ("Drop-in compatibility" "Bun updates may require updates" "Clear migration path")))

    (adr-002
     (title . "SQLite via FFI")
     (status . "accepted")
     (date . "2025-12-31")
     (context . "bun:sqlite is native, need equivalent performance on Deno")
     (decision . "Use Deno FFI to libsqlite3 for native performance")
     (consequences . ("Native speed" "Requires libsqlite3 installed" "Cross-platform builds needed")))))

(define development-practices
  '((code-style
     (languages . ("TypeScript"))
     (formatter . "deno fmt")
     (linter . "deno lint"))
    (security
     (sast . "CodeQL")
     (permissions . "minimal required"))
    (testing
     (framework . "Deno.test")
     (coverage-minimum . 80)
     (compatibility-tests . "Compare output with actual Bun"))
    (versioning
     (scheme . "SemVer 2.0.0"))))

(define design-rationale
  '((why-bridge-not-polyfill
     "Polyfills fake APIs. We provide real implementations via native Deno capabilities.")
    (why-ffi-for-sqlite
     "SQLite is performance-critical. FFI gives native speed without npm dependencies.")))
