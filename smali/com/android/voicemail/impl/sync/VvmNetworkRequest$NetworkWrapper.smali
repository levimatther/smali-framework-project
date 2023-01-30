.class public Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;
.super Ljava/lang/Object;
.source "VvmNetworkRequest.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/sync/VvmNetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

.field private final mNetwork:Landroid/net/Network;


# direct methods
.method private constructor <init>(Landroid/net/Network;Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->mNetwork:Landroid/net/Network;

    .line 53
    iput-object p2, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->mCallback:Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Network;Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;Lcom/android/voicemail/impl/sync/VvmNetworkRequest$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;-><init>(Landroid/net/Network;Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->mCallback:Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;

    invoke-virtual {v0}, Lcom/android/voicemail/impl/sync/VvmNetworkRequestCallback;->releaseNetwork()V

    return-void
.end method

.method public get()Landroid/net/Network;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$NetworkWrapper;->mNetwork:Landroid/net/Network;

    return-object v0
.end method
