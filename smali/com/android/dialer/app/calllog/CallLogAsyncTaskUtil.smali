.class public Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;
.super Ljava/lang/Object;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;,
        Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogAsyncTaskUtil"

.field private static sAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->uploadVoicemailLocalChangesToServer(Landroid/content/Context;)V

    return-void
.end method

.method public static deleteVoicemail(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
    .locals 3

    .line 143
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->initTaskExecutor()V

    .line 147
    :cond_0
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_VOICEMAIL:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    new-instance v2, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$2;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static deleteVoicemailSynchronous(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 196
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "deleted"

    const-string v2, "1"

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    invoke-static {p0}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->uploadVoicemailLocalChangesToServer(Landroid/content/Context;)V

    return-void
.end method

.method private static initTaskExecutor()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    return-void
.end method

.method public static markCallAsRead(Landroid/content/Context;[J)V
    .locals 3

    .line 205
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-static {p0}, Lcom/android/dialer/util/PermissionsUtil;->hasCallLogWritePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    if-nez v0, :cond_1

    .line 210
    invoke-static {}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->initTaskExecutor()V

    .line 213
    :cond_1
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_CALL_READ:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    new-instance v2, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$4;

    invoke-direct {v2, p1, p0}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$4;-><init>([JLandroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public static markVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallLogAsyncTaskUtil.markVoicemailAsRead, voicemailUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->initTaskExecutor()V

    .line 116
    :cond_0
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    new-instance v2, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$1;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$1;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static markVoicemailAsUnread(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallLogAsyncTaskUtil.markVoicemailAsRead, voicemailUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->initTaskExecutor()V

    .line 173
    :cond_0
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$Tasks;

    new-instance v2, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$3;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$3;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/dialer/common/concurrent/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static uploadVoicemailLocalChangesToServer(Landroid/content/Context;)V
    .locals 2

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.voicemail.VoicemailClient.ACTION_UPLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
