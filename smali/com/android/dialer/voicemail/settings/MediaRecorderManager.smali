.class public Lcom/android/dialer/voicemail/settings/MediaRecorderManager;
.super Ljava/lang/Object;
.source "MediaRecorderManager.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private endTime:J

.field private filePath:Ljava/lang/String;

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private startTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MediaRecorderManager"

    .line 37
    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->TAG:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 6

    const/4 v0, 0x0

    .line 78
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [B

    .line 82
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    .line 83
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v3

    .line 78
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    .line 86
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v2

    .line 78
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v3

    .line 86
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method public getDuration()I
    .locals 8

    .line 110
    iget-wide v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->endTime:J

    iget-wide v2, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->startTime:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method protected handleError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaRecorderManager.handlerError"

    const-string v1, "could not record voicemail"

    .line 119
    invoke-static {v0, v1, p1}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->stopRecord()V

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    .line 115
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaRecorder error record invoked: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method public startRecord()V
    .locals 3

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 60
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 61
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 62
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 63
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 66
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->startTime:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->handleError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->handleError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public stopRecord()V
    .locals 3

    const/4 v0, 0x0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 99
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 100
    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->endTime:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 104
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 105
    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/MediaRecorderManager;->mediaRecorder:Landroid/media/MediaRecorder;

    :goto_0
    return-void
.end method
