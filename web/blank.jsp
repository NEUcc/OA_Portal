<jsp:include page="header.jsp"/>


<div class="row">
    <div class="col-md-12">
        <h2>BLANK PAGE </h2>
    </div>
</div>
<!-- /. ROW -->
<hr/>


<h1 style="text-align: center">Smart Search Engine</h1>

<br/>
<br/>

<form >
    <b>Search Keywords:</b>
    <input type="text" name="keywords"/>
    <br/><br/><br/>
    <input type="radio" name="searchEngine" value="Google" checked="checked"/>&nbsp <b>Google</b>
    <br/>
    <input type="radio" name="searchEngine" value="Baidu"/>&nbsp <b>Baidu</b> &nbsp
    <br/>
    <input type="radio" name="searchEngine" value="Yahoo"/>&nbsp <b>Yahoo</b> &nbsp
    <br/><br/>
    <input type="submit" name="searchEngine" value="Search" id="searchButton"/>

</form>


<jsp:include page="footer.jsp"/>
