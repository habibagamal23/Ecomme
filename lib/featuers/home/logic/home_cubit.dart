import 'package:bloc/bloc.dart';
import 'package:ecomm59/featuers/home/data/HomeRepostry/HomeRepo.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeInitial());
  List<String > categories = [];

  loadCategories() async{
    emit(HomeLoading());
    if(categories.isNotEmpty){
      return ;
    }

    try{
     var result= await   homeRepo.getCategory();
     if(result.isSuccess){
       categories= result.data!;
       emit(HomeSucces(categories));
     }else{
       emit(HomeError(result.error!));
     }
    }catch(e){
      emit(HomeError("Home result Error $e"));
    }

  }





}
