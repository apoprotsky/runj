module state

import spec

pub struct State {
	oci_version string            [json: ociVersion; required] = spec.version
	id          string            [required]
	status      Status            [required] = Status.creating
	pid         int               [required]
	bundle      string            [required]
	annotations map[string]string
}

pub enum Status {
	creating
	created
	running
	stopped
}
