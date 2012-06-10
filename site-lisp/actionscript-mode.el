


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>actionscript-mode.el at master from austinhaas/actionscript-mode - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

    
    

    <meta content="authenticity_token" name="csrf-param" />
<meta content="8VkcVGV2N1ptJl1eBuow1p7o9O/AtzCF5EiYE5QJcLc=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/stylesheets/bundles/github-fe72294c0899f9951f2200f65bc4cf1f7880f77d.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/stylesheets/bundles/github2-cb54f8b424bab1addc65760cf760d406bcc92480.css" media="screen" rel="stylesheet" type="text/css" />
    

    <script src="https://a248.e.akamai.net/assets.github.com/javascripts/bundles/jquery-1ff4761a0d9866a948321eac8d969db3dc12938e.js" type="text/javascript"></script>
    <script src="https://a248.e.akamai.net/assets.github.com/javascripts/bundles/github-18a50b3d097d5e6f5686d2be4c43a5fc49547aa5.js" type="text/javascript"></script>
    

      <link rel='permalink' href='/austinhaas/actionscript-mode/blob/fddd7220342d29e7eca734f6b798b7a2849717a5/actionscript-mode.el'>
    <meta property="og:title" content="actionscript-mode"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/austinhaas/actionscript-mode"/>
    <meta property="og:image" content="https://a248.e.akamai.net/assets.github.com/images/gravatars/gravatar-140.png?1329275898"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="An actionscript-mode for Emacs"/>

    <meta name="description" content="An actionscript-mode for Emacs" />
  <link href="https://github.com/austinhaas/actionscript-mode/commits/master.atom" rel="alternate" title="Recent Commits to actionscript-mode:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob  vis-public env-production ">
    


    

      <div id="header" class="true clearfix">
        <div class="container clearfix">
          <a class="site-logo" href="https://github.com/organizations/ThoughtworksAnnaiSystems">
            <!--[if IE]>
            <img alt="GitHub" class="github-logo" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7.png?1323882736" />
            <img alt="GitHub" class="github-logo-hover" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7-hover.png?1324325373" />
            <![endif]-->
            <img alt="GitHub" class="github-logo-4x" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x.png?1323882736" />
            <img alt="GitHub" class="github-logo-4x-hover" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x-hover.png?1324325373" />
          </a>

              
    <div class="topsearch ">
<form action="/search" id="top_search_form" method="get">        <a href="/search" class="advanced-search tooltipped downwards" title="Advanced Search">Advanced Search</a>
        <div class="search placeholder-field js-placeholder-field">
          <label class="placeholder" for="global-search-field">Search…</label>
          <input type="text" class="search my_repos_autocompleter" id="global-search-field" name="q" results="5" spellcheck="false" autocomplete="off" data-autocomplete="my-repos-autocomplete">
          <div id="my-repos-autocomplete" class="autocomplete-results">
            <ul class="js-navigation-container"></ul>
          </div>
          <input type="submit" value="Search" class="button">
        </div>
        <input type="hidden" name="type" value="Everything" />
        <input type="hidden" name="repo" value="" />
        <input type="hidden" name="langOverride" value="" />
        <input type="hidden" name="start_value" value="1" />
</form>      <ul class="top-nav">
          <li class="explore"><a href="https://github.com/explore">Explore</a></li>
          <li><a href="https://gist.github.com">Gist</a></li>
          <li><a href="/blog">Blog</a></li>
        <li><a href="http://help.github.com">Help</a></li>
      </ul>
    </div>


            


  <div id="userbox">
    <div id="user">
      <a href="https://github.com/olabini"><img height="20" src="https://secure.gravatar.com/avatar/a5b01739148d8795e99582444361a1bc?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" width="20" /></a>
      <a href="https://github.com/olabini" class="name">olabini</a>
    </div>
    <ul id="user-links">
      <li>
        <a href="/inbox/notifications" id="notifications" class="tooltipped downwards" title="Notifications">
          <span class="icon">Notifications</span>
          <span class="unread_count">201</span>
        </a>
      </li>
      <li><a href="/settings/profile" id="settings" class="tooltipped downwards" title="Account Settings"><span class="icon">Account Settings</span></a></li>
      <li><a href="/logout" id="logout" class="tooltipped downwards" title="Log Out"><span class="icon">Log Out</span></a></li>
    </ul>
  </div>



          
        </div>
      </div>

      

            <div class="site">
      <div class="container">
        <div class="pagehead repohead instapaper_ignore readability-menu">
        <div class="title-actions-bar">
          <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
<a href="/austinhaas" itemprop="url">            <span itemprop="title">austinhaas</span>
            </a> /
            <strong><a href="/austinhaas/actionscript-mode" class="js-current-repository">actionscript-mode</a></strong>
          </h1>
          



              <ul class="pagehead-actions">


          <li class="js-toggler-container watch-button-container ">
            <a href="/austinhaas/actionscript-mode/toggle_watch" class="minibutton btn-watch watch-button js-toggler-target" data-method="post" data-remote="true" rel="nofollow"><span><span class="icon"></span>Watch</span></a>
            <a href="/austinhaas/actionscript-mode/toggle_watch" class="minibutton btn-watch unwatch-button js-toggler-target" data-method="post" data-remote="true" rel="nofollow"><span><span class="icon"></span>Unwatch</span></a>
          </li>

              <li><a href="/austinhaas/actionscript-mode/fork_select" class="minibutton btn-fork " rel="facebox nofollow"><span><span class="icon"></span>Fork</span></a></li>



      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers ">
            <a href="/austinhaas/actionscript-mode/watchers" title="Watchers" class="tooltipped downwards">
              3
            </a>
          </li>
          <li class="forks">
            <a href="/austinhaas/actionscript-mode/network" title="Forks" class="tooltipped downwards">
              3
            </a>
          </li>
        </ul>
      </li>
    </ul>

        </div>

          

  <ul class="tabs">
    <li><a href="/austinhaas/actionscript-mode" class="selected" highlight="repo_sourcerepo_downloadsrepo_commitsrepo_tagsrepo_branches">Code</a></li>
    <li><a href="/austinhaas/actionscript-mode/network" highlight="repo_networkrepo_fork_queue">Network</a>
    <li><a href="/austinhaas/actionscript-mode/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>0</span></a></li>

      <li><a href="/austinhaas/actionscript-mode/issues" highlight="repo_issues">Issues <span class='counter'>0</span></a></li>


    <li><a href="/austinhaas/actionscript-mode/graphs" highlight="repo_graphsrepo_contributors">Stats &amp; Graphs</a></li>

  </ul>

  
<div class="frame frame-center tree-finder" style="display:none"
      data-tree-list-url="/austinhaas/actionscript-mode/tree-list/fddd7220342d29e7eca734f6b798b7a2849717a5"
      data-blob-url-prefix="/austinhaas/actionscript-mode/blob/fddd7220342d29e7eca734f6b798b7a2849717a5"
    >

  <div class="breadcrumb">
    <span class="bold"><a href="/austinhaas/actionscript-mode">actionscript-mode</a></span> /
    <input class="tree-finder-input js-navigation-enable" type="text" name="query" autocomplete="off" spellcheck="false">
  </div>

    <div class="octotip">
      <p>
        <a href="/austinhaas/actionscript-mode/dismiss-tree-finder-help" class="dismiss js-dismiss-tree-list-help" title="Hide this notice forever" rel="nofollow">Dismiss</a>
        <span class="bold">Octotip:</span> You've activated the <em>file finder</em>
        by pressing <span class="kbd">t</span> Start typing to filter the
        file list. Use <span class="kbd badmono">↑</span> and
        <span class="kbd badmono">↓</span> to navigate,
        <span class="kbd">enter</span> to view files.
      </p>
    </div>

  <table class="tree-browser" cellpadding="0" cellspacing="0">
    <tr class="js-header"><th>&nbsp;</th><th>name</th></tr>
    <tr class="js-no-results no-results" style="display: none">
      <th colspan="2">No matching files</th>
    </tr>
    <tbody class="js-results-list js-navigation-container">
    </tbody>
  </table>
</div>

<div id="jump-to-line" style="display:none">
  <h2>Jump to Line</h2>
  <form>
    <input class="textfield" type="text">
    <div class="full-button">
      <button type="submit" class="classy">
        <span>Go</span>
      </button>
    </div>
  </form>
</div>


<div class="subnav-bar">

  <ul class="actions subnav">
    <li><a href="/austinhaas/actionscript-mode/tags" class="" highlight="repo_tags">Tags <span class="counter">1</span></a></li>
    <li><a href="/austinhaas/actionscript-mode/downloads" class="blank downloads-blank" highlight="repo_downloads">Downloads <span class="counter">0</span></a></li>
    
  </ul>

  <ul class="scope">
    <li class="switcher">

      <div class="context-menu-container js-menu-container">
        <a href="#"
           class="minibutton bigger switcher js-menu-target js-commitish-button btn-branch repo-tree"
           data-master-branch="master"
           data-ref="master">
          <span><span class="icon"></span><i>branch:</i> master</span>
        </a>

        <div class="context-pane commitish-context js-menu-content">
          <a href="javascript:;" class="close js-menu-close"></a>
          <div class="context-title">Switch Branches/Tags</div>
          <div class="context-body pane-selector commitish-selector js-filterable-commitishes">
            <div class="filterbar">
              <div class="placeholder-field js-placeholder-field">
                <label class="placeholder" for="context-commitish-filter-field" data-placeholder-mode="sticky">Filter branches/tags</label>
                <input type="text" id="context-commitish-filter-field" class="commitish-filter" />
              </div>

              <ul class="tabs">
                <li><a href="#" data-filter="branches" class="selected">Branches</a></li>
                <li><a href="#" data-filter="tags">Tags</a></li>
              </ul>
            </div>

              <div class="commitish-item branch-commitish selector-item">
                <h4>
                    <a href="/austinhaas/actionscript-mode/blob/master/actionscript-mode.el" data-name="master" rel="nofollow">master</a>
                </h4>
              </div>

              <div class="commitish-item tag-commitish selector-item">
                <h4>
                    <a href="/austinhaas/actionscript-mode/blob/7.2.2/actionscript-mode.el" data-name="7.2.2" rel="nofollow">7.2.2</a>
                </h4>
              </div>

            <div class="no-results" style="display:none">Nothing to show</div>
          </div>
        </div><!-- /.commitish-context-context -->
      </div>

    </li>
  </ul>

  <ul class="subnav with-scope">

    <li><a href="/austinhaas/actionscript-mode" class="selected" highlight="repo_source">Files</a></li>
    <li><a href="/austinhaas/actionscript-mode/commits/master" highlight="repo_commits">Commits</a></li>
    <li><a href="/austinhaas/actionscript-mode/branches" class="" highlight="repo_branches" rel="nofollow">Branches <span class="counter">1</span></a></li>
  </ul>

</div>

  
  
  


          

        </div><!-- /.repohead -->

        




  
  <p class="last-commit">Latest commit to the <strong>master</strong> branch</p>

<div class="commit commit-tease js-details-container">
  <p class="commit-title ">
      <a href="/austinhaas/actionscript-mode/commit/fddd7220342d29e7eca734f6b798b7a2849717a5" class="message">Properly escaped * in regexps, even though it worked anyway.</a>
      
  </p>
  <div class="commit-meta">
    <a href="/austinhaas/actionscript-mode/commit/fddd7220342d29e7eca734f6b798b7a2849717a5" class="sha-block">commit <span class="sha">fddd722034</span></a>
    <span class="js-clippy clippy-button " data-clipboard-text="fddd7220342d29e7eca734f6b798b7a2849717a5" data-copied-hint="copied!" data-copy-hint="Copy SHA"></span>

    <div class="authorship">
      <img class="gravatar" height="20" src="https://secure.gravatar.com/avatar/f5713c4b5d764bc774a043d36eb60958?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" width="20" />
      <span class="author-name"><a href="/austinhaas">austinhaas</a></span>
      authored <time class="js-relative-date" datetime="2011-12-21T09:31:14-08:00" title="2011-12-21 09:31:14">December 21, 2011</time>

    </div>
  </div>
</div>


<!-- block_view_fragment_key: views4/v8/blob:v17:313cda25b4c6d01a27fd53f5c5af2da9 -->
  <div id="slider">

    <div class="breadcrumb" data-path="actionscript-mode.el/">
      <b itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/austinhaas/actionscript-mode/tree/fddd7220342d29e7eca734f6b798b7a2849717a5" class="js-rewrite-sha" itemprop="url"><span itemprop="title">actionscript-mode</span></a></b> / actionscript-mode.el <span class="js-clippy clippy-button " data-clipboard-text="actionscript-mode.el" data-copied-hint="copied!" data-copy-hint="copy to clipboard"></span>
    </div>

    <div class="frames">
      <div class="frame frame-center" data-path="actionscript-mode.el/" data-permalink-url="/austinhaas/actionscript-mode/blob/fddd7220342d29e7eca734f6b798b7a2849717a5/actionscript-mode.el" data-title="actionscript-mode.el at master from austinhaas/actionscript-mode - GitHub" data-type="blob">
          <ul class="big-actions">
            <li><a class="file-edit-link minibutton js-rewrite-sha" href="/austinhaas/actionscript-mode/edit/fddd7220342d29e7eca734f6b798b7a2849717a5/actionscript-mode.el" data-method="post" rel="nofollow"><span>Edit this file</span></a></li>
          </ul>

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><img alt="Txt" height="16" src="https://a248.e.akamai.net/assets.github.com/images/icons/txt.png?1252203928" width="16" /></span>
                <span class="mode" title="File Mode">100644</span>
                  <span>697 lines (587 sloc)</span>
                <span>26.149 kb</span>
              </div>
              <ul class="actions">
                <li><a href="/austinhaas/actionscript-mode/raw/master/actionscript-mode.el" id="raw-url">raw</a></li>
                  <li><a href="/austinhaas/actionscript-mode/blame/master/actionscript-mode.el">blame</a></li>
                <li><a href="/austinhaas/actionscript-mode/commits/master/actionscript-mode.el" rel="nofollow">history</a></li>
              </ul>
            </div>
              <div class="data type-emacs-lisp">
      <table cellpadding="0" cellspacing="0" class="lines">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>
