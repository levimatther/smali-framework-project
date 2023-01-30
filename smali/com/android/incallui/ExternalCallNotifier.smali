.class public Lcom/android/incallui/ExternalCallNotifier;
.super Ljava/lang/Object;
.source "ExternalCallNotifier.java"

# interfaces
.implements Lcom/android/incallui/call/ExternalCallList$ExternalCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;,
        Lcom/android/incallui/ExternalCallNotifier$DialerCallDelegateStub;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_SUMMARY_ID:I = -0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "EXTERNAL_CALL"


# instance fields
.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private final mContext:Landroid/content/Context;

.field private mNextUniqueNotificationId:I

.field private mNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Call;",
            "Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    .line 79
    iput-object p1, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Lcom/android/incallui/ContactsPreferencesFactory;->newContactsPreferences(Landroid/content/Context;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/ExternalCallNotifier;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 81
    iput-object p2, p0, Lcom/android/incallui/ExternalCallNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/ExternalCallNotifier;)Ljava/util/Map;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/incallui/ExternalCallNotifier;Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ExternalCallNotifier;->saveContactInfo(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/ExternalCallNotifier;Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ExternalCallNotifier;->savePhoto(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method private dismissNotification(Landroid/telecom/Call;)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 195
    iget-object v1, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;

    invoke-virtual {v1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getNotificationId()I

    move-result v1

    const-string v2, "EXTERNAL_CALL"

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 197
    iget-object v1, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-boolean p1, p0, Lcom/android/incallui/ExternalCallNotifier;->mShowingSummary:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    const/4 p1, -0x1

    .line 202
    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 203
    iput-boolean p1, p0, Lcom/android/incallui/ExternalCallNotifier;->mShowingSummary:Z

    .line 207
    iget-object p1, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;

    invoke-direct {p0, p1}, Lcom/android/incallui/ExternalCallNotifier;->postNotification(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;)V

    :cond_0
    return-void

    .line 190
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private getContentTitle(Landroid/content/Context;Lcom/android/contacts/common/preference/ContactsPreferences;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/telecom/Call;)Ljava/lang/String;
    .locals 2

    .line 393
    invoke-virtual {p4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result p2

    .line 394
    invoke-static {p1, p2}, Lcom/android/incallui/CallerInfoUtils;->getConferenceString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 399
    :cond_0
    iget-object p1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object p4, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    .line 400
    invoke-static {p1, p4, p2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 403
    iget-object p1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 405
    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p1

    iget-object p2, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    sget-object p3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 406
    invoke-virtual {p1, p2, p3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private getLargeIconToDisplay(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/telecom/Call;)Landroid/graphics/Bitmap;
    .locals 2

    .line 343
    invoke-virtual {p3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p3

    const/4 v0, 0x2

    .line 345
    invoke-virtual {p3, v0}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result p3

    if-nez p3, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0801c7

    .line 348
    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 351
    :goto_0
    iget-object p3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    iget-object p3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    instance-of p3, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p3, :cond_1

    .line 352
    iget-object p1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getPersonReference(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/telecom/Call;)Ljava/lang/String;
    .locals 4

    .line 421
    invoke-static {p2}, Lcom/android/incallui/util/TelecomCallUtil;->getNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p2

    .line 425
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 426
    iget-object p1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 427
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "tel"

    .line 428
    invoke-static {v0, p2, p1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getRoundedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 369
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1050005

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 372
    invoke-static {p2, p1, v0}, Lcom/android/contacts/common/util/BitmapUtil;->getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private postNotification(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;)V
    .locals 11

    .line 238
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 240
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 242
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const-string v2, "EXTERNAL_CALL"

    .line 243
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 245
    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getCall()Landroid/telecom/Call;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    .line 247
    iget-object v4, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    const v3, 0x7f11035b

    goto :goto_0

    :cond_0
    const v3, 0x7f11035a

    .line 248
    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v3, 0x7f0801b5

    .line 252
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 253
    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getContentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 254
    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 255
    iget-object v4, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 256
    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getPersonReference()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 257
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v4

    const-string v6, "phone_default"

    if-eqz v4, :cond_1

    .line 258
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 263
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getCall()Landroid/telecom/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/common/compat/CallCompat;->canPullExternalCall(Landroid/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    new-instance v4, Landroid/content/Intent;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/tct/common/DialerDialogActivity;

    const-string v10, "com.android.incallui.ACTION_PULL_EXTERNAL_CALL"

    invoke-direct {v4, v10, v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "shwo external_call"

    .line 272
    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getNotificationId()I

    move-result v7

    const-string v8, "com.android.incallui.extra.EXTRA_NOTIFICATION_ID"

    .line 273
    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    iget-object v7, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getNotificationId()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 295
    :cond_2
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 297
    iget-object v7, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 298
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 299
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 302
    :cond_3
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 303
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 305
    iget-object v4, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    .line 306
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 307
    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getNotificationId()I

    move-result p1

    invoke-virtual {v4, v2, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 309
    iget-boolean p1, p0, Lcom/android/incallui/ExternalCallNotifier;->mShowingSummary:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-le p1, v1, :cond_5

    .line 313
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 315
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 317
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 318
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 319
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 320
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 321
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_4
    const/4 v0, -0x1

    .line 324
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v4, v2, v0, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 325
    iput-boolean v1, p0, Lcom/android/incallui/ExternalCallNotifier;->mShowingSummary:Z

    :cond_5
    return-void
.end method

.method private saveContactInfo(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/ExternalCallNotifier;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/android/incallui/ExternalCallNotifier;->getContentTitle(Landroid/content/Context;Lcom/android/contacts/common/preference/ContactsPreferences;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->setContentTitle(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/ExternalCallNotifier;->getPersonReference(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->setPersonReference(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/android/incallui/ExternalCallNotifier;->postNotification(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;)V

    return-void
.end method

.method private savePhoto(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/incallui/ExternalCallNotifier;->getLargeIconToDisplay(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/telecom/Call;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/android/incallui/ExternalCallNotifier;->getRoundedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 222
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/android/incallui/ExternalCallNotifier;->postNotification(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;)V

    return-void
.end method

.method private showNotifcation(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;)V
    .locals 7

    .line 152
    new-instance v6, Lcom/android/incallui/call/DialerCall;

    iget-object v1, p0, Lcom/android/incallui/ExternalCallNotifier;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/incallui/ExternalCallNotifier$DialerCallDelegateStub;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/android/incallui/ExternalCallNotifier$DialerCallDelegateStub;-><init>(Lcom/android/incallui/ExternalCallNotifier$1;)V

    .line 156
    invoke-virtual {p1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getCall()Landroid/telecom/Call;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/latencyreport/LatencyReport;

    invoke-direct {v4}, Lcom/android/incallui/latencyreport/LatencyReport;-><init>()V

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/call/DialerCall;-><init>(Landroid/content/Context;Lcom/android/incallui/call/DialerCallDelegate;Landroid/telecom/Call;Lcom/android/incallui/latencyreport/LatencyReport;Z)V

    .line 160
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    new-instance v1, Lcom/android/incallui/ExternalCallNotifier$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/ExternalCallNotifier$1;-><init>(Lcom/android/incallui/ExternalCallNotifier;Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v6, p1, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/call/DialerCall;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void
.end method


# virtual methods
.method public onExternalCallAdded(Landroid/telecom/Call;)V
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExternalCallAdded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;

    iget v1, p0, Lcom/android/incallui/ExternalCallNotifier;->mNextUniqueNotificationId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/incallui/ExternalCallNotifier;->mNextUniqueNotificationId:I

    invoke-direct {v0, p1, v1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;-><init>(Landroid/telecom/Call;I)V

    .line 95
    iget-object v1, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-direct {p0, v0}, Lcom/android/incallui/ExternalCallNotifier;->showNotifcation(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;)V

    return-void

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onExternalCallPulled(Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onExternalCallRemoved(Landroid/telecom/Call;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExternalCallRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/android/incallui/ExternalCallNotifier;->dismissNotification(Landroid/telecom/Call;)V

    return-void
.end method

.method public onExternalCallUpdated(Landroid/telecom/Call;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;

    invoke-direct {p0, p1}, Lcom/android/incallui/ExternalCallNotifier;->postNotification(Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;)V

    return-void

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public pullExternalCall(I)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/incallui/ExternalCallNotifier;->mNotifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;

    .line 134
    invoke-virtual {v1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getNotificationId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 135
    invoke-virtual {v1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/compat/CallCompat;->canPullExternalCall(Landroid/telecom/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/android/incallui/ExternalCallNotifier$NotificationInfo;->getCall()Landroid/telecom/Call;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call;->pullExternalCall()V

    :cond_1
    return-void
.end method
