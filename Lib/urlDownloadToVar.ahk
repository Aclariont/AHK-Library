﻿; written by maestrith, edited by Masonjar13
urlDownloadToVar(url){
    if(!regExMatch(url,"i)https?://"))
        url:="https://" url
    try{
        hObject:=ComObjCreate("WinHttp.WinHttpRequest.5.1")
        hObject.Open("GET",url)
        hObject.Send()
        return hObject.ResponseText
    }
    return 0
}