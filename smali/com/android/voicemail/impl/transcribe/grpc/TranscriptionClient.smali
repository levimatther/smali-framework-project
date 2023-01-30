.class public Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient;
.super Ljava/lang/Object;
.source "TranscriptionClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;
    }
.end annotation


# instance fields
.field private final stub:Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceBlockingStub;


# direct methods
.method constructor <init>(Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceBlockingStub;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient;->stub:Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceBlockingStub;

    return-void
.end method


# virtual methods
.method public transcribeVoicemail(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;)Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;
    .locals 3

    const/4 v0, 0x0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient;->stub:Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceBlockingStub;

    invoke-virtual {v1, p1}, Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceBlockingStub;->transcribeVoicemail(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    move-result-object p1
    :try_end_0
    .catch Lio/grpc/StatusRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object p1

    .line 59
    :goto_0
    new-instance v1, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;

    invoke-direct {v1, v0, p1}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;-><init>(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;Lio/grpc/Status;)V

    return-object v1
.end method
