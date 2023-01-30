.class public Lcom/android/dialer/app/calllog/CallLogAsync;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallTask;,
        Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;,
        Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastOutgoingCall(Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;
    .locals 3

    .line 42
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 43
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallTask;

    iget-object v1, p1, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;->callback:Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallTask;-><init>(Lcom/android/dialer/app/calllog/CallLogAsync;Lcom/android/dialer/app/calllog/CallLogAsync$OnLastOutgoingCallComplete;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallArgs;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogAsync$GetLastOutgoingCallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method
