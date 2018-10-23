import 'dart:async';

import 'package:jaguar_orm/jaguar_orm.dart';
import 'package:jaguar_query/jaguar_query.dart';

import 'item.dart';
import 'post.dart';

part 'pivot.jorm.dart';

// The model
class Pivot {
  Pivot();

  @BelongsTo.many(PostBean)
  int postId;

  @BelongsTo.many(ItemBean)
  int itemId;
}

//@GenBean()
class PivotBean extends Bean<Pivot> with _PivotBean {
  PivotBean(Adapter adapter) : super(adapter);

  ItemBean _itemBean;
  PostBean _postBean;

  PostBean get postBean {
    _postBean ??= new PostBean(adapter);
    return _postBean;
  }

  ItemBean get itemBean {
    _itemBean ??= new ItemBean(adapter);
    return _itemBean;
  }

  final String tableName = 'pivot';
}
