module spec

pub struct Version {
	major int = 1
	minor int //= 0
	patch int    = 2
	dev   string = '-dev'
}

const v = Version{}

pub const version = '${v.major}.${v.minor}.$v.patch$v.dev'
