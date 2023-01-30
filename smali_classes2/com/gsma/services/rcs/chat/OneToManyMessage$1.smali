.class final Lcom/gsma/services/rcs/chat/OneToManyMessage$1;
.super Ljava/lang/Object;
.source "OneToManyMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/OneToManyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gsma/services/rcs/chat/OneToManyMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/chat/OneToManyMessage;
    .locals 4

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const-class v3, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 96
    new-instance p1, Lcom/gsma/services/rcs/chat/OneToManyMessage;

    invoke-direct {p1, v0, v1, v2}, Lcom/gsma/services/rcs/chat/OneToManyMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/OneToManyMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/chat/OneToManyMessage;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/gsma/services/rcs/chat/OneToManyMessage;
    .locals 0

    .line 100
    new-array p1, p1, [Lcom/gsma/services/rcs/chat/OneToManyMessage;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/OneToManyMessage$1;->newArray(I)[Lcom/gsma/services/rcs/chat/OneToManyMessage;

    move-result-object p1

    return-object p1
.end method
