import 'dart:async';
import 'package:jaguar_query/jaguar_query.dart';
import 'package:jaguar_orm/jaguar_orm.dart';
// import 'package:jaguar_query_sqflite/jaguar_query_sqflite.dart';

part 'post.jorm.dart';

// The model
class Post {
//  Post();

  Post.make(
      this.id, this.msg, this.stars, this.read, this.at, this.msg2, this.msg3);

  Post({this.id, this.msg2, this.msg, this.stars, this.read, this.at});

  @PrimaryKey()
  int id;

  @Column(isNullable: true)
  String msg;

  @Column(isNullable: true)
  String msg2;

  @Column(isNullable: true)
  String msg3;

  @Column(isNullable: true)
  String msg4;

  @Column(isNullable: true)
  bool read;

  @Column(isNullable: true)
  double stars;

  @Column(isNullable: true)
  DateTime at;

  String toString() =>
      'Post(id: $id, message: $msg, stars: $stars, read: $read, at: $at), msg2=$msg2, msg3=$msg3';
}

@GenBean()
class PostBean extends Bean<Post> with _PostBean {
  PostBean(Adapter adapter) : super(adapter);

  Future<int> updateReadField(int id, bool read) async {
    Update st = updater.where(this.id.eq(id)).set(this.read, read);
    return adapter.update(st);
  }

  Future<List<Post>> getAllUnreadItems() async {
    //this.read.eq(false)
    final expression = this.read.eq(false);
    return findWhere(expression);
  }

  final String tableName = 'posts';
}
