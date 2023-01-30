.class public final synthetic Lcom/android/dialer/callcomposer/-$$Lambda$GalleryComposerFragment$8uEI4mqx0oWgg3wkbz8zfobh3vM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/callcomposer/GalleryComposerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/callcomposer/GalleryComposerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/callcomposer/-$$Lambda$GalleryComposerFragment$8uEI4mqx0oWgg3wkbz8zfobh3vM;->f$0:Lcom/android/dialer/callcomposer/GalleryComposerFragment;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/callcomposer/-$$Lambda$GalleryComposerFragment$8uEI4mqx0oWgg3wkbz8zfobh3vM;->f$0:Lcom/android/dialer/callcomposer/GalleryComposerFragment;

    check-cast p1, Landroidx/core/util/Pair;

    invoke-virtual {v0, p1}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->lambda$onActivityCreated$0$GalleryComposerFragment(Landroidx/core/util/Pair;)V

    return-void
.end method
