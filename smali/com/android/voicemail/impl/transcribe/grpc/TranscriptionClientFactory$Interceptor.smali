.class final Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;
.super Ljava/lang/Object;
.source "TranscriptionClientFactory.java"

# interfaces
.implements Lio/grpc/ClientInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Interceptor"
.end annotation


# static fields
.field private static final ANDROID_CERT_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANDROID_PACKAGE_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final API_KEY_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AUTHORIZATION_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final authToken:Ljava/lang/String;

.field private final cert:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 143
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v1, "X-Goog-Api-Key"

    .line 144
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->API_KEY_HEADER:Lio/grpc/Metadata$Key;

    .line 145
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v1, "X-Android-Package"

    .line 146
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->ANDROID_PACKAGE_HEADER:Lio/grpc/Metadata$Key;

    .line 147
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v1, "X-Android-Cert"

    .line 148
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->ANDROID_CERT_HEADER:Lio/grpc/Metadata$Key;

    .line 149
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v1, "authorization"

    .line 150
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->AUTHORIZATION_HEADER:Lio/grpc/Metadata$Key;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->packageName:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->cert:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->apiKey:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->authToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Lio/grpc/Metadata$Key;
    .locals 1

    .line 137
    sget-object v0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->ANDROID_PACKAGE_HEADER:Lio/grpc/Metadata$Key;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->cert:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Lio/grpc/Metadata$Key;
    .locals 1

    .line 137
    sget-object v0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->ANDROID_CERT_HEADER:Lio/grpc/Metadata$Key;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()Lio/grpc/Metadata$Key;
    .locals 1

    .line 137
    sget-object v0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->API_KEY_HEADER:Lio/grpc/Metadata$Key;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Lio/grpc/Metadata$Key;
    .locals 1

    .line 137
    sget-object v0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;->AUTHORIZATION_HEADER:Lio/grpc/Metadata$Key;

    return-object v0
.end method


# virtual methods
.method public interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Channel;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranscriptionClientFactory.interceptCall, intercepted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p3, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object p1

    .line 166
    new-instance p2, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;

    invoke-direct {p2, p0, p1}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor$1;-><init>(Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;Lio/grpc/ClientCall;)V

    return-object p2
.end method
