import jinja2
import os
import glob
import json
import re
import datetime
now = datetime.datetime.now()

TEMPLATE_PATH = '../templates'
DATA_PATH = '../data'
BUILD_PATH = '..'


def load_data(json_glob):
    def _ordinal_day(e):
        return -datetime.date(
            e.get('year', 1), e.get('month', 1), e.get('day', 1)).toordinal()
    datas = []
    for json_file in glob.glob(json_glob):
        with open(json_file) as f:
            data = json.load(f)
            data = {k: sorted(v, key=_ordinal_day) for k, v in data.items()}
            entries = list(data.values())[0]
            for entry in entries:

                if 'day' in entry and 'month' in entry and 'year' in entry:
                    entry_time = datetime.datetime(
                        entry['year'], entry['month'], entry['day'])
                    if entry_time > now:
                        entry['year'] = '{} (to appear)'.format(entry['year'])
                    if entry_time > now - datetime.timedelta(days=365):
                        entry['recent'] = True

                if 'authors' in entry:
                    authors = entry['authors'].split(', ')
                    if len(authors) > 11:
                        n_to_show = 4
                        if 'Colin Raffel' in authors[n_to_show]:
                            n_to_show += 1
                        while "*" in authors[n_to_show]:
                            n_to_show += 1
                        entry['authors'] = ", ".join(
                            entry['authors'].split(', ')[:n_to_show]
                        )
                        n_additional = len(authors) - n_to_show
                        entry['authors'] += f', and {n_additional} others'
                        if 'Colin Raffel' not in entry['authors']:
                            entry['authors'] += ' including Colin Raffel'

                    entry['authors'] = re.sub(
                        r'(Colin Raffel)', r'<b>\1</b>', entry['authors'])

                if 'end' in entry and entry['end'] == 'now':
                    entry['current'] = True
            datas.append(data)

    return dict((k, v) for d in datas for (k, v) in d.items())


def compile_template(template_path, data, output_path):
    template_path = os.path.abspath(template_path)

    env = jinja2.environment.Environment(
        loader=jinja2.FileSystemLoader(os.path.dirname(template_path)))

    template = env.get_template(os.path.basename(template_path))

    with open(output_path, 'w') as f:
        f.write(template.render(**data))


if __name__ == '__main__':
    for template_file in glob.glob(os.path.join(TEMPLATE_PATH, '*.tpl')):
        filename = os.path.splitext(os.path.split(template_file)[1])[0]
        compile_template(
            template_file,
            load_data(os.path.join(DATA_PATH, '*.json')),
            os.path.join(BUILD_PATH, '{}.html'.format(filename)),
        )