<span id="L345" rel="#L345">345</span>
<span id="L346" rel="#L346">346</span>
<span id="L347" rel="#L347">347</span>
<span id="L348" rel="#L348">348</span>
<span id="L349" rel="#L349">349</span>
<span id="L350" rel="#L350">350</span>
<span id="L351" rel="#L351">351</span>
<span id="L352" rel="#L352">352</span>
<span id="L353" rel="#L353">353</span>
<span id="L354" rel="#L354">354</span>
<span id="L355" rel="#L355">355</span>
<span id="L356" rel="#L356">356</span>
<span id="L357" rel="#L357">357</span>
<span id="L358" rel="#L358">358</span>
<span id="L359" rel="#L359">359</span>
<span id="L360" rel="#L360">360</span>
<span id="L361" rel="#L361">361</span>
<span id="L362" rel="#L362">362</span>
<span id="L363" rel="#L363">363</span>
<span id="L364" rel="#L364">364</span>
<span id="L365" rel="#L365">365</span>
<span id="L366" rel="#L366">366</span>
<span id="L367" rel="#L367">367</span>
<span id="L368" rel="#L368">368</span>
<span id="L369" rel="#L369">369</span>
<span id="L370" rel="#L370">370</span>
<span id="L371" rel="#L371">371</span>
<span id="L372" rel="#L372">372</span>
<span id="L373" rel="#L373">373</span>
<span id="L374" rel="#L374">374</span>
<span id="L375" rel="#L375">375</span>
<span id="L376" rel="#L376">376</span>
<span id="L377" rel="#L377">377</span>
<span id="L378" rel="#L378">378</span>
<span id="L379" rel="#L379">379</span>
<span id="L380" rel="#L380">380</span>
<span id="L381" rel="#L381">381</span>
<span id="L382" rel="#L382">382</span>
<span id="L383" rel="#L383">383</span>
<span id="L384" rel="#L384">384</span>
<span id="L385" rel="#L385">385</span>
<span id="L386" rel="#L386">386</span>
<span id="L387" rel="#L387">387</span>
<span id="L388" rel="#L388">388</span>
<span id="L389" rel="#L389">389</span>
<span id="L390" rel="#L390">390</span>
<span id="L391" rel="#L391">391</span>
<span id="L392" rel="#L392">392</span>
<span id="L393" rel="#L393">393</span>
<span id="L394" rel="#L394">394</span>
<span id="L395" rel="#L395">395</span>
<span id="L396" rel="#L396">396</span>
<span id="L397" rel="#L397">397</span>
<span id="L398" rel="#L398">398</span>
<span id="L399" rel="#L399">399</span>
<span id="L400" rel="#L400">400</span>
<span id="L401" rel="#L401">401</span>
<span id="L402" rel="#L402">402</span>
<span id="L403" rel="#L403">403</span>
<span id="L404" rel="#L404">404</span>
<span id="L405" rel="#L405">405</span>
<span id="L406" rel="#L406">406</span>
<span id="L407" rel="#L407">407</span>
<span id="L408" rel="#L408">408</span>
<span id="L409" rel="#L409">409</span>
<span id="L410" rel="#L410">410</span>
<span id="L411" rel="#L411">411</span>
<span id="L412" rel="#L412">412</span>
<span id="L413" rel="#L413">413</span>
<span id="L414" rel="#L414">414</span>
<span id="L415" rel="#L415">415</span>
<span id="L416" rel="#L416">416</span>
<span id="L417" rel="#L417">417</span>
<span id="L418" rel="#L418">418</span>
<span id="L419" rel="#L419">419</span>
<span id="L420" rel="#L420">420</span>
<span id="L421" rel="#L421">421</span>
<span id="L422" rel="#L422">422</span>
<span id="L423" rel="#L423">423</span>
<span id="L424" rel="#L424">424</span>
<span id="L425" rel="#L425">425</span>
<span id="L426" rel="#L426">426</span>
<span id="L427" rel="#L427">427</span>
<span id="L428" rel="#L428">428</span>
<span id="L429" rel="#L429">429</span>
<span id="L430" rel="#L430">430</span>
<span id="L431" rel="#L431">431</span>
<span id="L432" rel="#L432">432</span>
<span id="L433" rel="#L433">433</span>
<span id="L434" rel="#L434">434</span>
<span id="L435" rel="#L435">435</span>
<span id="L436" rel="#L436">436</span>
<span id="L437" rel="#L437">437</span>
<span id="L438" rel="#L438">438</span>
<span id="L439" rel="#L439">439</span>
<span id="L440" rel="#L440">440</span>
<span id="L441" rel="#L441">441</span>
<span id="L442" rel="#L442">442</span>
<span id="L443" rel="#L443">443</span>
<span id="L444" rel="#L444">444</span>
<span id="L445" rel="#L445">445</span>
<span id="L446" rel="#L446">446</span>
<span id="L447" rel="#L447">447</span>
<span id="L448" rel="#L448">448</span>
<span id="L449" rel="#L449">449</span>
<span id="L450" rel="#L450">450</span>
<span id="L451" rel="#L451">451</span>
<span id="L452" rel="#L452">452</span>
<span id="L453" rel="#L453">453</span>
<span id="L454" rel="#L454">454</span>
<span id="L455" rel="#L455">455</span>
<span id="L456" rel="#L456">456</span>
<span id="L457" rel="#L457">457</span>
<span id="L458" rel="#L458">458</span>
<span id="L459" rel="#L459">459</span>
<span id="L460" rel="#L460">460</span>
<span id="L461" rel="#L461">461</span>
<span id="L462" rel="#L462">462</span>
<span id="L463" rel="#L463">463</span>
<span id="L464" rel="#L464">464</span>
<span id="L465" rel="#L465">465</span>
<span id="L466" rel="#L466">466</span>
<span id="L467" rel="#L467">467</span>
<span id="L468" rel="#L468">468</span>
<span id="L469" rel="#L469">469</span>
<span id="L470" rel="#L470">470</span>
<span id="L471" rel="#L471">471</span>
<span id="L472" rel="#L472">472</span>
<span id="L473" rel="#L473">473</span>
<span id="L474" rel="#L474">474</span>
<span id="L475" rel="#L475">475</span>
<span id="L476" rel="#L476">476</span>
<span id="L477" rel="#L477">477</span>
<span id="L478" rel="#L478">478</span>
<span id="L479" rel="#L479">479</span>
<span id="L480" rel="#L480">480</span>
<span id="L481" rel="#L481">481</span>
<span id="L482" rel="#L482">482</span>
<span id="L483" rel="#L483">483</span>
<span id="L484" rel="#L484">484</span>
<span id="L485" rel="#L485">485</span>
<span id="L486" rel="#L486">486</span>
<span id="L487" rel="#L487">487</span>
<span id="L488" rel="#L488">488</span>
<span id="L489" rel="#L489">489</span>
<span id="L490" rel="#L490">490</span>
<span id="L491" rel="#L491">491</span>
<span id="L492" rel="#L492">492</span>
<span id="L493" rel="#L493">493</span>
<span id="L494" rel="#L494">494</span>
<span id="L495" rel="#L495">495</span>
<span id="L496" rel="#L496">496</span>
<span id="L497" rel="#L497">497</span>
<span id="L498" rel="#L498">498</span>
<span id="L499" rel="#L499">499</span>
<span id="L500" rel="#L500">500</span>
<span id="L501" rel="#L501">501</span>
<span id="L502" rel="#L502">502</span>
<span id="L503" rel="#L503">503</span>
<span id="L504" rel="#L504">504</span>
<span id="L505" rel="#L505">505</span>
<span id="L506" rel="#L506">506</span>
<span id="L507" rel="#L507">507</span>
<span id="L508" rel="#L508">508</span>
<span id="L509" rel="#L509">509</span>
<span id="L510" rel="#L510">510</span>
<span id="L511" rel="#L511">511</span>
<span id="L512" rel="#L512">512</span>
<span id="L513" rel="#L513">513</span>
<span id="L514" rel="#L514">514</span>
<span id="L515" rel="#L515">515</span>
<span id="L516" rel="#L516">516</span>
<span id="L517" rel="#L517">517</span>
<span id="L518" rel="#L518">518</span>
<span id="L519" rel="#L519">519</span>
<span id="L520" rel="#L520">520</span>
<span id="L521" rel="#L521">521</span>
<span id="L522" rel="#L522">522</span>
<span id="L523" rel="#L523">523</span>
<span id="L524" rel="#L524">524</span>
<span id="L525" rel="#L525">525</span>
<span id="L526" rel="#L526">526</span>
<span id="L527" rel="#L527">527</span>
<span id="L528" rel="#L528">528</span>
<span id="L529" rel="#L529">529</span>
<span id="L530" rel="#L530">530</span>
<span id="L531" rel="#L531">531</span>
<span id="L532" rel="#L532">532</span>
<span id="L533" rel="#L533">533</span>
<span id="L534" rel="#L534">534</span>
<span id="L535" rel="#L535">535</span>
<span id="L536" rel="#L536">536</span>
<span id="L537" rel="#L537">537</span>
<span id="L538" rel="#L538">538</span>
<span id="L539" rel="#L539">539</span>
<span id="L540" rel="#L540">540</span>
<span id="L541" rel="#L541">541</span>
<span id="L542" rel="#L542">542</span>
<span id="L543" rel="#L543">543</span>
<span id="L544" rel="#L544">544</span>
<span id="L545" rel="#L545">545</span>
<span id="L546" rel="#L546">546</span>
<span id="L547" rel="#L547">547</span>
<span id="L548" rel="#L548">548</span>
<span id="L549" rel="#L549">549</span>
<span id="L550" rel="#L550">550</span>
<span id="L551" rel="#L551">551</span>
<span id="L552" rel="#L552">552</span>
<span id="L553" rel="#L553">553</span>
<span id="L554" rel="#L554">554</span>
<span id="L555" rel="#L555">555</span>
<span id="L556" rel="#L556">556</span>
<span id="L557" rel="#L557">557</span>
<span id="L558" rel="#L558">558</span>
<span id="L559" rel="#L559">559</span>
<span id="L560" rel="#L560">560</span>
<span id="L561" rel="#L561">561</span>
<span id="L562" rel="#L562">562</span>
<span id="L563" rel="#L563">563</span>
<span id="L564" rel="#L564">564</span>
<span id="L565" rel="#L565">565</span>
<span id="L566" rel="#L566">566</span>
<span id="L567" rel="#L567">567</span>
<span id="L568" rel="#L568">568</span>
<span id="L569" rel="#L569">569</span>
<span id="L570" rel="#L570">570</span>
<span id="L571" rel="#L571">571</span>
<span id="L572" rel="#L572">572</span>
<span id="L573" rel="#L573">573</span>
<span id="L574" rel="#L574">574</span>
<span id="L575" rel="#L575">575</span>
<span id="L576" rel="#L576">576</span>
<span id="L577" rel="#L577">577</span>
<span id="L578" rel="#L578">578</span>
<span id="L579" rel="#L579">579</span>
<span id="L580" rel="#L580">580</span>
<span id="L581" rel="#L581">581</span>
<span id="L582" rel="#L582">582</span>
<span id="L583" rel="#L583">583</span>
<span id="L584" rel="#L584">584</span>
<span id="L585" rel="#L585">585</span>
<span id="L586" rel="#L586">586</span>
<span id="L587" rel="#L587">587</span>
<span id="L588" rel="#L588">588</span>
<span id="L589" rel="#L589">589</span>
<span id="L590" rel="#L590">590</span>
<span id="L591" rel="#L591">591</span>
<span id="L592" rel="#L592">592</span>
<span id="L593" rel="#L593">593</span>
<span id="L594" rel="#L594">594</span>
<span id="L595" rel="#L595">595</span>
<span id="L596" rel="#L596">596</span>
<span id="L597" rel="#L597">597</span>
<span id="L598" rel="#L598">598</span>
<span id="L599" rel="#L599">599</span>
<span id="L600" rel="#L600">600</span>
<span id="L601" rel="#L601">601</span>
<span id="L602" rel="#L602">602</span>
<span id="L603" rel="#L603">603</span>
<span id="L604" rel="#L604">604</span>
<span id="L605" rel="#L605">605</span>
<span id="L606" rel="#L606">606</span>
<span id="L607" rel="#L607">607</span>
<span id="L608" rel="#L608">608</span>
<span id="L609" rel="#L609">609</span>
<span id="L610" rel="#L610">610</span>
<span id="L611" rel="#L611">611</span>
<span id="L612" rel="#L612">612</span>
<span id="L613" rel="#L613">613</span>
<span id="L614" rel="#L614">614</span>
<span id="L615" rel="#L615">615</span>
<span id="L616" rel="#L616">616</span>
<span id="L617" rel="#L617">617</span>
<span id="L618" rel="#L618">618</span>
<span id="L619" rel="#L619">619</span>
<span id="L620" rel="#L620">620</span>
<span id="L621" rel="#L621">621</span>
<span id="L622" rel="#L622">622</span>
<span id="L623" rel="#L623">623</span>
<span id="L624" rel="#L624">624</span>
<span id="L625" rel="#L625">625</span>
<span id="L626" rel="#L626">626</span>
<span id="L627" rel="#L627">627</span>
<span id="L628" rel="#L628">628</span>
<span id="L629" rel="#L629">629</span>
<span id="L630" rel="#L630">630</span>
<span id="L631" rel="#L631">631</span>
<span id="L632" rel="#L632">632</span>
<span id="L633" rel="#L633">633</span>
<span id="L634" rel="#L634">634</span>
<span id="L635" rel="#L635">635</span>
<span id="L636" rel="#L636">636</span>
<span id="L637" rel="#L637">637</span>
<span id="L638" rel="#L638">638</span>
<span id="L639" rel="#L639">639</span>
<span id="L640" rel="#L640">640</span>
<span id="L641" rel="#L641">641</span>
<span id="L642" rel="#L642">642</span>
<span id="L643" rel="#L643">643</span>
<span id="L644" rel="#L644">644</span>
<span id="L645" rel="#L645">645</span>
<span id="L646" rel="#L646">646</span>
<span id="L647" rel="#L647">647</span>
<span id="L648" rel="#L648">648</span>
<span id="L649" rel="#L649">649</span>
<span id="L650" rel="#L650">650</span>
<span id="L651" rel="#L651">651</span>
<span id="L652" rel="#L652">652</span>
<span id="L653" rel="#L653">653</span>
<span id="L654" rel="#L654">654</span>
<span id="L655" rel="#L655">655</span>
<span id="L656" rel="#L656">656</span>
<span id="L657" rel="#L657">657</span>
<span id="L658" rel="#L658">658</span>
<span id="L659" rel="#L659">659</span>
<span id="L660" rel="#L660">660</span>
<span id="L661" rel="#L661">661</span>
<span id="L662" rel="#L662">662</span>
<span id="L663" rel="#L663">663</span>
<span id="L664" rel="#L664">664</span>
<span id="L665" rel="#L665">665</span>
<span id="L666" rel="#L666">666</span>
<span id="L667" rel="#L667">667</span>
<span id="L668" rel="#L668">668</span>
<span id="L669" rel="#L669">669</span>
<span id="L670" rel="#L670">670</span>
<span id="L671" rel="#L671">671</span>
<span id="L672" rel="#L672">672</span>
<span id="L673" rel="#L673">673</span>
<span id="L674" rel="#L674">674</span>
<span id="L675" rel="#L675">675</span>
<span id="L676" rel="#L676">676</span>
<span id="L677" rel="#L677">677</span>
<span id="L678" rel="#L678">678</span>
<span id="L679" rel="#L679">679</span>
<span id="L680" rel="#L680">680</span>
<span id="L681" rel="#L681">681</span>
<span id="L682" rel="#L682">682</span>
<span id="L683" rel="#L683">683</span>
<span id="L684" rel="#L684">684</span>
<span id="L685" rel="#L685">685</span>
<span id="L686" rel="#L686">686</span>
<span id="L687" rel="#L687">687</span>
<span id="L688" rel="#L688">688</span>
<span id="L689" rel="#L689">689</span>
<span id="L690" rel="#L690">690</span>
<span id="L691" rel="#L691">691</span>
<span id="L692" rel="#L692">692</span>
<span id="L693" rel="#L693">693</span>
<span id="L694" rel="#L694">694</span>
<span id="L695" rel="#L695">695</span>
<span id="L696" rel="#L696">696</span>
</pre>
          </td>
          <td width="100%">
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">;;; actionscript-mode.el --- A simple mode for editing Actionscript 3 files</span></div><div class='line' id='LC2'><br/></div><div class='line' id='LC3'><span class="c1">;; Copyright (C) 2011 Austin Haas</span></div><div class='line' id='LC4'><br/></div><div class='line' id='LC5'><span class="c1">;; Author: Austin Haas</span></div><div class='line' id='LC6'><span class="c1">;; Keywords: language modes</span></div><div class='line' id='LC7'><br/></div><div class='line' id='LC8'><span class="c1">;; Tabbing stolen from: Aemon Cannon, http://github.com/aemoncannon/as3-mode/tree/master/as3-mode.el</span></div><div class='line' id='LC9'><span class="c1">;; Copyright (C) 2007 Aemon Cannon</span></div><div class='line' id='LC10'><br/></div><div class='line' id='LC11'><span class="c1">;; This file is free software; you can redistribute it and/or modify</span></div><div class='line' id='LC12'><span class="c1">;; it under the terms of the GNU General Public License as published by</span></div><div class='line' id='LC13'><span class="c1">;; the Free Software Foundation; either version 2, or (at your option)</span></div><div class='line' id='LC14'><span class="c1">;; any later version.</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'><span class="c1">;; This file is distributed in the hope that it will be useful,</span></div><div class='line' id='LC17'><span class="c1">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span></div><div class='line' id='LC18'><span class="c1">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the</span></div><div class='line' id='LC19'><span class="c1">;; GNU General Public License for more details.</span></div><div class='line' id='LC20'><br/></div><div class='line' id='LC21'><span class="c1">;; You should have received a copy of the GNU General Public License</span></div><div class='line' id='LC22'><span class="c1">;; along with GNU Emacs; see the file COPYING. If not, write to</span></div><div class='line' id='LC23'><span class="c1">;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,</span></div><div class='line' id='LC24'><span class="c1">;; Boston, MA 02111-1307, USA.</span></div><div class='line' id='LC25'><br/></div><div class='line' id='LC26'><span class="c1">;;; Commentary:</span></div><div class='line' id='LC27'><span class="c1">;;</span></div><div class='line' id='LC28'><span class="c1">;; Add this to your .emacs:</span></div><div class='line' id='LC29'><span class="c1">;;</span></div><div class='line' id='LC30'><span class="c1">;; (autoload &#39;actionscript-mode &quot;actionscript-mode&quot; &quot;Major mode for actionscript.&quot; t)</span></div><div class='line' id='LC31'><span class="c1">;; (add-to-list &#39;auto-mode-alist &#39;(&quot;\\.as$&quot; . actionscript-mode))</span></div><div class='line' id='LC32'><span class="c1">;;</span></div><div class='line' id='LC33'><span class="c1">;;------------------</span></div><div class='line' id='LC34'><span class="c1">;;; TODO</span></div><div class='line' id='LC35'><br/></div><div class='line' id='LC36'><span class="c1">;; Imenu (imenu-generic-expression or imenu-create-index-function)</span></div><div class='line' id='LC37'><br/></div><div class='line' id='LC38'><span class="c1">;;------------------</span></div><div class='line' id='LC39'><br/></div><div class='line' id='LC40'><span class="c1">;;; Changes in 7.2</span></div><div class='line' id='LC41'><span class="c1">;;</span></div><div class='line' id='LC42'><span class="c1">;; Updated comments.</span></div><div class='line' id='LC43'><span class="c1">;;</span></div><div class='line' id='LC44'><span class="c1">;; See https://github.com/austinhaas/actionscript-mode for info on</span></div><div class='line' id='LC45'><span class="c1">;; future changes.</span></div><div class='line' id='LC46'><br/></div><div class='line' id='LC47'><span class="c1">;;; Code:</span></div><div class='line' id='LC48'><br/></div><div class='line' id='LC49'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;cl</span><span class="p">)</span></div><div class='line' id='LC50'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;font-lock</span><span class="p">)</span></div><div class='line' id='LC51'><span class="p">(</span><span class="nf">eval-when-compile</span></div><div class='line' id='LC52'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;regexp-opt</span><span class="p">))</span></div><div class='line' id='LC53'><br/></div><div class='line' id='LC54'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-mode-version</span> <span class="s">&quot;7.2.2&quot;</span></div><div class='line' id='LC55'>&nbsp;&nbsp;<span class="s">&quot;Actionscript Mode version number.&quot;</span><span class="p">)</span></div><div class='line' id='LC56'><br/></div><div class='line' id='LC57'><span class="p">(</span><span class="nf">defgroup</span> <span class="nv">actionscript</span> <span class="nv">nil</span></div><div class='line' id='LC58'>&nbsp;&nbsp;<span class="s">&quot;Major mode for editing Actionscript code.&quot;</span></div><div class='line' id='LC59'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;languages</span><span class="p">)</span></div><div class='line' id='LC60'><br/></div><div class='line' id='LC61'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">actionscript-mode-syntax-table</span> <span class="nv">nil</span></div><div class='line' id='LC62'>&nbsp;&nbsp;<span class="s">&quot;Syntax table used in actionscript-mode buffers.&quot;</span><span class="p">)</span></div><div class='line' id='LC63'><br/></div><div class='line' id='LC64'><span class="p">(</span><span class="k">if </span><span class="nv">actionscript-mode-syntax-table</span></div><div class='line' id='LC65'>		<span class="p">()</span></div><div class='line' id='LC66'>	<span class="p">(</span><span class="nf">setq</span> <span class="nv">actionscript-mode-syntax-table</span> <span class="p">(</span><span class="nf">make-syntax-table</span><span class="p">))</span></div><div class='line' id='LC67'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?_</span>  <span class="s">&quot;w&quot;</span>     <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC68'><span class="c1">;;  (modify-syntax-entry ?_  &quot;_&quot;     actionscript-mode-syntax-table)</span></div><div class='line' id='LC69'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?$</span>  <span class="s">&quot;w&quot;</span>     <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC70'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\\</span> <span class="s">&quot;\\&quot;</span>    <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC71'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?+</span>  <span class="s">&quot;.&quot;</span>     <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC72'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?-</span>  <span class="s">&quot;.&quot;</span>     <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC73'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?=</span>  <span class="s">&quot;.&quot;</span>     <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC74'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?%</span>  <span class="s">&quot;.&quot;</span>     <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC75'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?&lt;</span>  <span class="s">&quot;.&quot;</span>     <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC76'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?&gt;</span>  <span class="s">&quot;.&quot;</span>     <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC77'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?&amp;</span>  <span class="s">&quot;.&quot;</span>     <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC78'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?|</span>  <span class="s">&quot;.&quot;</span>     <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC79'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="o">&#39;</span> <span class="s">&quot;\&quot;&quot;</span>    <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC80'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="mi">240</span> <span class="s">&quot;.&quot;</span>   <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC81'>	<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?/</span>  <span class="s">&quot;. 124b&quot;</span> <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC82'>	<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?*</span>  <span class="s">&quot;. 23&quot;</span>   <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC83'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="nv">n</span> <span class="s">&quot;&gt; b&quot;</span>  <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC84'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="nv">^m</span> <span class="s">&quot;&gt; b&quot;</span> <span class="nv">actionscript-mode-syntax-table</span><span class="p">))</span></div><div class='line' id='LC85'><br/></div><div class='line' id='LC86'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">actionscript-mode-map</span> <span class="p">()</span></div><div class='line' id='LC87'>&nbsp;&nbsp;<span class="s">&quot;Keymap used in actionscript-mode buffers.&quot;</span><span class="p">)</span></div><div class='line' id='LC88'><br/></div><div class='line' id='LC89'><span class="p">(</span><span class="k">if </span><span class="nv">actionscript-mode-map</span></div><div class='line' id='LC90'>		<span class="p">()</span></div><div class='line' id='LC91'>	<span class="p">(</span><span class="nf">setq</span> <span class="nv">actionscript-mode-map</span> <span class="p">(</span><span class="nf">make-sparse-keymap</span><span class="p">))</span></div><div class='line' id='LC92'>	<span class="p">(</span><span class="nf">define-key</span> <span class="nv">actionscript-mode-map</span> <span class="err">[</span><span class="p">(</span><span class="nf">control</span> <span class="nv">meta</span> <span class="nv">a</span><span class="p">)</span><span class="err">]</span> <span class="ss">&#39;as-beginning-of-defun</span><span class="p">)</span></div><div class='line' id='LC93'>	<span class="p">(</span><span class="nf">define-key</span> <span class="nv">actionscript-mode-map</span> <span class="err">[</span><span class="p">(</span><span class="nf">control</span> <span class="nv">meta</span> <span class="nv">e</span><span class="p">)</span><span class="err">]</span> <span class="ss">&#39;as-end-of-defun</span><span class="p">)</span></div><div class='line' id='LC94'>	<span class="p">(</span><span class="nf">define-key</span> <span class="nv">actionscript-mode-map</span> <span class="err">[</span><span class="p">(</span><span class="nf">control</span> <span class="nv">meta</span> <span class="nv">h</span><span class="p">)</span><span class="err">]</span> <span class="ss">&#39;as-mark-defun</span><span class="p">)</span></div><div class='line' id='LC95'>	<span class="p">(</span><span class="nf">define-key</span> <span class="nv">actionscript-mode-map</span> <span class="s">&quot;\C-c\C-c&quot;</span> <span class="ss">&#39;comment-region</span><span class="p">)</span></div><div class='line' id='LC96'>	<span class="p">(</span><span class="nf">define-key</span> <span class="nv">actionscript-mode-map</span> <span class="s">&quot;\C-c\C-u&quot;</span> <span class="ss">&#39;uncomment-region</span><span class="p">))</span></div><div class='line' id='LC97'><br/></div><div class='line' id='LC98'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">actionscript-mode-hook</span> <span class="nv">nil</span></div><div class='line' id='LC99'>&nbsp;&nbsp;<span class="s">&quot;*Hook called by `actionscript-mode&#39;.&quot;</span></div><div class='line' id='LC100'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;hook</span></div><div class='line' id='LC101'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;actionscript</span><span class="p">)</span></div><div class='line' id='LC102'><br/></div><div class='line' id='LC103'><span class="c1">;; Preprocessor directives (for cpp, not Actionscript).</span></div><div class='line' id='LC104'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">preprocessor-kwds</span></div><div class='line' id='LC105'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;#include&quot;</span> <span class="s">&quot;#define&quot;</span> <span class="s">&quot;#else&quot;</span> <span class="s">&quot;#endif&quot;</span> <span class="s">&quot;#ifdef&quot;</span> <span class="s">&quot;#ifndef&quot;</span><span class="p">))</span></div><div class='line' id='LC106'><br/></div><div class='line' id='LC107'><span class="c1">;; Constants</span></div><div class='line' id='LC108'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-constant-kwds</span></div><div class='line' id='LC109'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;true&quot;</span> <span class="s">&quot;false&quot;</span> <span class="s">&quot;null&quot;</span> <span class="s">&quot;undefined&quot;</span> <span class="s">&quot;NaN&quot;</span> <span class="s">&quot;Infinity&quot;</span> <span class="s">&quot;-Infinity&quot;</span><span class="p">))</span></div><div class='line' id='LC110'><br/></div><div class='line' id='LC111'><span class="c1">;; Global funcs</span></div><div class='line' id='LC112'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-global-funcs</span></div><div class='line' id='LC113'>&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;Array&quot;</span> <span class="s">&quot;Boolean&quot;</span> <span class="s">&quot;decodeURI&quot;</span> <span class="s">&quot;decodeURIComponent&quot;</span> <span class="s">&quot;encodeURI&quot;</span></div><div class='line' id='LC114'>		<span class="s">&quot;encodeURIComponent&quot;</span> <span class="s">&quot;escape&quot;</span> <span class="s">&quot;int&quot;</span> <span class="s">&quot;isFinite&quot;</span> <span class="s">&quot;isNaN&quot;</span> <span class="s">&quot;isXMLName&quot;</span></div><div class='line' id='LC115'>		<span class="s">&quot;Number&quot;</span> <span class="s">&quot;Object&quot;</span>	<span class="s">&quot;parseFloat&quot;</span> <span class="s">&quot;parseInt&quot;</span>	<span class="s">&quot;String&quot;</span> <span class="s">&quot;trace&quot;</span> <span class="s">&quot;uint&quot;</span></div><div class='line' id='LC116'>		<span class="s">&quot;unescape&quot;</span> <span class="s">&quot;XML&quot;</span> <span class="s">&quot;XMLList&quot;</span><span class="p">))</span></div><div class='line' id='LC117'><br/></div><div class='line' id='LC118'><span class="c1">;; Top Level Classes</span></div><div class='line' id='LC119'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-global-classes</span></div><div class='line' id='LC120'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;ArgumentError&quot;</span> <span class="s">&quot;arguments&quot;</span> <span class="s">&quot;Array&quot;</span> <span class="s">&quot;Boolean&quot;</span> <span class="s">&quot;Class&quot;</span> <span class="s">&quot;Date&quot;</span></div><div class='line' id='LC121'>		<span class="s">&quot;DefinitionError&quot;</span> <span class="s">&quot;Error&quot;</span> <span class="s">&quot;EvalError&quot;</span> <span class="s">&quot;Function&quot;</span> <span class="s">&quot;int&quot;</span> <span class="s">&quot;Math&quot;</span></div><div class='line' id='LC122'>		<span class="s">&quot;Namespace&quot;</span> <span class="s">&quot;Number&quot;</span> <span class="s">&quot;Object&quot;</span> <span class="s">&quot;QName&quot;</span> <span class="s">&quot;RangeError&quot;</span> <span class="s">&quot;ReferenceError&quot;</span></div><div class='line' id='LC123'>		<span class="s">&quot;RegExp&quot;</span> <span class="s">&quot;SecurityError&quot;</span> <span class="s">&quot;String&quot;</span> <span class="s">&quot;SyntaxError&quot;</span> <span class="s">&quot;TypeError&quot;</span> <span class="s">&quot;uint&quot;</span></div><div class='line' id='LC124'>		<span class="s">&quot;URIError&quot;</span> <span class="s">&quot;VerifyError&quot;</span> <span class="s">&quot;XML&quot;</span> <span class="s">&quot;XMLList&quot;</span><span class="p">))</span></div><div class='line' id='LC125'><br/></div><div class='line' id='LC126'><span class="c1">;; Global props</span></div><div class='line' id='LC127'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-global-props</span></div><div class='line' id='LC128'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;this&quot;</span><span class="p">))</span></div><div class='line' id='LC129'><br/></div><div class='line' id='LC130'><span class="c1">;; Operators</span></div><div class='line' id='LC131'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-symbol-operators</span></div><div class='line' id='LC132'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;+&quot;</span> <span class="s">&quot;+=&quot;</span> <span class="s">&quot;[]&quot;</span> <span class="s">&quot;=&quot;</span> <span class="s">&quot;&amp;&quot;</span> <span class="s">&quot;&amp;=&quot;</span> <span class="s">&quot;&lt;&lt;&quot;</span> <span class="s">&quot;&lt;&lt;=&quot;</span></div><div class='line' id='LC133'>		<span class="s">&quot;~&quot;</span> <span class="s">&quot;|&quot;</span> <span class="s">&quot;|=&quot;</span> <span class="s">&quot;&gt;&gt;&quot;</span> <span class="s">&quot;&gt;&gt;=&quot;</span> <span class="s">&quot;&gt;&gt;&gt;&quot;</span> <span class="s">&quot;&gt;&gt;&gt;=&quot;</span></div><div class='line' id='LC134'>		<span class="s">&quot;^&quot;</span> <span class="s">&quot;^=&quot;</span> <span class="s">&quot;/*&quot;</span> <span class="s">&quot;*/&quot;</span> <span class="s">&quot;,&quot;</span> <span class="s">&quot;?:&quot;</span> <span class="s">&quot;--&quot;</span> <span class="s">&quot;/&quot;</span></div><div class='line' id='LC135'>		<span class="s">&quot;/=&quot;</span> <span class="s">&quot;.&quot;</span> <span class="s">&quot;==&quot;</span> <span class="s">&quot;&gt;&quot;</span> <span class="s">&quot;&gt;=&quot;</span> <span class="s">&quot;++&quot;</span> <span class="s">&quot;!=&quot;</span> <span class="s">&quot;&lt;&gt;&quot;</span></div><div class='line' id='LC136'>		<span class="s">&quot;&lt;&quot;</span> <span class="s">&quot;&lt;=&quot;</span> <span class="s">&quot;//&quot;</span> <span class="s">&quot;&amp;&amp;&quot;</span> <span class="s">&quot;!&quot;</span> <span class="s">&quot;||&quot;</span> <span class="s">&quot;%&quot;</span> <span class="s">&quot;%=&quot;</span></div><div class='line' id='LC137'>		<span class="s">&quot;*&quot;</span> <span class="s">&quot;*=&quot;</span> <span class="s">&quot;{}&quot;</span> <span class="s">&quot;()&quot;</span> <span class="s">&quot;===&quot;</span> <span class="s">&quot;!==&quot;</span> <span class="s">&quot;\&quot;&quot;</span></div><div class='line' id='LC138'>		<span class="s">&quot;-&quot;</span> <span class="s">&quot;-=&quot;</span> <span class="s">&quot;:&quot;</span><span class="p">))</span></div><div class='line' id='LC139'><br/></div><div class='line' id='LC140'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-word-operators</span></div><div class='line' id='LC141'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;as&quot;</span> <span class="s">&quot;is&quot;</span> <span class="s">&quot;instanceof&quot;</span> <span class="s">&quot;new&quot;</span> <span class="s">&quot;typeof&quot;</span> <span class="s">&quot;void&quot;</span><span class="p">))</span></div><div class='line' id='LC142'><br/></div><div class='line' id='LC143'><span class="c1">;; Declaration specifier keywords.</span></div><div class='line' id='LC144'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-specifier-kwds</span></div><div class='line' id='LC145'>&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;override&quot;</span> <span class="s">&quot;instrinsic&quot;</span> <span class="s">&quot;private&quot;</span> <span class="s">&quot;protected&quot;</span> <span class="s">&quot;public&quot;</span> <span class="s">&quot;static&quot;</span> <span class="s">&quot;dynamic&quot;</span><span class="p">))</span></div><div class='line' id='LC146'><br/></div><div class='line' id='LC147'><span class="c1">;; Class/struct declaration keywords.</span></div><div class='line' id='LC148'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-class-kwds</span></div><div class='line' id='LC149'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;class&quot;</span> <span class="s">&quot;interface&quot;</span><span class="p">))</span></div><div class='line' id='LC150'><br/></div><div class='line' id='LC151'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-package-kwds</span></div><div class='line' id='LC152'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;package&quot;</span><span class="p">))</span></div><div class='line' id='LC153'><br/></div><div class='line' id='LC154'><span class="c1">;; Keywords introducing other declaration-level constructs.</span></div><div class='line' id='LC155'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-other-decl-kwds</span></div><div class='line' id='LC156'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;import&quot;</span><span class="p">))</span></div><div class='line' id='LC157'><br/></div><div class='line' id='LC158'><span class="c1">;; Variable and Function declarations</span></div><div class='line' id='LC159'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-other-decl-2-kwds</span></div><div class='line' id='LC160'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;var&quot;</span> <span class="s">&quot;function&quot;</span> <span class="s">&quot;const&quot;</span><span class="p">))</span></div><div class='line' id='LC161'><br/></div><div class='line' id='LC162'><span class="c1">;; Keywords that occur in declaration-level constructs.</span></div><div class='line' id='LC163'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-decl-level-kwds</span></div><div class='line' id='LC164'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;extends&quot;</span> <span class="s">&quot;implements&quot;</span><span class="p">))</span></div><div class='line' id='LC165'><br/></div><div class='line' id='LC166'><span class="c1">;; Conditionals</span></div><div class='line' id='LC167'><span class="c1">;; *Not sure if &quot;catch&quot; should be here,</span></div><div class='line' id='LC168'><span class="c1">;; but it&#39;s assumed to be here for the actionscript-conditional-key.</span></div><div class='line' id='LC169'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-conditional-kwds</span></div><div class='line' id='LC170'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;for&quot;</span> <span class="s">&quot;for each&quot;</span> <span class="s">&quot;if&quot;</span> <span class="s">&quot;while&quot;</span> <span class="s">&quot;switch&quot;</span> <span class="s">&quot;catch&quot;</span><span class="p">))</span></div><div class='line' id='LC171'><br/></div><div class='line' id='LC172'><span class="c1">;; Statement keywords followed directly by a block.</span></div><div class='line' id='LC173'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-block-stmt-1-kwds</span></div><div class='line' id='LC174'>&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;do&quot;</span> <span class="s">&quot;else&quot;</span> <span class="s">&quot;finally&quot;</span> <span class="s">&quot;try&quot;</span><span class="p">))</span></div><div class='line' id='LC175'><br/></div><div class='line' id='LC176'><span class="c1">;; Statement keywords followed by an expression or nothing.</span></div><div class='line' id='LC177'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-simple-stmt-kwds</span></div><div class='line' id='LC178'>&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;break&quot;</span> <span class="s">&quot;continue&quot;</span> <span class="s">&quot;return&quot;</span> <span class="s">&quot;throw&quot;</span><span class="p">))</span></div><div class='line' id='LC179'><br/></div><div class='line' id='LC180'><span class="c1">;; Keywords introducing labels in blocks.</span></div><div class='line' id='LC181'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-label-kwds</span></div><div class='line' id='LC182'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;case&quot;</span> <span class="s">&quot;default&quot;</span><span class="p">))</span></div><div class='line' id='LC183'><br/></div><div class='line' id='LC184'><span class="c1">;; Keywords that can occur anywhere in expressions.</span></div><div class='line' id='LC185'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-expr-kwds</span></div><div class='line' id='LC186'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;super&quot;</span><span class="p">))</span></div><div class='line' id='LC187'><br/></div><div class='line' id='LC188'><span class="c1">;; Other keywords that we haven&#39;t grouped properly.</span></div><div class='line' id='LC189'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-other-kwds</span></div><div class='line' id='LC190'>	<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;delete&quot;</span> <span class="s">&quot;get&quot;</span> <span class="s">&quot;set&quot;</span> <span class="s">&quot;with&quot;</span><span class="p">))</span></div><div class='line' id='LC191'><br/></div><div class='line' id='LC192'><span class="c1">;;  (defconst actionscript-builtin-props</span></div><div class='line' id='LC193'><span class="c1">;; 	(regexp-opt</span></div><div class='line' id='LC194'><span class="c1">;; 	 (append actionscript-object-props</span></div><div class='line' id='LC195'><span class="c1">;; 					 actionscript-function-props</span></div><div class='line' id='LC196'><span class="c1">;; 					 actionscript-array-props</span></div><div class='line' id='LC197'><span class="c1">;; 					 actionscript-string-props</span></div><div class='line' id='LC198'><span class="c1">;; 					 actionscript-date-props</span></div><div class='line' id='LC199'><span class="c1">;; 					 actionscript-number-props</span></div><div class='line' id='LC200'><span class="c1">;; 					 actionscript-math-props)))</span></div><div class='line' id='LC201'><br/></div><div class='line' id='LC202'><span class="c1">;; (defconst actionscript-builtin-funcs(regexp-opt</span></div><div class='line' id='LC203'><span class="c1">;; 	 (append actionscript-global-funcs</span></div><div class='line' id='LC204'><span class="c1">;; 					 actionscript-math-funcs</span></div><div class='line' id='LC205'><span class="c1">;; 					 actionscript-array-funcs</span></div><div class='line' id='LC206'><span class="c1">;; 					 actionscript-date-funcs)))</span></div><div class='line' id='LC207'><br/></div><div class='line' id='LC208'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-keywords</span></div><div class='line' id='LC209'>	<span class="p">(</span><span class="nf">regexp-opt</span></div><div class='line' id='LC210'>	 <span class="p">(</span><span class="nb">append </span><span class="nv">actionscript-constant-kwds</span></div><div class='line' id='LC211'>					 <span class="nv">actionscript-global-funcs</span></div><div class='line' id='LC212'>					 <span class="nv">actionscript-global-classes</span></div><div class='line' id='LC213'>					 <span class="nv">actionscript-global-props</span></div><div class='line' id='LC214'>					 <span class="nv">actionscript-specifier-kwds</span></div><div class='line' id='LC215'>					 <span class="nv">actionscript-class-kwds</span></div><div class='line' id='LC216'>					 <span class="nv">actionscript-package-kwds</span></div><div class='line' id='LC217'>					 <span class="nv">actionscript-other-decl-kwds</span></div><div class='line' id='LC218'>					 <span class="nv">actionscript-other-decl-2-kwds</span></div><div class='line' id='LC219'>					 <span class="nv">actionscript-decl-level-kwds</span></div><div class='line' id='LC220'>					 <span class="nv">actionscript-conditional-kwds</span></div><div class='line' id='LC221'>					 <span class="nv">actionscript-block-stmt-1-kwds</span></div><div class='line' id='LC222'>					 <span class="nv">actionscript-simple-stmt-kwds</span></div><div class='line' id='LC223'>					 <span class="nv">actionscript-label-kwds</span></div><div class='line' id='LC224'>					 <span class="nv">actionscript-expr-kwds</span></div><div class='line' id='LC225'>					 <span class="nv">actionscript-other-kwds</span><span class="p">)</span> <span class="ss">&#39;words</span><span class="p">))</span></div><div class='line' id='LC226'><br/></div><div class='line' id='LC227'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-identifier-re</span> <span class="s">&quot;[a-zA-Z_$][a-zA-Z0-9_$]*&quot;</span></div><div class='line' id='LC228'>	<span class="s">&quot;Regexp to match any valid identifier in actionscript.&quot;</span><span class="p">)</span></div><div class='line' id='LC229'><br/></div><div class='line' id='LC230'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">actionscript-mode-hook</span> <span class="nv">nil</span></div><div class='line' id='LC231'>&nbsp;&nbsp;<span class="s">&quot;*Hook called by `actionscript-mode&#39;.&quot;</span></div><div class='line' id='LC232'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;hook</span></div><div class='line' id='LC233'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;actionscript</span><span class="p">)</span></div><div class='line' id='LC234'><br/></div><div class='line' id='LC235'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">actionscript-font-lock-level</span> <span class="mi">2</span></div><div class='line' id='LC236'>	<span class="s">&quot;*What level of syntax highlighting do we want. 1-3&quot;</span></div><div class='line' id='LC237'>	<span class="nv">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">radio</span> <span class="p">(</span><span class="nf">const</span> <span class="nv">:tag</span> <span class="s">&quot;Only keywords.&quot;</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC238'>					<span class="p">(</span><span class="nf">const</span> <span class="nv">:tag</span> <span class="s">&quot;Keywords and contextual tags.&quot;</span> <span class="mi">2</span><span class="p">)</span></div><div class='line' id='LC239'>					<span class="p">(</span><span class="nf">const</span> <span class="nv">:tag</span> <span class="s">&quot;All of the above plus all of Actionscript&#39;s builtin classes. (not implemented)&quot;</span> <span class="mi">3</span><span class="p">))</span></div><div class='line' id='LC240'>	<span class="nv">:group</span> <span class="ss">&#39;actionscript</span><span class="p">)</span></div><div class='line' id='LC241'><br/></div><div class='line' id='LC242'><span class="c1">;;;; Faces -------------------------------------------------------------------</span></div><div class='line' id='LC243'><br/></div><div class='line' id='LC244'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">actionscript-font-lock-default-face</span> <span class="ss">&#39;actionscript-font-lock-default-face</span><span class="p">)</span></div><div class='line' id='LC245'><br/></div><div class='line' id='LC246'><span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">red</span> <span class="s">&quot;#a35757&quot;</span><span class="p">)</span></div><div class='line' id='LC247'>			<span class="p">(</span><span class="nf">green</span> <span class="s">&quot;#7ac470&quot;</span><span class="p">)</span></div><div class='line' id='LC248'>			<span class="p">(</span><span class="nf">yellow</span> <span class="s">&quot;#dfe14e&quot;</span><span class="p">)</span></div><div class='line' id='LC249'>			<span class="p">(</span><span class="nf">orange</span> <span class="s">&quot;#ef6d22&quot;</span><span class="p">)</span></div><div class='line' id='LC250'>			<span class="p">(</span><span class="nf">blue</span> <span class="s">&quot;#5083b2&quot;</span><span class="p">)</span></div><div class='line' id='LC251'>			<span class="p">(</span><span class="nf">magenta</span> <span class="s">&quot;#b781ac&quot;</span><span class="p">)</span></div><div class='line' id='LC252'>			<span class="p">(</span><span class="nf">cyan</span> <span class="s">&quot;#b0b5d2&quot;</span><span class="p">)</span></div><div class='line' id='LC253'>			<span class="p">(</span><span class="nf">white</span> <span class="s">&quot;#f0f0f0&quot;</span><span class="p">))</span></div><div class='line' id='LC254'><br/></div><div class='line' id='LC255'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-preprocessor-kwds-face</span></div><div class='line' id='LC256'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">yellow</span><span class="p">)))</span></div><div class='line' id='LC257'>		<span class="s">&quot;*Face for preprocesor directives.&quot;</span></div><div class='line' id='LC258'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC259'><br/></div><div class='line' id='LC260'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-constant-kwds-face</span></div><div class='line' id='LC261'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">cyan</span><span class="p">)))</span></div><div class='line' id='LC262'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC263'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC264'><br/></div><div class='line' id='LC265'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-global-funcs-face</span></div><div class='line' id='LC266'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">red</span><span class="p">)))</span></div><div class='line' id='LC267'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC268'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC269'><br/></div><div class='line' id='LC270'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-global-classes</span></div><div class='line' id='LC271'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">blue</span><span class="p">)))</span></div><div class='line' id='LC272'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC273'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC274'><br/></div><div class='line' id='LC275'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-global-props-face</span></div><div class='line' id='LC276'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">blue</span><span class="p">)))</span></div><div class='line' id='LC277'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC278'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC279'><br/></div><div class='line' id='LC280'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-operators-face</span></div><div class='line' id='LC281'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">yellow</span><span class="p">)))</span></div><div class='line' id='LC282'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC283'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC284'><br/></div><div class='line' id='LC285'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-specifier-kwds-face</span></div><div class='line' id='LC286'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">magenta</span><span class="p">)))</span></div><div class='line' id='LC287'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC288'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC289'><br/></div><div class='line' id='LC290'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-package-kwds-face</span></div><div class='line' id='LC291'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">yellow</span><span class="p">)))</span></div><div class='line' id='LC292'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC293'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC294'><br/></div><div class='line' id='LC295'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-class-kwds-face</span></div><div class='line' id='LC296'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">yellow</span><span class="p">)))</span></div><div class='line' id='LC297'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC298'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC299'><br/></div><div class='line' id='LC300'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-other-decl-kwds-face</span></div><div class='line' id='LC301'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">yellow</span><span class="p">)))</span></div><div class='line' id='LC302'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC303'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC304'><br/></div><div class='line' id='LC305'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-other-decl-2-kwds-face</span></div><div class='line' id='LC306'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">blue</span><span class="p">)))</span></div><div class='line' id='LC307'>		<span class="s">&quot;* function, var&quot;</span></div><div class='line' id='LC308'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC309'><br/></div><div class='line' id='LC310'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-decl-level-kwds-face</span></div><div class='line' id='LC311'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">yellow</span><span class="p">)))</span></div><div class='line' id='LC312'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC313'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC314'><br/></div><div class='line' id='LC315'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-conditional-kwds-face</span></div><div class='line' id='LC316'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">yellow</span><span class="p">)))</span></div><div class='line' id='LC317'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC318'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC319'><br/></div><div class='line' id='LC320'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-block-stmt-1-kwds-face</span></div><div class='line' id='LC321'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">yellow</span><span class="p">)))</span></div><div class='line' id='LC322'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC323'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC324'><br/></div><div class='line' id='LC325'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-simple-stmt-kwds-face</span></div><div class='line' id='LC326'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">yellow</span><span class="p">)))</span></div><div class='line' id='LC327'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC328'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC329'><br/></div><div class='line' id='LC330'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-label-kwds-face</span></div><div class='line' id='LC331'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">yellow</span><span class="p">)))</span></div><div class='line' id='LC332'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC333'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC334'><br/></div><div class='line' id='LC335'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-expr-kwds-face</span></div><div class='line' id='LC336'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">red</span><span class="p">)))</span></div><div class='line' id='LC337'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC338'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC339'><br/></div><div class='line' id='LC340'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-other-kwds-face</span></div><div class='line' id='LC341'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">red</span><span class="p">)))</span></div><div class='line' id='LC342'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC343'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC344'><br/></div><div class='line' id='LC345'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-package-name-face</span></div><div class='line' id='LC346'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">green</span><span class="p">)))</span></div><div class='line' id='LC347'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC348'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC349'><br/></div><div class='line' id='LC350'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-class-name-face</span></div><div class='line' id='LC351'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">cyan</span><span class="p">)))</span></div><div class='line' id='LC352'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC353'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC354'><br/></div><div class='line' id='LC355'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-function-name-face</span></div><div class='line' id='LC356'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">green</span><span class="p">)))</span></div><div class='line' id='LC357'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC358'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC359'><br/></div><div class='line' id='LC360'>	<span class="p">(</span><span class="nf">defface</span> <span class="nv">actionscript-variable-name-face</span></div><div class='line' id='LC361'>			<span class="o">`</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:foreground</span> <span class="o">,</span><span class="nv">cyan</span><span class="p">)))</span></div><div class='line' id='LC362'>		<span class="s">&quot;*&quot;</span></div><div class='line' id='LC363'>		<span class="nv">:group</span> <span class="ss">&#39;actionscript-faces</span> <span class="nv">:group</span> <span class="ss">&#39;faces</span><span class="p">)</span></div><div class='line' id='LC364'>	<span class="p">)</span></div><div class='line' id='LC365'><br/></div><div class='line' id='LC366'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-font-lock-keywords-1</span></div><div class='line' id='LC367'>	 <span class="c1">;; The following only highlight specific words that exist in the language.</span></div><div class='line' id='LC368'>&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">list</span></div><div class='line' id='LC369'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">preprocessor-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-preprocessor-kwds-face</span><span class="p">)</span></div><div class='line' id='LC370'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-constant-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-constant-kwds-face</span><span class="p">)</span></div><div class='line' id='LC371'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-global-funcs</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-global-funcs-face</span><span class="p">)</span></div><div class='line' id='LC372'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-global-props</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-global-props-face</span><span class="p">)</span></div><div class='line' id='LC373'><span class="c1">;;		`(,(regexp-opt actionscript-symbol-operators) 0 &#39;actionscript-operators-face)</span></div><div class='line' id='LC374'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-word-operators</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-operators-face</span><span class="p">)</span></div><div class='line' id='LC375'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-specifier-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-specifier-kwds-face</span><span class="p">)</span></div><div class='line' id='LC376'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-class-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-class-kwds-face</span><span class="p">)</span></div><div class='line' id='LC377'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-package-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-package-kwds-face</span><span class="p">)</span></div><div class='line' id='LC378'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-other-decl-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-other-decl-kwds-face</span><span class="p">)</span></div><div class='line' id='LC379'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-other-decl-2-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-other-decl-2-kwds-face</span><span class="p">)</span></div><div class='line' id='LC380'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-decl-level-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-decl-level-kwds-face</span><span class="p">)</span></div><div class='line' id='LC381'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-conditional-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-conditional-kwds-face</span><span class="p">)</span></div><div class='line' id='LC382'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-block-stmt-1-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-block-stmt-1-kwds-face</span><span class="p">)</span></div><div class='line' id='LC383'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-simple-stmt-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-simple-stmt-kwds-face</span><span class="p">)</span></div><div class='line' id='LC384'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-label-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-label-kwds-face</span><span class="p">)</span></div><div class='line' id='LC385'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-expr-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-expr-kwds-face</span><span class="p">)</span></div><div class='line' id='LC386'>		<span class="o">`</span><span class="p">(</span><span class="o">,</span><span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-other-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="mi">0</span> <span class="ss">&#39;actionscript-other-kwds-face</span><span class="p">))</span></div><div class='line' id='LC387'>	<span class="s">&quot;Subdued level highlighting for Actionscript mode.&quot;</span><span class="p">)</span></div><div class='line' id='LC388'><br/></div><div class='line' id='LC389'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-font-lock-keywords-2</span></div><div class='line' id='LC390'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">append</span></div><div class='line' id='LC391'>&nbsp;&nbsp;&nbsp;<span class="nv">actionscript-font-lock-keywords-1</span></div><div class='line' id='LC392'>	 <span class="c1">;;;; The rules in this section highlight words in the buffer by determining their context.</span></div><div class='line' id='LC393'>	 <span class="p">(</span><span class="nf">list</span></div><div class='line' id='LC394'>		<span class="c1">;; Fontify package names in import directives.</span></div><div class='line' id='LC395'>		<span class="c1">;; TODO: support &#39;*&#39; as the last symbol in the package name.</span></div><div class='line' id='LC396'>		<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">concat</span> <span class="p">(</span><span class="nf">regexp-opt</span> <span class="nv">actionscript-other-decl-kwds</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="s">&quot;[ \t]*\\(?:&quot;</span> <span class="nv">actionscript-identifier-re</span> <span class="s">&quot;\\.\\)*\\(&quot;</span> <span class="nv">actionscript-identifier-re</span> <span class="s">&quot;\\)?&quot;</span><span class="p">)</span></div><div class='line' id='LC397'>					<span class="o">&#39;</span><span class="p">(</span><span class="mi">2</span> <span class="ss">&#39;actionscript-class-name-face</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC398'>					<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;[ \t]*\\(&quot;</span> <span class="nv">actionscript-identifier-re</span> <span class="s">&quot;\\)\\.&quot;</span><span class="p">)</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">goto-char</span> <span class="p">(</span><span class="nf">match-end</span> <span class="mi">1</span><span class="p">))</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">goto-char</span> <span class="p">(</span><span class="nf">match-end</span> <span class="mi">0</span><span class="p">))</span> <span class="o">&#39;</span><span class="p">(</span><span class="mi">1</span> <span class="ss">&#39;actionscript-package-name-face</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)))</span></div><div class='line' id='LC399'><br/></div><div class='line' id='LC400'>		<span class="c1">;; Fontify package names.</span></div><div class='line' id='LC401'>		<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">concat</span> <span class="p">(</span><span class="nf">regexp-opt</span> <span class="p">(</span><span class="nb">append </span><span class="nv">actionscript-package-kwds</span><span class="p">)</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="s">&quot;[ \t]*\\(&quot;</span> <span class="nv">actionscript-identifier-re</span> <span class="s">&quot;\\)?&quot;</span><span class="p">)</span></div><div class='line' id='LC402'>					<span class="o">&#39;</span><span class="p">(</span><span class="mi">2</span> <span class="ss">&#39;actionscript-package-name-face</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC403'><br/></div><div class='line' id='LC404'>		<span class="c1">;; Fontify class names.</span></div><div class='line' id='LC405'>		<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">concat</span> <span class="p">(</span><span class="nf">regexp-opt</span> <span class="p">(</span><span class="nb">append </span><span class="nv">actionscript-class-kwds</span> <span class="nv">actionscript-decl-level-kwds</span><span class="p">)</span> <span class="ss">&#39;words</span><span class="p">)</span> <span class="s">&quot;[ \t]*\\(&quot;</span> <span class="nv">actionscript-identifier-re</span> <span class="s">&quot;\\)?&quot;</span><span class="p">)</span></div><div class='line' id='LC406'>					<span class="o">&#39;</span><span class="p">(</span><span class="mi">2</span> <span class="ss">&#39;actionscript-class-name-face</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC407'><br/></div><div class='line' id='LC408'>		<span class="c1">;; Function names.</span></div><div class='line' id='LC409'>		<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;\\&lt;function\\&gt;[ \t\n]+\\(?:\\(?:get\\|set\\)[ \t\n]+\\)?\\(?:\\(&quot;</span> <span class="nv">actionscript-identifier-re</span> <span class="s">&quot;\\)\\)?&quot;</span><span class="p">)</span></div><div class='line' id='LC410'>					<span class="o">&#39;</span><span class="p">(</span><span class="mi">1</span> <span class="ss">&#39;actionscript-function-name-face</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC411'><br/></div><div class='line' id='LC412'>		<span class="c1">;; The &#39;in&#39; in &#39;for..in.&#39;</span></div><div class='line' id='LC413'>		<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;\\&lt;for\\&gt;[ \t\n]*([ \t\n]*\\(?:var[ \t\n]+\\)?&quot;</span> <span class="nv">actionscript-identifier-re</span> <span class="s">&quot;[ \t\n]*\\(?::[ \t\n]*\\([a-zA-Z0-9_$*]*\\)\\)?[ \t\n]+\\(in\\)[ \t\n]+&quot;</span><span class="p">)</span></div><div class='line' id='LC414'>					<span class="o">&#39;</span><span class="p">(</span><span class="mi">2</span> <span class="ss">&#39;actionscript-other-kwds-face</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC415'><br/></div><div class='line' id='LC416'>		<span class="c1">;; The &#39;each&#39; and the &#39;in&#39; in &#39;for each..in.&#39;</span></div><div class='line' id='LC417'><span class="c1">;; 		(list (concat &quot;\\&lt;for\\&gt;[ \t\n]+\\(?:\\(each\\)[ \t\n]*\\)([ \t\n]*\\(?:var[ \t\n]+\\)?&quot; actionscript-identifier-re &quot;[ \t\n]*\\(?::[ \t\n]*\\([a-zA-Z0-9_$*]*\\)\\)?[ \t\n]+\\(in\\)[ \t\n]+&quot;)</span></div><div class='line' id='LC418'><span class="c1">;; 					&#39;(1 &#39;actionscript-other-kwds-face nil t)</span></div><div class='line' id='LC419'><span class="c1">;; 					&#39;(3 &#39;actionscript-other-kwds-face nil t))</span></div><div class='line' id='LC420'><br/></div><div class='line' id='LC421'>		<span class="c1">;; Local variables.</span></div><div class='line' id='LC422'>		<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;\\&lt;var\\&gt;&quot;</span></div><div class='line' id='LC423'>									<span class="s">&quot;\\([ \t]*&quot;</span></div><div class='line' id='LC424'>									<span class="nv">actionscript-identifier-re</span></div><div class='line' id='LC425'>									<span class="s">&quot;\\)&quot;</span><span class="p">)</span></div><div class='line' id='LC426'>					<span class="c1">;; Fontify each declaration item.</span></div><div class='line' id='LC427'>					<span class="o">&#39;</span><span class="p">(</span><span class="nv">font-lock-match-c-style-declaration-item-and-skip-to-next</span></div><div class='line' id='LC428'>						<span class="c1">;; Start and finish with point after the type specifier.</span></div><div class='line' id='LC429'>						<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">match-beginning</span> <span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC430'>						<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">match-beginning</span> <span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC431'>						<span class="p">(</span><span class="mi">1</span> <span class="ss">&#39;actionscript-variable-name-face</span><span class="p">)))</span></div><div class='line' id='LC432'><br/></div><div class='line' id='LC433'>		<span class="c1">;; Objects and their functions</span></div><div class='line' id='LC434'>		<span class="c1">;; package(s) class property</span></div><div class='line' id='LC435'>		<span class="c1">;; TODO: We&#39;d like to be able to distinguish true class names from a variable, so</span></div><div class='line' id='LC436'>		<span class="c1">;;       that String.parse() would look different than mystring.parse().</span></div><div class='line' id='LC437'>		<span class="c1">;;      -We might also want to distinguish local function calls, like parse().</span></div><div class='line' id='LC438'><span class="c1">;; 		(list (concat &quot;\\&lt;&quot; &quot;\\(?:[A-Za-z_]\\sw*\\.\\)*&quot; &quot;\\(?:[A-Za-z_]\\sw*\\.\\)&quot; &quot;\\([A-Za-z_]*\\)&quot;)</span></div><div class='line' id='LC439'><span class="c1">;; 					&#39;(1 &#39;actionscript-function-name-face))</span></div><div class='line' id='LC440'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">))</span></div><div class='line' id='LC441'>	<span class="s">&quot;Medium level highlighting for Actionscript mode.&quot;</span><span class="p">)</span></div><div class='line' id='LC442'><br/></div><div class='line' id='LC443'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">actionscript-font-lock-keywords-3</span></div><div class='line' id='LC444'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">append</span></div><div class='line' id='LC445'>&nbsp;&nbsp;&nbsp;<span class="nv">actionscript-font-lock-keywords-2</span></div><div class='line' id='LC446'>&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">list</span></div><div class='line' id='LC447'>		<span class="c1">;; TODO: Add all the builtin objects in Actionscript.</span></div><div class='line' id='LC448'><br/></div><div class='line' id='LC449'>		<span class="c1">;; Builtin props.</span></div><div class='line' id='LC450'><span class="c1">;;		(list actionscript-builtin-props 1 &#39;actionscript-builtin-props-face)</span></div><div class='line' id='LC451'><br/></div><div class='line' id='LC452'>		<span class="c1">;; Builtin funcs.</span></div><div class='line' id='LC453'><span class="c1">;;		(list actionscript-builtin-funcs 1 &#39;actionscript-builtin-funcs-face)</span></div><div class='line' id='LC454'><br/></div><div class='line' id='LC455'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">))</span></div><div class='line' id='LC456'>&nbsp;&nbsp;<span class="s">&quot;Gaudy level highlighting for Actionscript mode.&quot;</span><span class="p">)</span></div><div class='line' id='LC457'><br/></div><div class='line' id='LC458'><span class="c1">;; --------------------------------------------------------------------------------</span></div><div class='line' id='LC459'><br/></div><div class='line' id='LC460'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as-get-function-re</span><span class="p">(</span><span class="nf">&amp;optional</span> <span class="nv">function-name</span><span class="p">)</span></div><div class='line' id='LC461'>	<span class="s">&quot;Returns a regular expression that will match the function signature</span></div><div class='line' id='LC462'><span class="s">containing the supplied function-name. If function-name is omitted,</span></div><div class='line' id='LC463'><span class="s">the regexp will match any function.&quot;</span></div><div class='line' id='LC464'>	<span class="p">(</span><span class="nf">unless</span> <span class="nv">function-name</span></div><div class='line' id='LC465'>		<span class="p">(</span><span class="nf">setq</span> <span class="nv">function-name</span> <span class="nv">actionscript-identifier-re</span><span class="p">))</span></div><div class='line' id='LC466'>	<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">visibility-kwd</span> <span class="p">(</span><span class="nf">regexp-opt</span> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;public&quot;</span> <span class="s">&quot;protected&quot;</span> <span class="s">&quot;private&quot;</span><span class="p">)</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC467'>				<span class="p">(</span><span class="nf">other-kwd</span> <span class="p">(</span><span class="nf">regexp-opt</span> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;final&quot;</span> <span class="s">&quot;static&quot;</span> <span class="s">&quot;override&quot;</span><span class="p">)</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC468'>				<span class="p">(</span><span class="nf">get-set-kwd</span> <span class="p">(</span><span class="nf">regexp-opt</span> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;get&quot;</span> <span class="s">&quot;set&quot;</span><span class="p">)</span> <span class="nv">nil</span><span class="p">)))</span></div><div class='line' id='LC469'>		<span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;\\(?:^[ \t\n]*\\)&quot;</span>                                          <span class="c1">; Start of line, followed by any amount of whitespace.</span></div><div class='line' id='LC470'>						<span class="s">&quot;\\(?:\\(&quot;</span> <span class="nv">visibility-kwd</span> <span class="s">&quot;\\|&quot;</span> <span class="nv">other-kwd</span> <span class="s">&quot;\\)[ \t\n]+\\)?&quot;</span>  <span class="c1">; (1) Any of the optional keywords, which must be followed by whitespace.</span></div><div class='line' id='LC471'>						<span class="s">&quot;\\(?:\\(&quot;</span> <span class="nv">visibility-kwd</span> <span class="s">&quot;\\|&quot;</span> <span class="nv">other-kwd</span> <span class="s">&quot;\\)[ \t\n]+\\)?&quot;</span>  <span class="c1">; (2) A second optional keyword, which must be followed by whitespace.</span></div><div class='line' id='LC472'>						<span class="s">&quot;\\&lt;function\\&gt;&quot;</span>                                             <span class="c1">; &#39;function&#39; keyword.</span></div><div class='line' id='LC473'>						<span class="s">&quot;[ \t\n]+&quot;</span>                                                   <span class="c1">; Mandatory whitespace.</span></div><div class='line' id='LC474'>						<span class="s">&quot;\\(?:&quot;</span> <span class="nv">get-set-kwd</span> <span class="s">&quot;[ \t\n]+\\)?&quot;</span>                           <span class="c1">; Optional get/set keyword, which must be followed by whitespace.</span></div><div class='line' id='LC475'>						<span class="s">&quot;\\(&quot;</span> <span class="nv">function-name</span> <span class="s">&quot;\\)&quot;</span>                                    <span class="c1">; (3) Function name.</span></div><div class='line' id='LC476'>						<span class="s">&quot;[ \t\n]*&quot;</span>                                                   <span class="c1">; Optional whitespace.</span></div><div class='line' id='LC477'>						<span class="s">&quot;(&quot;</span>                                                          <span class="c1">; Opening paren for function parameters.</span></div><div class='line' id='LC478'>						<span class="s">&quot;[ \t\n]*&quot;</span>                                                   <span class="c1">; Optional whitespace.</span></div><div class='line' id='LC479'>						<span class="s">&quot;\\([\&quot;a-zA-Z\-0-9_$*,:= \t\n]*?\\(?:\\.\\.\\.[a-zA-Z\-0-9_$]+\\)?\\)&quot;</span>           <span class="c1">; (4) Function parameters, including any trailing &#39;...args&#39;.</span></div><div class='line' id='LC480'>						<span class="s">&quot;)&quot;</span>                                                          <span class="c1">; Closing paren for function parameters.</span></div><div class='line' id='LC481'>						<span class="s">&quot;[ \t\n]*&quot;</span>                                                   <span class="c1">; Optional whitespace.</span></div><div class='line' id='LC482'>						<span class="s">&quot;\\(?::[ \t\n]*\\(&quot;</span> <span class="nv">actionscript-identifier-re</span> <span class="s">&quot;\\|\\*\\)\\)?&quot;</span>    <span class="c1">; (5) Optional return value type specifier.</span></div><div class='line' id='LC483'>						<span class="s">&quot;[ \t\n]*&quot;</span>                                                   <span class="c1">; Optional whitespace.</span></div><div class='line' id='LC484'>						<span class="s">&quot;{&quot;</span><span class="p">)))</span>                                                       <span class="c1">; Opening brace for function body.</span></div><div class='line' id='LC485'><br/></div><div class='line' id='LC486'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">as-function-re</span> <span class="p">(</span><span class="nf">as-get-function-re</span><span class="p">)</span></div><div class='line' id='LC487'>	<span class="s">&quot;A regexp that matches a function signature in Actionscript 3.0.&quot;</span><span class="p">)</span></div><div class='line' id='LC488'><br/></div><div class='line' id='LC489'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as-get-attribute-re</span><span class="p">(</span><span class="nf">&amp;optional</span> <span class="nv">attribute-name</span><span class="p">)</span></div><div class='line' id='LC490'>	<span class="s">&quot;Returns a regular expression that will match the class attribute</span></div><div class='line' id='LC491'><span class="s">definition containing the supplied attribute-name. If attribute-name</span></div><div class='line' id='LC492'><span class="s">is omitted, the regexp will match any class attribute.&quot;</span></div><div class='line' id='LC493'>	<span class="p">(</span><span class="nf">unless</span> <span class="nv">attribute-name</span></div><div class='line' id='LC494'>		<span class="p">(</span><span class="nf">setq</span> <span class="nv">attribute-name</span> <span class="nv">actionscript-identifier-re</span><span class="p">))</span></div><div class='line' id='LC495'>	<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">visibility-kwd</span> <span class="p">(</span><span class="nf">regexp-opt</span> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;public&quot;</span> <span class="s">&quot;protected&quot;</span> <span class="s">&quot;private&quot;</span><span class="p">)</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC496'>				<span class="p">(</span><span class="nf">var-kwd</span> <span class="p">(</span><span class="nf">regexp-opt</span> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;var&quot;</span> <span class="s">&quot;const&quot;</span><span class="p">)</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC497'>				<span class="p">(</span><span class="nf">other-kwd</span> <span class="s">&quot;static&quot;</span><span class="p">))</span></div><div class='line' id='LC498'>		<span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;\\(?:^[ \t\n]*\\)&quot;</span>                                          <span class="c1">; Start of line, followed by any amount of whitespace.</span></div><div class='line' id='LC499'>						<span class="s">&quot;\\(?:\\(&quot;</span> <span class="nv">visibility-kwd</span> <span class="s">&quot;\\|&quot;</span> <span class="nv">other-kwd</span> <span class="s">&quot;\\)[ \t\n]+\\)?&quot;</span>  <span class="c1">; (1) Any of the optional keywords, which must be followed by whitespace.</span></div><div class='line' id='LC500'>						<span class="s">&quot;\\(?:\\(&quot;</span> <span class="nv">visibility-kwd</span> <span class="s">&quot;\\|&quot;</span> <span class="nv">other-kwd</span> <span class="s">&quot;\\)[ \t\n]+\\)?&quot;</span>  <span class="c1">; (2) A second optional keyword, which must be followed by whitespace.</span></div><div class='line' id='LC501'>						<span class="s">&quot;\\&lt;\\(&quot;</span> <span class="nv">var-kwd</span> <span class="s">&quot;\\)\\&gt;&quot;</span>                                    <span class="c1">; (3) var keyword.</span></div><div class='line' id='LC502'>						<span class="s">&quot;[ \t\n]+&quot;</span>                                                   <span class="c1">; Mandatory whitespace.</span></div><div class='line' id='LC503'>						<span class="s">&quot;\\(&quot;</span> <span class="nv">attribute-name</span> <span class="s">&quot;\\)&quot;</span>                                   <span class="c1">; (4) Attribute name.</span></div><div class='line' id='LC504'>						<span class="s">&quot;[ \t\n]*&quot;</span>                                                   <span class="c1">; Optional whitespace.</span></div><div class='line' id='LC505'>						<span class="s">&quot;\\(?::[ \t\n]*\\(&quot;</span> <span class="nv">actionscript-identifier-re</span> <span class="s">&quot;\\|\\*\\)\\)?&quot;</span>    <span class="c1">; (5) Optional type specifier.</span></div><div class='line' id='LC506'>						<span class="p">)))</span></div><div class='line' id='LC507'><br/></div><div class='line' id='LC508'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">as-attribute-re</span> <span class="p">(</span><span class="nf">as-get-attribute-re</span><span class="p">)</span></div><div class='line' id='LC509'>	<span class="s">&quot;A regexp that matches a class attribute definition in Actionscript 3.0.&quot;</span><span class="p">)</span></div><div class='line' id='LC510'><br/></div><div class='line' id='LC511'><span class="c1">;; Support for imenu</span></div><div class='line' id='LC512'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">as-imenu-generic-expression</span></div><div class='line' id='LC513'>	<span class="o">`</span><span class="p">((</span><span class="nf">nil</span> <span class="o">,</span><span class="nv">as-function-re</span> <span class="mi">3</span><span class="p">)))</span></div><div class='line' id='LC514'><br/></div><div class='line' id='LC515'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as-imenu-init</span> <span class="p">(</span><span class="nf">mode-generic-expression</span><span class="p">)</span></div><div class='line' id='LC516'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">imenu-generic-expression</span> <span class="nv">mode-generic-expression</span></div><div class='line' id='LC517'>				<span class="nv">imenu-case-fold-search</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC518'><br/></div><div class='line' id='LC519'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as-get-beginning-of-defun</span><span class="p">()</span></div><div class='line' id='LC520'>	<span class="c1">;; Returns the position.</span></div><div class='line' id='LC521'>	<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC522'>		<span class="p">(</span><span class="nf">when</span>	<span class="p">(</span><span class="nf">re-search-backward</span> <span class="nv">as-function-re</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC523'>			<span class="p">(</span><span class="nf">match-beginning</span> <span class="mi">1</span><span class="p">))))</span></div><div class='line' id='LC524'><br/></div><div class='line' id='LC525'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as-get-end-of-defun</span><span class="p">()</span></div><div class='line' id='LC526'>	<span class="c1">;; This only works if we are inside a defun.</span></div><div class='line' id='LC527'>	<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC528'>		<span class="p">(</span><span class="nf">when</span>	<span class="p">(</span><span class="nf">re-search-backward</span> <span class="nv">as-function-re</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC529'>			<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">match-end</span> <span class="mi">0</span><span class="p">))</span></div><div class='line' id='LC530'>			<span class="c1">;; Move back a char, so that point is right on the opening</span></div><div class='line' id='LC531'>			<span class="c1">;; brace.</span></div><div class='line' id='LC532'>			<span class="p">(</span><span class="nf">backward-char</span><span class="p">)</span></div><div class='line' id='LC533'>			<span class="p">(</span><span class="nf">forward-list</span><span class="p">)</span></div><div class='line' id='LC534'>			<span class="p">(</span><span class="nf">point</span><span class="p">))))</span></div><div class='line' id='LC535'><br/></div><div class='line' id='LC536'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as-get-end-of-defun2</span><span class="p">()</span></div><div class='line' id='LC537'>	<span class="c1">;; This should work if we are not inside any defuns.</span></div><div class='line' id='LC538'>	<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC539'>		<span class="p">(</span><span class="nf">beginning-of-line</span><span class="p">)</span> <span class="c1">; hack, in case point is currently inside a function sig.</span></div><div class='line' id='LC540'>		<span class="p">(</span><span class="nf">when</span>	<span class="p">(</span><span class="nf">re-search-forward</span> <span class="nv">as-function-re</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC541'>			<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">match-end</span> <span class="mi">0</span><span class="p">))</span></div><div class='line' id='LC542'>			<span class="c1">;; Move back a char, so that point is right on</span></div><div class='line' id='LC543'>			<span class="c1">;; the opening brace.</span></div><div class='line' id='LC544'>			<span class="p">(</span><span class="nf">backward-char</span><span class="p">)</span></div><div class='line' id='LC545'>			<span class="p">(</span><span class="nf">forward-list</span><span class="p">)</span></div><div class='line' id='LC546'>			<span class="p">(</span><span class="nf">point</span><span class="p">))))</span></div><div class='line' id='LC547'><br/></div><div class='line' id='LC548'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as-beginning-of-defun</span><span class="p">()</span></div><div class='line' id='LC549'>	<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC550'>	<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">pos</span> <span class="p">(</span><span class="nf">as-get-beginning-of-defun</span><span class="p">)))</span></div><div class='line' id='LC551'>		<span class="p">(</span><span class="k">if </span><span class="nv">pos</span></div><div class='line' id='LC552'>				<span class="p">(</span><span class="nf">goto-char</span> <span class="nv">pos</span><span class="p">)</span></div><div class='line' id='LC553'>				<span class="p">(</span><span class="nf">message</span> <span class="s">&quot;Can&#39;t find any functions.&quot;</span><span class="p">))))</span></div><div class='line' id='LC554'><br/></div><div class='line' id='LC555'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as-inside-defun?</span><span class="p">()</span></div><div class='line' id='LC556'>	<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">cur</span> <span class="p">(</span><span class="nf">point</span><span class="p">))</span></div><div class='line' id='LC557'>				<span class="p">(</span><span class="nf">start</span> <span class="p">(</span><span class="nf">as-get-beginning-of-defun</span><span class="p">))</span></div><div class='line' id='LC558'>				<span class="p">(</span><span class="nf">end</span> <span class="p">(</span><span class="nf">as-get-end-of-defun</span><span class="p">)))</span></div><div class='line' id='LC559'>		<span class="p">(</span><span class="k">and </span><span class="nv">start</span></div><div class='line' id='LC560'>				 <span class="nv">end</span></div><div class='line' id='LC561'>				 <span class="p">(</span><span class="nb">&gt; </span><span class="nv">cur</span> <span class="nv">start</span><span class="p">)</span></div><div class='line' id='LC562'>				 <span class="p">(</span><span class="nb">&lt; </span><span class="nv">cur</span> <span class="nv">end</span><span class="p">))))</span></div><div class='line' id='LC563'><br/></div><div class='line' id='LC564'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as-end-of-defun</span><span class="p">()</span></div><div class='line' id='LC565'>	<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC566'>	<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">as-inside-defun?</span><span class="p">)</span></div><div class='line' id='LC567'>			<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">as-get-end-of-defun</span><span class="p">))</span></div><div class='line' id='LC568'>		<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">pos</span> <span class="p">(</span><span class="nf">as-get-end-of-defun2</span><span class="p">)))</span></div><div class='line' id='LC569'>			<span class="p">(</span><span class="k">if </span><span class="nv">pos</span></div><div class='line' id='LC570'>					<span class="p">(</span><span class="nf">goto-char</span> <span class="nv">pos</span><span class="p">)</span></div><div class='line' id='LC571'>				<span class="p">(</span><span class="nf">message</span> <span class="s">&quot;Can&#39;t find any functions.&quot;</span><span class="p">)))))</span></div><div class='line' id='LC572'><br/></div><div class='line' id='LC573'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as-mark-defun</span><span class="p">()</span></div><div class='line' id='LC574'>	<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC575'>	<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">start</span> <span class="p">(</span><span class="nf">as-get-beginning-of-defun</span><span class="p">))</span></div><div class='line' id='LC576'>				<span class="p">(</span><span class="nf">end</span> <span class="p">(</span><span class="nf">as-get-end-of-defun</span><span class="p">)))</span></div><div class='line' id='LC577'>		<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="k">or </span><span class="nv">start</span> <span class="nv">end</span><span class="p">))</span></div><div class='line' id='LC578'>				<span class="p">(</span><span class="nf">message</span> <span class="s">&quot;Can&#39;t find any functions.&quot;</span><span class="p">)</span></div><div class='line' id='LC579'>			<span class="p">(</span><span class="nf">set-mark</span> <span class="nv">end</span><span class="p">)</span></div><div class='line' id='LC580'>			<span class="p">(</span><span class="nf">goto-char</span> <span class="nv">start</span><span class="p">)</span></div><div class='line' id='LC581'>			<span class="p">(</span><span class="nf">beginning-of-line</span><span class="p">))))</span></div><div class='line' id='LC582'><br/></div><div class='line' id='LC583'><span class="c1">;; --------------------------------------------------------------------------------</span></div><div class='line' id='LC584'><br/></div><div class='line' id='LC585'><span class="c1">;; Indentation (by Aemon Cannon: http://github.com/aemoncannon/as3-mode/tree/master/as3-mode.el)</span></div><div class='line' id='LC586'><br/></div><div class='line' id='LC587'><span class="p">(</span><span class="nf">defun</span> <span class="nv">actionscript-indent-line</span> <span class="p">()</span></div><div class='line' id='LC588'>&nbsp;&nbsp;<span class="s">&quot;Indent current line of As3 code. Delete any trailing</span></div><div class='line' id='LC589'><span class="s">whitespace. Keep point at same relative point in the line.&quot;</span></div><div class='line' id='LC590'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC591'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC592'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">end-of-line</span><span class="p">)</span></div><div class='line' id='LC593'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">delete-horizontal-space</span><span class="p">))</span></div><div class='line' id='LC594'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">old-pos</span> <span class="p">(</span><span class="nf">point</span><span class="p">)))</span></div><div class='line' id='LC595'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">back-to-indentation</span><span class="p">)</span></div><div class='line' id='LC596'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">delta</span> <span class="p">(</span><span class="nb">- </span><span class="nv">old-pos</span> <span class="p">(</span><span class="nf">point</span><span class="p">)))</span></div><div class='line' id='LC597'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">col</span> <span class="p">(</span><span class="nb">max </span><span class="mi">0</span> <span class="p">(</span><span class="nf">as3-calculate-indentation</span><span class="p">))))</span></div><div class='line' id='LC598'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">indent-line-to</span> <span class="nv">col</span><span class="p">)</span></div><div class='line' id='LC599'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-char</span> <span class="nv">delta</span><span class="p">))))</span></div><div class='line' id='LC600'><br/></div><div class='line' id='LC601'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as3-calculate-indentation</span> <span class="p">()</span></div><div class='line' id='LC602'>&nbsp;&nbsp;<span class="s">&quot;Return the column to which the current line should be indented.&quot;</span></div><div class='line' id='LC603'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC604'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">as3-maybe-skip-leading-close-delim</span><span class="p">)</span></div><div class='line' id='LC605'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">pos</span> <span class="p">(</span><span class="nf">point</span><span class="p">)))</span></div><div class='line' id='LC606'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">beginning-of-line</span><span class="p">)</span></div><div class='line' id='LC607'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">search-backward-regexp</span> <span class="s">&quot;[^\n\t\r ]&quot;</span> <span class="mi">1</span> <span class="mi">0</span><span class="p">))</span></div><div class='line' id='LC608'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">0</span></div><div class='line' id='LC609'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span></div><div class='line' id='LC610'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">as3-maybe-skip-leading-close-delim</span><span class="p">)</span></div><div class='line' id='LC611'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">+ </span><span class="p">(</span><span class="nf">current-indentation</span><span class="p">)</span> <span class="p">(</span><span class="nb">* </span><span class="nv">standard-indent</span> <span class="p">(</span><span class="nf">as3-count-scope-depth</span> <span class="p">(</span><span class="nf">point</span><span class="p">)</span> <span class="nv">pos</span><span class="p">))))))))</span></div><div class='line' id='LC612'><br/></div><div class='line' id='LC613'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as3-maybe-skip-leading-close-delim</span> <span class="p">()</span></div><div class='line' id='LC614'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">beginning-of-line</span><span class="p">)</span></div><div class='line' id='LC615'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-to-indentation</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC616'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;\\s)&quot;</span><span class="p">)</span></div><div class='line' id='LC617'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-char</span><span class="p">)</span></div><div class='line' id='LC618'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">beginning-of-line</span><span class="p">)))</span></div><div class='line' id='LC619'><br/></div><div class='line' id='LC620'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as3-face-at-point</span> <span class="p">(</span><span class="nf">pos</span><span class="p">)</span></div><div class='line' id='LC621'>&nbsp;&nbsp;<span class="s">&quot;Return face descriptor for char at point.&quot;</span></div><div class='line' id='LC622'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">plist-get</span> <span class="p">(</span><span class="nf">text-properties-at</span> <span class="nv">pos</span><span class="p">)</span> <span class="ss">&#39;face</span><span class="p">))</span></div><div class='line' id='LC623'><br/></div><div class='line' id='LC624'><span class="p">(</span><span class="nf">defun</span> <span class="nv">as3-count-scope-depth</span> <span class="p">(</span><span class="nf">rstart</span> <span class="nv">rend</span><span class="p">)</span></div><div class='line' id='LC625'>&nbsp;&nbsp;<span class="s">&quot;Return difference between open and close scope delimeters.&quot;</span></div><div class='line' id='LC626'>&nbsp;&nbsp;<span class="c1">;;Attempting Steve Yegge&#39;s solution..</span></div><div class='line' id='LC627'>&nbsp;&nbsp;<span class="c1">;; (save-excursion</span></div><div class='line' id='LC628'>&nbsp;&nbsp;<span class="c1">;; (let ((result (parse-partial-sexp rstart rend)))</span></div><div class='line' id='LC629'>&nbsp;&nbsp;<span class="c1">;; (if (or (nth 3 result) (nth 4 result) (nth 7 result))</span></div><div class='line' id='LC630'>&nbsp;&nbsp;<span class="c1">;;   0</span></div><div class='line' id='LC631'>&nbsp;&nbsp;<span class="c1">;;  (nth 0 result)))))</span></div><div class='line' id='LC632'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC633'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="nv">rstart</span><span class="p">)</span></div><div class='line' id='LC634'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">open-count</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC635'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">close-count</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC636'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">opoint</span><span class="p">)</span></div><div class='line' id='LC637'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">&lt; </span><span class="p">(</span><span class="nf">point</span><span class="p">)</span> <span class="nv">rend</span><span class="p">)</span></div><div class='line' id='LC638'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span> <span class="p">(</span><span class="nf">setq</span> <span class="nv">opoint</span> <span class="p">(</span><span class="nf">point</span><span class="p">))</span></div><div class='line' id='LC639'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">re-search-forward</span> <span class="s">&quot;\\s)\\|\\s(&quot;</span> <span class="nv">rend</span> <span class="nv">t</span><span class="p">)))</span></div><div class='line' id='LC640'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">= </span><span class="nv">opoint</span> <span class="p">(</span><span class="nf">point</span><span class="p">))</span></div><div class='line' id='LC641'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-char</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC642'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">cond</span></div><div class='line' id='LC643'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Don&#39;t count if in string or comment.</span></div><div class='line' id='LC644'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">as3-face-at-point</span> <span class="p">(</span><span class="nb">- </span><span class="p">(</span><span class="nf">point</span><span class="p">)</span> <span class="mi">1</span><span class="p">)))</span></div><div class='line' id='LC645'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">looking-back</span> <span class="s">&quot;\\s)&quot;</span><span class="p">)</span></div><div class='line' id='LC646'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">incf</span> <span class="nv">close-count</span><span class="p">))</span></div><div class='line' id='LC647'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">looking-back</span> <span class="s">&quot;\\s(&quot;</span><span class="p">)</span></div><div class='line' id='LC648'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">incf</span> <span class="nv">open-count</span><span class="p">))</span></div><div class='line' id='LC649'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">)))</span></div><div class='line' id='LC650'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">- </span><span class="nv">open-count</span> <span class="nv">close-count</span><span class="p">))))</span></div><div class='line' id='LC651'><br/></div><div class='line' id='LC652'><span class="c1">;; --------------------------------------------------------------------------------</span></div><div class='line' id='LC653'><br/></div><div class='line' id='LC654'><span class="c1">;;;###autoload</span></div><div class='line' id='LC655'><span class="p">(</span><span class="nf">defun</span> <span class="nv">actionscript-mode</span> <span class="p">()</span></div><div class='line' id='LC656'>&nbsp;&nbsp;<span class="s">&quot;Major mode for editing Actionscript files.</span></div><div class='line' id='LC657'><span class="s">\\{actionscript-mode-map}&quot;</span></div><div class='line' id='LC658'>	<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC659'>	<span class="p">(</span><span class="nf">kill-all-local-variables</span><span class="p">)</span></div><div class='line' id='LC660'>	<span class="p">(</span><span class="nf">use-local-map</span> <span class="nv">actionscript-mode-map</span><span class="p">)</span></div><div class='line' id='LC661'>	<span class="p">(</span><span class="nf">setq</span> <span class="nv">major-mode</span> <span class="ss">&#39;actionscript-mode</span></div><div class='line' id='LC662'>				<span class="nv">mode-name</span> <span class="s">&quot;Actionscript&quot;</span><span class="p">)</span></div><div class='line' id='LC663'><span class="c1">;;				local-abbrev-table actionscript-mode-abbrev-table)</span></div><div class='line' id='LC664'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;indent-line-function</span><span class="p">)</span></div><div class='line' id='LC665'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">indent-line-function</span> <span class="ss">&#39;actionscript-indent-line</span><span class="p">)</span></div><div class='line' id='LC666'>	<span class="p">(</span><span class="nf">set-syntax-table</span> <span class="nv">actionscript-mode-syntax-table</span><span class="p">)</span></div><div class='line' id='LC667'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;parse-sexp-ignore-comments</span><span class="p">)</span></div><div class='line' id='LC668'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">parse-sexp-ignore-comments</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC669'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;comment-start</span><span class="p">)</span></div><div class='line' id='LC670'>	<span class="p">(</span><span class="nf">setq</span> <span class="nv">comment-start</span> <span class="s">&quot;//&quot;</span><span class="p">)</span></div><div class='line' id='LC671'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;comment-start-skip</span><span class="p">)</span></div><div class='line' id='LC672'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">comment-start-skip</span> <span class="s">&quot;\\(//+\\|/\\*+\\)\\s *&quot;</span><span class="p">)</span></div><div class='line' id='LC673'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;font-lock-defaults</span><span class="p">)</span></div><div class='line' id='LC674'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">font-lock-defaults</span></div><div class='line' id='LC675'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">((</span><span class="o">,</span><span class="p">(</span><span class="nf">cond</span></div><div class='line' id='LC676'>						 <span class="p">((</span><span class="nb">= </span><span class="nv">actionscript-font-lock-level</span> <span class="mi">1</span><span class="p">)</span> <span class="ss">&#39;actionscript-font-lock-keywords-1</span><span class="p">)</span></div><div class='line' id='LC677'>						 <span class="p">((</span><span class="nb">= </span><span class="nv">actionscript-font-lock-level</span> <span class="mi">2</span><span class="p">)</span> <span class="ss">&#39;actionscript-font-lock-keywords-2</span><span class="p">)</span></div><div class='line' id='LC678'>						 <span class="p">((</span><span class="nb">= </span><span class="nv">actionscript-font-lock-level</span> <span class="mi">3</span><span class="p">)</span> <span class="ss">&#39;actionscript-font-lock-keywords-3</span><span class="p">)))</span></div><div class='line' id='LC679'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">nil</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC680'>	<span class="p">(</span><span class="nf">run-mode-hooks</span> <span class="ss">&#39;actionscript-mode-hook</span><span class="p">))</span></div><div class='line' id='LC681'><br/></div><div class='line' id='LC682'><span class="c1">;; We need to make an adjustment to hideshow to work properly with AS syntax.</span></div><div class='line' id='LC683'><span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;hs-special-modes-alist</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">actionscript-mode</span> <span class="s">&quot;{&quot;</span> <span class="s">&quot;}&quot;</span> <span class="s">&quot;/[*/]&quot;</span> <span class="nv">nil</span> <span class="nv">hs-c-like-adjust-block-beginning</span><span class="p">))</span></div><div class='line' id='LC684'><br/></div><div class='line' id='LC685'><span class="p">(</span><span class="nf">provide</span> <span class="ss">&#39;actionscript-mode</span><span class="p">)</span></div><div class='line' id='LC686'><br/></div><div class='line' id='LC687'><span class="c1">;; For testing</span></div><div class='line' id='LC688'><span class="p">(</span><span class="nf">defun</span> <span class="nv">reload-actionscript-mode</span> <span class="p">()</span></div><div class='line' id='LC689'>	<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC690'>	<span class="p">(</span><span class="nf">with-current-buffer</span> <span class="p">(</span><span class="nf">get-buffer</span> <span class="s">&quot;actionscript-mode.el&quot;</span><span class="p">)</span></div><div class='line' id='LC691'>		<span class="p">(</span><span class="nf">eval-buffer</span><span class="p">))</span></div><div class='line' id='LC692'>	<span class="p">(</span><span class="nf">with-current-buffer</span> <span class="p">(</span><span class="nf">get-buffer</span> <span class="s">&quot;test.as&quot;</span><span class="p">)</span></div><div class='line' id='LC693'>		<span class="p">(</span><span class="nf">actionscript-mode</span><span class="p">)</span></div><div class='line' id='LC694'>		<span class="p">(</span><span class="nf">message</span> <span class="s">&quot;actionscript-mode reloaded.&quot;</span><span class="p">)))</span></div><div class='line' id='LC695'><br/></div><div class='line' id='LC696'><span class="p">(</span><span class="nf">define-key</span> <span class="nv">global-map</span> <span class="err">[</span><span class="nv">f5</span><span class="err">]</span> <span class="ss">&#39;reload-actionscript-mode</span><span class="p">)</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>
      </div>
    </div>

  </div>

