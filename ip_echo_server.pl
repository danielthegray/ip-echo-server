#!/usr/bin/env perl

use Mojolicious::Lite;

get '/ipcheck' => sub {
	my $c = shift;
	my $ip = $c->tx->remote_address;
	$c->render(text => "$ip\n");
};
any '/' => {text => ''};
any '/*somepath' => {text => ''};

app->hook(after_dispatch => sub {
  my $c = shift;
  $c->res->headers->remove('Server');
});

app->config(hypnotoad => {listen => ['http://*:64444']});

app->start;
__DATA__

@@ exception.html.ep
<!DOCTYPE html>
<html>
  <head><title>Server error</title></head>
  <body>
	  <p>Please come back later.</p>
  </body>
</html>
