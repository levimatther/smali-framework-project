.class public abstract Lcom/android/voicemail/stub/StubVoicemailModule;
.super Ljava/lang/Object;
.source "StubVoicemailModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindVoicemailClient(Lcom/android/voicemail/stub/StubVoicemailClient;)Lcom/android/voicemail/VoicemailClient;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
