import jinja2
import os
import glob
import json
import datetime
now = datetime.datetime.now()

TEMPLATE_PATH = '../templates'
DATA_PATH = '../data'
BUILD_PATH = '..'


def load_data(json_glob):
    datas = []
    for json_file in glob.glob(json_glob):
        with open(json_file) as f:
            data = json.load(f)
            entries = data.values()[0]
            for entry in entries:
                if 'day' in entry and 'month' in entry and 'year' in entry:
                    entry_time = datetime.datetime(
                        entry['year'], entry['month'], entry['day'])
                    if entry_time > now:
                        entry['year'] = '{} (to appear)'.format(entry['year'])

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
    compile_template(
        os.path.join(TEMPLATE_PATH, 'index.tpl'),
        load_data(os.path.join(DATA_PATH, '*.json')),
        os.path.join(BUILD_PATH, 'index.html'))
    compile_template(
        os.path.join(TEMPLATE_PATH, 'cv.tpl'),
        load_data(os.path.join(DATA_PATH, '*.json')),
        os.path.join(BUILD_PATH, 'cv.html'))
