.class public final Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;
.super Ljava/lang/Object;
.source "CallLogNotificationsQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewCall"
.end annotation


# instance fields
.field public final accountComponentName:Ljava/lang/String;

.field public final accountId:Ljava/lang/String;

.field public final callsUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final dateMs:J

.field public final number:Ljava/lang/String;

.field public final numberPresentation:I

.field public final transcription:Ljava/lang/String;

.field public final verstat:I

.field public final voicemailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->callsUri:Landroid/net/Uri;

    .line 256
    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->voicemailUri:Landroid/net/Uri;

    .line 257
    iput-object p3, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->number:Ljava/lang/String;

    .line 258
    iput p4, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->numberPresentation:I

    .line 259
    iput-object p5, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->accountComponentName:Ljava/lang/String;

    .line 260
    iput-object p6, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->accountId:Ljava/lang/String;

    .line 261
    iput-object p7, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->transcription:Ljava/lang/String;

    .line 262
    iput-object p8, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->countryIso:Ljava/lang/String;

    .line 263
    iput-wide p9, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->dateMs:J

    .line 264
    iput p11, p0, Lcom/android/dialer/app/calllog/CallLogNotificationsQueryHelper$NewCall;->verstat:I

    return-void
.end method
