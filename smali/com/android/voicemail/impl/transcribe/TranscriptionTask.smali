.class public Lcom/android/voicemail/impl/transcribe/TranscriptionTask;
.super Ljava/lang/Object;
.source "TranscriptionTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final AMR_PREFIX:Ljava/lang/String; = "#!AMR\n"

.field private static final MAX_RETRIES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TranscriptionTask"


# instance fields
.field private audioData:Lcom/google/protobuf/ByteString;

.field private final callback:Lcom/android/voicemail/impl/transcribe/TranscriptionService$JobCallback;

.field private final clientFactory:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

.field private final context:Landroid/content/Context;

.field private final databaseHelper:Lcom/android/voicemail/impl/transcribe/TranscriptionDbHelper;

.field private encoding:Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;

.field private final voicemailUri:Landroid/net/Uri;

.field private final workItem:Landroid/app/job/JobWorkItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/voicemail/impl/transcribe/TranscriptionService$JobCallback;Landroid/app/job/JobWorkItem;Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->context:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->callback:Lcom/android/voicemail/impl/transcribe/TranscriptionService$JobCallback;

    .line 75
    iput-object p3, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->workItem:Landroid/app/job/JobWorkItem;

    .line 76
    iput-object p4, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->clientFactory:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

    .line 77
    invoke-static {p3}, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->getVoicemailUri(Landroid/app/job/JobWorkItem;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->voicemailUri:Landroid/net/Uri;

    .line 78
    new-instance p2, Lcom/android/voicemail/impl/transcribe/TranscriptionDbHelper;

    iget-object p3, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->voicemailUri:Landroid/net/Uri;

    invoke-direct {p2, p1, p3}, Lcom/android/voicemail/impl/transcribe/TranscriptionDbHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->databaseHelper:Lcom/android/voicemail/impl/transcribe/TranscriptionDbHelper;

    return-void
.end method

.method private static backoff(I)V
    .locals 4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backoff, count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscriptionTask"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    shl-int p0, v0, p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v2, p0

    .line 152
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "interrupted"

    .line 154
    invoke-static {v1, p0}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method private static getVoicemailUri(Landroid/app/job/JobWorkItem;)Landroid/net/Uri;
    .locals 1

    .line 204
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_voicemail_uri"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method private makeRequest()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
    .locals 2

    .line 168
    invoke-static {}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->newBuilder()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->audioData:Lcom/google/protobuf/ByteString;

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->setVoicemailData(Lcom/google/protobuf/ByteString;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->encoding:Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->setAudioFormat(Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    return-object v0
.end method

.method private readAndValidateAudioFile()Z
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->voicemailUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const-string v2, "TranscriptionTask"

    if-nez v0, :cond_0

    const-string v0, "Transcriber.readAndValidateAudioFile, file not found."

    .line 178
    invoke-static {v2, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transcriber.readAndValidateAudioFile, reading: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->voicemailUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->voicemailUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->readFrom(Ljava/io/InputStream;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->audioData:Lcom/google/protobuf/ByteString;

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transcriber.readAndValidateAudioFile, read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->audioData:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 187
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->audioData:Lcom/google/protobuf/ByteString;

    const-string v3, "#!AMR\n"

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/ByteString;->startsWith(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;->AMR_NB_8KHZ:Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;

    iput-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->encoding:Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v0, "Transcriber.readAndValidateAudioFile, unknown encoding"

    .line 195
    invoke-static {v2, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;->AUDIO_FORMAT_UNSPECIFIED:Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;

    iput-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->encoding:Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;

    return v1

    :catchall_0
    move-exception v3

    .line 184
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    if-eqz v0, :cond_3

    .line 187
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    const-string v3, "Transcriber.readAndValidateAudioFile"

    .line 188
    invoke-static {v2, v3, v0}, Lcom/android/voicemail/impl/VvmLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private static shouldRetryRequest(Lio/grpc/Status;)Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object p0

    sget-object v0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private transcribeVoicemail()V
    .locals 10

    const-string v0, "TranscriptionTask"

    const-string/jumbo v1, "transcribeVoicemail"

    .line 97
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->makeRequest()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->clientFactory:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;

    invoke-virtual {v2}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->getClient()Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-nez v3, :cond_5

    if-ge v4, v5, :cond_5

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "transcribeVoicemail, try: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_0

    .line 104
    iget-object v6, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v6

    sget-object v8, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_REQUEST_SENT:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v6, v8}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_1

    .line 106
    :cond_0
    iget-object v6, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v6

    sget-object v8, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_REQUEST_RETRY:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v6, v8}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 109
    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient;->transcribeVoicemail(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;)Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;

    move-result-object v6

    .line 110
    iget-object v8, v6, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;->status:Lio/grpc/Status;

    if-eqz v8, :cond_2

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "transcribeVoicemail, status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;->status:Lio/grpc/Status;

    invoke-virtual {v9}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v6, v6, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;->status:Lio/grpc/Status;

    invoke-static {v6}, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->shouldRetryRequest(Lio/grpc/Status;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    iget-object v5, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v5

    sget-object v6, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_RECOVERABLE_ERROR:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 114
    invoke-interface {v5, v6}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 115
    invoke-static {v4}, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->backoff(I)V

    goto :goto_2

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_FATAL_ERROR:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 118
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_3

    .line 121
    :cond_2
    iget-object v4, v6, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;->response:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    if-eqz v4, :cond_4

    .line 122
    iget-object v4, v6, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;->response:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-virtual {v4}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->getTranscript()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v3, "transcribeVoicemail, got response"

    .line 123
    invoke-static {v0, v3}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v3, v6, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;->response:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-virtual {v3}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->getTranscript()Ljava/lang/String;

    move-result-object v3

    .line 125
    iget-object v4, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v4

    sget-object v5, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_SUCCESS:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 126
    invoke-interface {v4, v5}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "transcribeVoicemail, empty transcription"

    .line 128
    invoke-static {v0, v4}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v4

    sget-object v5, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_EMPTY:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v4, v5}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "transcribeVoicemail, no response"

    .line 132
    invoke-static {v0, v4}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v4

    sget-object v5, Lcom/android/dialer/logging/DialerImpression$Type;->VVM_TRANSCRIPTION_RESPONSE_INVALID:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v4, v5}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :goto_2
    move v4, v7

    goto/16 :goto_0

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x3

    .line 141
    :goto_4
    invoke-direct {p0, v3, v5}, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->updateTranscriptionAndState(Ljava/lang/String;I)V

    return-void
.end method

.method private updateTranscriptionAndState(Ljava/lang/String;I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->databaseHelper:Lcom/android/voicemail/impl/transcribe/TranscriptionDbHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/voicemail/impl/transcribe/TranscriptionDbHelper;->setTranscriptionAndState(Ljava/lang/String;I)V

    return-void
.end method

.method private updateTranscriptionState(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->databaseHelper:Lcom/android/voicemail/impl/transcribe/TranscriptionDbHelper;

    invoke-virtual {v0, p1}, Lcom/android/voicemail/impl/transcribe/TranscriptionDbHelper;->setTranscriptionState(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$TranscriptionTask()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->callback:Lcom/android/voicemail/impl/transcribe/TranscriptionService$JobCallback;

    iget-object v1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->workItem:Landroid/app/job/JobWorkItem;

    invoke-interface {v0, v1}, Lcom/android/voicemail/impl/transcribe/TranscriptionService$JobCallback;->onWorkCompleted(Landroid/app/job/JobWorkItem;)V

    return-void
.end method

.method public run()V
    .locals 2

    const-string v0, "TranscriptionTask"

    const-string v1, "run"

    .line 83
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->readAndValidateAudioFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->updateTranscriptionState(I)V

    .line 86
    invoke-direct {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->transcribeVoicemail()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 88
    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/transcribe/TranscriptionTask;->updateTranscriptionState(I)V

    .line 90
    :goto_0
    new-instance v0, Lcom/android/voicemail/impl/transcribe/-$$Lambda$TranscriptionTask$1iWiSBFZnndWL3qpK0e_kFnZhyM;

    invoke-direct {v0, p0}, Lcom/android/voicemail/impl/transcribe/-$$Lambda$TranscriptionTask$1iWiSBFZnndWL3qpK0e_kFnZhyM;-><init>(Lcom/android/voicemail/impl/transcribe/TranscriptionTask;)V

    invoke-static {v0}, Lcom/android/dialer/common/concurrent/ThreadUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
