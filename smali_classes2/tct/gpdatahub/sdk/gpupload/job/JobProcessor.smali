.class public Ltct/gpdatahub/sdk/gpupload/job/JobProcessor;
.super Ljava/lang/Object;
.source "JobProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Process(Ltct/gpdatahub/sdk/gpupload/job/Job;)V
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
