.class final Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem$1;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    .locals 2

    .line 383
    new-instance v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;-><init>(Landroid/os/Parcel;Lcom/android/dialer/interactions/PhoneNumberInteraction$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    .locals 0

    .line 388
    new-array p1, p1, [Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem$1;->newArray(I)[Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    move-result-object p1

    return-object p1
.end method
