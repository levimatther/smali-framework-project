.class Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$1;
.super Landroid/os/Handler;
.source "VoicemailChangePinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$1;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$1;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    invoke-static {v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->access$000(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$1;->this$0:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->handleResult(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;I)V

    :cond_0
    return-void
.end method
