" Indentation
    setlocal shiftwidth=2
    setlocal tabstop=2

" Snippets
    inoremap ;b <b></b><Space><++><Esc>FbT>i
    inoremap ;i <em></em><Space><++><Esc>FeT>i
    inoremap ;h1 <h1></h1><Enter><Enter><++><Esc>2kf<i
    inoremap ;h2 <h2></h2><Enter><Enter><++><Esc>2kf<i
    inoremap ;h3 <h3></h3><Enter><Enter><++><Esc>2kf<i
    inoremap ;p <p></p><Enter><Enter><++><Esc>02kf>a
    inoremap ;a <a<Space>href=""><++></a><Space><++><Esc>14hi
    inoremap ;e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
    inoremap ;ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
    inoremap ;li <Esc>o<li></li><Esc>F>a
    inoremap ;ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
    inoremap ;im <table<Space>class="image"><Enter><caption align="bottom"></caption      ><Enter><tr><td><a<space>href="pix/<++>"><img<Space>src="pix/<++>"<Space>width="<++>"></a></td></tr><Enter></t      able><Enter><Enter><++><Esc>4kf>a
    inoremap ;td <td></td><++><Esc>Fdcit
    inoremap ;tr <tr></tr><Enter><++><Esc>kf<i
    inoremap ;th <th></th><++><Esc>Fhcit
    inoremap ;tab <table><Enter></table><Esc>O
    inoremap ;gr <font color="green"></font><Esc>F>a
    inoremap ;rd <font color="red"></font><Esc>F>a
    inoremap ;yl <font color="yellow"></font><Esc>F>a
    inoremap ;dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
    inoremap ;dl <dl><Enter><Enter></dl><enter><enter><++><esc>3kcc

