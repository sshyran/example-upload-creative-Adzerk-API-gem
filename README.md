# upload-creative-example

This is an example of uploading a new image to an existing creative using the [A
dzerk API Ruby gem](https://github.com/adzerk/adzerk-api)

`upload_creative.rb` is a command line program that accepts a file and a creativ
e id, and uploads the file to Adzerk.

> The creative must already exist.  For an example of creating a creative from s
> cratch, and getting back a creative id, see the [tests](https://github.com/adzerk/adzerk-api/blob/2e6c81d78b00fd6483e5559489d20ba87c8ab8a2/test/creative_api_spec.rb#L54-L68)

## Running

You'll need to install [Ruby](https://www.ruby-lang.org/en/documentation/installation/) 
2.0 or higher for your platform if you don't already have it.  This proj
ect has been tested with Ruby 2.3.1.

Once you have Ruby, you'll need to install [bundler](https://bundler.io) with `gem i bundler` or similar.

Then, install dependencies:

    bundle install

Finally, run the program to see its help output:

    bundle exec upload_creative.rb -h

With a creative id of 1234 and a creative file called 250x300.png, you could upload with:

    bundle exec upload_creative.rb -c 1234 -f 250x300.png
