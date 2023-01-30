.class Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$deleteUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;Landroid/net/Uri;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;->val$deleteUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;->val$deleteUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$000(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$200(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {v2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$100(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->onVoicemailDeleted(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V

    .line 144
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    .line 145
    invoke-static {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$300(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;->val$deleteUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    .line 144
    invoke-static {v0, v2, v3}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->deleteVoicemail(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$300(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f110187

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;->this$0:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-static {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$400(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->access$500()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "deleteUri and mVoicemailUri are not match!"

    invoke-static {v0, v2, v1}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
