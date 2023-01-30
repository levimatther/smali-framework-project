.class Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity$1;
.super Ljava/lang/Object;
.source "VoicemailGreetingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->access$000(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)V

    .line 457
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->access$100(Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity$1;->this$0:Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;

    iget-object v1, v1, Lcom/android/dialer/voicemail/settings/VoicemailGreetingActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
