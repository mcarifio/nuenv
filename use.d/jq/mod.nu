# use jq

# `export use ${pathname}.nu` # flattened in jq namespace or ...
# `use jq ${submod}` for jq/${submod}.nu
# `use jq ${submod} *`
# `use jq ${submod} [{export}...]`
# export module ${submod}

# usage: `jq self`
const author = { name: "Mike Carifio", email: "<mike@carif.io>" }
const myself = { path: (path self), author: $author }
export def about [] { $myself }

export def --env post-use [...args] {

}

export def --env main [...args] {
    post-use $args
}

