#!/bin/bash

_hecs_completions(){
    local words cur
    _get_comp_words_by_ref -n : words cword cur
    case "$cword" in
        "1") COMPREPLY=($(compgen -W "$(hecs profile)" "${cur}"));;
        "2") COMPREPLY=($(compgen -W "$(hecs list)" "${cur}"));;
        "3") COMPREPLY=($(compgen -W "$(hecs "${words[1]}" list-clusters)" "${cur}"));;
        "4") COMPREPLY=($(compgen -W "$(hecs "${words[1]}" list-task-definitions "${words[3]}")" "${cur}"));;
        "5") COMPREPLY=($(compgen -W "$(hecs "${words[1]}" list-tasks "${words[3]}" "${words[4]}")" "${cur}"));;
        "6") COMPREPLY=($(compgen -W "$(hecs "${words[1]}" list-dockers "${words[3]}" "" "${words[5]}")" "${cur}"));;
        *) : ;;
    esac
    __ltrim_colon_completions "$cur"
}
complete -F _hecs_completions hecs
