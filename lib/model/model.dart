// To parse this JSON data, do
//
//     final modelApp = modelAppFromJson(jsonString);

import 'dart:convert';

ModelApp modelAppFromJson(String str) => ModelApp.fromJson(json.decode(str));

String modelAppToJson(ModelApp data) => json.encode(data.toJson());

class ModelApp {
  String? state;
  String? msg;
  Data? data;

  ModelApp({
    this.state,
    this.msg,
    this.data,
  });

  factory ModelApp.fromJson(Map<String, dynamic> json) => ModelApp(
        state: json["state"],
        msg: json["msg"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "state": state,
        "msg": msg,
        "data": data?.toJson(),
      };
}

class Data {
  List<Category>? category;
  String? categoryImgUrl;
  List<Product>? product;
  String? productImgUrl;
  List<ModifierGroup>? modifierGroup;
  List<CrossSellProduct>? crossSellProduct;
  String? isCategoryConcatenate;
  Store? store;
  int? menuId;
  String? menuName;

  Data({
    this.category,
    this.categoryImgUrl,
    this.product,
    this.productImgUrl,
    this.modifierGroup,
    this.crossSellProduct,
    this.isCategoryConcatenate,
    this.store,
    this.menuId,
    this.menuName,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        category: json["category"] == null
            ? []
            : List<Category>.from(
                json["category"]!.map((x) => Category.fromJson(x))),
        categoryImgUrl: json["category_img_url"],
        product: json["product"] == null
            ? []
            : List<Product>.from(
                json["product"]!.map((x) => Product.fromJson(x))),
        productImgUrl: json["product_img_url"],
        modifierGroup: json["modifier_group"] == null
            ? []
            : List<ModifierGroup>.from(
                json["modifier_group"]!.map((x) => ModifierGroup.fromJson(x))),
        crossSellProduct: json["cross_sell_product"] == null
            ? []
            : List<CrossSellProduct>.from(json["cross_sell_product"]!
                .map((x) => CrossSellProduct.fromJson(x))),
        isCategoryConcatenate: json["is_category_concatenate"],
        store: json["store"] == null ? null : Store.fromJson(json["store"]),
        menuId: json["menu_id"],
        menuName: json["menu_name"],
      );

  Map<String, dynamic> toJson() => {
        "category": category == null
            ? []
            : List<dynamic>.from(category!.map((x) => x.toJson())),
        "category_img_url": categoryImgUrl,
        "product": product == null
            ? []
            : List<dynamic>.from(product!.map((x) => x.toJson())),
        "product_img_url": productImgUrl,
        "modifier_group": modifierGroup == null
            ? []
            : List<dynamic>.from(modifierGroup!.map((x) => x.toJson())),
        "cross_sell_product": crossSellProduct == null
            ? []
            : List<dynamic>.from(crossSellProduct!.map((x) => x.toJson())),
        "is_category_concatenate": isCategoryConcatenate,
        "store": store?.toJson(),
        "menu_id": menuId,
        "menu_name": menuName,
      };
}

class Category {
  int? storeId;
  int? storeCategoryId;
  String? categoryName;
  int? parentId;
  String? categoryImage;
  String? rectangularCatImage;

  Category({
    this.storeId,
    this.storeCategoryId,
    this.categoryName,
    this.parentId,
    this.categoryImage,
    this.rectangularCatImage,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        storeId: json["store_id"],
        storeCategoryId: json["store_category_id"],
        categoryName: json["category_name"],
        parentId: json["parent_id"],
        categoryImage: json["category_image"],
        rectangularCatImage: json["rectangular_cat_image"],
      );

  Map<String, dynamic> toJson() => {
        "store_id": storeId,
        "store_category_id": storeCategoryId,
        "category_name": categoryName,
        "parent_id": parentId,
        "category_image": categoryImage,
        "rectangular_cat_image": rectangularCatImage,
      };
}

class CrossSellProduct {
  int? productId;

  CrossSellProduct({
    this.productId,
  });

  factory CrossSellProduct.fromJson(Map<String, dynamic> json) =>
      CrossSellProduct(
        productId: json["product_id"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
      };
}

class ModifierGroup {
  int? storeId;
  int? gId;
  GSelectType? gSelectType;
  int? gSelectOption;
  String? gRequired;
  int? gMinSelection;
  int? gMaxSelection;
  String? gName;
  String? gOrder;
  Map<String, Modifier>? modifier;

  ModifierGroup({
    this.storeId,
    this.gId,
    this.gSelectType,
    this.gSelectOption,
    this.gRequired,
    this.gMinSelection,
    this.gMaxSelection,
    this.gName,
    this.gOrder,
    this.modifier,
  });

