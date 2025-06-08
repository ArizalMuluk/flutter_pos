import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('kasir.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE menu_items (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        price INTEGER NOT NULL,
        image_path TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE tables (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT UNIQUE NOT NULL,
        status TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE transactions (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        total_amount INTEGER NOT NULL,
        payment_amount INTEGER NOT NULL,
        change_amount INTEGER NOT NULL,
        transaction_date TEXT NOT NULL,
        table_id INTEGER,
        FOREIGN KEY (table_id) REFERENCES tables (id)
      )
    ''');

    await db.execute('''
      CREATE TABLE transaction_details (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        transaction_id INTEGER NOT NULL,
        menu_item_id INTEGER NOT NULL,
        quantity INTEGER NOT NULL,
        price_at_transaction INTEGER NOT NULL,
        FOREIGN KEY (transaction_id) REFERENCES transactions (id),
        FOREIGN KEY (menu_item_id) REFERENCES menu_items (id)
      )
    ''');
  }

  // Menu Items CRUD operations
  Future<int> insertMenuItem(Map<String, dynamic> row) async {
    final db = await instance.database;
    return await db.insert('menu_items', row);
  }

  Future<List<Map<String, dynamic>>> getAllMenuItems() async {
    final db = await instance.database;
    return await db.query('menu_items');
  }

  Future<int> updateMenuItem(Map<String, dynamic> row) async {
    final db = await instance.database;
    return await db.update(
      'menu_items',
      row,
      where: 'id = ?',
      whereArgs: [row['id']],
    );
  }

  Future<int> deleteMenuItem(int id) async {
    final db = await instance.database;
    return await db.delete(
      'menu_items',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Tables CRUD operations
  Future<int> insertTable(Map<String, dynamic> row) async {
    final db = await instance.database;
    return await db.insert('tables', row);
  }

  Future<List<Map<String, dynamic>>> getAllTables() async {
    final db = await instance.database;
    return await db.query('tables');
  }

  Future<int> updateTableStatus(int id, String status) async {
    final db = await instance.database;
    return await db.update(
      'tables',
      {'status': status},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Transaction operations
  Future<int> insertTransaction(Map<String, dynamic> row) async {
    final db = await instance.database;
    return await db.insert('transactions', row);
  }

  Future<int> insertTransactionDetail(Map<String, dynamic> row) async {
    final db = await instance.database;
    return await db.insert('transaction_details', row);
  }

  Future<List<Map<String, dynamic>>> getTransactionsByDateRange(
    DateTime startDate,
    DateTime endDate,
  ) async {
    final db = await instance.database;
    return await db.query(
      'transactions',
      where: 'transaction_date BETWEEN ? AND ?',
      whereArgs: [startDate.toIso8601String(), endDate.toIso8601String()],
    );
  }

  Future<List<Map<String, dynamic>>> getTransactionDetails(int transactionId) async {
    final db = await instance.database;
    return await db.query(
      'transaction_details',
      where: 'transaction_id = ?',
      whereArgs: [transactionId],
    );
  }

  Future<void> close() async {
    final db = await instance.database;
    db.close();
  }
} 