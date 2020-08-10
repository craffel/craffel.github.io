<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
        <title>Colin Raffel: Curriculum Vitae</title>
        <link rel="stylesheet" type="text/css" href="cv.css">
    </head>
    <body>

        <h1 id="name">Colin Raffel</h1> &nbsp; <span class="docname">Curriculum Vit&aelig;</span>

        <div class="vline"></div>

        <h2>Academic Positions</h2>

        <div class="block">
            {% for item in academic %}
            <div class="onelineitem">
                <div class="yearrange">{{item.start}}&#8211;{{item.end}}</div>
                <div class="yearright">
                    <strong>{{item.title}}</strong>, {{item.place}}
                </div>
            </div>
            {% endfor %}
        </div>

        <h2>Education</h2>

        <div class="block">
            {% for item in education %}
            <div class="item">
                <div class="yearrange">{{item.start}}&#8211;{{item.end}}</div>
                <div class="yearright">
                    <strong>{{item.place}}</strong><br />
                    {{item.degree}}<br />
                    {% if item.lab %}{{item.lab}}<br />{% endif %}
                    {% if item.advisor %}Advisor: {{item.advisor}}<br />{% endif %}
                </div>
            </div>
            {% endfor %}
        </div>

        <h2>Publications</h2>

        <div class="block">
            {% for item in publications %}
            <div class="item">
                {{item.authors}}, <u>{% if item.url %}<a href="{{item.url}}">{% endif %}&#x201c;{{item.title}}&#x201d;{% if item.url %}</a>{% endif %}</u>, <i>{{item.venue}}</i>, {{item.year}}.
            </div>
            {% endfor %}
        </div>

        <h2>Honors and Awards</h2>

        <div class="block">
            {% for item in awards %}
            <div class="item">
                <div class="year">{{item.year}}</div>
                <div class="yearright">
                    <strong>{{item.name}}</strong><br />
                    {{item.venue}}
                </div>
            </div>
            {% endfor %}
        </div>

        <h2>Invited Talks</h2>

        <div class="block">
            {% for item in talks %}
            <div class="item">
                <div class="year">{{item.year}}</div>
                <strong><a href="{{item.url}}">{{item.title}}</a></strong><br />
                {{item.venue}}
            </div>
            {% endfor %}
        </div>

        <h2>Conference Presentations</h2>

        <div class="block">
            {% for item in presentations %}
            <div class="item">
                <div class="year">{{item.year}}</div>
                <strong><a href="{{item.url}}">{{item.title}}</a></strong><br />
                {{item.venue}}
            </div>
            {% endfor %}
        </div>

        <h2>Poster Presentations</h2>

        <div class="block">
            {% for item in posters %}
            <div class="item">
                <div class="year">{{item.year}}</div>
                <strong><a href="{{item.url}}">{{item.title}}</a></strong><br />
                {{item.venue}}
            </div>
            {% endfor %}
        </div>

        <h2>Teaching</h2>

        <div class="block">
            {% for item in teaching %}
            <div class="onelineitem">
                <div class="year">{{item.year}}</div>
                <div class="yearright">
                    <strong>{% if item.url %}<a href="{{item.url}}">{% endif %}{{item.name}}{% if item.url %}</a>{% endif %}</strong>, {{item.location}}
                </div>
            </div>
            {% endfor %}
        </div>

        <h2>Mentorship</h2>

        <div class="block">
            {% for item in mentorship %}
            <div class="onelineitem">
                <div class="yearrange">{{item.start}}{% if item.end %}&#8211;{{item.end}}{% endif %}</div>
                <div class="yearright">
                    <strong>{{item.name}}</strong>, {{item.description}}
                </div>
            </div>
            {% endfor %}
        </div>

        <h2>Academic Service</h2>

        <div class="block">
            {% for item in service %}
            <div class="onelineitem">
                <div class="yearrange">{{item.start}}{% if item.end %}&#8211;{{item.end}}{% endif %}</div>
                <div class="yearright">
                    {% if item.url %}<a href="{{item.url}}">{% endif %}<strong>{{item.role}}</strong>, {{item.venue}}{% if item.url %}</a>{% endif %}
                </div>
            </div>
            {% endfor %}
        </div>

        <h2>Software Libraries</h2>

        <div class="block">
            {% for item in code %}
            <div class="onelineitem">
                <span class="tt"><a href="{{item.url}}">{{item.title}}</a></span>, {{item.description}}
            </div>
            {% endfor %}
        </div>

        <h2>Employment and Business Ventures</h2>

        <div class="block">
            {% for item in employment %}
            <div class="onelineitem">
                <div class="yearrange">{{item.start}}{% if item.end %}&#8211;{{item.end}}{% endif %}</div>
                <div class="yearright">
                    {% if item.url %}<a href="{{item.url}}">{% endif %}<strong>{{item.name}}</strong>, {{item.role}}{% if item.url %}</a>{% endif %}
                </div>
            </div>
            {% endfor %}
        </div>

    </body>
</html>
