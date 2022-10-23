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

<h1 class="mt-5 mb-3">Přidání nové vizitky</h1>
<form action="/nova" method="post" class="row g-3">
    <div class="col-md-3">
        <label for="jmeno" class="form-label">Jméno</label>
        <input id="jmeno" name="jmeno" class="form-control" type="text"/>
    </div>
    <div class="col-md-3">
        <label for="firma" class="form-label">Firma</label>
        <input id="firma" name="firma" class="form-control" type="text"/>
    </div>
    <div class="col-md-3">
        <label for="ulice" class="form-label">Ulice</label>
        <input id="ulice" name="ulice" class="form-control" type="text"/>
    </div>
    <div class="col-md-3">
        <label for="obecPsc" class="form-label">PSČ + Obec</label>
        <input id="obecPsc" name="obecPsc" class="form-control" type="text"/>
    </div>
    <div class="col-md-2">
        <label for="email" class="form-label">Email</label>
        <input id="email" name="email" class="form-control" type="text"/>
    </div>
    <div class="col-md-2">
        <label for="telefon" class="form-label">Telefon</label>
        <input id="telefon" name="telefon" class="form-control" type="text"/>
    </div>
    <div class="col-md-2">
        <label for="web" class="form-label">Web</label>
        <input id="web" name="web" class="form-control" type="text"/>
    </div>
    <div class="col-md-1 align-self-end">
        <button type="submit" class="btn btn-primary"><i class="bi bi-person-plus-fill" role="img" aria-label="Append"></i></button>
    </div>
</form>
</body>
</html>
