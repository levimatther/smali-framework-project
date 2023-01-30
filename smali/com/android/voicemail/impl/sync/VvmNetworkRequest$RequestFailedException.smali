.class public Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException;
.super Ljava/lang/Exception;
.source "VvmNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/sync/VvmNetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestFailedException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lcom/android/voicemail/impl/sync/VvmNetworkRequest$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/sync/VvmNetworkRequest$RequestFailedException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
