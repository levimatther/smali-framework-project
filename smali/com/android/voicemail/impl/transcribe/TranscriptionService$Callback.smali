.class Lcom/android/voicemail/impl/transcribe/TranscriptionService$Callback;
.super Ljava/lang/Object;
.source "TranscriptionService.java"

# interfaces
.implements Lcom/android/voicemail/impl/transcribe/TranscriptionService$JobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/transcribe/TranscriptionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/impl/transcribe/TranscriptionService;


# direct methods
.method private constructor <init>(Lcom/android/voicemail/impl/transcribe/TranscriptionService;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService$Callback;->this$0:Lcom/android/voicemail/impl/transcribe/TranscriptionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/voicemail/impl/transcribe/TranscriptionService;Lcom/android/voicemail/impl/transcribe/TranscriptionService$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/transcribe/TranscriptionService$Callback;-><init>(Lcom/android/voicemail/impl/transcribe/TranscriptionService;)V

    return-void
.end method


# virtual methods
.method public onWorkCompleted(Landroid/app/job/JobWorkItem;)V
    .locals 3

    .line 177
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 178
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TranscriptionService.Callback.onWorkCompleted"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService$Callback;->this$0:Lcom/android/voicemail/impl/transcribe/TranscriptionService;

    invoke-static {v0}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->access$100(Lcom/android/voicemail/impl/transcribe/TranscriptionService;)Landroid/app/job/JobParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    .line 180
    iget-object p1, p0, Lcom/android/voicemail/impl/transcribe/TranscriptionService$Callback;->this$0:Lcom/android/voicemail/impl/transcribe/TranscriptionService;

    invoke-static {p1}, Lcom/android/voicemail/impl/transcribe/TranscriptionService;->access$200(Lcom/android/voicemail/impl/transcribe/TranscriptionService;)Z

    return-void
.end method
