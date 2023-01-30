.class public Lcom/gsma/services/rcs/capability/Capabilities;
.super Ljava/lang/Object;
.source "Capabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAPABILITY_FILE_TRANSFER:I = 0x1

.field public static final CAPABILITY_GEOLOC_PUSH:I = 0x4

.field public static final CAPABILITY_IM:I = 0x2

.field public static final CAPABILITY_IMAGE_SHARING:I = 0x8

.field public static final CAPABILITY_VIDEO_SHARING:I = 0x10

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/capability/Capabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutomata:Z

.field private mCallComposerViaEC:Z

.field private mCallComposerViaMT:Z

.field private mChatbotSession:Z

.field private mChatbotStandalone:Z

.field private mExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFTSMS:Z

.field private mFileTransfer:Z

.field private mFileTransferOverHttp:Z

.field private mGeoSMS:Z

.field private mGeolocPush:Z

.field private mImSession:Z

.field private mImageSharing:Z

.field private mIpVideoCall:Z

.field private mIsBot:Z

.field private mPostCall:Z

.field private mSharedMap:Z

.field private mSharedSketch:Z

.field private mTimestamp:J

.field private mVideoSharing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 295
    new-instance v0, Lcom/gsma/services/rcs/capability/Capabilities$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/capability/Capabilities$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mImageSharing:Z

    .line 50
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mVideoSharing:Z

    .line 51
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mIpVideoCall:Z

    .line 56
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mImSession:Z

    .line 61
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransfer:Z

    .line 66
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransferOverHttp:Z

    .line 71
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeolocPush:Z

    .line 76
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    .line 81
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    .line 86
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mIsBot:Z

    .line 91
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotSession:Z

    .line 96
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotStandalone:Z

    .line 101
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeoSMS:Z

    .line 106
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFTSMS:Z

    .line 111
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedMap:Z

    .line 116
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedSketch:Z

    .line 121
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaEC:Z

    .line 126
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaMT:Z

    .line 131
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mPostCall:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mImageSharing:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mVideoSharing:Z

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mIpVideoCall:Z

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mImSession:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransfer:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v0

    :goto_5
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransferOverHttp:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    move v1, v0

    :goto_6
    if-eqz v1, :cond_7

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 224
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    .line 226
    iput-object v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    .line 228
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    move v1, v0

    :goto_8
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeolocPush:Z

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    move v1, v0

    :goto_9
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_a

    :cond_a
    move v1, v0

    :goto_a
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mIsBot:Z

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_b

    :cond_b
    move v1, v0

    :goto_b
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotSession:Z

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_c

    :cond_c
    move v1, v0

    :goto_c
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotStandalone:Z

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_d

    :cond_d
    move v1, v0

    :goto_d
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeoSMS:Z

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_e

    :cond_e
    move v1, v0

    :goto_e
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFTSMS:Z

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_f

    :cond_f
    move v1, v0

    :goto_f
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedMap:Z

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_10

    :cond_10
    move v1, v0

    :goto_10
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedSketch:Z

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_11

    :cond_11
    move v1, v0

    :goto_11
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaEC:Z

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_12

    :cond_12
    move v1, v0

    :goto_12
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaMT:Z

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    move v0, v2

    :cond_13
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mPostCall:Z

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    return-void
.end method

.method public constructor <init>(ZZZZZZZLjava/util/Set;ZZZZZZZZZZZJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZZZZZZZZJ)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p6

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 45
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mImageSharing:Z

    .line 50
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mVideoSharing:Z

    .line 51
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mIpVideoCall:Z

    .line 56
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mImSession:Z

    .line 61
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransfer:Z

    .line 66
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransferOverHttp:Z

    .line 71
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeolocPush:Z

    .line 76
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    .line 81
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    .line 86
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mIsBot:Z

    .line 91
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotSession:Z

    .line 96
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotStandalone:Z

    .line 101
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeoSMS:Z

    .line 106
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mFTSMS:Z

    .line 111
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedMap:Z

    .line 116
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedSketch:Z

    .line 121
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaEC:Z

    .line 126
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaMT:Z

    .line 131
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mPostCall:Z

    move v3, p1

    .line 184
    iput-boolean v3, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mImageSharing:Z

    move v3, p2

    .line 185
    iput-boolean v3, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mVideoSharing:Z

    move v3, p3

    .line 186
    iput-boolean v3, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mIpVideoCall:Z

    move v3, p4

    .line 187
    iput-boolean v3, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mImSession:Z

    if-nez p5, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 188
    :cond_1
    iput-boolean v2, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransfer:Z

    .line 189
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransferOverHttp:Z

    move v1, p7

    .line 190
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeolocPush:Z

    move-object v1, p8

    .line 191
    iput-object v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    move v1, p9

    .line 192
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    move v1, p10

    .line 193
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mIsBot:Z

    move v1, p11

    .line 194
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotSession:Z

    move/from16 v1, p12

    .line 195
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotStandalone:Z

    move/from16 v1, p13

    .line 196
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeoSMS:Z

    move/from16 v1, p14

    .line 197
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mFTSMS:Z

    move/from16 v1, p15

    .line 198
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedMap:Z

    move/from16 v1, p16

    .line 199
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedSketch:Z

    move/from16 v1, p17

    .line 200
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaEC:Z

    move/from16 v1, p18

    .line 201
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaMT:Z

    move/from16 v1, p19

    .line 202
    iput-boolean v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mPostCall:Z

    move-wide/from16 v1, p20

    .line 203
    iput-wide v1, v0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 384
    iget-wide v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    return-wide v0
.end method

.method public isAutomata()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    return v0
.end method

.method public isBot()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mIsBot:Z

    return v0
.end method

.method public isCallComposerViaECSupported()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaEC:Z

    return v0
.end method

.method public isCallComposerViaMTSupported()Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaMT:Z

    return v0
.end method

.method public isChatbotSessionSupported()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotSession:Z

    return v0
.end method

.method public isChatbotStandaloneSupported()Z
    .locals 1

    .line 431
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotStandalone:Z

    return v0
.end method

.method public isExtensionSupported(Ljava/lang/String;)Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFTSMSSupported()Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFTSMS:Z

    return v0
.end method

.method public isFileTransferHttpSupported()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransferOverHttp:Z

    return v0
.end method

.method public isFileTransferSupported()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransfer:Z

    return v0
.end method

.method public isGeolocPushSupported()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeolocPush:Z

    return v0
.end method

.method public isImSessionSupported()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mImSession:Z

    return v0
.end method

.method public isImageSharingSupported()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mImageSharing:Z

    return v0
.end method

.method public isIpVideoCallSupported()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mIpVideoCall:Z

    return v0
.end method

.method public isPostCallSupported()Z
    .locals 1

    .line 509
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mPostCall:Z

    return v0
.end method

.method public isSharedMapSupported()Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedMap:Z

    return v0
.end method

.method public isSharedSketchSupported()Z
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedSketch:Z

    return v0
.end method

.method public isVideoSharingSupported()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mVideoSharing:Z

    return v0
.end method

.method public ismGeoSMSSupported()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeoSMS:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 262
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mImageSharing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mVideoSharing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mIpVideoCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mImSession:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransfer:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFileTransferOverHttp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 269
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mExtensions:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 273
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    :goto_0
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeolocPush:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mAutomata:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mIsBot:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotSession:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mChatbotStandalone:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mGeoSMS:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mFTSMS:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedMap:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mSharedSketch:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaEC:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mCallComposerViaMT:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mPostCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-wide v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
