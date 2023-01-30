.class Lcom/android/voicemail/VVMMainActivity$1;
.super Ljava/lang/Object;
.source "VVMMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/VVMMainActivity;->onOptionMenuClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/VVMMainActivity;

.field final synthetic val$voicemailUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/voicemail/VVMMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/android/voicemail/VVMMainActivity$1;->this$0:Lcom/android/voicemail/VVMMainActivity;

    iput-object p2, p0, Lcom/android/voicemail/VVMMainActivity$1;->val$voicemailUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$1;->val$voicemailUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/voicemail/VVMMainActivity$1;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {v1}, Lcom/android/voicemail/VVMMainActivity;->access$000(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$1;->this$0:Lcom/android/voicemail/VVMMainActivity;

    .line 327
    invoke-virtual {v0}, Lcom/android/voicemail/VVMMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicemail/VVMMainActivity$1;->val$voicemailUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 326
    invoke-static {v0, v1, v2}, Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil;->deleteVoicemail(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    :cond_0
    return-void
.end method
