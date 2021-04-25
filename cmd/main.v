module cmd

import cli

// get_commands returns array of commands
pub fn get_commands() []cli.Command {
	return [
		cli.Command{
			name: 'create'
			usage: '<container-id> <path-to-bundle>'
			description: 'create a container'
			execute: create
			required_args: 2
		},
		cli.Command{
			name: 'delete'
			usage: '<container-id>'
			description: 'delete a container'
			execute: delete
			required_args: 1
		},
		cli.Command{
			name: 'kill'
			usage: '<container-id> [<signal>]'
			description: 'send a signal to a container, SIGTERM is sent if no signal specified'
			execute: kill
			required_args: 1
		},
		cli.Command{
			name: 'spec'
			description: 'create a new specification file'
			flags: [
				cli.Flag{
					flag: cli.FlagType.string
					name: 'bundle'
					abbrev: 'b'
					description: 'path to the root of the bundle directory'
					default_value: ['.']
				},
			]
			execute: spec_command
		},
		cli.Command{
			name: 'start'
			usage: '<container-id>'
			description: 'start a container'
			execute: start
			required_args: 1
		},
		cli.Command{
			name: 'state'
			usage: '<container-id>'
			description: 'print the state of a container'
			execute: state
			required_args: 1
		},
	]
}
