.class public final Lcom/android/voicemail/impl/VoicemailModule_ProvideVoicemailClientFactory;
.super Ljava/lang/Object;
.source "VoicemailModule_ProvideVoicemailClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/voicemail/VoicemailClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/voicemail/impl/VoicemailModule_ProvideVoicemailClientFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/voicemail/impl/VoicemailModule_ProvideVoicemailClientFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/voicemail/impl/VoicemailModule_ProvideVoicemailClientFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/voicemail/impl/VoicemailModule_ProvideVoicemailClientFactory;

    invoke-direct {v0, p0}, Lcom/android/voicemail/impl/VoicemailModule_ProvideVoicemailClientFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideVoicemailClient(Landroid/content/Context;)Lcom/android/voicemail/VoicemailClient;
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/android/voicemail/impl/VoicemailModule;->provideVoicemailClient(Landroid/content/Context;)Lcom/android/voicemail/VoicemailClient;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/voicemail/VoicemailClient;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/voicemail/VoicemailClient;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/voicemail/impl/VoicemailModule_ProvideVoicemailClientFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/voicemail/impl/VoicemailModule_ProvideVoicemailClientFactory;->provideVoicemailClient(Landroid/content/Context;)Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/android/voicemail/impl/VoicemailModule_ProvideVoicemailClientFactory;->get()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    return-object v0
.end method
