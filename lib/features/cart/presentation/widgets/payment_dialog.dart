import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cashier/data/db/database_helper.dart';
import 'package:cashier/data/models/transaction.dart';
import 'package:cashier/features/cart/presentation/providers/cart_provider.dart';

class PaymentDialog extends ConsumerStatefulWidget {
  final int totalAmount;
  final VoidCallback onPaymentComplete;

  const PaymentDialog({
    super.key,
    required this.totalAmount,
    required this.onPaymentComplete,
  });

  @override
  ConsumerState<PaymentDialog> createState() => _PaymentDialogState();
}

class _PaymentDialogState extends ConsumerState<PaymentDialog> {
  final _formKey = GlobalKey<FormState>();
  final _paymentController = TextEditingController();
  int? _changeAmount;

  @override
  void dispose() {
    _paymentController.dispose();
    super.dispose();
  }

  void _calculateChange() {
    final paymentAmount = int.tryParse(_paymentController.text) ?? 0;
    if (paymentAmount >= widget.totalAmount) {
      setState(() {
        _changeAmount = paymentAmount - widget.totalAmount;
      });
    } else {
      setState(() {
        _changeAmount = null;
      });
    }
  }

  Future<void> _processPayment() async {
    if (_formKey.currentState?.validate() ?? false) {
      final paymentAmount = int.parse(_paymentController.text);
      if (paymentAmount < widget.totalAmount) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Payment amount is insufficient')),
        );
        return;
      }

      final db = DatabaseHelper.instance;
      final cartItems = ref.read(cartProvider);

      // Create transaction
      final transaction = Transaction(
        totalAmount: widget.totalAmount,
        paymentAmount: paymentAmount,
        changeAmount: _changeAmount!,
        transactionDate: DateTime.now(),
      );

      final transactionId = await db.insertTransaction(transaction.toJson());

      // Create transaction details
      for (final item in cartItems) {
        await db.insertTransactionDetail(
          TransactionDetail(
            transactionId: transactionId,
            menuItemId: item.menuItem.id!,
            quantity: item.quantity,
            priceAtTransaction: item.menuItem.price,
          ).toJson(),
        );
      }

      if (mounted) {
        Navigator.pop(context);
        widget.onPaymentComplete();
        _showSuccessDialog();
      }
    }
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.check_circle, color: Colors.green),
            SizedBox(width: 8),
            Text('Payment Successful'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total: Rp ${widget.totalAmount.toStringAsFixed(0)}'),
            Text('Payment: Rp ${_paymentController.text}'),
            Text('Change: Rp ${_changeAmount.toString()}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Payment'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Amount: Rp ${widget.totalAmount.toStringAsFixed(0)}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _paymentController,
              decoration: const InputDecoration(
                labelText: 'Payment Amount',
                border: OutlineInputBorder(),
                prefixText: 'Rp ',
              ),
              keyboardType: TextInputType.number,
              onChanged: (_) => _calculateChange(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter payment amount';
                }
                final amount = int.tryParse(value);
                if (amount == null) {
                  return 'Please enter a valid number';
                }
                if (amount < widget.totalAmount) {
                  return 'Payment amount is insufficient';
                }
                return null;
              },
            ),
            if (_changeAmount != null) ...[
              const SizedBox(height: 16),
              Text(
                'Change: Rp ${_changeAmount.toString()}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _processPayment,
          child: const Text('Pay'),
        ),
      ],
    );
  }
} 