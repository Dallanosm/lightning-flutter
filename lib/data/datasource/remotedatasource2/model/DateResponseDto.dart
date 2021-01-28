class DateResponseDto {
    String date;

    DateResponseDto({this.date});

    factory DateResponseDto.fromJson(Map<String, dynamic> json) {
        return DateResponseDto(
            date: json['date'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['date'] = this.date;
        return data;
    }
}