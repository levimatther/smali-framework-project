.class Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;
.super Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;
.source "TranscriptionClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;Lio/grpc/ClientCall;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;->this$0:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;

    invoke-direct {p0, p2}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;-><init>(Lio/grpc/ClientCall;)V

    return-void
.end method


# virtual methods
.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;->this$0:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;

    invoke-static {v0}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$000(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TranscriptionClientFactory.interceptCall"

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attaching package name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;->this$0:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;

    .line 173
    invoke-static {v3}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$000(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    .line 171
    invoke-static {v2, v0, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$100()Lio/grpc/Metadata$Key;

    move-result-object v0

    iget-object v3, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;->this$0:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;

    invoke-static {v3}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$000(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;->this$0:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;

    invoke-static {v0}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$200(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "attaching android cert"

    .line 177
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-static {}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$300()Lio/grpc/Metadata$Key;

    move-result-object v0

    iget-object v3, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;->this$0:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;

    invoke-static {v3}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$200(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;->this$0:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;

    invoke-static {v0}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$400(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "attaching API Key"

    .line 181
    invoke-static {v2, v3, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$500()Lio/grpc/Metadata$Key;

    move-result-object v0

    iget-object v3, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;->this$0:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;

    invoke-static {v3}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$400(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;->this$0:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;

    invoke-static {v0}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$600(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "attaching auth token"

    .line 185
    invoke-static {v2, v1, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-static {}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$700()Lio/grpc/Metadata$Key;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;->this$0:Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;

    invoke-static {v2}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->access$600(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 188
    :cond_3
    invoke-super {p0, p1, p2}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    return-void
.end method
