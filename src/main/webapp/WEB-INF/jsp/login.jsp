<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Prijava</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD6U1fQ7145gHnkindrZ38Y6QJE39IA19ZK33NU79MY" crossorigin="anonymous">
</head>
<body>

<div class="container">
  <h1>Prijava</h1>
  <form action="/login" method="post">
    <div class="form-group">
      <label for="username">Korisničko ime:</label>
      <input type="text" class="form-control" id="username" name="username" placeholder="Unesite korisničko ime">
    </div>
    <div class="form-group">
      <label for="password">Lozinka:</label>
      <input type="password" class="form-control" id="password" name="password" placeholder="Unesite lozinku">
    </div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <button type="submit" class="btn btn-primary">Prijavi se</button>
  </form>
	<br>
	<br>
 <h2> Za demonstraciju rada mozete se ulogovati kao ADMINISTRATOR sa username: branko , password: sifra</h2>
 <h2> Da pokrenete kviz se registrujte kao novi user na linku ispod</h2>
 <br>
 <h2> Mozete da vidite postojece korisnike i sifre ako se ulogujete kao administrator</h2>
 <br>
 <br>	
 <h3>Nemate nalog? <a href="public/new-user">Registrujte se</a></h3>
</div>

</body>
</html>