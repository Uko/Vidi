I run Lint rules and visualize the result.

The easiest way to use me is:

(VidiRuleRunner withAllRulesOnPackagesNamed: 'Collection*') check ccBuilder open

#check resets lint results and runs them again.
#ccBuilder returns CCBuilder ready to show viz of rule violations.

Redness of building blocks dipicts violation level in method, redness of the bases dipicts violation level in classes