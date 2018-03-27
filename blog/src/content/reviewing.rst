Reviewing Criteria
##################

:date: 2018-03-26 11:00

I have been reviewing more and more papers recently and have been thinking about how exactly I decide whether a submission is worth accepting.
I thought I'd write down my reviewing criteria, mostly to confirm to myself that I actually have a principled way of doing it.
I'd also be interested in hearing if other reviewers think it's reasonable, and if it is, it could potentially serve as a point of reference for people writing papers.
If I review your paper and it fails to meet one of these criteria, I'll probably recommend that it gets rejected; if your paper does a great job in all of them, I'll fight for its acceptance.
*Disclaimer: I only review for (and submit to) a small handful of venues, which are all machine learning-related conferences.  This same set of rules may not apply to other fields, or different types of venues like journals and workshops.*

Criteria
--------

#. The paper must present a New Thing.
   It doesn't have to be a new algorithm or technique - it can be new perspective or experiments on something which already exists.
   But there must be information or insight in the paper which is not available elsewhere.
   Further, it shouldn't be "incremental" - this information delta should be non-negligible.

#. The paper must provide a convincing justification of the New Thing.
   This can be theoretical, empirical, or philosophical, but I should finish reading the paper thinking that it is worth people's time.
   For example, the New Thing could improve the performance of an existing model, or there could be a compelling argument that it exhibits improved theoretical properties.

#. The description of the New Thing must be clear and understandable.
   Writing is important.
   I'm not really willing to accept a state-of-the-art result if it's really poorly described or there are lots of missing details.
   To the above point, if the justification isn't also clear and understandable, it won't really be convincing either.

Note that I'm not including "the paper must cite everything related to the New Thing" as a criterion.
As long as the New Thing is genuinely new, I'm happy to tell the authors that they missed some relevant citations and give them the benefit of the doubt that it will be included in the final version of the paper.
Nor are "the paper must follow a standard narrative format" or "the paper must be completely free of grammatical errors or typos" or "the graphs must be pretty" criteria, though they don't hurt.
As long as I can understand the contribution and the proof of concept, I'm happy.
Finally, I think there are issues with the current reviewing system (for example, in most venues there's no reliable way to evaluate the reproducibility of a paper), but that's a subject for another post.
This list of criteria are the way I review things in the current (arguably flawed) system.

Example
-------

As an example, I'll consider `"Parametric Adversarial Divergences are Good Task Losses for Generative Modeling" <https://openreview.net/forum?id=rkEtzzWAb>`_.
Since it was submitted to ICLR, you can see the reviews, and you'll notice that the reviewers didn't like the paper much.
I liked it a lot (I even posted a public comment on OpenReview saying as much), so I'll try to justify why based on my reviewing criteria.

First, this is a "position paper", and as such its goal is to provide new perspective on existing ideas.
It argues that adversarial divergences are a) sample efficient and b) able to enforce task-specific priors.
Both of these facts had been established before, but this paper fleshes them out in a compelling way and provides the novel perspective of considering them like "task losses" used for structured prediction.
This satisfies criterion 1.
The authors provide some simple theoretical justification and a series of clever experiments to show that adversarial divergences can encode and learn task-specific structure, which covers the second criterion.
Finally, I personally found the paper understandable and well-written, but you'll have to decide for yourself!

*Thanks to Catherine Olsson, Martin Abadi, and Ishaan Gulrajani for their comments and feedback on a draft version of this blog post.  Thanks also to Vincent Lostanlen for pointing out that I initially failed to address reproducibility as a criterion.*
