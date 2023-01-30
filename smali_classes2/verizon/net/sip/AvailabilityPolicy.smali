.class public Lverizon/net/sip/AvailabilityPolicy;
.super Ljava/lang/Object;
.source "AvailabilityPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lverizon/net/sip/AvailabilityPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final network:Ljava/lang/String;

.field private final policy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lverizon/net/sip/AvailabilityPolicy$1;

    invoke-direct {v0}, Lverizon/net/sip/AvailabilityPolicy$1;-><init>()V

    sput-object v0, Lverizon/net/sip/AvailabilityPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lverizon/net/sip/AvailabilityPolicy;->network:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lverizon/net/sip/AvailabilityPolicy;->policy:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lverizon/net/sip/AvailabilityPolicy;->network:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lverizon/net/sip/AvailabilityPolicy;->policy:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lverizon/net/sip/AvailabilityPolicy;->network:Ljava/lang/String;

    return-object v0
.end method

.method public isPolicy()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lverizon/net/sip/AvailabilityPolicy;->policy:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lverizon/net/sip/AvailabilityPolicy;->network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lverizon/net/sip/AvailabilityPolicy;->policy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 36
    iget-object p2, p0, Lverizon/net/sip/AvailabilityPolicy;->network:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 37
    iget-boolean p2, p0, Lverizon/net/sip/AvailabilityPolicy;->policy:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
