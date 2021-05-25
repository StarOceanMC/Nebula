workdir="$basedir"/Tuinity/Paper/work
minecraftversion=$(cat "$basedir"/Tuinity/Paper/work/BuildData/info.json | grep minecraftVersion | cut -d '"' -f 4)
nms="net/minecraft"
cd "$basedir"
    if [ -f "$basedir/Tuinity/Tuinity-Server/src/main/java/$nms/$1.java" ]; then
        mkdir -p "$(dirname "$target")"
function importLibrary {
    group=$1
    lib=$2
    prefix=$3
    shift 3
    for file in "$@"; do
        file="$prefix/$file"
        target="$basedir/Tuinity/Tuinity-Server/src/main/java/$file"
        targetdir=$(dirname "$target")
        mkdir -p "${targetdir}"
        base="$workdir/Minecraft/$minecraftversion/libraries/${group}/${lib}/$file"
        if [ ! -f "$base" ]; then
            echo "Missing $base"
            exit 1
        fi
        export MODLOG="$MODLOG  Imported $file from $lib\n";
        sed 's/\r$//' "$base" > "$target" || exit 1
    done
}

files=$(cat patches/server/* | grep "+++ b/src/main/java/net/minecraft/" | sort | uniq | sed 's/\+\+\+ b\/src\/main\/java\/net\/minecraft\///g')
nonnms=$(grep -R "new file mode" -B 1 "$basedir/patches/server/" | grep -v "new file mode" | grep -oE --color=none "net\/minecraft\/.*.java" | sed 's/.*\/net\/minecraft\///g')
        if [ ! -f "$basedir/Tuinity/Tuinity-Server/src/main/java/net/minecraft/$f" ]; then
            f="$(echo "$f" | sed 's/.java//g')"
                echo "$(bashColor 1 31) ERROR!!! Missing NMS$(bashColor 1 34) $f ($decompiledir/$nms/$f.java) $(bashColorReset)";
                error=true
if [ -n "$error" ]; then
  exit 1
fi
    exit 0