.class final Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$1;
.super Ljava/lang/Object;
.source "UploadParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 242
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$1;->createFromParcel(Landroid/os/Parcel;)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;
    .locals 3

    .line 244
    new-instance v0, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    invoke-direct {v0}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;-><init>()V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$002(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$102(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$202(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$302(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$402(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$502(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$602(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$702(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;I)I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$802(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;J)J

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$902(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;J)J

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$1002(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;J)J

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$1102(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;I)I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;->access$1202(Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 242
    invoke-virtual {p0, p1}, Ltct/gpdatahub/sdk/gpupload/upload/UploadParams$1;->newArray(I)[Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;
    .locals 0

    .line 261
    new-array p1, p1, [Ltct/gpdatahub/sdk/gpupload/upload/UploadParams;

    return-object p1
.end method
