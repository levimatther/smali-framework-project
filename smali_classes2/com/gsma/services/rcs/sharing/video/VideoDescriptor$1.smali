.class final Lcom/gsma/services/rcs/sharing/video/VideoDescriptor$1;
.super Ljava/lang/Object;
.source "VideoDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
    .locals 1

    .line 94
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
    .locals 0

    .line 98
    new-array p1, p1, [Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoDescriptor$1;->newArray(I)[Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;

    move-result-object p1

    return-object p1
.end method
