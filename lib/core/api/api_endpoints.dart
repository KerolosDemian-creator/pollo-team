class ApiEndpoints {
  static const baseUrl = 'https://pollostore.com/api/';
  static const listCategories = 'v1/categories';
  static const login = 'v1/login';
  static const signUp = 'v1/register';
  static const getProducts = 'v1/products';
  static String getSubCategories(int id) => 'v1/categories/$id/sub-categories';
}
