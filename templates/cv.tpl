<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>Colin Raffel: Curriculum Vitae</title>
        <style type="text/css">
            @font-face {
                font-family: "latex";
                src: url('fonts/computer_modern/normal.otf');
            }
            @font-face {
                font-family: "latex";
                src: url('fonts/computer_modern/bold.otf');
                font-weight: bold;
            }
            @font-face {
                font-family: "latex";
                src: url('fonts/computer_modern/italic.otf');
                font-style: italic;
            }
            @font-face {
                font-family: "latex";
                src: url('fonts/computer_modern/bolditalic.otf');
                font-weight: bold;
                font-style: italic;
            }
            @font-face {
                font-family: "tt";
                src: url('fonts/computer_modern/tt.otf');
                font-weight: normal;
                font-style: normal;
            }
            body {
                font-family: "latex";
                font-weight: normal;
                font-style: normal;
                font-size: 11pt;
                width: 670px;
                margin: 0 auto;
            }
            h2 {
                page-break-after: avoid;
                margin-bottom: 4px;
            }
            h3 {
                page-break-after: avoid;
                margin: 0px;
            }
            a {
                text-decoration: none;
                color: #000;
            }
            .block {
                margin-left: 20px;
            }
            .item {
                margin-bottom: 5px;
            }
            #name {
                font-size: 36pt;
                margin-bottom: 0px;
            }
            #contact {
                display: table;
                float: right;
                margin-top: 10px;
            }
            .row {
                display: table-row;
            }
            .cell {
                display: table-cell;
                text-align: center;
                padding-left: 5px;
                padding-right: 5px;
            }
            hr {
                border: 0px;
                height: 1px;
                background: #000;
                margin: 0 auto;
                padding: 0px;
            }
        </style>
    </head>
    <body>

        <div id="contact">
            <div class="row">
                <div class="cell" style="font-family: tt">
                    <a href="mailto:craffel@gmail.com">craffel@gmail.com</a>
                </div>
                <div class="cell" style="font-family: tt">
                    <a href="http://colinraffel.com">http://colinraffel.com</a>
                </div>
            </div>
            <div class="row">
                <div class="cell">
                    507-398-2646
                </div>
                <div class="cell">
                    New York, NY 10027
                </div>
            </div>
        </div>

        <h1 id="name">Colin Raffel</h1>

        <hr width="98%" />

        <h2>Education</h2>

        <div class="block">
            {% for item in education %}
            <div class="item">
                <h3>{{item.place}}</h3>
                {{item.blurb}}{% if item.start %}, {{item.start}}&#8211;{{item.end}} {% endif %}
            </div>
            {% endfor %}
        </div>

        <h2>Publications</h2>

        <div class="block">
            {% for item in publications %}
            <div class="item">
                {{item.authors}}, <b><a href="{{item.url}}">&#x201c;{{item.title}}&#x201d;</a></b>, in <i>{{item.venue}}</i>, {{item.year}}.
            </div>
            {% endfor %}
        </div>

        <h2>Technical Reports, Whitepapers, etc.</h2>

        <div class="block">
            {% for item in techreports %}
            <div class="item">
                {{item.authors}}, <b><a href="{{item.url}}">&#x201c;{{item.title}}&#x201d;</a></b>, <i>{{item.venue}}</i>, {{item.year}}.
            </div>
            {% endfor %}
        </div>

        <h2>Honors and Awards</h2>

        <div class="block">
            {% for item in awards %}
            <div class="item">
                <b>{{item.name}}</b>,{% if item.venue %} {{item.venue}},{% endif %} {{item.start}}{% if item.end %}&#8211;{{item.end}}{% endif %}
            </div>
            {% endfor %}
        </div>

        <h2>Business Ventures</h2>

        <div class="block">
            {% for item in business %}
            <div class="item">
                <h3>{{item.name}}</h3>
                {{item.blurb}}, {{item.start}}&#8211;{{item.end}}
            </div>
            {% endfor %}
        </div>

        <h2>Teaching</h2>

        <div class="block">
            {% for item in teaching %}
            <div class="item">
                <h3>{% if item.url %}<a href="{{item.url}}">{% endif %}{{item.name}}{% if item.url %}</a>{% endif %}</h3>
                {{item.blurb}}, {{item.start}}{% if item.end %}&#8211;{{item.end}}{% endif %}
            </div>
            {% endfor %}
        </div>

        <h2>Students Supervised</h2>

        <div class="block">
            {% for item in students %}
            <div class="item">
                <b>{{item.name}}</b>, {{item.description}}, {{item.year}}
            </div>
            {% endfor %}
        </div>

        <h2>Talks</h2>

        <div class="block">
            {% for item in talks %}
            <div class="item">
                <b><a href="{{item.url}}">{{item.title}}</a></b> at <i>{{item.venue}}</i>, {{item.year}}.
            </div>
            {% endfor %}
        </div>

        <h2>Poster Presentations</h2>

        <div class="block">
            {% for item in posters %}
            <div class="item">
                <b><a href="{{item.url}}">{{item.title}}</a></b> at <i>{{item.venue}}</i>, {{item.year}}.
            </div>
            {% endfor %}
        </div>

        <h2>Employment</h2>

        <div class="block">
            {% for item in employment %}
            <div class="item">
                <h3><a href="{{item.url}}">{{item.name}}</a></h3>
                {{item.blurb}}, {{item.start}}{% if item.end %}&#8211;{{item.end}}{% endif %}
            </div>
            {% endfor %}
        </div>

        <h2>Academic Service</h2>

        <div class="block">
            {% for item in service %}
            <div class="item">
                <h3>{% if item.url %}<a href="{{item.url}}">{% endif %}{{item.name}}{% if item.url %}</a>{% endif %}</h3>
                {{item.blurb}}, {{item.start}}{% if item.end %}&#8211;{{item.end}}{% endif %}
            </div>
            {% endfor %}
        </div>

        <h2>Reviewing</h2>

        <div class="block">
            {% for item in reviewing %}
            <div class="item">
                <b>{{item.venue}}</b>, {{item.year}}
            </div>
            {% endfor %}
        </div>

        <h2>Additional Coursework</h2>

        <div class="block">
            {% for item in courses %}
            <div class="item">
                <h3>{% if item.url %}<a href="{{item.url}}">{% endif %}{{item.name}}{% if item.url %}</a>{% endif %}</h3>
                {{item.blurb}}, {{item.start}}{% if item.end %}&#8211;{{item.end}}{% endif %}
            </div>
            {% endfor %}
        </div>

        <h2>Software Libraries</h2>

        <div class="block">
            {% for item in code %}
            <div class="item">
                <font face="tt"><a href="{{item.url}}">{{item.title}}</a></font>, {{item.description}}
            </div>
            {% endfor %}
        </div>

    </body>
</html>