<div class="frame frame-loading" style="display:none;" data-tree-list-url="/austinhaas/actionscript-mode/tree-list/fddd7220342d29e7eca734f6b798b7a2849717a5" data-blob-url-prefix="/austinhaas/actionscript-mode/blob/fddd7220342d29e7eca734f6b798b7a2849717a5">
  <img src="https://a248.e.akamai.net/assets.github.com/images/modules/ajax/big_spinner_336699.gif?1310104853" height="32" width="32">
</div>

      </div>
      <div class="context-overlay"></div>
    </div>


      <!-- footer -->
      <div id="footer" >
        
  <div class="upper_footer">
     <div class="container clearfix">

       <!--[if IE]><h4 id="blacktocat_ie">GitHub Links</h4><![endif]-->
       <![if !IE]><h4 id="blacktocat">GitHub Links</h4><![endif]>

       <ul class="footer_nav">
         <h4>GitHub</h4>
         <li><a href="https://github.com/about">About</a></li>
         <li><a href="https://github.com/blog">Blog</a></li>
         <li><a href="https://github.com/features">Features</a></li>
         <li><a href="https://github.com/contact">Contact &amp; Support</a></li>
         <li><a href="https://github.com/training">Training</a></li>
         <li><a href="http://enterprise.github.com/">GitHub Enterprise</a></li>
         <li><a href="http://status.github.com/">Site Status</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Tools</h4>
         <li><a href="http://get.gaug.es/">Gauges: Analyze web traffic</a></li>
         <li><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></li>
         <li><a href="https://gist.github.com">Gist: Code snippets</a></li>
         <li><a href="http://mac.github.com/">GitHub for Mac</a></li>
         <li><a href="http://mobile.github.com/">Issues for iPhone</a></li>
         <li><a href="http://jobs.github.com/">Job Board</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Extras</h4>
         <li><a href="http://shop.github.com/">GitHub Shop</a></li>
         <li><a href="http://octodex.github.com/">The Octodex</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Documentation</h4>
         <li><a href="http://help.github.com/">GitHub Help</a></li>
         <li><a href="http://developer.github.com/">Developer API</a></li>
         <li><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></li>
         <li><a href="http://pages.github.com/">GitHub Pages</a></li>
       </ul>

     </div><!-- /.site -->
  </div><!-- /.upper_footer -->

