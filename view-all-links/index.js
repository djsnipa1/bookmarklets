var a = '';
for (var ln = 0; ln < document.links.length; ln++) {
   var lk = document.links[ln];
   a += ln + ': <a href="' + lk + '" title="' + lk.text + '">' + lk + '</a><br>\n';
}
w = window.open('', 'Links', 'scrollbars,resizable,width=400,height=600');
w.document.write(a);
