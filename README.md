# Chess-AI-TDD

This is a **chess playing bot** written in Swift.

Here is a summary of it's working principle:

1. It utilizes the well-known **minimax algorithm** for constructing decision trees.
2. Then it prunes that tree using **alpha-beta pruning algorithm**.
3. After pruning it traverses that tree, evaluates the highest ranked move and plays it.
4. The depth of decision tree is **2**.

Here's a screenshot of the bot playing itself:

![Screenshot](https://github.com/AdnanZahid/Chess-AI-TDD/blob/master/Screenshot.png)

Please see the following files for more information:

1. [AIPlayer.swift](https://github.com/AdnanZahid/Chess-AI-TDD/blob/master/SharedResources/Models/AIPlayer.swift)
2. [EvaluationValueHandler.swift](https://github.com/AdnanZahid/Chess-AI-TDD/blob/master/SharedResources/Models/EvaluationValueHandler.swift)

Graphical programming is done in Apple's SceneKit framework (used for 3D graphics programming).
