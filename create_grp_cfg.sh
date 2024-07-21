cat <<EOF > config/$1/config.go
package $1

import "github.com/crossplane/upjet/pkg/config"

// Configure configures individual resources by adding custom ResourceConfigurators.
func Configure(p *config.Provider) {
    p.AddResourceConfigurator("cloudflare_$1", func(r *config.Resource) {
        r.ShortGroup = "$1"
    })
}
EOF