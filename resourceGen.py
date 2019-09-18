data = file('resources.res').read()

entries = []
heading = None
accum = None
for line in data.split('\n'):
	if len(line) and line[0] == '&':
		if heading is not None:
			entries.append((heading, accum))
		heading = line[1:].strip()
		if heading == 'end':
			break
		accum = []
	elif accum is not None:
		accum.append(line)

with file('resources.md', 'w') as fp:
	print >>fp, '''---
layout: page
title: Resources
---

<div id="accordion">'''

	i = 0
	for heading, lines in entries:
		body = ''
		while len(lines) and lines[0] == '':
			lines = lines[1:]
		while len(lines) and lines[-1] == '':
			lines = lines[:-1]

		for elem in lines:
			if elem.strip() == '':
				body += '</p>\n<p>\n'
			else:
				body += elem + '\n'

		print >>fp, '''	<div class="card">
		<div class="card-header" id="heading%i" data-toggle="collapse" data-target="#collapse%i" aria-expanded="false" aria-controls="collapse%i">
			<h5 class="mb-0" class="text-white">
				%s
			</h5>
		</div>
		<div id="collapse%i" class="collapse" aria-labelledby="heading%i" data-parent="#accordion">
			<div class="card-body">
				<p>%s</p>
			</div>
		</div>
	</div>''' % (i, i, i, heading, i, i, body.strip())
		i += 1

	print >>fp, '</div>'
	print >>fp, '''
<script>
var url = document.location.toString();
if(url.match('#'))
	$('#heading'+url.split('#')[1].substring(0, 3)).click();
</script>
	'''
