.class final Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "TestVoicemailModule_ProvideVoicemailClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;

    invoke-direct {v0}, Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;-><init>()V

    sput-object v0, Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory$InstanceHolder;->INSTANCE:Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory$InstanceHolder;->INSTANCE:Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;

    return-object v0
.end method
