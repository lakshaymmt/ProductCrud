<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <%@include file="./base.jsp" %>
</head>
<body>




<div class="container mt-3">

    <div class ="row">

        <div class="col-md-6 offset-md-3">

            <h1 class = "text-center mb-3">Change  Product Details </h1>

            <form action="${pageContext.request.contextPath }/handle-product" method="post">

                <input type="hidden" value="${product.id }"name ="id">
                <div class ="form-group">
                    <label for="name">Product Name</label>
                    <input type="text"
                           class ="form-control"
                           id="name"
                           aria-describedy="emailHelp"
                           name="name"
                           placeholder="Enter the product name here"
                           value="${product.name }">
                </div>

                <div class ="form-group">
                    <label for="description">Product Description</label>
                    <textarea  class ="form-control"
                               name="description"
                               rows="5"
                               placeholder="Enter the product  description">${product.description}
                    </textarea>
                </div>

                <div class ="form-group">
                    <label for="price">Product Price</label>
                    <input type="text"
                           placeholder="Enter the product name here"
                           name="price"
                           value = "${product.price }"
                           class ="form-control"
                           id = "price">
                </div>

                <div class ="container text-center">
                    <a href="${pageContext.request.contextPath }/"
                       class ="btn btn-outline-danger">Back</a>

                    <button type="submit" class="btn btn-warning">Update</button>
                </div>
            </form>


        </div>

    </div>
</div>



</body>
</html>