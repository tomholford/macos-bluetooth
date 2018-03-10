# macos-bluetooth

One or more tools for managing bluetooth devices via the macOS CLI.

## Pairing with a device

`speakers.rb`
```rb
require 'pair'

Pair.new('00-01-E3-64-DD-9B').pair
```

```
> ruby speakers.rb
paired with 00-01-E3-64-DD-9B
```