<div class="lower_footer">
  <div class="container clearfix">
    <!--[if IE]><div id="legal_ie"><![endif]-->
    <![if !IE]><div id="legal"><![endif]>
      <ul>
          <li><a href="https://github.com/site/terms">Terms of Service</a></li>
          <li><a href="https://github.com/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
      </ul>

      <p>&copy; 2012 <span title="0.09588s from fe8.rs.github.com">GitHub</span> Inc. All rights reserved.</p>
    </div><!-- /#legal or /#legal_ie-->

      <div class="sponsor">
        <a href="http://www.rackspace.com" class="logo">
          <img alt="Dedicated Server" height="36" src="https://a248.e.akamai.net/assets.github.com/images/modules/footer/rackspace_logo.png?v2" width="38" />
        </a>
        Powered by the <a href="http://www.rackspace.com ">Dedicated
        Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
        Computing</a> of Rackspace Hosting<span>&reg;</span>
      </div>
  </div><!-- /.site -->
</div><!-- /.lower_footer -->

      </div><!-- /#footer -->

    

<div id="keyboard_shortcuts_pane" class="instapaper_ignore readability-extra" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus site search</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style='display:none'>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Expand URL to its canonical form</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last" style='display:none'>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column middle">
        <dl class="keyboard-mappings">
          <dt>I</dt>
          <dd>Mark selection as read</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>U</dt>
          <dd>Mark selection as unread</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>e</dt>
          <dd>Close selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Remove selection from view</dd>
        </dl>
      </div><!-- /.column.middle -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Issues Dashboard</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div >
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first" >
        <h3>Source Code Browsing</h3>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>w</dt>
          <dd>Switch branch/tag</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Expand URL to its canonical form</dd>
        </dl>
      </div>
    </div>
  </div>
