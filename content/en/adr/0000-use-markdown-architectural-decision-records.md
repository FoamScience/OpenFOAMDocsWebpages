---
layout: adr
title: Use Markdown Architectural Decision Records
related:
    - Use Markdown Architectural Decision Records
status: enforced # proposed, rejected, deprecated, superseded, under-review
date: 2024-11-01
decision_makers:
    - elwardi
adr_tags:
  - backend
  - ui/ux
  - applications
---

## Context and Problem Statement

We want to record architectural decisions made in this project independent whether decisions concern the architecture ("architectural decision record"), the code, or other fields.

Which format and structure should these records follow?

## Considered Options

- [MADR](https://adr.github.io/madr/) 4.0.0 – The Markdown Architectural Decision Records
- [Michael Nygard's template](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions) – The first incarnation of the term "ADR"
- [Sustainable Architectural Decisions](https://www.infoq.com/articles/sustainable-architectural-design-decisions) – The Y-Statements
- Formless – No conventions for file format and structure

## Decision Outcome

Chosen option: A slightly Modified "MADR 4.0.0", because

- Implicit assumptions should be made explicit.
  Design documentation is important to enable people understanding the decisions later on.
  See also ["A rational design process: How and why to fake it"](https://doi.org/10.1109/TSE.1986.6312940).
- MADR allows for structured capturing of any decision.
- The MADR format fits within our documentation workflow effortlessly.

The format of an ADR markdown file must follow the following format:
```yaml
---
layout: adr
title: ADR Title
related:
    - Related ADR Title
status: enforced # proposed, rejected, deprecated, superseded, or under-review
date: 2024-11-01
decision_makers:
    - elwardi
adr_tags:
  - backend
  - ui/ux
  - applications
---

## Context and Problem Statement
Describe the context and problem statement in two-three sentences, ending with a question.

## Decision Drivers (optional*)
- Decision driver 1 (concern, force)
- Decision driver 2 (concern, force)

## Considered Options
- Option 1
- Option 2

## Decision Outcome
Chosen option: {option}, because {reasons irt. decision drivers}

### Consequences (optional*)
- Positive, improves this and that
- Neutral, changes this and that but has no significant effects
- Negative, affects this and that

### Confirmation (optional*)
How to confirm compliance with decision.

## More information (optional*)
Any more information clarifying components of the decision.
```
