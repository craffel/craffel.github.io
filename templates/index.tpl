<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <title>colinraffel.com</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>

{% for item in menu %}
        <div class="menublock" style="top: {{loop.index*32 - 22}}px;">
            <a href="{{item.url}}" class="menu">{{item.title}}</a>
        </div>
{% endfor %}

        <div id="main" style="width:650px">

            <div id="photo">
                <a href="images/me.jpg"><img src="images/me_small.jpg" width="100%" alt="Colin Raffel headshot" /></a>
            </div>

            <h1 style="margin-top: 0px; margin-bottom: 4px">Colin Raffel</h1>

            I am currently a Research Scientist (formerly a resident) at
            <a href="https://research.google.com/teams/brain/">Google Brain</a>,
            where I am working on unsupervised learning, machine learning security,
            and models for sequential data.  I did my PhD at Columbia
            University in <a href="http://labrosa.ee.columbia.edu/">LabROSA</a>,
            supervised by <a href="http://www.ee.columbia.edu/~dpwe/">Dan Ellis</a>.
            My <a href="publications/thesis.pdf">thesis</a> focused on
            learning-based methods for comparing sequences.  The main product
            of my doctoral work is the <a href="projects/lmd">Lakh MIDI Dataset</a>,
            a large collection of music transcriptions which have been matched
            and aligned to corresponding audio recordings.
            In 2010, I received a Master's in Music, Science and Technology from
            Stanford University's <a href="https://ccrma.stanford.edu">CCRMA</a>,
            supervised by <a href="https://ccrma.stanford.edu/~jos/">Julius O. Smith III</a>.
            I did my undergrad at Oberlin College, where I majored in Mathematics.

            <h2 id="publications">Publications</h2>

            {% for item in publications %}
            {% if item.url %}<a href="{{item.url}}">{% endif %}{{item.title}}{% if item.url %}</a>{% endif %}<br />
            {{item.authors}}<br />
            <i>{{item.venue}}</i>, {{item.year}}.<br />
            {% if item.note %}<b>{{item.note}}</b><br />{% endif %}
            <br />
            {% endfor %}

            <h2 id="software">Software Projects</h2>

            {% for item in code %}
            <a href="{{item.url}}">{{item.title}}</a> - {{item.description}}
            <br /><br />
            {% endfor %}

            <h2 id="talks">Talks</h2>

            {% for item in talks %}
            <a href="{{item.url}}">{{item.title}}</a> at {{item.venue}}, {{item.year}}.
            <br /><br />
            {% endfor %}

            <h2 id="posters">Poster Presentations</h2>

            {% for item in posters %}
            <a href="{{item.url}}">{{item.title}}</a> at {{item.venue}}, {{item.year}}.
            <br /><br />
            {% endfor %}

            <h2 id="etc">Etc.</h2>

            {% for item in etc %}
            <a href="{{item.url}}">{{item.name}}</a> {{item.description}}
            <br /><br />
            {% endfor %}

        </div>
    </body>
</html>
