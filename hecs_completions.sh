#!/bin/bash

_hecs_completions(){
    local words cur
    _get_comp_words_by_ref -n : words cword cur
    case "$cword" in
        "1") COMPREPLY=($(compgen -W "$(hecs list-commands)" "${cur}"));;
        "2") COMPREPLY=($(compgen -W "$(hecs list-profiles)" "${cur}"));;
        "3") COMPREPLY=($(compgen -W "$(hecs list-clusters "${words[2]}")" "${cur}"));;
        "4") COMPREPLY=($(compgen -W "$(hecs list-task-definitions "${words[2]}" "${words[3]}")" "${cur}"));;
        "5") COMPREPLY=($(compgen -W "$(hecs list-tasks "${words[2]}" "${words[3]}" "${words[4]}")" "${cur}"));;
        "6") COMPREPLY=($(compgen -W "$(hecs list-instances "${words[2]}" "${words[3]}" "" "${words[5]}")" "${cur}"));;
        "7") COMPREPLY=($(compgen -W "$(hecs list-dockers "${words[2]}" "${words[3]}" "" "${words[5]}" "${words[6]}")" "${cur}"));;
        *) : ;;
    esac
    __ltrim_colon_completions "$cur"
}
complete -F _hecs_completions hecs
