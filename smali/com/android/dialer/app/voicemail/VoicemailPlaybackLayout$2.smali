.class Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$2;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$2;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$2;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->deleteAction()V

    return-void
.end method
