module cmd

import cli
import os
import spec
import json

fn spec_command(command cli.Command) ? {
	flag_bundle := command.flags[0].get_string() or {
		println(err.msg)
		exit(1)
	}
	bundle := if os.is_abs_path(flag_bundle) {
		flag_bundle
	} else {
		os.resource_abs_path(flag_bundle)
	}
	if !os.exists(bundle) {
		println('$bundle directory is not exists')
		exit(1)
	}
	if !os.is_dir(bundle) {
		println('$bundle is not a directory')
		exit(1)
	}
	if !os.is_writable(bundle) {
		println('$bundle directory is not writable')
		exit(1)
	}
	config := '$bundle/$spec.config'
	if os.exists(config) {
		println('File $config already exists')
		exit(1)
	}
	s := spec.Spec{}
	os.write_file(config, json.encode_pretty(s) + '\n') or { panic(err.msg) }
}
