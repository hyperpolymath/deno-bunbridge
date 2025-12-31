;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; AGENTIC.scm — deno-bunbridge

(define-module (deno-bunbridge agentic)
  #:export (agent-capabilities autonomy-levels decision-boundaries))

(define agent-capabilities
  '((api-implementation
     (description . "Agent can implement Bun API equivalents in Deno")
     (scope . ("Read Bun documentation" "Create TypeScript interfaces" "Implement using Deno APIs"))
     (limitations . ("Cannot access Bun source code" "Must maintain API compatibility")))

    (test-generation
     (description . "Agent can generate tests for API compatibility")
     (scope . ("Create Deno.test cases" "Compare behavior with Bun" "Generate edge case tests"))
     (limitations . ("Cannot run tests on actual Bun" "Behavior documented may differ")))

    (documentation
     (description . "Agent can maintain documentation")
     (scope . ("Update README" "Generate API docs" "Write migration guides"))
     (limitations . ("Cannot publish externally" "Human review required")))

    (dependency-analysis
     (description . "Agent can analyze and suggest dependency updates")
     (scope . ("Check for updates" "Analyze compatibility" "Suggest upgrades"))
     (limitations . ("Cannot automatically upgrade" "Security review required")))))

(define autonomy-levels
  '((level-1-autonomous
     (actions . ("Format code" "Run linters" "Generate type definitions" "Update imports"))
     (approval . "none"))

    (level-2-supervised
     (actions . ("Implement new APIs" "Refactor modules" "Add tests" "Update docs"))
     (approval . "human-review"))

    (level-3-restricted
     (actions . ("Modify public API" "Change FFI bindings" "Update dependencies"))
     (approval . "explicit-request"))

    (level-4-prohibited
     (actions . ("Publish packages" "Delete files" "Modify security configs"))
     (approval . "never-autonomous"))))

(define decision-boundaries
  '((technical-decisions
     (agent-decides . ("Implementation details" "Test structure" "Internal naming"))
     (human-decides . ("Public API design" "Breaking changes" "Dependency choices")))

    (quality-decisions
     (agent-decides . ("Code formatting" "Linting fixes" "Documentation updates"))
     (human-decides . ("Architecture changes" "Performance tradeoffs" "Feature scope")))

    (security-decisions
     (agent-decides . ("Adding null checks" "Input validation patterns"))
     (human-decides . ("FFI safety boundaries" "Permission requirements" "Credential handling")))))
