
function homeboy-update-self {
	echo "Updating homeboy..."
	cd $HOMEBOY_ROOT
	git pull origin master
}

function homeboy-update-rvm {
	echo "Updating Ruby Version Manager (RVM)..."
	rvm get stable
	gem get stable
}

function homeboy-update-gem {
	echo "Updating installed Ruby gems..."
	gem update
}

function homeboy-update-git {
	echo "Updating git projects..."
	cd $HOMEBOY_GIT_ROOT
	DIRS=`find . -mindepth 1 -maxdepth 1 -type d  \( ! -iname ".*" \) | sed 's|^\./||g'`
	for DIR in DIRS distributions; do
		cd $DIR
		git pull origin master
		cd ..
	done
}

function homeboy-update-brew {
	echo "Updating installed homebrews..."
	brew update
	brew upgrade
	brew doctor
}

function homeboy-update-apt {
	echo "Updating apt..."
	apt-get update
	apt-get upgrade -y
	apt-get autoremove -y
	apt-get autoclean
}

function homeboy-update-yum {
	echo "Updating yum..."
	yum update
}

function homeboy-sync-pull {
	unzip $HOMEBOY_SYNC_DIR/$HOMEBOY_SYNC_FILE -d $HOME
}

function homeboy-sync-push {
	zip -r $HOMEBOY_SYNC_DIR/$HOMEBOY_SYNC_FILE $HOME
}

