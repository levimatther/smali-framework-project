.class public final synthetic Lcom/android/dialer/app/calllog/-$$Lambda$VisualVoicemailUpdateTask$5nrnMJSIX9-Ax8pdrYURlsUsDXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/app/calllog/-$$Lambda$VisualVoicemailUpdateTask$5nrnMJSIX9-Ax8pdrYURlsUsDXs;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/-$$Lambda$VisualVoicemailUpdateTask$5nrnMJSIX9-Ax8pdrYURlsUsDXs;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/android/dialer/app/calllog/VisualVoicemailUpdateTask;->lambda$scheduleTask$1(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method
