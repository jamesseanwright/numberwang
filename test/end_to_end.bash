#!/usr/bin/env bash
function unrecognised_command_test {
	result=$(./bin/numberwang foo)
	should_be_equal "$result" "Unrecognised command \"foo\"!\n\nUsage: numberwang compile <source file>"
}

function simple_test {
	./bin/numberwang compile examples/simple.nw
	result=$(./bin/simple)
	should_be_equal "$result" "5"
}

function sun_earth_test {
	./bin/numberwang compile examples/sun-earth-light-time.nw
	result=$(./bin/sun-earth-light-time)
	should_be_equal "$result" "8.316666666666666"
}

function advanced_test {
	./bin/numberwang compile examples/advanced.nw
	result=$(./bin/advanced)
	should_be_equal "$result" "24"
}

function should_be_equal {
	actual=$1
	expected=$2

	if [[ $actual != $expected ]]
	then
		echo "Expected $actual to equal $expected" 1>&2
		exit 1
	fi
}

unrecognised_command_test
simple_test
sun_earth_test
advanced_test