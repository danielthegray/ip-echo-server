# ip-echo-server
A collection of IP echo servers, ideally in a single-file format

I first wrote an IP echo server in Perl using Mojolicious, because I needed something fast for detecting the IP address.

Unfortunately, it wasn't as easily portable as I would have liked, so I ended up looking for another alternative.

My first other look was Rust, but I didn't manage to do it easily with the Rocket library that I had used in another project,
so I decided to quickly give Go another try. It didn't take very long to implement this and I'm happy with the result, so I
will use that one for now (with the nice single binary). Another added bonus is that the Go and Perl versions both fit in a
single file, so if I create any other similar ones in the future, I will probably add it here.

I hope it's useful for someone else!
