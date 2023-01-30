.class public Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;
.super Ljava/lang/Object;
.source "VoicemailFetchedCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoicemailFetchedCallback"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mContentResolver:Landroid/content/ContentResolver;

    .line 63
    iput-object p2, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    .line 64
    iput-object p3, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-void
.end method

.method private movePlayload2ExternalStorage([BLjava/lang/String;)V
    .locals 7

    const-string v0, "ExternalStorage error2"

    const-string v1, "scanner downloads file:"

    const-string v2, "file://"

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movePlayload2ExternalStorage:fileName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VoicemailFetchedCallback"

    invoke-static {v5, v4}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 142
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 145
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 146
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-static {v5, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object p2, v4

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p2, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_2
    :try_start_3
    const-string v4, "ExternalStorage error1"

    .line 149
    invoke-static {v5, v4}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_0

    .line 154
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 156
    invoke-static {v5, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    :cond_0
    :goto_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_4
    return-void

    :goto_5
    if-eqz p2, :cond_1

    .line 154
    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p2

    .line 156
    invoke-static {v5, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    :cond_1
    :goto_6
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    iget-object v2, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    throw p1
.end method

.method private updateVoicemail(Landroid/content/ContentValues;)Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating voicemail should have updated 1 row, was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VoicemailFetchedCallback"

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public synthetic lambda$setVoicemailContent$0$VoicemailFetchedCallback()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->transcribeVoicemail(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const-string v1, "Failed to schedule transcription for %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoicemailFetchedCallback"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVoicemailContent(Lcom/android/voicemail/impl/imap/VoicemailPayload;)V
    .locals 6

    .line 74
    invoke-static {}, Lcom/android/dialer/common/Assert;->isWorkerThread()V

    const/4 v0, 0x0

    const-string v1, "VoicemailFetchedCallback"

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string p1, "Payload not found, message has unsupported format"

    .line 76
    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mContext:Landroid/content/Context;

    const v3, 0x7f1105a8

    new-array v2, v2, [Ljava/lang/Object;

    const-class v4, Landroid/telecom/TelecomManager;

    .line 83
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    iget-object v5, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 84
    invoke-virtual {v4, v5}, Landroid/telecom/TelecomManager;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 80
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "transcription"

    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->updateVoicemail(Landroid/content/ContentValues;)Z

    return-void

    :cond_0
    new-array v3, v2, [Ljava/lang/Object;

    .line 89
    iget-object v4, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    aput-object v4, v3, v0

    const-string v4, "Writing new voicemail content: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/voicemail/impl/VvmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 93
    :try_start_0
    iget-object v4, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 94
    invoke-virtual {p1}, Lcom/android/voicemail/impl/imap/VoicemailPayload;->getBytes()[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 96
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v1, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_voicemail.amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/android/voicemail/impl/imap/VoicemailPayload;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->movePlayload2ExternalStorage([BLjava/lang/String;)V

    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    invoke-virtual {p1}, Lcom/android/voicemail/impl/imap/VoicemailPayload;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "has_content"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->updateVoicemail(Landroid/content/ContentValues;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    new-instance p1, Lcom/android/voicemail/impl/fetch/-$$Lambda$VoicemailFetchedCallback$f1R15iV0lAwmlFtZIWapzfx84rI;

    invoke-direct {p1, p0}, Lcom/android/voicemail/impl/fetch/-$$Lambda$VoicemailFetchedCallback$f1R15iV0lAwmlFtZIWapzfx84rI;-><init>(Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;)V

    invoke-static {p1}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_1
    const-string p1, "File not found for %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    iget-object v4, p0, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->mUri:Landroid/net/Uri;

    aput-object v4, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-void

    :goto_0
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 103
    throw p1
.end method
