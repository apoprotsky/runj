module main

import cli
import os
import cmd

fn main() {
	mut app := cli.Command{
		name: 'runj'
		description: 'runj is an OCI-compatible runtime for FreeBSD jails'
		version: version
		commands: cmd.get_commands()
	}
	app.setup()
	app.parse(os.args)
}
