.class final Lcom/android/contacts/common/model/RawContact$1;
.super Ljava/lang/Object;
.source "RawContact.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/RawContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/contacts/common/model/RawContact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/common/model/RawContact;
    .locals 2

    .line 52
    new-instance v0, Lcom/android/contacts/common/model/RawContact;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/os/Parcel;Lcom/android/contacts/common/model/RawContact$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContact$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/common/model/RawContact;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/contacts/common/model/RawContact;
    .locals 0

    .line 57
    new-array p1, p1, [Lcom/android/contacts/common/model/RawContact;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContact$1;->newArray(I)[Lcom/android/contacts/common/model/RawContact;

    move-result-object p1

    return-object p1
.end method
