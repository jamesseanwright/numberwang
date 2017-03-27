# Numberwang

A very simple language for executing mathematical operations. This isn't intended for production use (**especially as it only supports floating point arithmetic!**), but is rather a means of experimenting with compiler implementation.


## Examples

The most basic program that can be expressed with Numberwang is a sum, that will be printed to stdout when compiled and run:

```js
(5 + 10) / 3;
```

```
> numberwang compile simple-sum.nw
> ./simple-sum

15
```

The language supports assignments, which can be useful for constants

```js
number lightSpeedMs = 299792458;
number sunDistanceMeters = 149600000000;
number secondsPerMinute = 60;

sunDistanceMeters / lightSpeedMs / secondsPerMinute
```

```
> numberwang compile sun-earth-light-time.nw
> ./sun-earth-light-time

8.316666666666666
```

Numberwang also supports reusable, recursive lambda functions

```js
lambda square = (x) => x * x;

// multiline lambdas are also supported
lambda factorial = (x) => {
    x < 0 ? return 0;
    x <= 1 ? return 1;

    return x * factorial(x - 1);
};

factorial(square(5));
```

## Language Spec

Consult the language spec documentation.