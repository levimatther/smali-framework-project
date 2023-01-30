.class Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$2;
.super Ljava/lang/Object;
.source "GreetingRecordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$2;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$2;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$100(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)V

    .line 221
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$2;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    invoke-static {v0}, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->access$200(Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity$2;->this$0:Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;

    iget-object v1, v1, Lcom/android/dialer/voicemail/settings/GreetingRecordActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
