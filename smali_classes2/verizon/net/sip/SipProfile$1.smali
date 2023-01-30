.class final Lverizon/net/sip/SipProfile$1;
.super Ljava/lang/Object;
.source "SipProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lverizon/net/sip/SipProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lverizon/net/sip/SipProfile;",
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
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lverizon/net/sip/SipProfile$1;->createFromParcel(Landroid/os/Parcel;)Lverizon/net/sip/SipProfile;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lverizon/net/sip/SipProfile;
    .locals 1

    .line 95
    new-instance v0, Lverizon/net/sip/SipProfile;

    invoke-direct {v0, p1}, Lverizon/net/sip/SipProfile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lverizon/net/sip/SipProfile$1;->newArray(I)[Lverizon/net/sip/SipProfile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lverizon/net/sip/SipProfile;
    .locals 0

    .line 100
    new-array p1, p1, [Lverizon/net/sip/SipProfile;

    return-object p1
.end method
