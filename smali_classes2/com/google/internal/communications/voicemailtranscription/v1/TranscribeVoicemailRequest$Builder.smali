.class public final Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TranscribeVoicemailRequest.java"

# interfaces
.implements Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;",
        ">;",
        "Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 249
    invoke-static {}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->access$000()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$1;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAudioFormat()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->copyOnWrite()V

    .line 343
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->access$400(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;)V

    return-object p0
.end method

.method public clearVoicemailData()Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->copyOnWrite()V

    .line 296
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->access$200(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;)V

    return-object p0
.end method

.method public getAudioFormat()Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->getAudioFormat()Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public getVoicemailData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->getVoicemailData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAudioFormat()Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->hasAudioFormat()Z

    move-result v0

    return v0
.end method

.method public hasVoicemailData()Z
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-virtual {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->hasVoicemailData()Z

    move-result v0

    return v0
.end method

.method public setAudioFormat(Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;
    .locals 1

    .line 330
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->copyOnWrite()V

    .line 331
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->access$300(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;Lcom/google/internal/communications/voicemailtranscription/v1/AudioFormat;)V

    return-object p0
.end method

.method public setVoicemailData(Lcom/google/protobuf/ByteString;)Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->copyOnWrite()V

    .line 284
    iget-object v0, p0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;

    invoke-static {v0, p1}, Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;->access$100(Lcom/google/internal/communications/voicemailtranscription/v1/TranscribeVoicemailRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
