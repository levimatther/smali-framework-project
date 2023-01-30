.class public final Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;
.super Ljava/lang/Object;
.source "TestVoicemailModule_ProvideVoicemailClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/voicemail/VoicemailClient;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory$InstanceHolder;->access$000()Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideVoicemailClient()Lcom/android/voicemail/VoicemailClient;
    .locals 2

    .line 27
    invoke-static {}, Lcom/android/voicemail/testing/TestVoicemailModule;->provideVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/voicemail/VoicemailClient;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/voicemail/VoicemailClient;
    .locals 1

    .line 19
    invoke-static {}, Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;->provideVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/android/voicemail/testing/TestVoicemailModule_ProvideVoicemailClientFactory;->get()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    return-object v0
.end method
