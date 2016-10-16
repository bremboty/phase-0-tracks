
highways = {

	'highway1' => {
		'bronco' => [
			'henry',
			'bob',
			'jill',
		],
		'corvette' => [
			'mandy',
			'clarissa',
			'taryn',
		],
		'pinto' => [
			'johnny',
			'palermo',
		],
		'mustang' => [
			'kris',
			'chris',
		],
		'model A' => [
			'old man',
			'old woman',
		],
	},

	'highway2' => 'empty' ,
	
}

p highways['highway1']['bronco'][1]
p highways['highway1']['mustang']
p highways['highway1']['bronco'][1].upcase