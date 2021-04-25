module spec

pub struct Spec {
	version string  [json: ociVersion; required] = version
	process Process
	root    Root
}

pub struct Process {
	terminal bool
	args     []string = ['sh']
	env      []string = [
	'PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
	'TERM=xterm',
]
}

pub struct Root {
	path string
}
