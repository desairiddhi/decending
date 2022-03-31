import 'dart:io';

void main(){
  int j,a,i,n; 
  List<int> number=[];

  stdout.write("enter value:");
   n=int.parse(stdin.readLineSync()!);
  stdout.write("enter number:");
  for(i=0;i<n;++i){

    int? size=int.parse(stdin.readLineSync()!);
    number.add(size);
  }
  for(i=0;i<n;i++){
    for(j=i+1;j<n;++j){
      if(number[i]<number[j]){
        a=number[i];
        number[i]=number[j];
        number[j]=a;
      }
    }
  }
  print("----ascending value----");
  for(i=0;i<n;++i){
    print(number[i]);
  }

}