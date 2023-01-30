.class Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;
.super Ljava/lang/Object;
.source "ExternalCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ExternalCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationInfo"
.end annotation


# instance fields
.field private final mCall:Landroid/telecom/Call;

.field private mContentTitle:Ljava/lang/String;

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private final mNotificationId:I

.field private mPersonReference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/telecom/Call;I)V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p1, p0, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->mCall:Landroid/telecom/Call;

    .line 452
    iput p2, p0, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->mNotificationId:I

    return-void
.end method


# virtual methods
.method public getCall()Landroid/telecom/Call;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->mCall:Landroid/telecom/Call;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->mContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->mNotificationId:I

    return v0
.end method

.method public getPersonReference()Ljava/lang/String;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->mPersonReference:Ljava/lang/String;

    return-object v0
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->mContentTitle:Ljava/lang/String;

    return-void
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->mLargeIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPersonReference(Ljava/lang/String;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->mPersonReference:Ljava/lang/String;

    return-void
.end method
