m3s:listing:frontify() {
    # Move times at the ends of lines to the front of the line
    local textline

    while read textline; do
        if [[ "$textline" =~ ^(.+?)\ +([0-9:]+)$ ]]; then
            echo "${BASH_REMATCH[2]} ${BASH_REMATCH[1]}"
        else
            echo "$textline"
        fi
    done
}


m3s:listing:align_times() {
    local previous_t next_t previous_d next_d time description

    while read time description; do
        if ! (echo "$time" | grep -Pq '^(\d\d:)?\d\d:\d\d'); then
            echo "$time $description"
            continue
        fi

        previous_t="${next_t:-}"
        next_t="${time:-}"

        previous_d="${next_d:-}"
        next_d="${description:-}"

        [[ -n "$previous_t" ]] || continue

        echo "$previous_t-$next_t $previous_d"
    done
}
