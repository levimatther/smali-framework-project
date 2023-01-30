.class Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$4;
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

.field final synthetic val$tctDialog:Landroid/app/TctDialog;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;Landroid/app/TctDialog;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$4;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$4;->val$tctDialog:Landroid/app/TctDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$4;->val$tctDialog:Landroid/app/TctDialog;

    invoke-virtual {p1}, Landroid/app/TctDialog;->dismiss()V

    return-void
.end method
