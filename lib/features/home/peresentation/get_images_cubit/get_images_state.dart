part of 'get_images_cubit.dart';

@immutable
abstract class GetImagesState {}

 class GetImagesInitial extends GetImagesState {}
 class GetImagesLoading extends GetImagesState {}
 class GetImagesSuccess extends GetImagesState {
final ImagesModel imagesModel;


GetImagesSuccess(this.imagesModel);

}
 class GetImagesFailure extends GetImagesState {}