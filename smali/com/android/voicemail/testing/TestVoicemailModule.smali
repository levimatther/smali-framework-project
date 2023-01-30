.class public final Lcom/android/voicemail/testing/TestVoicemailModule;
.super Ljava/lang/Object;
.source "TestVoicemailModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field private static voicemailClient:Lcom/android/voicemail/VoicemailClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideVoicemailClient()Lcom/android/voicemail/VoicemailClient;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 36
    sget-object v0, Lcom/android/voicemail/testing/TestVoicemailModule;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    return-object v0
.end method

.method public static setVoicemailClient(Lcom/android/voicemail/VoicemailClient;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/android/voicemail/testing/TestVoicemailModule;->voicemailClient:Lcom/android/voicemail/VoicemailClient;

    return-void
.end method
