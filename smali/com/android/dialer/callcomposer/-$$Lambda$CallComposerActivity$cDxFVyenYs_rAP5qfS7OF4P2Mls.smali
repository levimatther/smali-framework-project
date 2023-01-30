.class public final synthetic Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$cDxFVyenYs_rAP5qfS7OF4P2Mls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

.field public final synthetic f$1:Lcom/android/dialer/multimedia/MultimediaData$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/callcomposer/CallComposerActivity;Lcom/android/dialer/multimedia/MultimediaData$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$cDxFVyenYs_rAP5qfS7OF4P2Mls;->f$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$cDxFVyenYs_rAP5qfS7OF4P2Mls;->f$1:Lcom/android/dialer/multimedia/MultimediaData$Builder;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$cDxFVyenYs_rAP5qfS7OF4P2Mls;->f$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$cDxFVyenYs_rAP5qfS7OF4P2Mls;->f$1:Lcom/android/dialer/multimedia/MultimediaData$Builder;

    check-cast p1, Landroidx/core/util/Pair;

    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->lambda$sendAndCall$2$CallComposerActivity(Lcom/android/dialer/multimedia/MultimediaData$Builder;Landroidx/core/util/Pair;)V

    return-void
.end method
