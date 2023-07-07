if [ "$#" -eq 0 ]; then
	versions="$(jq -r 'keys | map(@sh) | join(" ")' versions.json)"
	eval "set -- $versions"
fi

for version; do
	export version
    rm -rf $version
    mkdir $version
    variants="$(jq -r '.[env.version].ubuntu' versions.json)"
    for variant in "${variants[@]}"; do
		export variant
        mkdir $version/ubuntu-$variant

        cp Dockerfile.ubuntu.template $version/ubuntu-$variant/Dockerfile
        cp docker-entrypoint.sh $version/ubuntu-$variant/
        docker build -t $version-ubuntu$variant \
            --build-arg ANSIBLE_VERSION=$version \
            --build-arg variant=$variant \
            -f ./$version/ubuntu-$variant/Dockerfile ./$version/ubuntu-$variant
    done
done

