.class public final synthetic Lcom/android/voicemail/impl/fetch/-$$Lambda$VoicemailFetchedCallback$f1R15iV0lAwmlFtZIWapzfx84rI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/voicemail/impl/fetch/-$$Lambda$VoicemailFetchedCallback$f1R15iV0lAwmlFtZIWapzfx84rI;->f$0:Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/voicemail/impl/fetch/-$$Lambda$VoicemailFetchedCallback$f1R15iV0lAwmlFtZIWapzfx84rI;->f$0:Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/fetch/VoicemailFetchedCallback;->lambda$setVoicemailContent$0$VoicemailFetchedCallback()V

    return-void
.end method
