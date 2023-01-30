.class public Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;
.super Ljava/lang/Object;
.source "TermsConfirmationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mButtonAcceptLabel:Ljava/lang/String;

.field private mButtonRejectLabel:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mPin:Z

.field private mRemote:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTimeout:J

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest$1;

    invoke-direct {v0}, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest$1;-><init>()V

    sput-object v0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mType:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mTimeout:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mSubject:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mText:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mButtonAcceptLabel:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mButtonRejectLabel:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mRemote:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 63
    iget-boolean v1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mPin:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mType:Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mTimeout:J

    .line 44
    iput-object p4, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mSubject:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mText:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mButtonAcceptLabel:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mButtonRejectLabel:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mRemote:Ljava/lang/String;

    .line 50
    iput-boolean p9, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mPin:Z

    .line 51
    iput-object p10, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getButtonAcceptLabel()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mButtonAcceptLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonRejectLabel()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mButtonRejectLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemote()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mRemote:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mTimeout:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isPin()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mPin:Z

    return v0
.end method

.method public setButtonAcceptLabel(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mButtonAcceptLabel:Ljava/lang/String;

    return-void
.end method

.method public setButtonRejectLabel(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mButtonRejectLabel:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mId:Ljava/lang/String;

    return-void
.end method

.method public setPin(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mPin:Z

    return-void
.end method

.method public setRemote(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mRemote:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mText:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mTimeout:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 69
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-wide v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mButtonAcceptLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mButtonRejectLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mRemote:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array p2, p2, [Z

    .line 77
    iget-boolean v0, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mPin:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 78
    iget-object p2, p0, Lcom/tct/cs/services/rcs/provisioning/TermsConfirmationRequest;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
