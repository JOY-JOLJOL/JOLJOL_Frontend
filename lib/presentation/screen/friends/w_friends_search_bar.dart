import '../../../utilities/index.dart';

class FriendsSearchBarWidget extends StatelessWidget {
  const FriendsSearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.w,
      ),
      height: 45.h,
      child: TextField(
        style: AppFonts.detail,
        cursorColor: AppColors.black,
        onSubmitted: (value) {
          //TODO: 검색 함수 추가
        },
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.all(
              9.w,
            ),
            child: SvgPicture.asset(
              AppIcons.search,
              colorFilter:
                  const ColorFilter.mode(AppColors.gray300, BlendMode.srcIn),
              fit: BoxFit.contain,
            ),
          ),
          filled: true,
          fillColor: AppColors.gray100,
          contentPadding: EdgeInsets.symmetric(
            vertical: 9.h,
            horizontal: 11.w,
          ),
          hintText: 'ID 또는 강아지 이름을 검색하세요',
          hintStyle: AppFonts.detail.copyWith(
            color: AppColors.gray300,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
