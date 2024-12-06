import 'package:delimais_customer/core/domain/entities/order/order_entity.dart';
import 'package:delimais_customer/core/domain/enums/payment_method_enum.dart';
import 'package:delimais_customer/core/mixins/monetary_mixin.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class SummaryPageController extends GetxController with MonetaryMixin {
  final _isLoading = Rx<bool>(false);
  final _summary = Rx<String>('');
  final _order = Rx<OrderEntity?>(null);

  bool get isLoading => _isLoading.value;
  String get summary => _summary.value;

  @override
  void onInit() {
    super.onInit();

    _isLoading.value = true;
    _order.value = Get.arguments as OrderEntity?;
    _isLoading.value = false;
  }

  @override
  void onReady() {
    super.onReady();
    _summary.value = _getSummary();
  }

  Future<void> sendMessage() async {
    const phone = '5547991391097';
    final message = _summary.value;
    final url = Uri.parse(
      'https://wa.me/$phone?text=${Uri.encodeComponent(message)}',
    );

    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  String _getSummary() {
    final items = _order.value!.bag.products.map((product) {
      var item =
          _items.replaceFirst('%PRODUCT_NAME%', product.product.name).trim();

      item =
          item.replaceFirst('%PRODUCT_QUANTITY%', '${product.quantity}').trim();

      item = item
          .replaceFirst('%PRODUCT_PRICE%', getPrice(product.product.price))
          .trim();

      item = item.replaceFirst('%ORDER_NOTES%', product.notes ?? '-').trim();

      return item;
    }).join('\n');

    var summary = _text.trim();

    summary =
        summary.replaceFirst('%USER_NAME%', _order.value!.user.name).trim();
    summary =
        summary.replaceFirst('%USER_PHONE%', _order.value!.user.phone).trim();

    summary = summary.replaceFirst('%ORDER_PRODUCTS%', items).trim();

    summary = summary
        .replaceFirst(
          '%DELIVERY_ADDRESS%',
          // ignore: lines_longer_than_80_chars
          '${_order.value!.address!.street}, ${_order.value!.address!.number} - ${_order.value!.address!.district}',
        )
        .trim();

    summary = summary
        .replaceFirst(
          '%DELIVERY_ADDRESS_REFERENCE%',
          _order.value!.address!.reference,
        )
        .trim();

    summary = summary
        .replaceFirst(
          '%DELIVERY_ADDRESS_COMPLEMENT%',
          _order.value!.address!.complement ?? '-',
        )
        .trim();

    summary = summary
        .replaceFirst('%TOTAL_PRICE%', getPrice(_order.value!.price))
        .trim();

    summary = summary
        .replaceFirst(
          '%PAYMENT_METHOD%',
          _order.value!.payment!.method.getValue,
        )
        .trim();

    final now = DateTime.now().toLocal();
    final formattedDate = DateFormat('dd/MM/yyyy - HH:mm').format(now);
    summary = summary.replaceFirst('%ORDER_DATE_TIME%', formattedDate).trim();

    return summary.trim();
  }
}

const _text = '''
*📦 Novo Pedido Recebido!*

*🍴 Itens do Pedido:*
%ORDER_PRODUCTS%

*👤 Informações do Cliente:*
📝 Nome: %USER_NAME%
📞 Celular: %USER_PHONE%

*🛵 Informações de Entrega:*
📍 Endereço: %DELIVERY_ADDRESS%
💬 Ponto de Referência: %DELIVERY_ADDRESS_REFERENCE%
💬 Complemento: %DELIVERY_ADDRESS_COMPLEMENT%

*💳 Total: %TOTAL_PRICE%*
*Forma de Pagamento: %PAYMENT_METHOD%*

📅 Data/Hora do Pedido: %ORDER_DATE_TIME%

*Confirme o recebimento deste pedido.*
''';

const _items = '''
🔹 %PRODUCT_NAME% - %PRODUCT_QUANTITY%x
  💲 Preço: %PRODUCT_PRICE%
  💬 OBS: %ORDER_NOTES%
''';
