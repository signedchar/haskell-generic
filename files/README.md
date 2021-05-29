## Usage

### Capslocker

#### Command

```shell
cat /etc/network/interfaces | ./capslocker
```

#### Output

```
# THIS FILE DESCRIBES THE NETWORK INTERFACES AVAILABLE ON YOUR SYSTEM
# AND HOW TO ACTIVATE THEM. FOR MORE INFORMATION, SEE INTERFACES(5).

SOURCE /ETC/NETWORK/INTERFACES.D/*

# THE LOOPBACK NETWORK INTERFACE
AUTO LO
IFACE LO INET LOOPBACK
```

### Lowercase

#### Command
```shell
cat /etc/network/interfaces | ./lowercase
```

#### Output
```
# this file describes the network interfaces available on your system
# and how to activate them. for more information, see interfaces(5).

source /etc/network/interfaces.d/*

# the loopback network interface
auto lo
iface lo inet loopback
```

## Build

```haskell
ghc --make capslocker.hs
ghc --make lowercase.hs
```
