---
layout: crate
crate: "image_random"
authors: ["Jeff Carter"]
maintainers: ["Bent Bracke <bent@bracke.dk>"]
licenses: ["BSD-3-Clause"]
websites: ["https://github.com/bracke/Image_Random"]
tags: ["random",
"numbers",
"camera"]
version: "20200720.0.0"
short_description: "True random numbers from a digital camera "
dependencies: [{crate: "gnat", version: "<13.0 | >=13.3"}]
configuration_variables: []
configuration_values: []

---
# Image_Random
True random numbers from a digital camera

This works under Linux with the GNAT compiler; modification for other platforms or compilers is left as an exercise for the desperate

Ideally, the camera should have its lens cap on, or have a similar dark covering, so the image is of the camera sensor noise

However, another randomly changing scene, such as a lava lamp or aquarium, may also work

This is slow and only produces 64 random bytes; if you need more, it is probably best to use these bytes to seed a high-quality
pseudo-random number generator, such as the Threefry generator


