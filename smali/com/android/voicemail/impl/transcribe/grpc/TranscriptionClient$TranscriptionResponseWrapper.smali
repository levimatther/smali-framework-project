.class public Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;
.super Ljava/lang/Object;
.source "TranscriptionClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranscriptionResponseWrapper"
.end annotation


# instance fields
.field public final response:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

.field public final status:Lio/grpc/Status;


# direct methods
.method public constructor <init>(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;Lio/grpc/Status;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 39
    :goto_1
    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkArgument(Z)V

    .line 40
    iput-object p1, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;->response:Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    .line 41
    iput-object p2, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient$TranscriptionResponseWrapper;->status:Lio/grpc/Status;

    return-void
.end method
