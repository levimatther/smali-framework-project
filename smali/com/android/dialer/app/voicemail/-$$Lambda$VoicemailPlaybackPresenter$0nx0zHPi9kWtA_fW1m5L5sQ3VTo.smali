.class public final synthetic Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$0nx0zHPi9kWtA_fW1m5L5sQ3VTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$0nx0zHPi9kWtA_fW1m5L5sQ3VTo;->f$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$0nx0zHPi9kWtA_fW1m5L5sQ3VTo;->f$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {v0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->lambda$init$0$VoicemailPlaybackPresenter(Landroid/util/Pair;)V

    return-void
.end method
