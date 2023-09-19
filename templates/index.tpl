<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
    <title>colinraffel.com</title>


    <!-- Search Engine -->
    <meta name="description" content="Colin Raffel, Research Scientist">
    <meta name="image" content="http://colinraffel.com/images/me_small.jpg">

    <!-- Schema.org for Google -->
    <meta itemprop="name" content="colinraffel.com">
    <meta itemprop="description" content="Colin Raffel, Research Scientist">
    <meta itemprop="image" content="http://colinraffel.com/images/me_small.jpg">

    <!-- Twitter -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="colinraffel.com">
    <meta name="twitter:description" content="Colin Raffel, Research Scientist">
    <meta name="twitter:creator" content="colinraffel">
    <meta name="twitter:image:src" content="http://colinraffel.com/images/me_small.jpg">

    <!-- Open Graph general (Facebook, Pinterest & Google+) -->
    <meta name="og:title" content="colinraffel.com">
    <meta name="og:description" content="Colin Raffel, Research Scientist">
    <meta name="og:image" content="http://colinraffel.com/images/me_small.jpg">
    <meta name="og:url" content="http://colinraffel.com">
    <meta name="og:site_name" content="colinraffel.com">
    <meta name="og:type" content="website">

    <!-- Inline stylesheet since there isn't a lot of classes -->
    <style>

        /* Browser reset */
        html {
            box-sizing: border-box;
            line-height: 1.15;
            -webkit-text-size-adjust: 100%;
        }

        *,
        *::before,
        *::after {
            box-sizing: inherit;
        }

        /* roboto-regular - latin */
        @font-face {
          font-family: 'Roboto';
          font-style: normal;
          font-weight: 400;
          src: url('../fonts/roboto-v18-latin-regular.eot'); /* IE9 Compat Modes */
          src: local('Roboto'), local('Roboto-Regular'),
               url('../fonts/roboto-v18-latin-regular.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
               url('../fonts/roboto-v18-latin-regular.woff2') format('woff2'), /* Super Modern Browsers */
               url('../fonts/roboto-v18-latin-regular.woff') format('woff'), /* Modern Browsers */
               url('../fonts/roboto-v18-latin-regular.ttf') format('truetype'), /* Safari, Android, iOS */
               url('../fonts/roboto-v18-latin-regular.svg#Roboto') format('svg'); /* Legacy iOS */
        }
        /* roboto-italic - latin */
        @font-face {
          font-family: 'Roboto';
          font-style: italic;
          font-weight: 400;
          src: url('../fonts/roboto-v18-latin-italic.eot'); /* IE9 Compat Modes */
          src: local('Roboto Italic'), local('Roboto-Italic'),
               url('../fonts/roboto-v18-latin-italic.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
               url('../fonts/roboto-v18-latin-italic.woff2') format('woff2'), /* Super Modern Browsers */
               url('../fonts/roboto-v18-latin-italic.woff') format('woff'), /* Modern Browsers */
               url('../fonts/roboto-v18-latin-italic.ttf') format('truetype'), /* Safari, Android, iOS */
               url('../fonts/roboto-v18-latin-italic.svg#Roboto') format('svg'); /* Legacy iOS */
        }
        /* roboto-700 - latin */
        @font-face {
          font-family: 'Roboto';
          font-style: normal;
          font-weight: 700;
          src: url('../fonts/roboto-v18-latin-700.eot'); /* IE9 Compat Modes */
          src: local('Roboto Bold'), local('Roboto-Bold'),
               url('../fonts/roboto-v18-latin-700.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
               url('../fonts/roboto-v18-latin-700.woff2') format('woff2'), /* Super Modern Browsers */
               url('../fonts/roboto-v18-latin-700.woff') format('woff'), /* Modern Browsers */
               url('../fonts/roboto-v18-latin-700.ttf') format('truetype'), /* Safari, Android, iOS */
               url('../fonts/roboto-v18-latin-700.svg#Roboto') format('svg'); /* Legacy iOS */
        }

        body {

            /* Nice light gray background to offset the text a little */
            background-color: #fefefe;
            color: #333;
            margin: 0 auto;
            max-width: 50em;

            /* System fonts as fallbacks */
            font-family: "Roboto", -apple-system, BlinkMacSystemFont, ".SFNSText-Regular", "San Francisco", "Segoe UI", "Helvetica Neue", "Lucida Grande", sans-serif;
            line-height: 1.5;
            padding: 2em 1em;
            scroll-behavior: smooth;
        }

        h1,
        h2,
        strong {
            color: #333;
            font-family: "Roboto", -apple-system, BlinkMacSystemFont, ".SFNSText-Regular", "San Francisco", "Segoe UI", "Helvetica Neue", "Lucida Grande", sans-serif;
        }

        h2 a {
            color: #333;
        }

        h2 {
            display: inline;
        }

        section {
            margin-top: 1.5em;
        }

        a {
            color: #005fd3;
        }

        .headshot {
            float: right;
            width: 14em;
            padding-left: 2em;
        }

        .headshot img {
            width: 100%;
        }

        @media (max-width: 650px) {
            .headshot {
                width: 10em;
            }
        }

        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-flow: row;
        }

        @media (max-width: 650px) {
            header {
                display: flex;
                align-items: baseline;
                flex-flow: column;
            }

            .social-links {
                margin-top: 0.5em;
            }
        }

        @media (max-width: 390px) {
            header {
                width: 8em;
            }

            .social-links {
                width: 8em;
            }
        }

        .social-links a {
            text-decoration: none;
        }

        svg {
            margin-left: 10px;
            margin-right: 10px;
            height: 25px;
            width: 25px;
        }

        svg path {
            fill: #005fd3;
        }

        /* Show/hide for lab info etc. */
        #lab-info {
            margin-left: 14px;
            display: none;
        }
        #lab-info:target {
            display:block;
        }

        p + ul {
            margin-top: -10px;
        }

        /* Indent details/summary lists */
        details {
            margin-left: 28px;
            margin-bottom: 2px;
        }

        summary {
            margin-top: 2px;
            margin-left: -14px;
            font-weight: bold;
        }

    </style>
