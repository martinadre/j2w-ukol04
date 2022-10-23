[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<body>
<div class="detail">
    [#if !query??]
        <form action="/delete" method="post">
            <input type="hidden" name="id" value="${id}" />
            <button type="submit" class="btn btn-primary">SMAZAT</button>
        </form>
    [/#if]
    <div class="vizitka">
        [#if vizitka.jmeno?exists]
        <div class="jmeno">${vizitka.jmeno}</div>
        [/#if]
        [#if vizitka.firma?exists]
        <div class="firma">${vizitka.firma}</div>
        [/#if]
        <div class="udaje">
            <div class="adresa">
                [#if vizitka.celaAdresa?exists]
                <div> ${vizitka.celaAdresa}</div>
                [/#if]
            </div>
            <div class="kontakty">
                [#if vizitka.email?exists]
                <div><i class="bi bi-at"></i> <span>${vizitka.email}</span></div>
                [/#if]
                [#if vizitka.telefon?exists]
                <div><i class="bi bi-phone"></i> <span>${vizitka.telefon}</span></div>
                [/#if]
                [#if vizitka.web?exists]
                <div><i class="bi bi-globe"></i> <span>${vizitka.web}</span></div>
                [/#if]
            </div>
        </div>
    </div>

    <div class="mapa">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${vizitka.celaAdresa?url}" width="100%" height="100%" frameborder="0"></iframe>
    </div>

    <nav>
        <a href="/">◂ zpět na seznam</a>
    </nav>
</div>
</body>
</html>
