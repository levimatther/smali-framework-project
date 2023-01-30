.class Lcom/android/voicemail/impl/sync/VvmNetworkRequest$FutureNetworkRequestCallback;
.super Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;
.source "VvmNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/sync/VvmNetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FutureNetworkRequestCallback"
.end annotation


# instance fields
.field private final mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;-><init>(Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;Landroid/telecom/PhoneAccountHandle;Lcom/android/voicemail/impl/VoicemailStatus$Editor;)V

    .line 95
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$FutureNetworkRequestCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$FutureNetworkRequestCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 110
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->onAvailable(Landroid/net/Network;)V

    .line 111
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$FutureNetworkRequestCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;-><init>(Landroid/net/Network;Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;Lcom/android/voicemail/impl/sync/VvmNetworkRequest$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->onFailed(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$FutureNetworkRequestCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