</head>

<body>
    <!-- Make details work on IE -->
    <script src="//cdn.jsdelivr.net/npm/details-polyfill@1/index.min.js" async></script>
    <!-- Headshot -->
    <div class="headshot">
        <a href="images/me.jpg"><img src="images/me_small.jpg" alt="Colin Raffel Headshot" title="Colin Raffel Headshot" /></a>
    </div>

    <!-- Header with social links -->
    <header>
        <h1 style="margin-top: 0px; margin-bottom: 4px">Colin Raffel</h1>

        <div class="social-links">
            <a href="mailto:craffel@gmail.com"> <svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 36 24">
                    <g>
                        <path class="cls-1" d="M18,13.47,34.52.25A2.55,2.55,0,0,0,33.43,0H2.57a2.55,2.55,0,0,0-1.1.25Z"></path>
                        <path class="cls-1" d="M35.74,1.46l-.06.07L18.54,15.24a.86.86,0,0,1-1.07,0L.32,1.53.26,1.46A2.54,2.54,0,0,0,0,2.57V21.43A2.57,2.57,0,0,0,2.57,24H33.43A2.57,2.57,0,0,0,36,21.43V2.57A2.55,2.55,0,0,0,35.74,1.46Z"></path>
                    </g>
                </svg> </a>
                <a href="https://scholar.google.com/citations?user=I66ZBYwAAAAJ" target="_blank"> <svg
                    xmlns="http://www.w3.org/2000/svg" width="260" height="300" viewBox="0 0 260 300">
                    <path d="M103.72829,298.88172 C76.34128,296.29847 55.07609,284.76559 45.35826,267.22554 C41.88286,260.95267 41.53217,259.17959 41.53217,247.88048 C41.53217,236.92091 41.98334,234.4643 45.32507,227.22802 C55.34292,205.5351 81.81566,191.58318 121.07774,187.30412 C128.8195,186.46036 135.15369,185.29711 135.15369,184.71913 C135.15369,184.14113 133.53332,181.17574 131.55287,178.12935 C128.28338,173.10012 127.95204,171.47589 127.95204,160.47801 L127.95204,148.36556 L120.66352,148.36613 C95.21126,148.36813 75.12542,136.82734 65.03001,116.40067 C61.35084,108.95637 60.18949,104.78799 59.59142,96.88019 L58.83097,86.82528 L29.89344,86.82528 L0.95591,86.82528 L44.15096,43.61534 L87.346,0.40541 L173.73232,0.40541 L260.11864,0.40541 L252.63063,7.97238 L245.14262,15.53935 L245.14262,26.8935 C245.14262,35.05352 245.64139,38.54221 246.91555,39.29476 C251.32526,41.89915 251.68958,45.81489 251.68958,90.60576 C251.68958,120.92264 251.21713,136.18648 250.21033,138.39615 C246.89693,145.66826 235.53195,145.66826 232.21855,138.39615 C230.12498,133.80126 230.16142,47.62569 232.25885,43.02226 C233.09461,41.18796 234.27307,39.68717 234.87763,39.68717 C235.4822,39.68717 235.97151,36.29911 235.96499,32.15816 L235.95319,24.62916 L216.93681,43.74684 C198.13874,62.64504 197.93843,62.9081 199.48873,66.66119 C200.35263,68.75261 201.07886,76.63301 201.10567,84.20649 C201.18037,105.2887 199.00077,109.8059 179.53153,128.9215 C163.79908,144.36813 161.34149,147.91827 161.34149,155.19815 C161.34149,159.77841 166.77833,165.59815 186.76371,182.41089 C200.69031,194.12665 207.39839,202.24827 210.82478,211.54212 C214.67985,221.99874 215.3643,230.71556 213.16028,241.28612 C205.02561,280.30018 159.69108,304.16036 103.72825,298.88172 L103.72829,298.88172 Z M147.82552,283.18755 C154.75843,282.26978 161.10718,280.35673 167.47343,277.26712 C182.12774,270.15523 188.86239,259.963 188.81001,244.97642 C188.75861,230.27494 182.21614,220.86779 161.11753,205.15845 L149.39848,196.43284 L134.74707,197.20777 C111.70669,198.42641 95.8907,203.69967 84.90527,213.8257 C76.58521,221.49484 73.60929,228.25646 73.62507,239.4555 C73.65787,262.75366 92.18981,279.06402 123.36916,283.23638 C134.11128,284.67388 136.63593,284.66884 147.82552,283.18758 L147.82552,283.18755 Z M151.85933,133.13328 C155.64618,131.31754 160.26234,127.84197 162.11749,125.40975 C175.33106,108.08587 168.93712,68.34304 149.51809,47.09552 C141.02561,37.80341 132.23698,33.87543 122.01307,34.80251 C102.63987,36.55921 91.52619,50.26903 91.51737,72.42196 C91.50517,103.13522 108.02842,131.43235 129.04142,136.68421 C135.22411,138.22947 144.11702,136.84554 151.85933,133.13328 Z"
                        transform="translate(-1)" /></svg> </a>
                        <a href="http://twitter.com/colinraffel" target="_blank">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="256px" height="209px"
                    viewBox="0 0 256 209" version="1.1" preserveAspectRatio="xMidYMid">
                    <g>
                        <path d="M256,25.4500259 C246.580841,29.6272672 236.458451,32.4504868 225.834156,33.7202333 C236.678503,27.2198053 245.00583,16.9269929 248.927437,4.66307685 C238.779765,10.6812633 227.539325,15.0523376 215.57599,17.408298 C205.994835,7.2006971 192.34506,0.822 177.239197,0.822 C148.232605,0.822 124.716076,24.3375931 124.716076,53.3423116 C124.716076,57.4586875 125.181462,61.4673784 126.076652,65.3112644 C82.4258385,63.1210453 43.7257252,42.211429 17.821398,10.4359288 C13.3005011,18.1929938 10.710443,27.2151234 10.710443,36.8402889 C10.710443,55.061526 19.9835254,71.1374907 34.0762135,80.5557137 C25.4660961,80.2832239 17.3681846,77.9207088 10.2862577,73.9869292 C10.2825122,74.2060448 10.2825122,74.4260967 10.2825122,74.647085 C10.2825122,100.094453 28.3867003,121.322443 52.413563,126.14673 C48.0059695,127.347184 43.3661509,127.988612 38.5755734,127.988612 C35.1914554,127.988612 31.9009766,127.659938 28.694773,127.046602 C35.3777973,147.913145 54.7742053,163.097665 77.7569918,163.52185 C59.7820257,177.607983 37.1354036,186.004604 12.5289147,186.004604 C8.28987161,186.004604 4.10888474,185.75646 0,185.271409 C23.2431033,200.173139 50.8507261,208.867532 80.5109185,208.867532 C177.116529,208.867532 229.943977,128.836982 229.943977,59.4326002 C229.943977,57.1552968 229.893412,54.8901664 229.792282,52.6381454 C240.053257,45.2331635 248.958338,35.9825545 256,25.4500259"></path>
                    </g>
                </svg>
            </a>

            <a href="http://github.com/craffel" target="_blank">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="256px" height="250px"
                    viewBox="0 0 256 250" version="1.1" preserveAspectRatio="xMidYMid">
                    <g>
                        <path d="M128.00106,0 C57.3172926,0 0,57.3066942 0,128.00106 C0,184.555281 36.6761997,232.535542 87.534937,249.460899 C93.9320223,250.645779 96.280588,246.684165 96.280588,243.303333 C96.280588,240.251045 96.1618878,230.167899 96.106777,219.472176 C60.4967585,227.215235 52.9826207,204.369712 52.9826207,204.369712 C47.1599584,189.574598 38.770408,185.640538 38.770408,185.640538 C27.1568785,177.696113 39.6458206,177.859325 39.6458206,177.859325 C52.4993419,178.762293 59.267365,191.04987 59.267365,191.04987 C70.6837675,210.618423 89.2115753,204.961093 96.5158685,201.690482 C97.6647155,193.417512 100.981959,187.77078 104.642583,184.574357 C76.211799,181.33766 46.324819,170.362144 46.324819,121.315702 C46.324819,107.340889 51.3250588,95.9223682 59.5132437,86.9583937 C58.1842268,83.7344152 53.8029229,70.715562 60.7532354,53.0843636 C60.7532354,53.0843636 71.5019501,49.6441813 95.9626412,66.2049595 C106.172967,63.368876 117.123047,61.9465949 128.00106,61.8978432 C138.879073,61.9465949 149.837632,63.368876 160.067033,66.2049595 C184.49805,49.6441813 195.231926,53.0843636 195.231926,53.0843636 C202.199197,70.715562 197.815773,83.7344152 196.486756,86.9583937 C204.694018,95.9223682 209.660343,107.340889 209.660343,121.315702 C209.660343,170.478725 179.716133,181.303747 151.213281,184.472614 C155.80443,188.444828 159.895342,196.234518 159.895342,208.176593 C159.895342,225.303317 159.746968,239.087361 159.746968,243.303333 C159.746968,246.709601 162.05102,250.70089 168.53925,249.443941 C219.370432,232.499507 256,184.536204 256,128.00106 C256,57.3066942 198.691187,0 128.00106,0 Z M47.9405593,182.340212 C47.6586465,182.976105 46.6581745,183.166873 45.7467277,182.730227 C44.8183235,182.312656 44.2968914,181.445722 44.5978808,180.80771 C44.8734344,180.152739 45.876026,179.97045 46.8023103,180.409216 C47.7328342,180.826786 48.2627451,181.702199 47.9405593,182.340212 Z M54.2367892,187.958254 C53.6263318,188.524199 52.4329723,188.261363 51.6232682,187.366874 C50.7860088,186.474504 50.6291553,185.281144 51.2480912,184.70672 C51.8776254,184.140775 53.0349512,184.405731 53.8743302,185.298101 C54.7115892,186.201069 54.8748019,187.38595 54.2367892,187.958254 Z M58.5562413,195.146347 C57.7719732,195.691096 56.4895886,195.180261 55.6968417,194.042013 C54.9125733,192.903764 54.9125733,191.538713 55.713799,190.991845 C56.5086651,190.444977 57.7719732,190.936735 58.5753181,192.066505 C59.3574669,193.22383 59.3574669,194.58888 58.5562413,195.146347 Z M65.8613592,203.471174 C65.1597571,204.244846 63.6654083,204.03712 62.5716717,202.981538 C61.4524999,201.94927 61.1409122,200.484596 61.8446341,199.710926 C62.5547146,198.935137 64.0575422,199.15346 65.1597571,200.200564 C66.2704506,201.230712 66.6095936,202.705984 65.8613592,203.471174 Z M75.3025151,206.281542 C74.9930474,207.284134 73.553809,207.739857 72.1039724,207.313809 C70.6562556,206.875043 69.7087748,205.700761 70.0012857,204.687571 C70.302275,203.678621 71.7478721,203.20382 73.2083069,203.659543 C74.6539041,204.09619 75.6035048,205.261994 75.3025151,206.281542 Z M86.046947,207.473627 C86.0829806,208.529209 84.8535871,209.404622 83.3316829,209.4237 C81.8013,209.457614 80.563428,208.603398 80.5464708,207.564772 C80.5464708,206.498591 81.7483088,205.631657 83.2786917,205.606221 C84.8005962,205.576546 86.046947,206.424403 86.046947,207.473627 Z M96.6021471,207.069023 C96.7844366,208.099171 95.7267341,209.156872 94.215428,209.438785 C92.7295577,209.710099 91.3539086,209.074206 91.1652603,208.052538 C90.9808515,206.996955 92.0576306,205.939253 93.5413813,205.66582 C95.054807,205.402984 96.4092596,206.021919 96.6021471,207.069023 Z"></path>
                    </g>
                </svg>
            </a>
        </div>
    </header>

    <!-- Bio and stuff -->
    <main>
        <p>
            My research in machine learning aims to make it easy to get computers to do new things.
            Specific areas of focus include:
            <ul id="areas">
                <li>Semi-supervised and transfer learning methods that dramatically reduce the need for labeled data</li>
                <li>Language models that can perform new tasks based on natural language instructions alone</li>
                <li>Systems and methods for <a href="https://colinraffel.com/blog/a-call-to-build-models-like-we-build-open-source-software.html">collaborative, communal, and continual model development</a></li>
            </ul>
        </p>

        <p>
            If you are interested in joining our lab, <a href="#lab-info">click here</a> for more information.

            <div id="lab-info" class="page">
                Thanks for your interest in joining our lab! I aim to make our group a collaborative and friendly environment where we do high-impact work.
                You can get a sense of what we work on by looking at our <a href="https://colinraffel.com/cv.html#publications">recent publications</a> and get an idea of who's in our group by looking at our <a href="https://colinraffel.com/#students">group members</a>.
                For more information, please choose from the following options:
                <details>
                    <summary>I'm interested in doing a PhD in your lab.</summary>
                    Great! On average, I plan to hire one PhD student per year. When I'm evaluating PhD candidates, the most important factor is whether their research interests are closely aligned with <a href="https://colinraffel.com/cv.html#publications">what we work on</a>. While we do a great deal of work in machine learning, we primarily focus on specific areas (<a href="#areas">click here</a> for a brief list of a few example areas). We also do work in the area of NLP, but we don't do much linguistically-focused work or focus on specific NLP subproblems. In general, the work we do tends to be more empirical and impact-driven than theoretical. While I generally look for candidates who have some research experience, I don't heavily weigh prior publications and have hired PhD students who had not published any first-author work (though prior publications don't hurt). I very much encourage applicants from underrepresented backgrounds or who took an unconventional path to their PhD. If you want me to read your application, just list me as a faculty interest and I will take a look - there's no need to email me separately unless you want to share something that isn't on your application (e.g. you have questions or comments on specific work we've done in the past). I don't interview students outside of the formal application process. If you have any questions, feel free to <a href="mailto:craffel@gmail.com">email me</a>.
                </details>
                <details>
                    <summary>I'm interested in joining your lab as a postdoc.</summary>
                    Great! I am currently looking to hire a postdoc through funding provided by Open Philanthropy to investigate and improve factuality and trustworthiness in large language models. An ideal candidate should have experience in these areas and/or retrieval-augmented models and updating knowledge in pre-trained language models. My lab is not huge (~12 members split roughly evenly across PhD, MS, and undergrad students), so I'm not specifically looking for someone to take on lots of advising responsibilities (though I am not opposed to it!). Instead, I am primarily looking for someone to join my lab as an experienced senior researcher who will collaborate with my students and lead projects in this area. For more information about this position, you can take a look at the <a href="https://unc.peopleadmin.com/postings/243015">job posting</a> or <a href="mailto:craffel@gmail.com">email me</a>.
                </details>
                <details>
                    <summary>I am applying to do an MS and want to join your lab.</summary>
                    I generally don't have dedicated funding for MS students. So, if you apply, you can mention me as a faculty interest and I'll take a look at your application, but I typically don't admit MS students with the specific goal of having them work in my group. However, if you are admitted and are interested in working in my group, see the item below about joining my group as an admitted MS student.
                </details>
                <details>
                    <summary>I'm a current MS student and want to join your lab or do an RAship with you.</summary>
                    I am happy to have current MS students work in my group. Whether I am currently bringing on more students typically depends on research fit and whether I have the bandwidth to do more advising. For example, if an MS student would be a great fit to contribute to an existing project, I'd be more likely to bring them on than if the student was going to work on their own project and needed a significant amount of advising to work effectively. I prefer to bring on MS students who are interested in applying to PhD programs and are in their first year of study (so we have enough time to complete a project together before applications are due). If you do end up doing research in our lab, I'm happy to have you enroll in a 991 with me if you choose. I don't generally have specific funding for paying MS students as an RAs, but I might from time to time; feel free to ask.
                </details>
                <details>
                    <summary>I'm an undergrad and want to join your lab.</summary>
                    I aim to always have a few undergrads working in my group. I prefer to bring on undergrads who aim to do a PhD after they graduate. Since PhD applications are due at the end of the Fall semester, there is often not enough time to complete a project between when the Fall semester starts and when applications are due. As a result, I prefer to bring on undergrads who are juniors. Furthermore, since I (unfortunately) have limited capacity to do hands-on advising of undergrads, I prefer that they have taken a deep learning course (or have equivalent experience) first. In addition, I generally try to match undergrads with an existing project that is being led by a PhD student. All of the above ends up making for a pretty strict set of requirements - if you meet them, definitely get in touch with me and we'll see if there's a good project for you to join. If you only meet some of them, feel free to reach out and we can discuss if it makes sense for you to join the group.
                </details>
                <details>
                    <summary>I want to join your lab as a visiting researcher or intern.</summary>
                    Thanks for your interest, but unfortunately I don't bring on external visitors except in very special cases - e.g. we are already working on very closely-related projects and would benefit from collaborating.
                </details>
                <details>
                    <summary>I want to do an internship with you at Hugging Face.</summary>
                    Thanks for your interest, but unfortunately I don't host interns at Hugging Face. I'm happy to work with anyone at Hugging Face though, so if you do apply and end up doing an internship there, I'm happy to discuss working together.
                </details>
            </div>
        <p>

    </main>

    <!-- Students section -->
    <section>
        <h2><a href="#students" style="text-decoration: none;" id="students">Group members</a></h2> <i>(<a href="images/labphoto111122.jpg">in the lab</a> and <a href="images/labphoto110422.jpg">in the woods</a>)</i>
        <p>
{% for item in mentorship %}{% if item.current %}{% if item.url %}<a href="{{item.url}}">{% endif %}{{item.name}}{% if item.url %}</a>{% endif %}, {{item.description}}{% if item.coadvisor %} <i>(co-advised with {{item.coadvisor}})</i>{% endif %}<br />
{% endif %}{% endfor %}
        </p>
    </section>
    <!-- Publications section -->
    <section>
        <h2><a href="#publications" style="text-decoration: none;" id="publications">Recent publications</a></h2>  <i>(<a href="http://colinraffel.com/cv.html#publications">full list</a>)</i>

{% for item in publications %}
        {% if item.recent %}<p>{% if item.url %}<a href="{{item.url}}">{% endif %}{{item.title}}{% if item.url %}</a>{% endif %}<br />
        {{item.authors}}<br />
        <i>{{item.venue}}</i>, {{item.year}}.<br />
{% if item.note %}        <b>{{item.note}}</b><br />{% endif %}
        </p>{% endif %}
{% endfor %}
    </section>

    <!-- Talks section -->
    <section>
        <h2><a name="#talks" style="text-decoration: none;" id="talks">Talks</a></h2>

{% for item in talks %}
        <p><a href="{{item.url}}">{{item.title}}</a> at {{item.venue}}, {{item.year}}.</p>
{% endfor %}
    </section>

</body>
</html>
