.class public Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;
.super Ljava/lang/Object;
.source "TranscriptionClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;
    }
.end annotation


# static fields
.field private static final DIGEST_ALGORITHM_SHA1:Ljava/lang/String; = "SHA1"

.field private static final HEX_UPPERCASE:[C


# instance fields
.field private final cert:Ljava/lang/String;

.field private final configProvider:Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

.field private final originalChannel:Lio/grpc/ManagedChannel;

.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 45
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->HEX_UPPERCASE:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;)V
    .locals 1

    .line 55
    invoke-static {p2}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->getManagedChannel(Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;)Lio/grpc/ManagedChannel;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;-><init>(Landroid/content/Context;Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;Lio/grpc/ManagedChannel;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;Lio/grpc/ManagedChannel;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->configProvider:Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->packageName:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->getCertificateFingerprint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->cert:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->originalChannel:Lio/grpc/ManagedChannel;

    return-void
.end method

.method private static getCertificateFingerprint(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "TranscriptionClientFactory.getCertificateFingerprint"

    const/4 v1, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x40

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    .line 99
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lez v3, :cond_3

    const-string v3, "SHA1"

    .line 102
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p0, "error getting digest."

    new-array v2, v2, [Ljava/lang/Object;

    .line 104
    invoke-static {v0, p0, v2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 108
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "empty message digest."

    new-array v2, v2, [Ljava/lang/Object;

    .line 110
    invoke-static {v0, p0, v2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 115
    :cond_1
    array-length v3, p0

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v3, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-ge v2, v3, :cond_2

    .line 118
    sget-object v5, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->HEX_UPPERCASE:[C

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    sget-object v5, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->HEX_UPPERCASE:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "failed to get package signature."

    new-array v2, v2, [Ljava/lang/Object;

    .line 123
    invoke-static {v0, p0, v2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v2, "error getting certificate fingerprint."

    .line 128
    invoke-static {v0, v2, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method

.method private static getManagedChannel(Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;)Lio/grpc/ManagedChannel;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->forTarget(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->shouldUsePlaintext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 88
    invoke-virtual {v0, p0}, Lio/grpc/ManagedChannelBuilder;->usePlaintext(Z)Lio/grpc/ManagedChannelBuilder;

    .line 90
    :cond_0
    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->build()Lio/grpc/ManagedChannel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getClient()Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient;
    .locals 8

    const-string v0, "TranscriptionClientFactory.getClient"

    .line 67
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->originalChannel:Lio/grpc/ManagedChannel;

    invoke-virtual {v0}, Lio/grpc/ManagedChannel;->isShutdown()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/dialer/common/Assert;->checkState(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->originalChannel:Lio/grpc/ManagedChannel;

    new-array v1, v1, [Lio/grpc/ClientInterceptor;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;

    iget-object v4, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->cert:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->configProvider:Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    .line 73
    invoke-virtual {v6}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->getApiKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->configProvider:Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;

    invoke-virtual {v7}, Lcom/android/voicemail/impl/transcribe/TranscriptionConfigProvider;->getAuthToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory$Interceptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 70
    invoke-static {v0, v1}, Lio/grpc/ClientInterceptors;->intercept(Lio/grpc/Channel;[Lio/grpc/ClientInterceptor;)Lio/grpc/Channel;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient;

    invoke-static {v0}, Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc;->newBlockingStub(Lio/grpc/Channel;)Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceBlockingStub;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClient;-><init>(Lcom/google/internal/communications/voicemailtranscription/v1/VoicemailTranscriptionServiceGrpc$VoicemailTranscriptionServiceBlockingStub;)V

    return-object v1
.end method

.method public shutdown()V
    .locals 1

    const-string v0, "TranscriptionClientFactory.shutdown"

    .line 78
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/grpc/TranscriptionClientFactory;->originalChannel:Lio/grpc/ManagedChannel;

    invoke-virtual {v0}, Lio/grpc/ManagedChannel;->shutdown()Lio/grpc/ManagedChannel;

    return-void
.end method
