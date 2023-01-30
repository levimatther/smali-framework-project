.class Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$6;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->deleteAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

.field final synthetic val$adapterPosition:I

.field final synthetic val$deleteCallback:Ljava/lang/Runnable;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;ILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$6;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    iput p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$6;->val$adapterPosition:I

    iput-object p3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$6;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$6;->val$deleteCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$6;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$200(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object p1

    iget v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$6;->val$adapterPosition:I

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->onVoicemailDeleteUndo(I)V

    .line 198
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$6;->val$handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$6;->val$deleteCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
