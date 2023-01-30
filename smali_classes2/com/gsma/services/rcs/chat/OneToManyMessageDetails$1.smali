.class final Lcom/gsma/services/rcs/chat/OneToManyMessageDetails$1;
.super Ljava/lang/Object;
.source "OneToManyMessageDetails.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;
    .locals 8

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 108
    new-instance v3, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 112
    new-instance p1, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;IIJ)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;
    .locals 0

    .line 116
    new-array p1, p1, [Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/OneToManyMessageDetails$1;->newArray(I)[Lcom/gsma/services/rcs/chat/OneToManyMessageDetails;

    move-result-object p1

    return-object p1
.end method
