Emulates London's Boris Bike system, including the docking stations, bikes and infrustructure required.
# User Stories
## Limiting Capacity
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

```
docking_station = DockingStation.new
docking_station.dock(Bike.new)
docking_station.capacity = 1
docking_station.dock(Bike.new) - error "No available spaces"

```

## Wrapping Collections
As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.
