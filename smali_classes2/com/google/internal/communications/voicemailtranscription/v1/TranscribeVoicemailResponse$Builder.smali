.class public final Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TranscribeVoicemailResponse.java"

# interfaces
.implements Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;",
        ">;",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 219
    invoke-static {}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->access$000()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$1;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTranscript()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;->copyOnWrite()V

    .line 279
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->access$200(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;)V

    return-object p0
.end method

.method public getTranscript()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->getTranscript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->getTranscriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasTranscript()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->hasTranscript()Z

    move-result v0

    return v0
.end method

.method public setTranscript(Ljava/lang/String;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;->copyOnWrite()V

    .line 267
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->access$100(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTranscriptBytes(Lcom/google/protobuf/ByteString;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;->copyOnWrite()V

    .line 292
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;

    invoke-static {v0, p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;->access$300(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
