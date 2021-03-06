#!/bin/bash

_hecs_completions(){
    local words cur
    _get_comp_words_by_ref -n : words cword cur
    case "$cword" in
        "1") COMPREPLY=($(compgen -W "$(hecs list-commands)" "${cur}"));;
        "2") COMPREPLY=($(compgen -W "$(hecs list-profiles)" "${cur}"));;
        "3") COMPREPLY=($(compgen -W "$(hecs list-clusters "${words[2]}")" "${cur}"));;
        "4") COMPREPLY=($(compgen -W "$(hecs list-services "${words[2]}" "${words[3]}")" "${cur}"));;
        "5") COMPREPLY=($(compgen -W "$(hecs list-service-instances "${words[2]}" "${words[3]}" "${words[4]}")" "${cur}"));;
        "6") COMPREPLY=($(compgen -W "$(hecs list-dockers "${words[2]}" "${words[3]}" "${words[4]}" "${words[5]}")" "${cur}"));;
        *) : ;;
    esac
    __ltrim_colon_completions "$cur"
}
complete -F _hecs_completions hecs
