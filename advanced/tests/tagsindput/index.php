<?php
/**
 * Created by PhpStorm.
 * User: Farindra
 * Date: 6/20/15
 * Time: 11:32 AM
 */
?>

<!DOCTYPE html>
<html ng-app="plunker">

<head>
    <meta charset="utf-8" />
    <title>AngularJS Plunker</title>
    <script>document.write('<base href="' + document.location + '" />');</script>
    <link rel="stylesheet" href="http://mbenford.github.io/ngTagsInput/css/ng-tags-input.min.css" />
    <script data-require="angular.js@1.2.x" src="http://code.angularjs.org/1.2.28/angular.js" data-semver="1.2.15"></script>
    <script src="https://code.angularjs.org/1.2.28/angular-resource.min.js"></script>
    <script src="http://mbenford.github.io/ngTagsInput/js/ng-tags-input.min.js"></script>

    <script src="app.js"></script>
</head>
<?php
$data = '[
  { "text": "Tag1" },
  { "text": "Tag2" },
  { "text": "Tag3" },
  { "text": "Tag4" },
  { "text": "Tag5" },
  { "text": "Tag6" },
  { "text": "Tag7" },
  { "text": "Tag8" },
  { "text": "Tag9" },
  { "text": "Tag10" }
]';//echo str_replace('"','\'',$data);

$myfile = fopen("nama.json", "w") or die("Unable to open file!");
$txt = $data;
fwrite($myfile, $txt);
fclose($myfile);
?>

<body ng-controller="MainCtrl">
<tags-input ng-model="tags">
    <auto-complete source="loadTags($query)"></auto-complete>
</tags-input>
<p>Model: {{tags}}</p>
</body>

</html>