.class Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$5;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$deleteCallback:Ljava/lang/Runnable;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$5;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$5;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$5;->val$deleteCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 177
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$5;->val$handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$5;->val$deleteCallback:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
