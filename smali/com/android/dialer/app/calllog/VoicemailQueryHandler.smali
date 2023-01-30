.class public Lcom/android/dialer/app/calllog/VoicemailQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "VoicemailQueryHandler.java"


# static fields
.field private static final UPDATE_MARK_VOICEMAILS_AS_OLD_TOKEN:I = 0x32


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 41
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    return-void
.end method

.method static synthetic lambda$markAllNewVoicemailsAsRead$0(Landroid/content/Context;)V
    .locals 1

    .line 48
    new-instance v0, Lcom/android/dialer/app/calllog/VoicemailQueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/VoicemailQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    const/4 p0, 0x0

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/VoicemailQueryHandler;->markNewVoicemailsAsOld(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$markSingleNewVoicemailAsRead$1(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/android/dialer/app/calllog/VoicemailQueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/VoicemailQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 62
    invoke-direct {v0, p1}, Lcom/android/dialer/app/calllog/VoicemailQueryHandler;->markNewVoicemailsAsOld(Landroid/net/Uri;)V

    return-void
.end method

.method public static markAllNewVoicemailsAsRead(Landroid/content/Context;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$c2jRsEXjUG6Z1P5vXMMLjTr8nZs;

    invoke-direct {v0, p0}, Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$c2jRsEXjUG6Z1P5vXMMLjTr8nZs;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private markNewVoicemailsAsOld(Landroid/net/Uri;)V
    .locals 11

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 1 AND "

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type"

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, " AND "

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "voicemail_uri"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "0"

    .line 80
    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x32

    const/4 v6, 0x0

    .line 82
    sget-object v7, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/String;

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    move-object v10, p1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    move-object v10, v3

    :goto_0
    move-object v4, p0

    .line 82
    invoke-virtual/range {v4 .. v10}, Lcom/android/dialer/app/calllog/VoicemailQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static markSingleNewVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "VoicemailQueryHandler.markSingleNewVoicemailAsRead"

    const-string/jumbo v0, "voicemail URI is null"

    .line 56
    invoke-static {p1, v0, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$27S9jchVQEuQl_I6dK5Dn7Vn3f4;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/app/calllog/-$$Lambda$VoicemailQueryHandler$27S9jchVQEuQl_I6dK5Dn7Vn3f4;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
