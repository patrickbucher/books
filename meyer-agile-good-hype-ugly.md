---
title: 'Agile! The Good, the Hype, and the Ugly (Bertrand Meyer)'
subtitle: 'Book Summary'
author: 'Patrick Bucher'
---

This is a practical book that enables the reader to benefit from the good ideas of agile methods while staying away from the bad ones. Agile methods are a mix of horrible and great ideas. Instead of trying out Scrum, Extreme Programming, Lean Softwae, and Crystal all on one's own, this book provides a description and assessment of their underlying ideas.

First, those methods are described without the usual sermons and anecdotes. Second, the underlying ideas are scrutinized and assessed, thereby separating the useful from the harmful ones. Agile methods and their texts put three difficoulties in the reader's way:

1. _Partisanship_: While it's common for their inventors to argue in favour of their inventions, proponents of agile methods ignore the rules of rational discourse and ask the reader to join their cult, which is inappropriate for engineering problems.
2. _Intimidation_: Agile texts dismiss previous approaches to software development as outdated and their users as rigid and backwards. Who wants to argue against "agile" when all of this word's opposites have negative meanings?
3. _Extremism_: Proponents of some agile methods insist on the application of a method in its entirety, which discourages a more differentiated view on the techniques that make up a specific method.

While previous books criticizing agile methods were rather timid, this book will call out the bad ideas without undue dereference.

The first chapter is a summary of agile ideas. In the second chapter, the rhetoric of agile texts is analyzed. Chapter three is a description of traditional plan-based software development—to which agile methods are the antidote. Chapters four to eight review agile ideas: principles, roles, practices, and artifacts.

Those chapters do not focus on individual methods, but on their many commonalities. Scrum, Lean, XP, and Crystal are then presented in chapter nine as combinations of those principles already discussed, each with their one single big idea emphasized.

Chapter ten described precautions organizations should take when adopting agile methods. Chapter eleven is the final assessment; it classifies agile ideas into three categories: the good, the hype, and the ugly.

This book is not a comprehensive guide to software development, but a critique of existing approaches. Authors usually argument by gut feeling, by experience (e.g. projects saved by agile approaches and failed by ignoring them), logical reasoning, and, ideally, empirical analysis (for which there is usually too little data available). This book relies mostly on analytical reasoning, combined with personal experience and anecdotes for illustrative purposes.

# Overview

While agile ideas date back to the 1990s, the movement gained traction with the publication of the _Manifesto for Agile Software Development_ in 2001, which was signed by many proponents of existing agile ideas. Agile software development is not a single method, but a collection of ideas grouped together to methodologies such as _Extreme Programming_, _Lean Software Development_, _Crystal_, and _Scrum_, which all select and prioritize their own subset of agile ideas. However, there are some common core characteristics to those methods:

- _Values_: general assumptions framing the agile world view
- _Principles_: organizational and technical rules based on the values
- _Roles_: responsibilities and privileges of actors involved
- _Practices_: specific activities based on the principles
- _Artifacts_: virtual and physical tools supporting the practices

## Values

The fundamental assumptions of agile software development are captured in the following values:

1. _Redefined roles for developers, managers, and customers_: Some of the manager's duties are transferred to the team, such as the selection and assignment of the tasks. The developers and their code are moved into the center. Customers are no longer passive recipients of a product but active participants in the development process.
2. _No "big upfront" steps_: Activities preceding the writing of code such as gathering requirements ("the customer does not know what he wants") or creating a design ("the developers do not know what will work") are left out because they are subject to change anyway. Instead, requirements and design emerge in a continuous process involving the customer, in which the software is iteratively refactored into his acceptance.
3. _Iterative development_: Development takes place in iterations of a fixed time, usually a few weeks, for which the functionality with the highest business value is implemented by working through a prioritized list of tasks. Functionality is added iteratively.
4. _Limited, negotiated functionality_: Only the most important features, measured by their business value, will be implemented. Unused functionality is deemed wasteful and therefore not implemented in the first place. The functionality to be added is negotiated before the start of every iteration. Since it is empirically impossible to fix both scope and deadline, usually the deadline is retained, but the scope limited accordingly.
5. _Focus on quality, understood as achieved through testing_: Quality is ensured by continuous testing rather than by upfront design decisions or by sticking to development methodologies. The project's regression test suite is a central artifact and must always pass when new functionality is added.

## Principles

The following principles—not the ones from the original Manifesto, but extracted from the various texts on agile software development—turn the values from above into prescriptions:

- Organizational
    1. _Put the customer at the center_: Customer representatives are involved throughout the project, which should deliver the best Return on Investment to the customer.
    2. _Let the team self-organize_: The team members pick their own tasks rather than having them assigned by a manager.
    3. _Work at a sustainable pace_: Programmers work reasonable hours rather than through intense phases with long hours to meet deadlines set by a manager.
    4. _Develop minimal software_: 1) Only essential functions are built (_minimal functionality_); 2) Only what is requested is built, and extra work for future reuse and extensibility is left out (_minimal product_); 3) Only what is delivered to the customer—programs and tests—is built (_minimal artifacts_).
    5. _Accept change_: Requirements are not complete at the beginning, but evolve as customers interact with intermediate releases. Change is considered normal.
- Technical
    1. _Develop iteratively_: Every iteration of a fixed number of weeks produces a working release, providing the customer new functionality he can try out and give feedback on, which is then considered for a later iteration. No new functionality is demanded during an ongoing iteration; such requests are taken into consideration for an upcoming iteration instead.
    2. _Treat tests as a key resource_: Quality is ensured by automated tests. No new development must start until all current tests pass. A text expresses the requirements new code must satisfy and is therefore written before the production code (_test first_).
    3. _Express requirements through scenarios_: A scenario (e.g. a _use case_ or a _user story_) describes an interaction of a user with the system that is to be built. Scenarios are obtained from the customer and written from a user's perspective. Unlike requirements, scenarios are not complete specifications but only examples. Scenarios do not have to be collected at the beginning of the project, but can be added and modified during development.

Thus, requirements are replaced by two artifacts: tests and scenarios.

