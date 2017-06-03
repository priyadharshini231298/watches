<%@taglib prefix='c' uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resource/images" var="img"/>

<style>
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}
</style>
</head>
<body>

<div class="gallery">
  <a>
    <img src="${img}\images1.jpg">
  </a>
  <div class="desc">Titan analog watch RS.4,550</div>
</div>

<div class="gallery">
  
    <img src="${img}\img3.jpg"  width="300" height="200">
 
  <div class="desc">Sonata YUVA analog watch RS.999</div>
</div>

<div class="gallery">
  <a>
    <img src="${img}\ing4.jpg"  width="600" height="400">
  </a>
  <div class="desc">Sonata oval stylish analog watch RS.1,999</div>
</div>

<div class="gallery">
  <a>
    <img src="${img}\img2.jpg"  width="600" height="400">
  </a>
  <div class="desc">Sonata YUVA analog watch RS.999</div>
</div>

</body>
</html>
