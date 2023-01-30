.class public Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc;
.super Ljava/lang/Object;
.source "VoicemailTranscriptionServiceGrpc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$MethodHandlers;,
        Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceFutureStub;,
        Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceBlockingStub;,
        Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceStub;,
        Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceImplBase;
    }
.end annotation


# static fields
.field private static final METHODID_TRANSCRIBE_VOICEMAIL:I = 0x0

.field public static final METHOD_TRANSCRIBE_VOICEMAIL:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;",
            "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_NAME:Ljava/lang/String; = "google.internal.communications.voicemailtranscription.v1.VoicemailTranscriptionService"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "google.internal.communications.voicemailtranscription.v1.VoicemailTranscriptionService"

    const-string v2, "TranscribeVoicemail"

    .line 54
    invoke-static {v1, v2}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->getDefaultInstance()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    .line 57
    invoke-static {}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->getDefaultInstance()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    .line 52
    invoke-static {v0, v1, v2, v3}, Lio/grpc/MethodDescriptor;->create(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc;->METHOD_TRANSCRIBE_VOICEMAIL:Lio/grpc/MethodDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceDescriptor()Lio/grpc/ServiceDescriptor;
    .locals 4

    .line 250
    new-instance v0, Lio/grpc/ServiceDescriptor;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/grpc/MethodDescriptor;

    sget-object v2, Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc;->METHOD_TRANSCRIBE_VOICEMAIL:Lio/grpc/MethodDescriptor;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "google.internal.communications.voicemailtranscription.v1.VoicemailTranscriptionService"

    invoke-direct {v0, v2, v1}, Lio/grpc/ServiceDescriptor;-><init>(Ljava/lang/String;[Lio/grpc/MethodDescriptor;)V

    return-object v0
.end method

.method public static newBlockingStub(Lio/grpc/Channel;)Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceBlockingStub;
    .locals 2

    .line 71
    new-instance v0, Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceBlockingStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceBlockingStub;-><init>(Lio/grpc/Channel;Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$1;)V

    return-object v0
.end method

.method public static newFutureStub(Lio/grpc/Channel;)Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceFutureStub;
    .locals 2

    .line 79
    new-instance v0, Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceFutureStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceFutureStub;-><init>(Lio/grpc/Channel;Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$1;)V

    return-object v0
.end method

.method public static newStub(Lio/grpc/Channel;)Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceStub;
    .locals 2

    .line 63
    new-instance v0, Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceStub;-><init>(Lio/grpc/Channel;Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$1;)V

    return-object v0
.end method
