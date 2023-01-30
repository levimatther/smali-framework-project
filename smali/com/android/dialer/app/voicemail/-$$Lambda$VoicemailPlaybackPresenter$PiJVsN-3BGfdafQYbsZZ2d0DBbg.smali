.class public final synthetic Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$PiJVsN-3BGfdafQYbsZZ2d0DBbg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$PiJVsN-3BGfdafQYbsZZ2d0DBbg;->f$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iput-boolean p2, p0, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$PiJVsN-3BGfdafQYbsZZ2d0DBbg;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onContentChecked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$PiJVsN-3BGfdafQYbsZZ2d0DBbg;->f$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    iget-boolean v1, p0, Lcom/android/dialer/app/voicemail/-$$Lambda$VoicemailPlaybackPresenter$PiJVsN-3BGfdafQYbsZZ2d0DBbg;->f$1:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->lambda$setPlaybackView$1$VoicemailPlaybackPresenter(ZZ)V

    return-void
.end method
