import 'package:bloc/bloc.dart';
import 'package:ecomm59/featuers/home/data/HomeRepostry/HomeRepo.dart';
import 'package:ecomm59/featuers/home/data/models/productResponse.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeInitial());
  List<String > categories = [];
  List<Product> products = [];

  loadAllData() async{
    emit(HomeLoading());
    if(categories.isNotEmpty && products.isNotEmpty){
      return ;
    }
    try{
     var result= await   homeRepo.getCategory();
     var resultproduct = await homeRepo.getNewArrivelsProduct();

     if(result.isSuccess && resultproduct.isSuccess){
       categories= result.data!;
       products= resultproduct.data!.products!;
       emit(HomeSucces(categories , products));
     }else{
       emit(HomeError(result.error!));
     }
    }catch(e){
      emit(HomeError("Home result Error $e"));
    }

  }





}
