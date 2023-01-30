.class public Lverizon/net/sip/SipProfile;
.super Ljava/lang/Object;
.source "SipProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverizon/net/sip/SipProfile$Status;
    }
.end annotation


# static fields
.field public static final CAPABILITY_FILE_TRANSFER:Ljava/lang/String; = "fieltransfer"

.field public static final CAPABILITY_FILE_TRANSFER_HTTP:Ljava/lang/String; = "fieltransferhttp"

.field public static final CAPABILITY_GEOLOC_PUSH:Ljava/lang/String; = "geolocpush"

.field public static final CAPABILITY_HD_AUDIO:Ljava/lang/String; = "hdaudio"

.field public static final CAPABILITY_IM_SESSION:Ljava/lang/String; = "imsession"

.field public static final CAPABILITY_PRESENCE_DISCOVERY:Ljava/lang/String; = "presdiscovery"

.field public static final CAPABILITY_VIDEO_CALL:Ljava/lang/String; = "videocall"

.field public static CLOSED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lverizon/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static OPEN:I = 0x0

.field public static UNKNOWN:I = 0x2


# instance fields
.field public available:I

.field public capabilities:Landroid/os/Bundle;

.field private mdn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lverizon/net/sip/SipProfile$1;

    invoke-direct {v0}, Lverizon/net/sip/SipProfile$1;-><init>()V

    sput-object v0, Lverizon/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lverizon/net/sip/SipProfile;->capabilities:Landroid/os/Bundle;

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lverizon/net/sip/SipProfile;->available:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lverizon/net/sip/SipProfile;->mdn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lverizon/net/sip/SipProfile;->mdn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCapabilities(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lverizon/net/sip/SipProfile;->capabilities:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lverizon/net/sip/SipProfile;->capabilities:Landroid/os/Bundle;

    .line 54
    :cond_0
    iget-object v0, p0, Lverizon/net/sip/SipProfile;->capabilities:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvailability()I
    .locals 1

    .line 66
    iget v0, p0, Lverizon/net/sip/SipProfile;->available:I

    return v0
.end method

.method public getCapabilities()Landroid/os/Bundle;
    .locals 1

    .line 58
    iget-object v0, p0, Lverizon/net/sip/SipProfile;->capabilities:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMDN()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lverizon/net/sip/SipProfile;->mdn:Ljava/lang/String;

    return-object v0
.end method

.method public setAvailable(I)V
    .locals 0

    .line 62
    iput p1, p0, Lverizon/net/sip/SipProfile;->available:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 81
    iget-object p2, p0, Lverizon/net/sip/SipProfile;->capabilities:Landroid/os/Bundle;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 85
    iget-object p2, p0, Lverizon/net/sip/SipProfile;->capabilities:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 87
    :goto_0
    iget p2, p0, Lverizon/net/sip/SipProfile;->available:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object p2, p0, Lverizon/net/sip/SipProfile;->mdn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    return-void
.end method
