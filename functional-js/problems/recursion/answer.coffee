deps = (pkg, result=[]) ->
  ([k, v] for k, v of pkg.dependencies)
    .reduce (prev, next) -> 
      [k, v] = next
      dep = [k, v.version].join('@')
      prev.push(dep) if not (dep in prev)
      deps(v, prev).sort()
    , result

module.exports = deps