  factory ModifierGroup.fromJson(Map<String, dynamic> json) => ModifierGroup(
        storeId: json["store_id"],
        gId: json["g_id"],
        gSelectType: gSelectTypeValues.map[json["g_select_type"]]!,
        gSelectOption: json["g_select_option"],
        gRequired: json["g_required"],
        gMinSelection: json["g_min_selection"],
        gMaxSelection: json["g_max_selection"],
        gName: json["g_name"],
        gOrder: json["g_order"],
        modifier: Map.from(json["modifier"]!)
            .map((k, v) => MapEntry<String, Modifier>(k, Modifier.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "store_id": storeId,
        "g_id": gId,
        "g_select_type": gSelectTypeValues.reverse[gSelectType],
        "g_select_option": gSelectOption,
        "g_required": gRequired,
        "g_min_selection": gMinSelection,
        "g_max_selection": gMaxSelection,
        "g_name": gName,
        "g_order": gOrder,
        "modifier": Map.from(modifier!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

enum GSelectType { SINGLE }

final gSelectTypeValues = EnumValues({"single": GSelectType.SINGLE});

class Modifier {
  int? modifierGroupId;
  int? mId;
  String? mName;
  double? mPrice;
  String? mTax;
  String? mServiceTax;
  String? mOrder;

  Modifier({
    this.modifierGroupId,
    this.mId,
    this.mName,
    this.mPrice,
    this.mTax,
    this.mServiceTax,
    this.mOrder,
  });

  factory Modifier.fromJson(Map<String, dynamic> json) => Modifier(
        modifierGroupId: json["modifier_group_id"],
        mId: json["m_id"],
        mName: json["m_name"],
        mPrice: json["m_price"]?.toDouble(),
        mTax: json["m_tax"],
        mServiceTax: json["m_service_tax"],
        mOrder: json["m_order"],
      );

  Map<String, dynamic> toJson() => {
        "modifier_group_id": modifierGroupId,
        "m_id": mId,
        "m_name": mName,
        "m_price": mPrice,
        "m_tax": mTax,
        "m_service_tax": mServiceTax,
        "m_order": mOrder,
      };
}

class Product {
  String? storeId;
  String? id;
  String? productOrder;
  int? taxId;
  int? productTypeId;
  String? productName;
  String? sku;
  String? originalProductPrice;
  String? inflatedProductPrice;
  String? productPrice;
  String? convenienceFee;
  String? productDprice;
  int? instock;
  String? productDesc;
  String? serviceTaxAmount;
  String? salesTaxAmount;
  List<int>? modifierGroup;
  List<dynamic>? weekdays;
  List<dynamic>? time;
  List<int>? crossellProducts;
  dynamic productImage;
  int? cid;

  Product({
    this.storeId,
    this.id,
    this.productOrder,
    this.taxId,
    this.productTypeId,
    this.productName,
    this.sku,
    this.originalProductPrice,
    this.inflatedProductPrice,
    this.productPrice,
    this.convenienceFee,
    this.productDprice,
    this.instock,
    this.productDesc,
    this.serviceTaxAmount,
    this.salesTaxAmount,
    this.modifierGroup,
    this.weekdays,
    this.time,
    this.crossellProducts,
    this.productImage,
    this.cid,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        storeId: json["store_id"],
        id: json["id"],
        productOrder: json["product_order"],
        taxId: json["tax_id"],
        productTypeId: json["product_type_id"],
        productName: json["product_name"],
        sku: json["sku"],
        originalProductPrice: json["original_product_price"],
        inflatedProductPrice: json["inflated_product_price"],
        productPrice: json["product_price"],
        convenienceFee: json["convenience_fee"],
        productDprice: json["product_dprice"],
        instock: json["instock"],
        productDesc: json["product_desc"],
        serviceTaxAmount: json["service_tax_amount"],
        salesTaxAmount: json["sales_tax_amount"],
        modifierGroup: json["modifier_group"] == null
            ? []
            : List<int>.from(json["modifier_group"]!.map((x) => x)),
        weekdays: json["weekdays"] == null
            ? []
            : List<dynamic>.from(json["weekdays"]!.map((x) => x)),
        time: json["time"] == null
            ? []
            : List<dynamic>.from(json["time"]!.map((x) => x)),
        crossellProducts: json["crossell_products"] == null
            ? []
            : List<int>.from(json["crossell_products"]!.map((x) => x)),
        productImage: json["product_image"],
        cid: json["cid"],
      );

  Map<String, dynamic> toJson() => {
        "store_id": storeId,
        "id": id,
        "product_order": productOrder,
        "tax_id": taxId,
        "product_type_id": productTypeId,
        "product_name": productName,
        "sku": sku,
        "original_product_price": originalProductPrice,
        "inflated_product_price": inflatedProductPrice,
        "product_price": productPrice,
        "convenience_fee": convenienceFee,
        "product_dprice": productDprice,
        "instock": instock,
        "product_desc": productDesc,
        "service_tax_amount": serviceTaxAmount,
        "sales_tax_amount": salesTaxAmount,
        "modifier_group": modifierGroup == null
            ? []
            : List<dynamic>.from(modifierGroup!.map((x) => x)),
        "weekdays":
            weekdays == null ? [] : List<dynamic>.from(weekdays!.map((x) => x)),
        "time": time == null ? [] : List<dynamic>.from(time!.map((x) => x)),
        "crossell_products": crossellProducts == null
            ? []
            : List<dynamic>.from(crossellProducts!.map((x) => x)),
        "product_image": productImage,
        "cid": cid,
      };
}

class Store {
  String? storeId;
  String? storeGroupId;
  String? uid;
  String? storeName;
  String? storeSlug;

  Store({
    this.storeId,
    this.storeGroupId,
    this.uid,
    this.storeName,
    this.storeSlug,
  });

  factory Store.fromJson(Map<String, dynamic> json) => Store(
        storeId: json["store_id"],
        storeGroupId: json["store_group_id"],
        uid: json["uid"],
        storeName: json["store_name"],
        storeSlug: json["store_slug"],
      );

  Map<String, dynamic> toJson() => {
        "store_id": storeId,
        "store_group_id": storeGroupId,
        "uid": uid,
        "store_name": storeName,
        "store_slug": storeSlug,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