</div>

    <div id="markdown-help" class="instapaper_ignore readability-extra">
  <h2>Markdown Cheat Sheet</h2>

  <div class="cheatsheet-content">

  <div class="mod">
    <div class="col">
      <h3>Format Text</h3>
      <p>Headers</p>
      <pre>
# This is an &lt;h1&gt; tag
## This is an &lt;h2&gt; tag
###### This is an &lt;h6&gt; tag</pre>
     <p>Text styles</p>
     <pre>
*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__

*You **can** combine them*
</pre>
    </div>
    <div class="col">
      <h3>Lists</h3>
      <p>Unordered</p>
      <pre>
* Item 1
* Item 2
  * Item 2a
  * Item 2b</pre>
     <p>Ordered</p>
     <pre>
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b</pre>
    </div>
    <div class="col">
      <h3>Miscellaneous</h3>
      <p>Images</p>
      <pre>
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
</pre>
     <p>Links</p>
     <pre>
http://github.com - automatic!
[GitHub](http://github.com)</pre>
<p>Blockquotes</p>
     <pre>
As Kanye West said:

> We're living the future so
> the present is our past.
</pre>
    </div>
  </div>
  <div class="rule"></div>

  <h3>Code Examples in Markdown</h3>
  <div class="col">
      <p>Syntax highlighting with <a href="http://github.github.com/github-flavored-markdown/" title="GitHub Flavored Markdown" target="_blank">GFM</a></p>
      <pre>
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```</pre>
    </div>
    <div class="col">
      <p>Or, indent your code 4 spaces</p>
      <pre>
Here is a Python code example
without syntax highlighting:

    def foo:
      if not bar:
        return true</pre>
    </div>
    <div class="col">
      <p>Inline code for comments</p>
      <pre>
I think you should use an
`&lt;addr&gt;` element here instead.</pre>
    </div>
  </div>

  </div>
</div>


    <div class="ajax-error-message">
      <p><span class="icon"></span> Something went wrong with that request. Please try again. <a href="javascript:;" class="ajax-error-dismiss">Dismiss</a></p>
    </div>

    
    
    
    <span id='server_response_time' data-time='0.09895' data-host='fe8'></span>
  </body>
</html>

