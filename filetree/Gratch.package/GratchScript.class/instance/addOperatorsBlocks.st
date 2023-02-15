block specs
addOperatorsBlocks

	blockMorphBuilder
		addCategory: 'operators';
		addReporter: '%n + %n' selector: #plus:and: arguments: #( 1 2 );
		addReporter: '%n - %n' selector: #minus:with: arguments: #( 1 2 );
		addReporter: '%n * %n' selector: #multiply:and: arguments: #( 1 2 );
		addReporter: '%n / %n' selector: #divide:by: arguments: #( 1 2 );
		addReporter: '- %n' selector: #negated: arguments: #( 1 );
		addSeparator;
		addReporter: 'pick random %n to %n' selector: #randomFrom:to: arguments: #( 1 10 );
		addSeparator;
		addBooleanReporter: '%s < %s' selector: #less:than: arguments: #( '' '' );
		addBooleanReporter: '%s <= %s' selector: #lessEqual:than: arguments: #( '' '' );
		addBooleanReporter: '%s = %s' selector: #equal:to: arguments: #( '' '' );
		addBooleanReporter: '%s >= %s' selector: #moreEqual:than: arguments: #( '' '' );
		addBooleanReporter: '%s > %s' selector: #more:than: arguments: #( '' '' );
		addBooleanReporter: '%n between %n and %n' selector: #is:between:and: arguments: #( 50 0 100 );
		addSeparator;
		addBooleanReporter: '%b and %b' selector: #and:with: arguments: #( '' '' );
		addBooleanReporter: '%b or %b' selector: #or:with: arguments: #( '' '' );
		addBooleanReporter: 'not %b' selector: #not: arguments: #( '' '' );
		addSeparator;
		addReporter: '%n mod %n' selector: #mod:by: arguments: #( 1 2 );
		addReporter: 'round %n' selector: #rounded: arguments: #( 1.5 );
		addReporter: 'truncate %n' selector: #truncated: arguments: #( 1.5 );
		addSeparator;
		addReporter: '%f of %n' selector: #computeFunction:of: arguments: #( 'sqrt' 10 )