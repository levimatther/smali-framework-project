.class public Lcom/android/voicemail/impl/Voicemail;
.super Ljava/lang/Object;
.source "Voicemail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/Voicemail$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/voicemail/impl/Voicemail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:Ljava/lang/Long;

.field private final mHasContent:Ljava/lang/Boolean;

.field private final mId:Ljava/lang/Long;

.field private final mIsRead:Ljava/lang/Boolean;

.field private final mNumber:Ljava/lang/String;

.field private final mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final mProviderData:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;

.field private final mTimestamp:Ljava/lang/Long;

.field private final mTranscription:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 316
    new-instance v0, Lcom/android/voicemail/impl/Voicemail$1;

    invoke-direct {v0}, Lcom/android/voicemail/impl/Voicemail$1;-><init>()V

    sput-object v0, Lcom/android/voicemail/impl/Voicemail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mTimestamp:Ljava/lang/Long;

    .line 331
    invoke-static {p1}, Lcom/android/voicemail/impl/Voicemail;->readCharSequence(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mNumber:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 333
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    goto :goto_0

    .line 335
    :cond_0
    iput-object v1, p0, Lcom/android/voicemail/impl/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 337
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mId:Ljava/lang/Long;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mDuration:Ljava/lang/Long;

    .line 339
    invoke-static {p1}, Lcom/android/voicemail/impl/Voicemail;->readCharSequence(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mSource:Ljava/lang/String;

    .line 340
    invoke-static {p1}, Lcom/android/voicemail/impl/Voicemail;->readCharSequence(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mProviderData:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 342
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 344
    :cond_1
    iput-object v1, p0, Lcom/android/voicemail/impl/Voicemail;->mUri:Landroid/net/Uri;

    .line 346
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mIsRead:Ljava/lang/Boolean;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mHasContent:Ljava/lang/Boolean;

    .line 348
    invoke-static {p1}, Lcom/android/voicemail/impl/Voicemail;->readCharSequence(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail;->mTranscription:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/voicemail/impl/Voicemail$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/Voicemail;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/voicemail/impl/Voicemail;->mTimestamp:Ljava/lang/Long;

    .line 53
    iput-object p2, p0, Lcom/android/voicemail/impl/Voicemail;->mNumber:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/android/voicemail/impl/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 55
    iput-object p4, p0, Lcom/android/voicemail/impl/Voicemail;->mId:Ljava/lang/Long;

    .line 56
    iput-object p5, p0, Lcom/android/voicemail/impl/Voicemail;->mDuration:Ljava/lang/Long;

    .line 57
    iput-object p6, p0, Lcom/android/voicemail/impl/Voicemail;->mSource:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/android/voicemail/impl/Voicemail;->mProviderData:Ljava/lang/String;

    .line 59
    iput-object p8, p0, Lcom/android/voicemail/impl/Voicemail;->mUri:Landroid/net/Uri;

    .line 60
    iput-object p9, p0, Lcom/android/voicemail/impl/Voicemail;->mIsRead:Ljava/lang/Boolean;

    .line 61
    iput-object p10, p0, Lcom/android/voicemail/impl/Voicemail;->mHasContent:Ljava/lang/Boolean;

    .line 62
    iput-object p11, p0, Lcom/android/voicemail/impl/Voicemail;->mTranscription:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/android/voicemail/impl/Voicemail$1;)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p11}, Lcom/android/voicemail/impl/Voicemail;-><init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static createForInsertion(JLjava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 2

    .line 88
    new-instance v0, Lcom/android/voicemail/impl/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/Voicemail$Builder;-><init>(Lcom/android/voicemail/impl/Voicemail$1;)V

    invoke-virtual {v0, p2}, Lcom/android/voicemail/impl/Voicemail$Builder;->setNumber(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/android/voicemail/impl/Voicemail$Builder;->setTimestamp(J)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static createForUpdate(JLjava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;
    .locals 2

    .line 98
    new-instance v0, Lcom/android/voicemail/impl/Voicemail$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/voicemail/impl/Voicemail$Builder;-><init>(Lcom/android/voicemail/impl/Voicemail$1;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/voicemail/impl/Voicemail$Builder;->setId(J)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/voicemail/impl/Voicemail$Builder;->setSourceData(Ljava/lang/String;)Lcom/android/voicemail/impl/Voicemail$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static readCharSequence(Landroid/os/Parcel;)Ljava/lang/CharSequence;
    .locals 1

    .line 352
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static writeCharSequence(Landroid/os/Parcel;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 356
    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getSourceData()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mProviderData:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTranscription()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mTranscription:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voicemail{mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/Voicemail;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPhoneAccount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/Voicemail;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mProviderData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/Voicemail;->mProviderData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mUri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/Voicemail;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsRead="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mHasContent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTranscription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/Voicemail;->mTranscription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/Voicemail;->writeCharSequence(Landroid/os/Parcel;Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 294
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 295
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mSource:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/Voicemail;->writeCharSequence(Landroid/os/Parcel;Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mProviderData:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/voicemail/impl/Voicemail;->writeCharSequence(Landroid/os/Parcel;Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 298
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 300
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Lcom/android/voicemail/impl/Voicemail;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 303
    :goto_1
    iget-object p2, p0, Lcom/android/voicemail/impl/Voicemail;->mIsRead:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 304
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 306
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    :goto_2
    iget-object p2, p0, Lcom/android/voicemail/impl/Voicemail;->mHasContent:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 309
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 311
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    :goto_3
    iget-object p2, p0, Lcom/android/voicemail/impl/Voicemail;->mTranscription:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/Voicemail;->writeCharSequence(Landroid/os/Parcel;Ljava/lang/CharSequence;)V

    return-void
.end method
