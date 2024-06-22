import 'package:flutter_bloc/flutter_bloc.dart';

enum ProductLikeState { liked, notLiked }

class ProductLikeCubit extends Cubit<ProductLikeState> {
  ProductLikeCubit() : super(ProductLikeState.notLiked);

  void toggleLike() {
    emit(state == ProductLikeState.liked
        ? ProductLikeState.notLiked
        : ProductLikeState.liked);
  }
}
