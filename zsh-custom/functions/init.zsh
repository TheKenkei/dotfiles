export FUNCTIONS_FOLDER="$ZSH_KENKEI_FOLDER/funtions"

targz() {
    echo "taring $1 in $1.tar.gz ... "
    tar -czf $1.tar.gz $1
    if [ "$2" = "--rm" ]; then
        echo "deling $1 ..."
        rm -rf $1
    fi
    echo "done!"
}




backup() {
    local source_dir="$1"
    local backup_dir="${source_dir}-backup"
    local remove_source="$2"

    echo "Backing up ${source_dir} to ${backup_dir}..."
    cp -r "${source_dir}" "${backup_dir}"

    if [[ "${remove_source}" == "--rm" ]]; then
        echo "Removing ${source_dir}..."
        rm -rf "${source_dir}"
    fi

    echo "Done!"
}

yy() {
    local temp_file="$(mktemp -t "yazi_cwd.XXXXXX")"
    yazi "$@" --cwd-file="$temp_file"
    local new_directory="$(cat -- "$temp_file")"
    if [ -n "$new_directory" ] && [ "$new_directory" != "$PWD" ]; then
        cd "$new_directory"
    fi
    rm -f -- "$temp_file"
}
ff ()
{
    find . | grep $1
}
