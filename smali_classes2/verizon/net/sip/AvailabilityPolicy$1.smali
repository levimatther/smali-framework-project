.class final Lverizon/net/sip/AvailabilityPolicy$1;
.super Ljava/lang/Object;
.source "AvailabilityPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverizon/net/sip/AvailabilityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lverizon/net/sip/AvailabilityPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lverizon/net/sip/AvailabilityPolicy$1;->createFromParcel(Landroid/os/Parcel;)Lverizon/net/sip/AvailabilityPolicy;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lverizon/net/sip/AvailabilityPolicy;
    .locals 1

    .line 44
    new-instance v0, Lverizon/net/sip/AvailabilityPolicy;

    invoke-direct {v0, p1}, Lverizon/net/sip/AvailabilityPolicy;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lverizon/net/sip/AvailabilityPolicy$1;->newArray(I)[Lverizon/net/sip/AvailabilityPolicy;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lverizon/net/sip/AvailabilityPolicy;
    .locals 0

    .line 49
    new-array p1, p1, [Lverizon/net/sip/AvailabilityPolicy;

    return-object p1
.end method
