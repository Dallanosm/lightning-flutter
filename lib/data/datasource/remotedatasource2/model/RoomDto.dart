class RoomDto {
    int roomId;
    String size;

    RoomDto({this.roomId, this.size});

    factory RoomDto.fromJson(Map<String, dynamic> json) {
        return RoomDto(
            roomId: json['roomId'], 
            size: json['size'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['roomId'] = this.roomId;
        data['size'] = this.size;
        return data;
    }
}