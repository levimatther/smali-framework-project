.class public final synthetic Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$kfR3ec-n7g_dNh87lSber6P0GgQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/callcomposer/CameraComposerFragment$CameraUriCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

.field public final synthetic f$1:Lcom/android/dialer/multimedia/MultimediaData$Builder;

.field public final synthetic f$2:Lcom/android/dialer/callcomposer/CameraComposerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dialer/callcomposer/CallComposerActivity;Lcom/android/dialer/multimedia/MultimediaData$Builder;Lcom/android/dialer/callcomposer/CameraComposerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$kfR3ec-n7g_dNh87lSber6P0GgQ;->f$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$kfR3ec-n7g_dNh87lSber6P0GgQ;->f$1:Lcom/android/dialer/multimedia/MultimediaData$Builder;

    iput-object p3, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$kfR3ec-n7g_dNh87lSber6P0GgQ;->f$2:Lcom/android/dialer/callcomposer/CameraComposerFragment;

    return-void
.end method


# virtual methods
.method public final uriReady(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$kfR3ec-n7g_dNh87lSber6P0GgQ;->f$0:Lcom/android/dialer/callcomposer/CallComposerActivity;

    iget-object v1, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$kfR3ec-n7g_dNh87lSber6P0GgQ;->f$1:Lcom/android/dialer/multimedia/MultimediaData$Builder;

    iget-object v2, p0, Lcom/android/dialer/callcomposer/-$$Lambda$CallComposerActivity$kfR3ec-n7g_dNh87lSber6P0GgQ;->f$2:Lcom/android/dialer/callcomposer/CameraComposerFragment;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/dialer/callcomposer/CallComposerActivity;->lambda$sendAndCall$4$CallComposerActivity(Lcom/android/dialer/multimedia/MultimediaData$Builder;Lcom/android/dialer/callcomposer/CameraComposerFragment;Landroid/net/Uri;)V

    return-void
.end method
