;; SPDX-License-Identifier: PMPL-1.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; NEUROSYM.scm — deno-bunbridge

(define-module (deno-bunbridge neurosym)
  #:export (cognitive-patterns symbolic-structures reasoning-modes))

(define cognitive-patterns
  '((api-mimicry
     (pattern . "Match external API surface exactly")
     (rationale . "Developers expect identical behavior when using Bun APIs")
     (application . ("Function signatures" "Return types" "Error messages"))
     (anti-patterns . ("Inventing new APIs" "Changing semantics" "Adding features")))

    (layered-abstraction
     (pattern . "Build from low-level primitives to high-level APIs")
     (rationale . "Enables testing and debugging at each layer")
     (application . ("FFI → wrapper → API" "Deno stdlib → Bun compat"))
     (anti-patterns . ("Monolithic implementations" "Skipping layers")))

    (fail-loud
     (pattern . "Throw clear errors when Bun API unavailable")
     (rationale . "Better developer experience than silent failures")
     (application . ("Missing API stubs" "Unsupported features"))
     (anti-patterns . ("Silent no-ops" "Returning undefined")))))

(define symbolic-structures
  '((api-taxonomy
     (bun:core . ("Bun.serve" "Bun.file" "Bun.spawn" "Bun.write"))
     (bun:sqlite . ("Database" "Statement" "Transaction"))
     (bun:ffi . ("dlopen" "CString" "ptr"))
     (bun:test . ("test" "expect" "describe")))

    (implementation-status
     (native . "Implemented using Deno equivalent")
     (ffi . "Implemented using Deno.dlopen")
     (polyfill . "JavaScript polyfill")
     (unavailable . "Cannot be implemented"))

    (compatibility-matrix
     (full . "100% API compatible")
     (partial . "Core features only")
     (signature . "Same signature, different behavior")
     (none . "Not implemented"))))

(define reasoning-modes
  '((api-design
     (mode . "Outside-in design")
     (process . ("Study Bun API" "Define TypeScript interface" "Implement internals"))
     (validation . "Behavior matches Bun documentation"))

    (compatibility-analysis
     (mode . "Gap analysis")
     (process . ("List Bun APIs" "Check Deno equivalents" "Identify gaps"))
     (validation . "All gaps documented with rationale"))

    (performance-reasoning
     (mode . "Acceptable overhead")
     (process . ("Measure native Bun" "Measure bridge" "Calculate overhead"))
     (validation . "Overhead under 10% for common operations"))))
