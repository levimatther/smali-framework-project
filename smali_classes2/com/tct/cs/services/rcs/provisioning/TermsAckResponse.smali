.class public Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;
.super Ljava/lang/Object;
.source "TermsAckResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:Ljava/lang/String;

.field private mRemote:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse$1;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse$1;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mId:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mStatus:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mSubject:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mText:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mRemote:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mStatus:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mSubject:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mText:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mRemote:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemote()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mRemote:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mId:Ljava/lang/String;

    return-void
.end method

.method public setRemote(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mRemote:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mStatus:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mText:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsAckResponse;->mRemote:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
