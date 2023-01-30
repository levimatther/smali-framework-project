.class public Lcom/android/incallui/incall/protocol/SecondaryInfo;
.super Ljava/lang/Object;
.source "SecondaryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/incallui/incall/protocol/SecondaryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isConference:Z

.field public final isFullscreen:Z

.field public final isVideoCall:Z

.field public final label:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final nameIsNumber:Z

.field public final providerLabel:Ljava/lang/String;

.field public final shouldShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/android/incallui/incall/protocol/SecondaryInfo$1;

    invoke-direct {v0}, Lcom/android/incallui/incall/protocol/SecondaryInfo$1;-><init>()V

    sput-object v0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->name:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->nameIsNumber:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->label:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->providerLabel:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->isConference:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->isVideoCall:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->isFullscreen:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    .line 49
    iput-object p2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->name:Ljava/lang/String;

    .line 50
    iput-boolean p3, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->nameIsNumber:Z

    .line 51
    iput-object p4, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->label:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->providerLabel:Ljava/lang/String;

    .line 53
    iput-boolean p6, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->isConference:Z

    .line 54
    iput-boolean p7, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->isVideoCall:Z

    .line 55
    iput-boolean p8, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->isFullscreen:Z

    return-void
.end method

.method public static createEmptySecondaryInfo(Z)Lcom/android/incallui/incall/protocol/SecondaryInfo;
    .locals 10

    .line 36
    new-instance v9, Lcom/android/incallui/incall/protocol/SecondaryInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/incallui/incall/protocol/SecondaryInfo;-><init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v9
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 60
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->name:Ljava/lang/String;

    .line 64
    invoke-static {v2}, Lcom/android/dialer/common/LogUtil;->sanitizePii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->label:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->providerLabel:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "SecondaryInfo, show: %b, name: %s, label: %s, providerLabel: %s"

    .line 60
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 100
    iget-boolean p2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->shouldShow:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget-object p2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-boolean p2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->nameIsNumber:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    iget-object p2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->providerLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-boolean p2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->isConference:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 106
    iget-boolean p2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->isVideoCall:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    iget-boolean p2, p0, Lcom/android/incallui/incall/protocol/SecondaryInfo;->isFullscreen:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
