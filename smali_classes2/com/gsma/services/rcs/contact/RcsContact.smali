.class public Lcom/gsma/services/rcs/contact/RcsContact;
.super Ljava/lang/Object;
.source "RcsContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBlocked:Z

.field private mBlockingTimestamp:J

.field private mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

.field private mContact:Lcom/gsma/services/rcs/contact/ContactId;

.field private mDisplayName:Ljava/lang/String;

.field private mOnline:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lcom/gsma/services/rcs/contact/RcsContact$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/contact/RcsContact$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/contact/RcsContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    goto :goto_1

    .line 95
    :cond_1
    iput-object v3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    .line 97
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mOnline:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    .line 100
    sget-object v0, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/capability/Capabilities;

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    goto :goto_4

    .line 102
    :cond_4
    iput-object v3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    .line 104
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mBlocked:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mBlockingTimestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/contact/ContactId;ZLcom/gsma/services/rcs/capability/Capabilities;Ljava/lang/String;ZJ)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    .line 77
    iput-boolean p2, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mOnline:Z

    .line 78
    iput-object p3, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    .line 79
    iput-object p4, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    .line 80
    iput-boolean p5, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mBlocked:Z

    .line 81
    iput-wide p6, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mBlockingTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 235
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 237
    :cond_2
    check-cast p1, Lcom/gsma/services/rcs/contact/RcsContact;

    .line 238
    iget-object v2, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    if-nez v2, :cond_3

    .line 239
    iget-object p1, p1, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    if-eqz p1, :cond_4

    return v1

    .line 241
    :cond_3
    iget-object p1, p1, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v2, p1}, Lcom/gsma/services/rcs/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getBlockingTimestamp()J
    .locals 2

    .line 212
    iget-wide v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mBlockingTimestamp:J

    return-wide v0
.end method

.method public getCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    return-object v0
.end method

.method public getContactId()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/gsma/services/rcs/contact/ContactId;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isBlocked()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mBlocked:Z

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mOnline:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mContact:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/contact/ContactId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    :goto_0
    iget-boolean v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mOnline:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mCapabilities:Lcom/gsma/services/rcs/capability/Capabilities;

    invoke-virtual {v0, p1, p2}, Lcom/gsma/services/rcs/capability/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    :goto_1
    iget-object p2, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-boolean p2, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mBlocked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-wide v0, p0, Lcom/gsma/services/rcs/contact/RcsContact;->mBlockingTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
