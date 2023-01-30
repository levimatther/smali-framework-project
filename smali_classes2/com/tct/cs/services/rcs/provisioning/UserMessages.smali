.class public Lcom/tct/cs/services/rcs/provisioning/UserMessages;
.super Ljava/lang/Object;
.source "UserMessages.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tct/cs/services/rcs/provisioning/UserMessages;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAcceptBtn:Z

.field private mAccetpText:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mRejectBtn:Z

.field private mRejectText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/tct/cs/services/rcs/provisioning/UserMessages$1;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/provisioning/UserMessages$1;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mTitle:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mMessage:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 33
    iget-boolean v2, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mAcceptBtn:Z

    const/4 v3, 0x0

    aput-boolean v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mAccetpText:Ljava/lang/String;

    new-array v0, v0, [Z

    .line 35
    iget-boolean v1, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mRejectBtn:Z

    aput-boolean v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mRejectText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mTitle:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mMessage:Ljava/lang/String;

    .line 23
    iput-boolean p3, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mAcceptBtn:Z

    .line 24
    iput-object p4, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mAccetpText:Ljava/lang/String;

    .line 25
    iput-boolean p5, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mRejectBtn:Z

    .line 26
    iput-object p6, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mRejectText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccetpText()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mAccetpText:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectText()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mRejectText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAcceptBtn()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mAcceptBtn:Z

    return v0
.end method

.method public isRejectBtn()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mRejectBtn:Z

    return v0
.end method

.method public setAcceptBtn(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mAcceptBtn:Z

    return-void
.end method

.method public setAccetpText(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mAccetpText:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setRejectBtn(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mRejectBtn:Z

    return-void
.end method

.method public setRejectText(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mRejectText:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 46
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array v0, p2, [Z

    .line 48
    iget-boolean v1, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mAcceptBtn:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 49
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mAccetpText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-array p2, p2, [Z

    .line 50
    iget-boolean v0, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mRejectBtn:Z

    aput-boolean v0, p2, v2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 51
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/UserMessages;->mRejectText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
