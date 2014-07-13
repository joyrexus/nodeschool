cat rows.json | jsonfilter 'rows.*.doc.song'
echo
cat rows.json | gasket run
