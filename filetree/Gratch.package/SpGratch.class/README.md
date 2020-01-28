SpGraph object represent a Gratch Application.
Its responsibilities are integration of models and UI for models.
Models are one graph world and one graph project.
UI is a Spec2 presenter.

Public API and Key Messages

- open
- "SpGraph new open" for instance creation.

Internal Representation and Key Implementation Points.

    Instance Variables
	events:		occurred event dictionary for execution.
	grWorld:		graph world
	lastMSec:		last updated milliseconds
	lastTicks:		last updated ticks count
