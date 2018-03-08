#! /usr/local/bin/fish

for d in (ls)

	pushd $d
	set url (git config --get remote.origin.url)
	popd
	git submodule add $url $d

end
	
