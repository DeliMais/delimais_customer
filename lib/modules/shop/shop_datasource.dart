abstract class ShopDatasource {
  Future<Map<String, dynamic>> getOne(String id);
}

class ShopDatasourceImpl implements ShopDatasource {
  const ShopDatasourceImpl();

  @override
  Future<Map<String, dynamic>> getOne(String id) async {
    return {
      'id': 'id',
      'name': 'Churrascaria Colono',
      'ein': '47686945000172',
      'logo':
          'https://static.ifood-static.com.br/image/upload/t_high/logosgde/d73abf2b-de06-4a73-9f4b-6a091e08f787/202210301146_l8rk_i.jpg',
      'banner':
          'https://static.ifood-static.com.br/image/upload//capa/d73abf2b-de06-4a73-9f4b-6a091e08f787/202210301214_HIMa_i@2x.jpg',
      'rating': 4.8,
      'is_opened': true,
      'hours': [
        {
          'id': '1',
          'day': 1,
          'opening': '2024-01-01T13:30:00.000Z',
          'closing': '2024-01-01T16:45:00.000Z',
        },
        {
          'id': '2',
          'day': 2,
          'opening': '2024-01-01T13:30:00.000Z',
          'closing': '2024-01-01T16:30:00.000Z',
        },
        {
          'id': '3',
          'day': 3,
          'opening': '2024-01-01T13:30:00.000Z',
          'closing': '2024-01-01T16:45:00.000Z',
        },
        {
          'id': '4',
          'day': 4,
          'opening': '2024-01-01T13:30:00.000Z',
          'closing': '2024-01-01T16:45:00.000Z',
        },
        {
          'id': '5',
          'day': 5,
          'opening': '2024-01-01T13:30:00.000Z',
          'closing': '2024-01-01T16:45:00.000Z',
        },
        {
          'id': '6',
          'day': 6,
          'opening': '2024-01-01T13:30:00.000Z',
          'closing': '2024-01-01T16:45:00.000Z',
        },
        {
          'id': '7',
          'day': 7,
          'opening': '2024-01-01T13:30:00.000Z',
          'closing': '2024-01-01T17:00:00.000Z',
        },
      ],
      'address': {
        'id': 'id',
        'city': 'Campo Grande',
        'street': 'Rua Ari Coelho de Oliveira',
        'district': 'Vila Progresso',
        'province': 'MS',
        'zip_code': '79050310',
        'number': 414,
      },
      'delivery': {
        'id': 'id',
        'min': 2100000,
        'max': 2700000,
        'price': 9.99,
      },
      'pickup': {
        'id': 'id',
        'min': 900000,
        'max': 1800000,
        'price': 0,
      },
      'methods': [1, 2, 3, 4],
      'categories': [
        {
          'name': 'Marmitas',
          'products': [
            {
              'id': 'id1',
              'name': 'Alcatra ao alho + coca cola 220ml',
              'description':
                  // ignore: lines_longer_than_80_chars
                  'Acompanha: arroz,mandioca,vinagrete e farofa.\nNão Enviamos Somente Carne Sem Acompanhamento.',
              'picture':
                  'https://static.ifood-static.com.br/image/upload/t_medium/pratos/d73abf2b-de06-4a73-9f4b-6a091e08f787/202311070933_76MH_i.jpg',
              'price': 42.90,
            },
            {
              'id': 'id2',
              'name': 'Marmita grande',
              'description': 'Uma marmita deliciosa para você à moda da casa.',
              'picture': 'assets/logo.png',
              'price': 10,
            },
          ],
        },
        {
          'name': 'Comidas',
          'products': [
            {
              'id': 'id1',
              'name': 'Alcatra ao alho + coca cola 220ml',
              'description':
                  // ignore: lines_longer_than_80_chars
                  'Acompanha: arroz,mandioca,vinagrete e farofa.\nNão Enviamos Somente Carne Sem Acompanhamento.',
              'picture':
                  'https://static.ifood-static.com.br/image/upload/t_medium/pratos/d73abf2b-de06-4a73-9f4b-6a091e08f787/202311070933_76MH_i.jpg',
              'price': 42.90,
            },
            {
              'id': 'id2',
              'name': 'Marmita grande',
              'description': 'Uma marmita deliciosa para você à moda da casa.',
              'picture': 'assets/logo.png',
              'price': 10,
            },
          ],
        }
      ],
    };
  }
}
