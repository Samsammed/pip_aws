Nous avons créé une liste d'employés pour stocker les données d'employés.
Nous avons créé quatre endpoints pour gérer les opérations CRUD (Create, Read, Update, Delete) sur les employés.
Pour le endpoint GET /employees, nous avons simplement renvoyé la liste d'employés sous forme JSON.
Pour le endpoint POST /employees, nous avons extrait les données d'employé du corps de la requête JSON et ajouté un nouvel employé à la liste d'employés.
Pour le endpoint DELETE /employees/id, nous avons parcouru la liste d'employés pour trouver l'employé avec l'id spécifié et le supprimer de la liste.
Pour le endpoint PUT /employees/id, nous avons parcouru la liste d'employés pour trouver l'employé avec l'id spécifié et mettre à jour ses données en fonction des données fournies dans le corps de la requête JSON.
