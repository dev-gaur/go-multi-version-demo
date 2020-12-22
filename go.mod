module github.com/dev-gaur/go-multi-version-demo

go 1.15

replace github.com/pkg/errors/081 => /Users/apple/go/src/github.com/pkg/errorsv0.8.1

replace github.com/pkg/errors/091 => /Users/apple/go/src/github.com/pkg/errorsv0.9.1

require (
	github.com/pkg/errors/081 v0.0.0-00010101000000-000000000000
	github.com/pkg/errors/091 v0.0.0-00010101000000-000000000000
)
