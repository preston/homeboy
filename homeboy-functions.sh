
function homeboy-update-self {
	echo "Updating homeboy..."
	cd $HOMEBOY_ROOT
	git pull origin master
}

function homeboy-update-rvm {
	echo "Updating Ruby Version Manager (RVM)..."
	rvm get stable
	gem update
}

function homeboy-update-gem {
	echo "Updating installed Ruby gems..."
	gem update
}

function homeboy-update-git {
	echo "Updating git projects..."
	cd $HOMEBOY_GIT_ROOT
	DIRS=`find . -mindepth 1 -maxdepth 1 -type d  \( ! -iname ".*" \) | sed 's|^\./||g'`
	for DIR in $DIRS; do
		if [[ -d $DIR && -d $DIR/.git ]]; then
			cd $DIR
			echo -e "Upditing $DIR..."
			# pwd -P
			git pull origin master
			cd ..
		fi
	done
}

function homeboy-update-brew {
	echo "Updating installed homebrews..."
	brew update
	brew upgrade --all
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
	if [[ -f $HOMEBOY_SYNC_DIR/$HOMEBOY_SYNC_FILE ]]; then
		echo "Updating sync'd files..."
		unzip $HOMEBOY_SYNC_DIR/$HOMEBOY_SYNC_FILE -d $HOME
	fi
}

