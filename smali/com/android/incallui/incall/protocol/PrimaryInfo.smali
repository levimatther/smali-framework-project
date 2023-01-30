.class public Lcom/android/incallui/incall/protocol/PrimaryInfo;
.super Ljava/lang/Object;
.source "PrimaryInfo.java"


# instance fields
.field public final answeringDisconnectsOngoingCall:Z

.field public final contactInfoLookupKey:Ljava/lang/String;

.field public final isContactPhotoShown:Z

.field public final isSipCall:Z

.field public final isSpam:Z

.field public final isWorkCall:Z

.field public final label:Ljava/lang/String;

.field public final location:Ljava/lang/String;

.field public final multimediaData:Lcom/android/dialer/multimedia/MultimediaData;

.field public final name:Ljava/lang/String;

.field public final nameIsNumber:Z

.field public final number:Ljava/lang/String;

.field public final numberPresentation:I

.field public final photo:Landroid/graphics/drawable/Drawable;

.field public final photoType:I

.field public final shouldShowLocation:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZZZZZZLjava/lang/String;Lcom/android/dialer/multimedia/MultimediaData;I)V
    .locals 2

    move-object v0, p0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 84
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->number:Ljava/lang/String;

    move-object v1, p2

    .line 85
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->name:Ljava/lang/String;

    move v1, p3

    .line 86
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->nameIsNumber:Z

    move-object v1, p4

    .line 87
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->location:Ljava/lang/String;

    move-object v1, p5

    .line 88
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->label:Ljava/lang/String;

    move-object v1, p6

    .line 89
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->photo:Landroid/graphics/drawable/Drawable;

    move v1, p7

    .line 90
    iput v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->photoType:I

    move v1, p8

    .line 91
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->isSipCall:Z

    move v1, p9

    .line 92
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->isContactPhotoShown:Z

    move v1, p10

    .line 93
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->isWorkCall:Z

    move v1, p11

    .line 94
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->isSpam:Z

    move v1, p12

    .line 95
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->answeringDisconnectsOngoingCall:Z

    move v1, p13

    .line 96
    iput-boolean v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->shouldShowLocation:Z

    move-object/from16 v1, p14

    .line 97
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->contactInfoLookupKey:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 98
    iput-object v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->multimediaData:Lcom/android/dialer/multimedia/MultimediaData;

    move/from16 v1, p16

    .line 99
    iput v1, v0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->numberPresentation:I

    return-void
.end method

.method public static createEmptyPrimaryInfo()Lcom/android/incallui/incall/protocol/PrimaryInfo;
    .locals 18

    .line 48
    new-instance v17, Lcom/android/incallui/incall/protocol/PrimaryInfo;

    move-object/from16 v0, v17

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    invoke-direct/range {v0 .. v16}, Lcom/android/incallui/incall/protocol/PrimaryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZZZZZZLjava/lang/String;Lcom/android/dialer/multimedia/MultimediaData;I)V

    return-object v17
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 104
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->number:Ljava/lang/String;

    .line 108
    invoke-static {v2}, Lcom/android/dialer/common/LogUtil;->sanitizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->name:Ljava/lang/String;

    .line 109
    invoke-static {v2}, Lcom/android/dialer/common/LogUtil;->sanitizePii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->location:Ljava/lang/String;

    .line 110
    invoke-static {v2}, Lcom/android/dialer/common/LogUtil;->sanitizePii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->label:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->photo:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->photoType:I

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->isContactPhotoShown:Z

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->multimediaData:Lcom/android/dialer/multimedia/MultimediaData;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "PrimaryInfo, number: %s, name: %s, location: %s, label: %s, photo: %s, photoType: %d, isPhotoVisible: %b, MultimediaData: %s"

    .line 104
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
