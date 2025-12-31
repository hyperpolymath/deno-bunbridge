;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; PLAYBOOK.scm — deno-bunbridge

(define-module (deno-bunbridge playbook)
  #:export (workflows runbooks procedures))

(define workflows
  '((development
     (setup
      (steps
       ("Clone repository" . "git clone https://github.com/hyperpolymath/deno-bunbridge")
       ("Enter directory" . "cd deno-bunbridge")
       ("Run tests" . "deno test")
       ("Format code" . "deno fmt")
       ("Lint code" . "deno lint")))
     (daily
      (steps
       ("Pull latest" . "git pull origin main")
       ("Run tests" . "deno test")
       ("Check types" . "deno check src/mod.ts"))))

    (release
     (prepare
      (steps
       ("Update version in deno.json" . "manual")
       ("Update CHANGELOG.adoc" . "manual")
       ("Run full test suite" . "deno test --coverage")
       ("Build docs" . "deno doc src/mod.ts")))
     (publish
      (steps
       ("Create git tag" . "git tag vX.Y.Z")
       ("Push with tags" . "git push origin main --tags")
       ("Publish to JSR" . "deno publish"))))))

(define runbooks
  '((incident-response
     (api-incompatibility
      (symptoms . ("Type errors on Bun API calls" "Runtime exceptions"))
      (diagnosis . ("Check Bun version compatibility" "Review API changelog"))
      (resolution . ("Update type definitions" "Add version-specific shims"))
      (prevention . ("Pin Bun version in CI" "Add compatibility tests")))

     (performance-regression
      (symptoms . ("Slower than native Bun" "High memory usage"))
      (diagnosis . ("Profile with Deno.bench" "Check FFI overhead"))
      (resolution . ("Cache FFI calls" "Batch operations"))
      (prevention . ("Add benchmarks to CI" "Document performance expectations"))))))

(define procedures
  '((adding-new-bun-api
     (description . "How to add support for a new Bun-specific API")
     (steps
      ("Research Bun API" . "Read Bun documentation for the API")
      ("Check Deno equivalent" . "See if Deno has native equivalent")
      ("Design interface" . "Create TypeScript interface matching Bun")
      ("Implement bridge" . "Use FFI or Deno stdlib as backend")
      ("Add tests" . "Test against both Bun behavior and Deno")
      ("Document" . "Add to README and generate docs")))

    (sqlite-operations
     (description . "Working with bun:sqlite compatible interface")
     (steps
      ("Import module" . "import { Database } from 'deno-bunbridge/sqlite'")
      ("Create database" . "const db = new Database(':memory:')")
      ("Execute queries" . "db.query('SELECT * FROM table')")
      ("Close connection" . "db.close()")))))
