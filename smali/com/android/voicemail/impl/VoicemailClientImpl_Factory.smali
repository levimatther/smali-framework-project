.class public final Lcom/android/voicemail/impl/VoicemailClientImpl_Factory;
.super Ljava/lang/Object;
.source "VoicemailClientImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/VoicemailClientImpl_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/voicemail/impl/VoicemailClientImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/voicemail/impl/VoicemailClientImpl_Factory;
    .locals 1

    .line 21
    invoke-static {}, Lcom/android/voicemail/impl/VoicemailClientImpl_Factory$InstanceHolder;->access$000()Lcom/android/voicemail/impl/VoicemailClientImpl_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/voicemail/impl/VoicemailClientImpl;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/voicemail/impl/VoicemailClientImpl;

    invoke-direct {v0}, Lcom/android/voicemail/impl/VoicemailClientImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/voicemail/impl/VoicemailClientImpl;
    .locals 1

    .line 17
    invoke-static {}, Lcom/android/voicemail/impl/VoicemailClientImpl_Factory;->newInstance()Lcom/android/voicemail/impl/VoicemailClientImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailClientImpl_Factory;->get()Lcom/android/voicemail/impl/VoicemailClientImpl;

    move-result-object v0

    return-object v0
.end method
