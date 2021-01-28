class EventTitleResponseDto {
    String title;

    EventTitleResponseDto({this.title});

    factory EventTitleResponseDto.fromJson(Map<String, dynamic> json) {
        return EventTitleResponseDto(
            title: json['title'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['title'] = this.title;
        return data;
    }
}